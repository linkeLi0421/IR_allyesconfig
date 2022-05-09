; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-artpec6.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-artpec6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.artpec6_pmx_func = type { ptr, ptr, i32 }
%struct.artpec6_pin_group = type { ptr, ptr, i32, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pin_register = type { i32, i32, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.artpec6_pmx = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_artpec6__233_1000_artpec6_pmx_init3 = internal global ptr @artpec6_pmx_init, section ".initcall3.init", align 4
@artpec6_pmx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @artpec6_pmx_probe, ptr @artpec6_pmx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @artpec6_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"artpec6-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@artpec6_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@artpec6_pins = internal global { [97 x %struct.pinctrl_pin_desc], [308 x i8] } { [97 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.108, ptr null }], [308 x i8] zeroinitializer }, align 32
@artpec6_pmx_functions = internal constant { [22 x %struct.artpec6_pmx_func], [88 x i8] } { [22 x %struct.artpec6_pmx_func] [%struct.artpec6_pmx_func { ptr @.str.109, ptr @gpiogrps, i32 23 }, %struct.artpec6_pmx_func { ptr @.str.110, ptr @cpuclkoutgrps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.111, ptr @udlclkoutgrps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.112, ptr @i2c1grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.113, ptr @i2c2grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.114, ptr @i2c3grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.115, ptr @i2s0grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.116, ptr @i2s1grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.117, ptr @i2srefclkgrps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.118, ptr @spi0grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.119, ptr @spi1grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.120, ptr @pciedebuggrps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.121, ptr @uart0grps, i32 3 }, %struct.artpec6_pmx_func { ptr @.str.122, ptr @uart1grps, i32 2 }, %struct.artpec6_pmx_func { ptr @.str.123, ptr @uart2grps, i32 3 }, %struct.artpec6_pmx_func { ptr @.str.124, ptr @uart3grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.125, ptr @uart4grps, i32 2 }, %struct.artpec6_pmx_func { ptr @.str.126, ptr @uart5grps, i32 3 }, %struct.artpec6_pmx_func { ptr @.str.127, ptr @nandgrps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.128, ptr @sdio0grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.129, ptr @sdio1grps, i32 1 }, %struct.artpec6_pmx_func { ptr @.str.130, ptr @ethernetgrps, i32 1 }], [88 x i8] zeroinitializer }, align 32
@artpec6_pin_groups = internal constant { [29 x %struct.artpec6_pin_group], [112 x i8] } { [29 x %struct.artpec6_pin_group] [%struct.artpec6_pin_group { ptr @.str.131, ptr @cpuclkout_pins0, i32 1, i8 1 }, %struct.artpec6_pin_group { ptr @.str.132, ptr @udlclkout_pins0, i32 1, i8 1 }, %struct.artpec6_pin_group { ptr @.str.133, ptr @i2c1_pins0, i32 2, i8 1 }, %struct.artpec6_pin_group { ptr @.str.134, ptr @i2c2_pins0, i32 2, i8 1 }, %struct.artpec6_pin_group { ptr @.str.135, ptr @i2c3_pins0, i32 2, i8 1 }, %struct.artpec6_pin_group { ptr @.str.136, ptr @i2s0_pins0, i32 4, i8 1 }, %struct.artpec6_pin_group { ptr @.str.137, ptr @i2s1_pins0, i32 4, i8 1 }, %struct.artpec6_pin_group { ptr @.str.138, ptr @i2srefclk_pins0, i32 1, i8 3 }, %struct.artpec6_pin_group { ptr @.str.139, ptr @spi0_pins0, i32 4, i8 2 }, %struct.artpec6_pin_group { ptr @.str.140, ptr @spi1_pins0, i32 4, i8 2 }, %struct.artpec6_pin_group { ptr @.str.141, ptr @pciedebug_pins0, i32 4, i8 3 }, %struct.artpec6_pin_group { ptr @.str.142, ptr @uart0_pins0, i32 10, i8 1 }, %struct.artpec6_pin_group { ptr @.str.143, ptr @uart0_pins1, i32 4, i8 1 }, %struct.artpec6_pin_group { ptr @.str.144, ptr @uart0_pins1, i32 2, i8 1 }, %struct.artpec6_pin_group { ptr @.str.145, ptr @uart1_pins0, i32 4, i8 2 }, %struct.artpec6_pin_group { ptr @.str.146, ptr @uart1_pins0, i32 2, i8 2 }, %struct.artpec6_pin_group { ptr @.str.147, ptr @uart2_pins0, i32 10, i8 1 }, %struct.artpec6_pin_group { ptr @.str.148, ptr @uart2_pins1, i32 4, i8 1 }, %struct.artpec6_pin_group { ptr @.str.149, ptr @uart2_pins1, i32 2, i8 1 }, %struct.artpec6_pin_group { ptr @.str.154, ptr @uart3_pins0, i32 4, i8 0 }, %struct.artpec6_pin_group { ptr @.str.160, ptr @uart3_pins0, i32 4, i8 0 }, %struct.artpec6_pin_group { ptr @.str.150, ptr @uart4_pins0, i32 4, i8 2 }, %struct.artpec6_pin_group { ptr @.str.151, ptr @uart5_pins0, i32 4, i8 2 }, %struct.artpec6_pin_group { ptr @.str.152, ptr @uart5_pins0, i32 2, i8 2 }, %struct.artpec6_pin_group { ptr @.str.153, ptr @uart5_pins0, i32 3, i8 2 }, %struct.artpec6_pin_group { ptr @.str.156, ptr @nand_pins0, i32 17, i8 0 }, %struct.artpec6_pin_group { ptr @.str.157, ptr @sdio0_pins0, i32 8, i8 0 }, %struct.artpec6_pin_group { ptr @.str.158, ptr @sdio1_pins0, i32 8, i8 0 }, %struct.artpec6_pin_group { ptr @.str.159, ptr @ethernet_pins0, i32 28, i8 0 }], [112 x i8] zeroinitializer }, align 32
@artpec6_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr @artpec6_pins, i32 97, ptr @artpec6_pctrl_ops, ptr @artpec6_pmx_ops, ptr @artpec6_pconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@artpec6_pmx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 962, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"artpec6_pmx_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pinctrl/pinctrl-artpec6.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@artpec6_pmx_probe._entry_ptr = internal global ptr @artpec6_pmx_probe._entry, section ".printk_index", align 4
@artpec6_pmx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 968, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"initialised Axis ARTPEC-6 pinctrl driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@artpec6_pmx_probe._entry_ptr.9 = internal global ptr @artpec6_pmx_probe._entry.6, section ".printk_index", align 4
@pin_register = internal constant { [3 x %struct.pin_register], [60 x i8] } { [3 x %struct.pin_register] [%struct.pin_register { i32 0, i32 35, i32 0 }, %struct.pin_register { i32 36, i32 52, i32 256 }, %struct.pin_register { i32 53, i32 96, i32 384 }], [60 x i8] zeroinitializer }, align 32
@artpec6_pmx_reg_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Impossible pin %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"artpec6_pmx_reg_offset\00", [41 x i8] zeroinitializer }, align 32
@artpec6_pmx_reg_offset._entry_ptr = internal global ptr @artpec6_pmx_reg_offset._entry, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO0\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO4\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO5\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO6\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO7\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO8\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO9\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO10\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO11\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO12\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO13\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO14\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO15\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO16\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO17\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO18\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO19\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO20\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO21\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO22\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO23\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO24\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO25\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO26\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO27\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO28\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO29\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO30\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO31\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UART3_TXD\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UART3_RXD\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UART3_RTS\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UART3_CTS\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_ALE\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NF_CE0_N\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NF_CE1_N\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_CLE\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NF_RE_N\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NF_WE_N\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NF_WP0_N\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NF_WP1_N\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO0\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO1\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO2\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO3\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO4\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO5\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO6\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NF_IO7\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NF_RB0_N\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIO0_CLK\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIO0_CMD\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO0_DAT0\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO0_DAT1\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO0_DAT2\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO0_DAT3\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDI0_CD\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDI0_WP\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIO1_CLK\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIO1_CMD\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO1_DAT0\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO1_DAT1\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO1_DAT2\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDIO1_DAT3\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SDIO1_CD\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SDIO1_WP\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GBE_REFCLk\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GBE_GTX_CLK\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GBE_TX_CLK\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GBE_TX_EN\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GBE_TX_ER\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD0\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD1\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD2\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD3\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD4\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD5\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD6\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_TXD7\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GBE_RX_CLK\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GBE_RX_DV\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GBE_RX_ER\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD0\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD1\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD2\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD3\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD4\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD5\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD6\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_RXD7\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GBE_CRS\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GBE_COL\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GBE_MDC\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBE_MDIO\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpiogrps = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpuclkout\00", [22 x i8] zeroinitializer }, align 32
@cpuclkoutgrps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.131], [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"udlclkout\00", [22 x i8] zeroinitializer }, align 32
@udlclkoutgrps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.132], [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@i2c1grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.133], [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@i2c2grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.134], [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@i2c3grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.135], [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s0\00", [27 x i8] zeroinitializer }, align 32
@i2s0grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.136], [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@i2s1grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.137], [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2srefclk\00", [22 x i8] zeroinitializer }, align 32
@i2srefclkgrps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.138], [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@spi0grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.139], [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi1\00", [27 x i8] zeroinitializer }, align 32
@spi1grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.140], [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pciedebug\00", [22 x i8] zeroinitializer }, align 32
@pciedebuggrps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.141], [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@uart0grps = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144], [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.145, ptr @.str.146], [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2grps = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.147, ptr @.str.148, ptr @.str.149], [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@uart3grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.154], [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@uart4grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.150, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart5\00", [26 x i8] zeroinitializer }, align 32
@uart5grps = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.151, ptr @.str.152, ptr @.str.153], [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nandgrps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.156], [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio0\00", [26 x i8] zeroinitializer }, align 32
@sdio0grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.157], [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio1\00", [26 x i8] zeroinitializer }, align 32
@sdio1grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.158], [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@ethernetgrps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.159], [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpuclkoutgrp0\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"udlclkoutgrp0\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c3grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2srefclkgrp0\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1grp0\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pciedebuggrp0\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0grp1\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0grp2\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1grp1\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2grp1\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2grp2\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart5grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart5grp1\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart5nocts\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4grp1\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nandgrp0\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio0grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio1grp0\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ethernetgrp0\00", [19 x i8] zeroinitializer }, align 32
@cpuclkout_pins0 = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@udlclkout_pins0 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@i2c1_pins0 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@i2c2_pins0 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 5], [24 x i8] zeroinitializer }, align 32
@i2c3_pins0 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 7], [24 x i8] zeroinitializer }, align 32
@i2s0_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 9, i32 10, i32 11], [16 x i8] zeroinitializer }, align 32
@i2s1_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@i2srefclk_pins0 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 19], [28 x i8] zeroinitializer }, align 32
@spi0_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@spi1_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 17, i32 18, i32 19], [16 x i8] zeroinitializer }, align 32
@pciedebug_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@uart0_pins0 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25], [56 x i8] zeroinitializer }, align 32
@uart0_pins1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 21, i32 22, i32 23], [16 x i8] zeroinitializer }, align 32
@uart1_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 25, i32 26, i32 27], [16 x i8] zeroinitializer }, align 32
@uart2_pins0 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35], [56 x i8] zeroinitializer }, align 32
@uart2_pins1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 29, i32 30, i32 31], [16 x i8] zeroinitializer }, align 32
@uart3_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 33, i32 34, i32 35], [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3grp1\00", [22 x i8] zeroinitializer }, align 32
@uart4_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 21, i32 22, i32 23], [16 x i8] zeroinitializer }, align 32
@uart5_pins0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 29, i32 30, i32 31], [16 x i8] zeroinitializer }, align 32
@nand_pins0 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], [60 x i8] zeroinitializer }, align 32
@sdio0_pins0 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60], [32 x i8] zeroinitializer }, align 32
@sdio1_pins0 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68], [32 x i8] zeroinitializer }, align 32
@ethernet_pins0 = internal constant { [28 x i32], [48 x i8] } { [28 x i32] [i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96], [48 x i8] zeroinitializer }, align 32
@artpec6_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @artpec6_get_groups_count, ptr @artpec6_get_group_name, ptr @artpec6_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@artpec6_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @artpec6_pmx_get_functions_count, ptr @artpec6_pmx_get_fname, ptr @artpec6_pmx_get_fgroups, ptr @artpec6_pmx_set, ptr @artpec6_pmx_request_gpio, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@artpec6_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @artpec6_pconf_get, ptr @artpec6_pconf_set, ptr null, ptr @artpec6_pconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@artpec6_pmx_set.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.162, ptr @.str.3, ptr @.str.163, i8 0, i8 -82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_artpec6\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"artpec6_pmx_set\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"enabling %s function for pin group %s\0A\00", [57 x i8] zeroinitializer }, align 32
@artpec6_pconf_get.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.164, ptr @.str.3, ptr @.str.165, i8 0, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"artpec6_pconf_get\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pinconf is not supported for pin %s\0A\00", [59 x i8] zeroinitializer }, align 32
@artpec6_pconf_get.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.164, ptr @.str.3, ptr @.str.166, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"getting configuration for pin %s\0A\00", [62 x i8] zeroinitializer }, align 32
@artpec6_pconf_set.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.167, ptr @.str.3, ptr @.str.165, i8 0, i8 -55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"artpec6_pconf_set\00", [46 x i8] zeroinitializer }, align 32
@artpec6_pconf_set.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.167, ptr @.str.3, ptr @.str.168, i8 0, i8 -53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting configuration for pin %s\0A\00", [62 x i8] zeroinitializer }, align 32
@artpec6_pconf_set.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.167, ptr @.str.3, ptr @.str.169, i8 0, i8 -48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: arg %u out of range\0A\00", [39 x i8] zeroinitializer }, align 32
@artpec6_pconf_set.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.167, ptr @.str.3, ptr @.str.169, i8 0, i8 -45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@artpec6_pconf_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.167, ptr @.str.3, ptr @.str.169, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@artpec6_pconf_set.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.167, ptr @.str.3, ptr @.str.170, i8 0, i8 -39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parameter not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@artpec6_pconf_group_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.171, ptr @.str.3, ptr @.str.172, i8 0, i8 -35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"artpec6_pconf_group_set\00", [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting group %s configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.artpec6_pconf_get = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1033, i32 1545, i32 2057, i32 2313], [16 x i8] zeroinitializer }, align 32
@switch.table.artpec6_pconf_set = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 32, i32 0, i32 64, i32 96], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"artpec6_pmx_driver\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 987, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 989, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant [22 x i8] c"artpec6_pinctrl_match\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 982, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"artpec6_pins\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 81, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"artpec6_pmx_functions\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 519, i32 38 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"artpec6_pin_groups\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 212, i32 39 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"artpec6_desc\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 910, i32 28 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 962, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 968, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [13 x i8] c"pin_register\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 400, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 420, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 82, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 83, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 84, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 85, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 86, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 87, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 88, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 89, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 90, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 91, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 92, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 93, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 94, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 95, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 96, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 97, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 98, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 99, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 100, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 101, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 102, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 103, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 104, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 105, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 106, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 107, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 108, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 109, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 110, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 111, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 112, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 113, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 114, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 115, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 116, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 117, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 118, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 119, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 120, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 121, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 122, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 123, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 124, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 125, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 126, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 127, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 128, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 129, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 130, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 131, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 132, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 133, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 134, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 135, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 136, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 137, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 138, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 139, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 140, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 141, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 142, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 143, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 144, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 145, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 146, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 147, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 148, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 149, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 150, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 151, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 152, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 153, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 154, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 155, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 156, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 157, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 158, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 159, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 160, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 161, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 162, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 163, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 164, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 165, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 166, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 167, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 168, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 169, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 170, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 171, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 172, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 173, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 174, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 175, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 176, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 177, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 178, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 521, i32 11 }
@___asan_gen_.528 = private unnamed_addr constant [9 x i8] c"gpiogrps\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 486, i32 27 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 526, i32 11 }
@___asan_gen_.534 = private unnamed_addr constant [14 x i8] c"cpuclkoutgrps\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 494, i32 27 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 531, i32 11 }
@___asan_gen_.540 = private unnamed_addr constant [14 x i8] c"udlclkoutgrps\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 495, i32 27 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 536, i32 11 }
@___asan_gen_.546 = private unnamed_addr constant [9 x i8] c"i2c1grps\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 496, i32 27 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 541, i32 11 }
@___asan_gen_.552 = private unnamed_addr constant [9 x i8] c"i2c2grps\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 497, i32 27 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 546, i32 11 }
@___asan_gen_.558 = private unnamed_addr constant [9 x i8] c"i2c3grps\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 498, i32 27 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 551, i32 11 }
@___asan_gen_.564 = private unnamed_addr constant [9 x i8] c"i2s0grps\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 499, i32 27 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 556, i32 11 }
@___asan_gen_.570 = private unnamed_addr constant [9 x i8] c"i2s1grps\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 500, i32 27 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 561, i32 11 }
@___asan_gen_.576 = private unnamed_addr constant [14 x i8] c"i2srefclkgrps\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 501, i32 27 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 566, i32 11 }
@___asan_gen_.582 = private unnamed_addr constant [9 x i8] c"spi0grps\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 502, i32 27 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 571, i32 11 }
@___asan_gen_.588 = private unnamed_addr constant [9 x i8] c"spi1grps\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 503, i32 27 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 576, i32 11 }
@___asan_gen_.594 = private unnamed_addr constant [14 x i8] c"pciedebuggrps\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 504, i32 27 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 581, i32 11 }
@___asan_gen_.600 = private unnamed_addr constant [10 x i8] c"uart0grps\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 505, i32 27 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 586, i32 11 }
@___asan_gen_.606 = private unnamed_addr constant [10 x i8] c"uart1grps\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 507, i32 27 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 591, i32 11 }
@___asan_gen_.612 = private unnamed_addr constant [10 x i8] c"uart2grps\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 508, i32 27 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 596, i32 11 }
@___asan_gen_.618 = private unnamed_addr constant [10 x i8] c"uart3grps\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 510, i32 27 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 601, i32 11 }
@___asan_gen_.624 = private unnamed_addr constant [10 x i8] c"uart4grps\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 511, i32 27 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 606, i32 11 }
@___asan_gen_.630 = private unnamed_addr constant [10 x i8] c"uart5grps\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 512, i32 27 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 611, i32 11 }
@___asan_gen_.636 = private unnamed_addr constant [9 x i8] c"nandgrps\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 514, i32 27 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 616, i32 11 }
@___asan_gen_.642 = private unnamed_addr constant [10 x i8] c"sdio0grps\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 515, i32 27 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 621, i32 11 }
@___asan_gen_.648 = private unnamed_addr constant [10 x i8] c"sdio1grps\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 516, i32 27 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 626, i32 11 }
@___asan_gen_.654 = private unnamed_addr constant [13 x i8] c"ethernetgrps\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 517, i32 27 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 487, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 487, i32 19 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 487, i32 36 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 487, i32 48 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 488, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 488, i32 14 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 488, i32 26 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 488, i32 38 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 489, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 489, i32 14 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 489, i32 26 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 489, i32 43 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 490, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 490, i32 15 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 490, i32 28 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 490, i32 41 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 491, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 491, i32 15 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 491, i32 28 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 491, i32 41 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 491, i32 54 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 492, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 492, i32 15 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 510, i32 45 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 511, i32 58 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 514, i32 44 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 515, i32 45 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 516, i32 45 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 517, i32 47 }
@___asan_gen_.744 = private unnamed_addr constant [16 x i8] c"cpuclkout_pins0\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 181, i32 27 }
@___asan_gen_.747 = private unnamed_addr constant [16 x i8] c"udlclkout_pins0\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 182, i32 27 }
@___asan_gen_.750 = private unnamed_addr constant [11 x i8] c"i2c1_pins0\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 183, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant [11 x i8] c"i2c2_pins0\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 184, i32 27 }
@___asan_gen_.756 = private unnamed_addr constant [11 x i8] c"i2c3_pins0\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 185, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant [11 x i8] c"i2s0_pins0\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 186, i32 27 }
@___asan_gen_.762 = private unnamed_addr constant [11 x i8] c"i2s1_pins0\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 187, i32 27 }
@___asan_gen_.765 = private unnamed_addr constant [16 x i8] c"i2srefclk_pins0\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 188, i32 27 }
@___asan_gen_.768 = private unnamed_addr constant [11 x i8] c"spi0_pins0\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 189, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant [11 x i8] c"spi1_pins0\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 190, i32 27 }
@___asan_gen_.774 = private unnamed_addr constant [16 x i8] c"pciedebug_pins0\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 191, i32 27 }
@___asan_gen_.777 = private unnamed_addr constant [12 x i8] c"uart0_pins0\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 192, i32 27 }
@___asan_gen_.780 = private unnamed_addr constant [12 x i8] c"uart0_pins1\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 194, i32 27 }
@___asan_gen_.783 = private unnamed_addr constant [12 x i8] c"uart1_pins0\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 195, i32 27 }
@___asan_gen_.786 = private unnamed_addr constant [12 x i8] c"uart2_pins0\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 196, i32 27 }
@___asan_gen_.789 = private unnamed_addr constant [12 x i8] c"uart2_pins1\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 198, i32 27 }
@___asan_gen_.792 = private unnamed_addr constant [12 x i8] c"uart3_pins0\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 199, i32 27 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 334, i32 11 }
@___asan_gen_.798 = private unnamed_addr constant [12 x i8] c"uart4_pins0\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 200, i32 27 }
@___asan_gen_.801 = private unnamed_addr constant [12 x i8] c"uart5_pins0\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 201, i32 27 }
@___asan_gen_.804 = private unnamed_addr constant [11 x i8] c"nand_pins0\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 202, i32 27 }
@___asan_gen_.807 = private unnamed_addr constant [12 x i8] c"sdio0_pins0\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 205, i32 27 }
@___asan_gen_.810 = private unnamed_addr constant [12 x i8] c"sdio1_pins0\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 206, i32 27 }
@___asan_gen_.813 = private unnamed_addr constant [15 x i8] c"ethernet_pins0\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 207, i32 27 }
@___asan_gen_.816 = private unnamed_addr constant [18 x i8] c"artpec6_pctrl_ops\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 478, i32 33 }
@___asan_gen_.819 = private unnamed_addr constant [16 x i8] c"artpec6_pmx_ops\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 725, i32 32 }
@___asan_gen_.822 = private unnamed_addr constant [18 x i8] c"artpec6_pconf_ops\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 903, i32 33 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 697, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 742, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 747, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 806, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 811, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 832, i32 5 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 871, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.859 = private constant [37 x i8] c"../drivers/pinctrl/pinctrl-artpec6.c\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 886, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant [31 x i8] c"switch.table.artpec6_pconf_get\00", align 1
@___asan_gen_.862 = private unnamed_addr constant [31 x i8] c"switch.table.artpec6_pconf_set\00", align 1
@llvm.compiler.used = appending global [235 x ptr] [ptr @__initcall__kmod_pinctrl_artpec6__233_1000_artpec6_pmx_init3, ptr @artpec6_pmx_probe._entry, ptr @artpec6_pmx_probe._entry.6, ptr @artpec6_pmx_probe._entry_ptr, ptr @artpec6_pmx_probe._entry_ptr.9, ptr @artpec6_pmx_reg_offset._entry, ptr @artpec6_pmx_reg_offset._entry_ptr, ptr @artpec6_pmx_driver, ptr @.str, ptr @artpec6_pinctrl_match, ptr @artpec6_pins, ptr @artpec6_pmx_functions, ptr @artpec6_pin_groups, ptr @artpec6_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @pin_register, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @gpiogrps, ptr @.str.110, ptr @cpuclkoutgrps, ptr @.str.111, ptr @udlclkoutgrps, ptr @.str.112, ptr @i2c1grps, ptr @.str.113, ptr @i2c2grps, ptr @.str.114, ptr @i2c3grps, ptr @.str.115, ptr @i2s0grps, ptr @.str.116, ptr @i2s1grps, ptr @.str.117, ptr @i2srefclkgrps, ptr @.str.118, ptr @spi0grps, ptr @.str.119, ptr @spi1grps, ptr @.str.120, ptr @pciedebuggrps, ptr @.str.121, ptr @uart0grps, ptr @.str.122, ptr @uart1grps, ptr @.str.123, ptr @uart2grps, ptr @.str.124, ptr @uart3grps, ptr @.str.125, ptr @uart4grps, ptr @.str.126, ptr @uart5grps, ptr @.str.127, ptr @nandgrps, ptr @.str.128, ptr @sdio0grps, ptr @.str.129, ptr @sdio1grps, ptr @.str.130, ptr @ethernetgrps, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @cpuclkout_pins0, ptr @udlclkout_pins0, ptr @i2c1_pins0, ptr @i2c2_pins0, ptr @i2c3_pins0, ptr @i2s0_pins0, ptr @i2s1_pins0, ptr @i2srefclk_pins0, ptr @spi0_pins0, ptr @spi1_pins0, ptr @pciedebug_pins0, ptr @uart0_pins0, ptr @uart0_pins1, ptr @uart1_pins0, ptr @uart2_pins0, ptr @uart2_pins1, ptr @uart3_pins0, ptr @.str.160, ptr @uart4_pins0, ptr @uart5_pins0, ptr @nand_pins0, ptr @sdio0_pins0, ptr @sdio1_pins0, ptr @ethernet_pins0, ptr @artpec6_pctrl_ops, ptr @artpec6_pmx_ops, ptr @artpec6_pconf_ops, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @switch.table.artpec6_pconf_get, ptr @switch.table.artpec6_pconf_set], section "llvm.metadata"
@0 = internal global [231 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pmx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pins to i32), i32 1164, i32 1472, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pmx_functions to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pin_groups to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pmx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pmx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_register to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pmx_reg_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiogrps to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuclkoutgrps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udlclkoutgrps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2srefclkgrps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi1grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciedebuggrps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0grps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2grps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart5grps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nandgrps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio0grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethernetgrps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuclkout_pins0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udlclkout_pins0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_pins0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_pins0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_pins0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2srefclk_pins0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi1_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciedebug_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_pins0 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_pins1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins0 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart5_pins0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pins0 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio0_pins0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_pins0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethernet_pins0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.artpec6_pconf_get to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.artpec6_pconf_set to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pmx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @artpec6_pmx_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pmx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %i.031.i)
  %cmp1.not.i.i = icmp ugt i32 %i.031.i, 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %i.031.i)
  %cmp1.not.1.i.i = icmp ugt i32 %i.031.i, 52
  %spec.select.i = select i1 %cmp1.not.1.i.i, i32 2, i32 1
  %i.011.lcssa.i.i = select i1 %cmp1.not.i.i, i32 %spec.select.i, i32 0
  %arrayidx.i.i = getelementptr [3 x %struct.pin_register], ptr @pin_register, i32 0, i32 %i.011.lcssa.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %i.031.i, %4
  %mul.i.i = shl i32 %sub.i.i, 2
  %reg_base.i.i = getelementptr [3 x %struct.pin_register], ptr @pin_register, i32 0, i32 %i.011.lcssa.i.i, i32 2
  %5 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i = add i32 %mul.i.i, %6
  %add.ptr.i = getelementptr i8, ptr %call3, i32 %add.i.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !471
  %8 = and i32 %7, -1610612737
  %9 = or i32 %8, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !472
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 97
  br i1 %exitcond.not.i, label %artpec6_pmx_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

artpec6_pmx_reset.exit:                           ; preds = %for.body.i
  %pins = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @artpec6_pins, ptr %pins, align 4
  %num_pins = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 97, ptr %num_pins, align 4
  %functions = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @artpec6_pmx_functions, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 22, ptr %num_functions, align 4
  %pin_groups = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %pin_groups to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @artpec6_pin_groups, ptr %pin_groups, align 4
  %num_pin_groups = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 29, ptr %num_pin_groups, align 4
  %call11 = tail call ptr @pinctrl_register(ptr noundef nonnull @artpec6_desc, ptr noundef %dev, ptr noundef nonnull %call.i) #9
  %pctl = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %pctl, align 4
  %cmp.i45 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %do.end, label %if.end18

do.end:                                           ; preds = %artpec6_pmx_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  %17 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pctl, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end18:                                         ; preds = %artpec6_pmx_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %19, %do.end ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pmx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pctl = getelementptr inbounds %struct.artpec6_pmx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  tail call void @pinctrl_unregister(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_get_groups_count(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @artpec6_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pins1 = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pins, align 4
  %num_pins3 = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 2
  %3 = ptrtoint ptr %num_pins3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pins3, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_pmx_get_functions_count(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @artpec6_pmx_get_fname(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [22 x %struct.artpec6_pmx_func], ptr @artpec6_pmx_functions, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_pmx_get_fgroups(ptr nocapture noundef readnone %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %groups1 = getelementptr [22 x %struct.artpec6_pmx_func], ptr @artpec6_pmx_functions, i32 0, i32 %function, i32 1
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %num_groups3 = getelementptr [22 x %struct.artpec6_pmx_func], ptr @artpec6_pmx_functions, i32 0, i32 %function, i32 2
  %3 = ptrtoint ptr %num_groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_groups3, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pmx_set(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pmx_set.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pmx_set, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !473

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx.i = getelementptr [22 x %struct.artpec6_pmx_func], ptr @artpec6_pmx_functions, i32 0, i32 %function
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx.i12 = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group
  %4 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pmx_set.__UNIQUE_ID_ddebug223, ptr noundef %1, ptr noundef nonnull @.str.163, ptr noundef %3, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %num_pins.i = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 2
  %6 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins.i, align 4
  %pins.i = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 1
  %8 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins.i, align 4
  %arrayidx.i.i = getelementptr [22 x %struct.artpec6_pmx_func], ptr @artpec6_pmx_functions, i32 0, i32 %function
  %config.i = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 3
  %base.i = getelementptr inbounds %struct.artpec6_pmx, ptr %call.i, i32 0, i32 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %7, i32 1) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end
  %i.03.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr i32, ptr %9, i32 %i.03.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %11)
  %cmp3.i = icmp ugt i32 %11, 35
  br i1 %cmp3.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(5) @.str.109) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i.artpec6_pmx_reg_offset.exit.i_crit_edge, label %if.then8.i

if.end.i.artpec6_pmx_reg_offset.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %artpec6_pmx_reg_offset.exit.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  br label %artpec6_pmx_reg_offset.exit.i

artpec6_pmx_reg_offset.exit.i:                    ; preds = %if.then8.i, %if.end.i.artpec6_pmx_reg_offset.exit.i_crit_edge
  %val.0.i = phi i32 [ %shl.i, %if.then8.i ], [ 0, %if.end.i.artpec6_pmx_reg_offset.exit.i_crit_edge ]
  %mul.i.i = shl nuw nsw i32 %11, 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %mul.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !474
  %19 = and i32 %18, -3145729
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %or.i = or i32 %20, %val.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !475
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %23, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %21) #9, !srcloc !472
  br label %for.inc.i

for.inc.i:                                        ; preds = %artpec6_pmx_reg_offset.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %artpec6_pmx_select_func.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

artpec6_pmx_select_func.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pmx_request_gpio(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %pin, 35
  br i1 %cmp1.not.i, label %for.inc.i, label %artpec6_pmx_reg_offset.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %pin)
  %cmp1.not.2.i = icmp ugt i32 %pin, 96
  br i1 %cmp1.not.2.i, label %artpec6_pmx_reg_offset.exit.thread, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

artpec6_pmx_reg_offset.exit.thread:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %pin) #12
  br label %cleanup

artpec6_pmx_reg_offset.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %pin)
  %cmp = icmp ugt i32 %pin, 31
  br i1 %cmp, label %artpec6_pmx_reg_offset.exit.cleanup_crit_edge, label %if.end

artpec6_pmx_reg_offset.exit.cleanup_crit_edge:    ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %pin, 2
  %base = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !471
  %3 = and i32 %2, -3145729
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #9, !srcloc !472
  br label %cleanup

cleanup:                                          ; preds = %if.end, %artpec6_pmx_reg_offset.exit.cleanup_crit_edge, %artpec6_pmx_reg_offset.exit.thread, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %artpec6_pmx_reg_offset.exit.cleanup_crit_edge ], [ -22, %artpec6_pmx_reg_offset.exit.thread ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %num_pins = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pin)
  %cmp.not = icmp ugt i32 %3, %pin
  br i1 %cmp.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_get.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_get, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !473

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %pins = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %pin, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_get.__UNIQUE_ID_ddebug224, ptr noundef %5, ptr noundef nonnull @.str.165, ptr noundef %9) #9
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_get.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_get, %do.end29)) #9
          to label %if.then22 [label %do.end29], !srcloc !473

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %pins24 = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %pins24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pins24, align 4
  %name26 = getelementptr %struct.pinctrl_pin_desc, ptr %13, i32 %pin, i32 1
  %14 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_get.__UNIQUE_ID_ddebug225, ptr noundef %11, ptr noundef nonnull @.str.166, ptr noundef %15) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then22, %do.body8
  %base = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %pin, 35
  br i1 %cmp1.not.i, label %for.inc.i, label %do.end29.if.then.i_crit_edge

do.end29.if.then.i_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %do.end29.if.then.i_crit_edge
  %i.011.lcssa.i = phi i32 [ 0, %do.end29.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.pin_register], ptr @pin_register, i32 0, i32 %i.011.lcssa.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %pin, %19
  %mul.i = shl i32 %sub.i, 2
  %reg_base.i = getelementptr [3 x %struct.pin_register], ptr @pin_register, i32 0, i32 %i.011.lcssa.i, i32 2
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_base.i, align 4
  %add.i = add i32 %mul.i, %21
  br label %artpec6_pmx_reg_offset.exit

for.inc.i:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %pin)
  %cmp1.not.1.i = icmp ugt i32 %pin, 52
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then.i_crit_edge

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %pin)
  %cmp1.not.2.i = icmp ugt i32 %pin, 96
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then.i_crit_edge

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %pin) #12
  br label %artpec6_pmx_reg_offset.exit

artpec6_pmx_reg_offset.exit:                      ; preds = %for.inc.2.i, %if.then.i
  %retval.0.i79 = phi i32 [ %add.i, %if.then.i ], [ 0, %for.inc.2.i ]
  %add.ptr = getelementptr i8, ptr %17, i32 %retval.0.i79
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !471
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  %trunc = trunc i32 %1 to i8
  %24 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %artpec6_pmx_reg_offset.exit.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %artpec6_pmx_reg_offset.exit.sw.bb37_crit_edge
    i8 3, label %artpec6_pmx_reg_offset.exit.sw.bb37_crit_edge84
    i8 9, label %sw.bb50
  ]

artpec6_pmx_reg_offset.exit.sw.bb37_crit_edge84:  ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

artpec6_pmx_reg_offset.exit.sw.bb37_crit_edge:    ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

artpec6_pmx_reg_offset.exit.cleanup_crit_edge:    ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %artpec6_pmx_reg_offset.exit
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb37:                                          ; preds = %artpec6_pmx_reg_offset.exit.sw.bb37_crit_edge, %artpec6_pmx_reg_offset.exit.sw.bb37_crit_edge84
  %and38 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %sw.bb37
  %and42 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp43 = icmp eq i32 %and.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool44.not = icmp eq i32 %and42, 0
  %or.cond = select i1 %cmp43, i1 %tobool44.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp45 = icmp ne i32 %and.i, 3
  %or.cond75 = select i1 %cmp45, i1 true, i1 %tobool44.not
  %or.cond83 = select i1 %or.cond.not, i1 %or.cond75, i1 false
  br i1 %or.cond83, label %if.end41.sw.epilog_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb50:                                          ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and51 = lshr i32 %23, 5
  %shr = and i32 %and51, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.artpec6_pconf_get, i32 0, i32 %shr
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %26 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load, ptr %config, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %if.end41.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end41.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %artpec6_pmx_reg_offset.exit.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -524, %if.then6 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ -524, %artpec6_pmx_reg_offset.exit.cleanup_crit_edge ], [ -524, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %num_pins = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pin)
  %cmp.not = icmp ugt i32 %1, %pin
  br i1 %cmp.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_set, %cleanup161)) #9
          to label %if.then5 [label %cleanup161], !srcloc !473

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %pins = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %pin, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_set.__UNIQUE_ID_ddebug226, ptr noundef %3, ptr noundef nonnull @.str.165, ptr noundef %7) #9
  br label %cleanup161

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_set, %do.end28)) #9
          to label %if.then21 [label %do.end28], !srcloc !473

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %pins23 = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %pins23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins23, align 4
  %name25 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %pin, i32 1
  %12 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_set.__UNIQUE_ID_ddebug227, ptr noundef %9, ptr noundef nonnull @.str.168, ptr noundef %13) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %do.body7
  %base = getelementptr inbounds %struct.artpec6_pmx, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %pin, 35
  br i1 %cmp1.not.i, label %for.inc.i, label %do.end28.if.then.i_crit_edge

do.end28.if.then.i_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %do.end28.if.then.i_crit_edge
  %i.011.lcssa.i = phi i32 [ 0, %do.end28.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.pin_register], ptr @pin_register, i32 0, i32 %i.011.lcssa.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %pin, %17
  %mul.i = shl i32 %sub.i, 2
  %reg_base.i = getelementptr [3 x %struct.pin_register], ptr @pin_register, i32 0, i32 %i.011.lcssa.i, i32 2
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_base.i, align 4
  %add.i = add i32 %mul.i, %19
  br label %artpec6_pmx_reg_offset.exit

for.inc.i:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %pin)
  %cmp1.not.1.i = icmp ugt i32 %pin, 52
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then.i_crit_edge

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %pin)
  %cmp1.not.2.i = icmp ugt i32 %pin, 96
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then.i_crit_edge

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %pin) #12
  br label %artpec6_pmx_reg_offset.exit

artpec6_pmx_reg_offset.exit:                      ; preds = %for.inc.2.i, %if.then.i
  %retval.0.i223 = phi i32 [ %add.i, %if.then.i ], [ 0, %for.inc.2.i ]
  %add.ptr = getelementptr i8, ptr %15, i32 %retval.0.i223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp30239.not = icmp eq i32 %num_configs, 0
  br i1 %cmp30239.not, label %artpec6_pmx_reg_offset.exit.cleanup161_crit_edge, label %artpec6_pmx_reg_offset.exit.for.body_crit_edge

artpec6_pmx_reg_offset.exit.for.body_crit_edge:   ; preds = %artpec6_pmx_reg_offset.exit
  br label %for.body

artpec6_pmx_reg_offset.exit.cleanup161_crit_edge: ; preds = %artpec6_pmx_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup161

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %artpec6_pmx_reg_offset.exit.for.body_crit_edge
  %i.0240 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %artpec6_pmx_reg_offset.exit.for.body_crit_edge ]
  %arrayidx31 = getelementptr i32, ptr %configs, i32 %i.0240
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx31, align 4
  %shr.i = lshr i32 %21, 8
  %trunc = trunc i32 %21 to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %trunc, label %do.body142 [
    i8 1, label %sw.bb
    i8 5, label %sw.bb41
    i8 3, label %sw.bb73
    i8 9, label %sw.bb107
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !477
  %24 = or i32 %23, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #9, !srcloc !472
  br label %for.inc

sw.bb41:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp42.not = icmp eq i32 %shr.i, 1
  br i1 %cmp42.not, label %if.end63, label %do.body44

do.body44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_set, %cleanup161)) #9
          to label %if.then58 [label %cleanup161], !srcloc !473

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %dev59 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %25 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_set.__UNIQUE_ID_ddebug228, ptr noundef %26, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.167, i32 noundef %shr.i) #9
  br label %cleanup161

if.end63:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  %28 = and i32 %27, -50331649
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #9, !srcloc !472
  br label %for.inc

sw.bb73:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp74.not = icmp eq i32 %shr.i, 1
  br i1 %cmp74.not, label %if.end95, label %do.body76

do.body76:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_set, %cleanup161)) #9
          to label %if.then90 [label %cleanup161], !srcloc !473

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %dev91 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %30 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev91, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_set.__UNIQUE_ID_ddebug229, ptr noundef %31, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.167, i32 noundef %shr.i) #9
  br label %cleanup161

if.end95:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  %33 = and i32 %32, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %33) #9, !srcloc !472
  br label %for.inc

sw.bb107:                                         ; preds = %for.body
  %switch.tableidx = add nsw i32 %shr.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %34 = icmp ult i32 %switch.tableidx, 6
  br i1 %34, label %switch.hole_check, label %sw.bb107.do.body111_crit_edge

sw.bb107.do.body111_crit_edge:                    ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body111

do.body111:                                       ; preds = %switch.hole_check.do.body111_crit_edge, %sw.bb107.do.body111_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_set, %cleanup161)) #9
          to label %if.then125 [label %cleanup161], !srcloc !473

if.then125:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  %dev126 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %35 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev126, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_set.__UNIQUE_ID_ddebug230, ptr noundef %36, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.167, i32 noundef %shr.i) #9
  br label %cleanup161

switch.hole_check:                                ; preds = %sw.bb107
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 53, %switch.maskindex
  %37 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %switch.lobit.not = icmp eq i8 %37, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body111_crit_edge, label %switch.lookup

switch.hole_check.do.body111_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body111

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.artpec6_pconf_set, i32 0, i32 %switch.tableidx
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  %40 = and i32 %39, -1610612737
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %or138 = or i32 %41, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !484
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %or138)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %42) #9, !srcloc !472
  br label %for.inc

do.body142:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_set, %cleanup161)) #9
          to label %if.then156 [label %cleanup161], !srcloc !473

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_set.__UNIQUE_ID_ddebug231, ptr noundef %44, ptr noundef nonnull @.str.170) #9
  br label %cleanup161

for.inc:                                          ; preds = %switch.lookup, %if.end95, %if.end63, %sw.bb
  %inc = add nuw i32 %i.0240, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup161_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup161_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup161

cleanup161:                                       ; preds = %for.inc.cleanup161_crit_edge, %if.then156, %do.body142, %if.then125, %do.body111, %if.then90, %do.body76, %if.then58, %do.body44, %artpec6_pmx_reg_offset.exit.cleanup161_crit_edge, %if.then5, %do.body
  %retval.2 = phi i32 [ -524, %if.then5 ], [ -524, %do.body ], [ -524, %if.then156 ], [ -22, %if.then125 ], [ -22, %if.then90 ], [ -22, %if.then58 ], [ -22, %do.body44 ], [ -22, %do.body76 ], [ -22, %do.body111 ], [ -524, %do.body142 ], [ 0, %artpec6_pmx_reg_offset.exit.cleanup161_crit_edge ], [ 0, %for.inc.cleanup161_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pconf_group_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pconf_group_set, %for.body.lr.ph)) #9
          to label %if.then [label %for.body.lr.ph], !srcloc !473

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %arrayidx.i = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pconf_group_set.__UNIQUE_ID_ddebug232, ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef %3) #9
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then, %entry
  %num_pins5 = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 2
  %4 = ptrtoint ptr %num_pins5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins5, align 4
  %pins = getelementptr [29 x %struct.artpec6_pin_group], ptr @artpec6_pin_groups, i32 0, i32 %group, i32 1
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %current_pin.023, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %current_pin.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %7, i32 %current_pin.023
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %call8 = tail call i32 @artpec6_pconf_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0.ph = phi i32 [ %call8, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !429, !430, !431, !433, !435, !436, !437, !439, !440, !442, !443, !445, !446, !448, !449, !451, !453, !455, !456, !458, !459, !460}
!llvm.module.flags = !{!462, !463, !464, !465, !466, !467, !468, !469}
!llvm.ident = !{!470}

!0 = !{ptr @__initcall__kmod_pinctrl_artpec6__233_1000_artpec6_pmx_init3, !1, !"__initcall__kmod_pinctrl_artpec6__233_1000_artpec6_pmx_init3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 1000, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 989, i32 11}
!4 = !{ptr @artpec6_pmx_driver, !5, !"artpec6_pmx_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 987, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 962, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @artpec6_pmx_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @artpec6_pmx_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 968, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @artpec6_pmx_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @artpec6_pmx_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 420, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @artpec6_pmx_reg_offset._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @artpec6_pmx_reg_offset._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pin_register, !25, !"pin_register", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 400, i32 34}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 82, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 83, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 84, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 85, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 86, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 87, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 88, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 89, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 90, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 91, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 92, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 93, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 94, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 95, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 96, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 97, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 98, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 99, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 100, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 101, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 102, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 103, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 104, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 105, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 106, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 107, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 108, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 109, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 110, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 111, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 112, i32 2}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 113, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 114, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 115, i32 2}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 116, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 117, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 118, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 119, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 120, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 121, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 122, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 123, i32 2}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 124, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 125, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 126, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 127, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 128, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 129, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 130, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 131, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 132, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 133, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 134, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 135, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 136, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 137, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 138, i32 2}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 139, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 140, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 141, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 142, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 143, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 144, i32 2}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 145, i32 2}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 146, i32 2}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 147, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 148, i32 2}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 149, i32 2}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 150, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 151, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 152, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 153, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 154, i32 2}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 155, i32 2}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 156, i32 2}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 157, i32 2}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 158, i32 2}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 159, i32 2}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 160, i32 2}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 161, i32 2}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 162, i32 2}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 163, i32 2}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 164, i32 2}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 165, i32 2}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 166, i32 2}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 167, i32 2}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 168, i32 2}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 169, i32 2}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 170, i32 2}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 171, i32 2}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 172, i32 2}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 173, i32 2}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 174, i32 2}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 175, i32 2}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 176, i32 2}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 177, i32 2}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 178, i32 2}
!220 = !{ptr @artpec6_pins, !221, !"artpec6_pins", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 81, i32 32}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 521, i32 11}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 526, i32 11}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 531, i32 11}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 536, i32 11}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 541, i32 11}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 546, i32 11}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 551, i32 11}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 556, i32 11}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 561, i32 11}
!240 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 566, i32 11}
!242 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 571, i32 11}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 576, i32 11}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 581, i32 11}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 586, i32 11}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 591, i32 11}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 596, i32 11}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 601, i32 11}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 606, i32 11}
!258 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 611, i32 11}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 616, i32 11}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 621, i32 11}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 626, i32 11}
!266 = !{ptr @artpec6_pmx_functions, !267, !"artpec6_pmx_functions", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 519, i32 38}
!268 = !{ptr @.str.131, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 487, i32 2}
!270 = !{ptr @.str.132, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 487, i32 19}
!272 = !{ptr @.str.133, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 487, i32 36}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 487, i32 48}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 488, i32 2}
!278 = !{ptr @.str.136, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 488, i32 14}
!280 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 488, i32 26}
!282 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 488, i32 38}
!284 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 489, i32 2}
!286 = !{ptr @.str.140, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 489, i32 14}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 489, i32 26}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 489, i32 43}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 490, i32 2}
!294 = !{ptr @.str.144, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 490, i32 15}
!296 = !{ptr @.str.145, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 490, i32 28}
!298 = !{ptr @.str.146, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 490, i32 41}
!300 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 491, i32 2}
!302 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 491, i32 15}
!304 = !{ptr @.str.149, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 491, i32 28}
!306 = !{ptr @.str.150, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 491, i32 41}
!308 = !{ptr @.str.151, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 491, i32 54}
!310 = !{ptr @.str.152, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 492, i32 2}
!312 = !{ptr @.str.153, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 492, i32 15}
!314 = !{ptr @gpiogrps, !315, !"gpiogrps", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 486, i32 27}
!316 = !{ptr @cpuclkoutgrps, !317, !"cpuclkoutgrps", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 494, i32 27}
!318 = !{ptr @udlclkoutgrps, !319, !"udlclkoutgrps", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 495, i32 27}
!320 = !{ptr @i2c1grps, !321, !"i2c1grps", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 496, i32 27}
!322 = !{ptr @i2c2grps, !323, !"i2c2grps", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 497, i32 27}
!324 = !{ptr @i2c3grps, !325, !"i2c3grps", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 498, i32 27}
!326 = !{ptr @i2s0grps, !327, !"i2s0grps", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 499, i32 27}
!328 = !{ptr @i2s1grps, !329, !"i2s1grps", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 500, i32 27}
!330 = !{ptr @i2srefclkgrps, !331, !"i2srefclkgrps", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 501, i32 27}
!332 = !{ptr @spi0grps, !333, !"spi0grps", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 502, i32 27}
!334 = !{ptr @spi1grps, !335, !"spi1grps", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 503, i32 27}
!336 = !{ptr @pciedebuggrps, !337, !"pciedebuggrps", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 504, i32 27}
!338 = !{ptr @uart0grps, !339, !"uart0grps", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 505, i32 27}
!340 = !{ptr @uart1grps, !341, !"uart1grps", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 507, i32 27}
!342 = !{ptr @uart2grps, !343, !"uart2grps", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 508, i32 27}
!344 = !{ptr @.str.154, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 510, i32 45}
!346 = !{ptr @uart3grps, !347, !"uart3grps", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 510, i32 27}
!348 = !{ptr @.str.155, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 511, i32 58}
!350 = !{ptr @uart4grps, !351, !"uart4grps", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 511, i32 27}
!352 = !{ptr @uart5grps, !353, !"uart5grps", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 512, i32 27}
!354 = !{ptr @.str.156, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 514, i32 44}
!356 = !{ptr @nandgrps, !357, !"nandgrps", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 514, i32 27}
!358 = !{ptr @.str.157, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 515, i32 45}
!360 = !{ptr @sdio0grps, !361, !"sdio0grps", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 515, i32 27}
!362 = !{ptr @.str.158, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 516, i32 45}
!364 = !{ptr @sdio1grps, !365, !"sdio1grps", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 516, i32 27}
!366 = !{ptr @.str.159, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 517, i32 47}
!368 = !{ptr @ethernetgrps, !369, !"ethernetgrps", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 517, i32 27}
!370 = !{ptr @.str.160, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 334, i32 11}
!372 = !{ptr @artpec6_pin_groups, !373, !"artpec6_pin_groups", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 212, i32 39}
!374 = !{ptr @cpuclkout_pins0, !375, !"cpuclkout_pins0", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 181, i32 27}
!376 = !{ptr @udlclkout_pins0, !377, !"udlclkout_pins0", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 182, i32 27}
!378 = !{ptr @i2c1_pins0, !379, !"i2c1_pins0", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 183, i32 27}
!380 = !{ptr @i2c2_pins0, !381, !"i2c2_pins0", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 184, i32 27}
!382 = !{ptr @i2c3_pins0, !383, !"i2c3_pins0", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 185, i32 27}
!384 = !{ptr @i2s0_pins0, !385, !"i2s0_pins0", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 186, i32 27}
!386 = !{ptr @i2s1_pins0, !387, !"i2s1_pins0", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 187, i32 27}
!388 = !{ptr @i2srefclk_pins0, !389, !"i2srefclk_pins0", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 188, i32 27}
!390 = !{ptr @spi0_pins0, !391, !"spi0_pins0", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 189, i32 27}
!392 = !{ptr @spi1_pins0, !393, !"spi1_pins0", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 190, i32 27}
!394 = !{ptr @pciedebug_pins0, !395, !"pciedebug_pins0", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 191, i32 27}
!396 = !{ptr @uart0_pins0, !397, !"uart0_pins0", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 192, i32 27}
!398 = !{ptr @uart0_pins1, !399, !"uart0_pins1", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 194, i32 27}
!400 = !{ptr @uart1_pins0, !401, !"uart1_pins0", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 195, i32 27}
!402 = !{ptr @uart2_pins0, !403, !"uart2_pins0", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 196, i32 27}
!404 = !{ptr @uart2_pins1, !405, !"uart2_pins1", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 198, i32 27}
!406 = !{ptr @uart3_pins0, !407, !"uart3_pins0", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 199, i32 27}
!408 = !{ptr @uart4_pins0, !409, !"uart4_pins0", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 200, i32 27}
!410 = !{ptr @uart5_pins0, !411, !"uart5_pins0", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 201, i32 27}
!412 = !{ptr @nand_pins0, !413, !"nand_pins0", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 202, i32 27}
!414 = !{ptr @sdio0_pins0, !415, !"sdio0_pins0", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 205, i32 27}
!416 = !{ptr @sdio1_pins0, !417, !"sdio1_pins0", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 206, i32 27}
!418 = !{ptr @ethernet_pins0, !419, !"ethernet_pins0", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 207, i32 27}
!420 = !{ptr @artpec6_desc, !421, !"artpec6_desc", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 910, i32 28}
!422 = !{ptr @artpec6_pctrl_ops, !423, !"artpec6_pctrl_ops", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 478, i32 33}
!424 = !{ptr @artpec6_pmx_ops, !425, !"artpec6_pmx_ops", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 725, i32 32}
!426 = !{ptr @.str.161, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 697, i32 2}
!428 = !{ptr @.str.162, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.163, !427, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @artpec6_pmx_set.__UNIQUE_ID_ddebug223, !427, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!431 = !{ptr @artpec6_pconf_ops, !432, !"artpec6_pconf_ops", i1 false, i1 false}
!432 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 903, i32 33}
!433 = !{ptr @.str.164, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 742, i32 3}
!435 = !{ptr @.str.165, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @artpec6_pconf_get.__UNIQUE_ID_ddebug224, !434, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!437 = !{ptr @.str.166, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 747, i32 2}
!439 = !{ptr @artpec6_pconf_get.__UNIQUE_ID_ddebug225, !438, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!440 = !{ptr @.str.167, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 806, i32 3}
!442 = !{ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug226, !441, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!443 = !{ptr @.str.168, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 811, i32 2}
!445 = !{ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug227, !444, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!446 = !{ptr @.str.169, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 832, i32 5}
!448 = !{ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug228, !447, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!449 = !{ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug229, !450, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!450 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 845, i32 5}
!451 = !{ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug230, !452, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!452 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 859, i32 5}
!453 = !{ptr @.str.170, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 871, i32 4}
!455 = !{ptr @artpec6_pconf_set.__UNIQUE_ID_ddebug231, !454, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!456 = !{ptr @.str.171, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 886, i32 2}
!458 = !{ptr @.str.172, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @artpec6_pconf_group_set.__UNIQUE_ID_ddebug232, !457, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!460 = !{ptr @artpec6_pinctrl_match, !461, !"artpec6_pinctrl_match", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/pinctrl-artpec6.c", i32 982, i32 34}
!462 = !{i32 1, !"wchar_size", i32 2}
!463 = !{i32 1, !"min_enum_size", i32 4}
!464 = !{i32 8, !"branch-target-enforcement", i32 0}
!465 = !{i32 8, !"sign-return-address", i32 0}
!466 = !{i32 8, !"sign-return-address-all", i32 0}
!467 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!468 = !{i32 7, !"uwtable", i32 1}
!469 = !{i32 7, !"frame-pointer", i32 2}
!470 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!471 = !{i64 4795465}
!472 = !{i64 4795047}
!473 = !{i64 2148301738, i64 2148301743, i64 2148301756, i64 2148301800, i64 2148301834, i64 2148301855}
!474 = !{i64 2153700530}
!475 = !{i64 2153700756}
!476 = !{i64 2153709688}
!477 = !{i64 2153715102}
!478 = !{i64 2153715307}
!479 = !{i64 2153718268}
!480 = !{i64 2153718484}
!481 = !{i64 2153721445}
!482 = !{i64 2153721661}
!483 = !{i64 2153724622}
!484 = !{i64 2153724838}
