; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-bm1880.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-bm1880.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bm1880_pctrl_group = type { ptr, ptr, i32 }
%struct.bm1880_pinmux_function = type { ptr, ptr, i32, i32, i32, i8 }
%struct.bm1880_pinconf_data = type { i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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
%struct.bm1880_pinctrl = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_bm1880__223_1357_bm1880_pinctrl_init3 = internal global ptr @bm1880_pinctrl_init, section ".initcall3.init", align 4
@bm1880_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bm1880_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bm1880_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-bm1880\00", [17 x i8] zeroinitializer }, align 32
@bm1880_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bitmain,bm1880-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bm1880_pctrl_groups = internal constant { [138 x %struct.bm1880_pctrl_group], [392 x i8] } { [138 x %struct.bm1880_pctrl_group] [%struct.bm1880_pctrl_group { ptr @.str.6, ptr @nand_pins, i32 17 }, %struct.bm1880_pctrl_group { ptr @.str.7, ptr @spi_pins, i32 7 }, %struct.bm1880_pctrl_group { ptr @.str.8, ptr @emmc_pins, i32 10 }, %struct.bm1880_pctrl_group { ptr @.str.9, ptr @sdio_pins, i32 10 }, %struct.bm1880_pctrl_group { ptr @.str.10, ptr @eth0_pins, i32 16 }, %struct.bm1880_pctrl_group { ptr @.str.11, ptr @pwm0_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.12, ptr @pwm1_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.13, ptr @pwm2_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.14, ptr @pwm3_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.15, ptr @pwm4_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.16, ptr @pwm5_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.17, ptr @pwm6_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.18, ptr @pwm7_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.19, ptr @pwm8_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.20, ptr @pwm9_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.21, ptr @pwm10_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.22, ptr @pwm11_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.23, ptr @pwm12_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.24, ptr @pwm13_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.25, ptr @pwm14_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.26, ptr @pwm15_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.27, ptr @pwm16_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.28, ptr @pwm17_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.29, ptr @pwm18_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.30, ptr @pwm19_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.31, ptr @pwm20_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.32, ptr @pwm21_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.33, ptr @pwm22_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.34, ptr @pwm23_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.35, ptr @pwm24_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.36, ptr @pwm25_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.37, ptr @pwm26_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.38, ptr @pwm27_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.39, ptr @pwm28_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.40, ptr @pwm29_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.41, ptr @pwm30_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.42, ptr @pwm31_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.43, ptr @pwm32_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.44, ptr @pwm33_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.45, ptr @pwm34_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.46, ptr @pwm35_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.47, ptr @pwm36_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.48, ptr @pwm37_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.49, ptr @i2c0_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.50, ptr @i2c1_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.51, ptr @i2c2_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.52, ptr @i2c3_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.53, ptr @i2c4_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.54, ptr @uart0_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.55, ptr @uart1_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.56, ptr @uart2_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.57, ptr @uart3_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.58, ptr @uart4_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.59, ptr @uart5_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.60, ptr @uart6_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.61, ptr @uart7_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.62, ptr @uart8_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.63, ptr @uart9_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.64, ptr @uart10_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.65, ptr @uart11_pins, i32 2 }, %struct.bm1880_pctrl_group { ptr @.str.66, ptr @uart12_pins, i32 4 }, %struct.bm1880_pctrl_group { ptr @.str.67, ptr @uart13_pins, i32 4 }, %struct.bm1880_pctrl_group { ptr @.str.68, ptr @uart14_pins, i32 4 }, %struct.bm1880_pctrl_group { ptr @.str.69, ptr @uart15_pins, i32 4 }, %struct.bm1880_pctrl_group { ptr @.str.70, ptr @gpio0_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.71, ptr @gpio1_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.72, ptr @gpio2_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.73, ptr @gpio3_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.74, ptr @gpio4_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.75, ptr @gpio5_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.76, ptr @gpio6_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.77, ptr @gpio7_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.78, ptr @gpio8_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.79, ptr @gpio9_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.80, ptr @gpio10_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.81, ptr @gpio11_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.82, ptr @gpio12_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.83, ptr @gpio13_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.84, ptr @gpio14_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.85, ptr @gpio15_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.86, ptr @gpio16_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.87, ptr @gpio17_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.88, ptr @gpio18_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.89, ptr @gpio19_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.90, ptr @gpio20_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.91, ptr @gpio21_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.92, ptr @gpio22_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.93, ptr @gpio23_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.94, ptr @gpio24_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.95, ptr @gpio25_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.96, ptr @gpio26_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.97, ptr @gpio27_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.98, ptr @gpio28_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.99, ptr @gpio29_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.100, ptr @gpio30_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.101, ptr @gpio31_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.102, ptr @gpio32_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.103, ptr @gpio33_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.104, ptr @gpio34_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.105, ptr @gpio35_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.106, ptr @gpio36_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.107, ptr @gpio37_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.108, ptr @gpio38_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.109, ptr @gpio39_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.110, ptr @gpio40_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.111, ptr @gpio41_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.112, ptr @gpio42_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.113, ptr @gpio43_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.114, ptr @gpio44_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.115, ptr @gpio45_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.116, ptr @gpio46_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.117, ptr @gpio47_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.118, ptr @gpio48_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.119, ptr @gpio49_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.120, ptr @gpio50_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.121, ptr @gpio51_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.122, ptr @gpio52_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.123, ptr @gpio53_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.124, ptr @gpio54_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.125, ptr @gpio55_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.126, ptr @gpio56_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.127, ptr @gpio57_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.128, ptr @gpio58_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.129, ptr @gpio59_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.130, ptr @gpio60_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.131, ptr @gpio61_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.132, ptr @gpio62_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.133, ptr @gpio63_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.134, ptr @gpio64_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.135, ptr @gpio65_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.136, ptr @gpio66_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.137, ptr @gpio67_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.138, ptr @eth1_pins, i32 16 }, %struct.bm1880_pctrl_group { ptr @.str.139, ptr @i2s0_pins, i32 5 }, %struct.bm1880_pctrl_group { ptr @.str.140, ptr @i2s0_mclkin_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.141, ptr @i2s1_pins, i32 5 }, %struct.bm1880_pctrl_group { ptr @.str.142, ptr @i2s1_mclkin_pins, i32 1 }, %struct.bm1880_pctrl_group { ptr @.str.143, ptr @spi0_pins, i32 4 }], [392 x i8] zeroinitializer }, align 32
@bm1880_pmux_functions = internal constant { [138 x %struct.bm1880_pinmux_function], [816 x i8] } { [138 x %struct.bm1880_pinmux_function] [%struct.bm1880_pinmux_function { ptr @.str.144, ptr @nand_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.145, ptr @spi_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.146, ptr @emmc_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.147, ptr @sdio_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.148, ptr @eth0_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.149, ptr @pwm0_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.150, ptr @pwm1_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.151, ptr @pwm2_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.152, ptr @pwm3_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.153, ptr @pwm4_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.154, ptr @pwm5_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.155, ptr @pwm6_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.156, ptr @pwm7_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.157, ptr @pwm8_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.158, ptr @pwm9_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.159, ptr @pwm10_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.160, ptr @pwm11_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.161, ptr @pwm12_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.162, ptr @pwm13_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.163, ptr @pwm14_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.164, ptr @pwm15_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.165, ptr @pwm16_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.166, ptr @pwm17_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.167, ptr @pwm18_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.168, ptr @pwm19_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.169, ptr @pwm20_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.170, ptr @pwm21_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.171, ptr @pwm22_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.172, ptr @pwm23_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.173, ptr @pwm24_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.174, ptr @pwm25_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.175, ptr @pwm26_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.176, ptr @pwm27_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.177, ptr @pwm28_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.178, ptr @pwm29_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.179, ptr @pwm30_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.180, ptr @pwm31_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.181, ptr @pwm32_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.182, ptr @pwm33_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.183, ptr @pwm34_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.184, ptr @pwm35_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.185, ptr @pwm36_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.186, ptr @pwm37_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.187, ptr @i2c0_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.188, ptr @i2c1_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.189, ptr @i2c2_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.190, ptr @i2c3_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.191, ptr @i2c4_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.192, ptr @uart0_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.193, ptr @uart1_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.194, ptr @uart2_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.195, ptr @uart3_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.196, ptr @uart4_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.197, ptr @uart5_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.198, ptr @uart6_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.199, ptr @uart7_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.200, ptr @uart8_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.201, ptr @uart9_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.202, ptr @uart10_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.203, ptr @uart11_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.204, ptr @uart12_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.205, ptr @uart13_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.206, ptr @uart14_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.207, ptr @uart15_group, i32 1, i32 3, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.208, ptr @gpio0_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.209, ptr @gpio1_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.210, ptr @gpio2_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.211, ptr @gpio3_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.212, ptr @gpio4_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.213, ptr @gpio5_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.214, ptr @gpio6_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.215, ptr @gpio7_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.216, ptr @gpio8_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.217, ptr @gpio9_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.218, ptr @gpio10_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.219, ptr @gpio11_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.220, ptr @gpio12_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.221, ptr @gpio13_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.222, ptr @gpio14_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.223, ptr @gpio15_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.224, ptr @gpio16_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.225, ptr @gpio17_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.226, ptr @gpio18_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.227, ptr @gpio19_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.228, ptr @gpio20_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.229, ptr @gpio21_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.230, ptr @gpio22_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.231, ptr @gpio23_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.232, ptr @gpio24_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.233, ptr @gpio25_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.234, ptr @gpio26_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.235, ptr @gpio27_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.236, ptr @gpio28_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.237, ptr @gpio29_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.238, ptr @gpio30_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.239, ptr @gpio31_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.240, ptr @gpio32_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.241, ptr @gpio33_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.242, ptr @gpio34_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.243, ptr @gpio35_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.244, ptr @gpio36_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.245, ptr @gpio37_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.246, ptr @gpio38_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.247, ptr @gpio39_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.248, ptr @gpio40_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.249, ptr @gpio41_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.250, ptr @gpio42_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.251, ptr @gpio43_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.252, ptr @gpio44_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.253, ptr @gpio45_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.254, ptr @gpio46_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.255, ptr @gpio47_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.256, ptr @gpio48_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.257, ptr @gpio49_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.258, ptr @gpio50_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.259, ptr @gpio51_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.260, ptr @gpio52_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.261, ptr @gpio53_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.262, ptr @gpio54_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.263, ptr @gpio55_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.264, ptr @gpio56_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.265, ptr @gpio57_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.266, ptr @gpio58_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.267, ptr @gpio59_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.268, ptr @gpio60_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.269, ptr @gpio61_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.270, ptr @gpio62_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.271, ptr @gpio63_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.272, ptr @gpio64_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.273, ptr @gpio65_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.274, ptr @gpio66_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.275, ptr @gpio67_group, i32 1, i32 0, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.276, ptr @eth1_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.277, ptr @i2s0_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.278, ptr @i2s0_mclkin_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.279, ptr @i2s1_group, i32 1, i32 2, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.280, ptr @i2s1_mclkin_group, i32 1, i32 1, i32 0, i8 0 }, %struct.bm1880_pinmux_function { ptr @.str.281, ptr @spi0_group, i32 1, i32 1, i32 0, i8 0 }], [816 x i8] zeroinitializer }, align 32
@bm1880_pinconf = internal constant { [112 x %struct.bm1880_pinconf_data], [96 x i8] } { [112 x %struct.bm1880_pinconf_data] [%struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 3 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }, %struct.bm1880_pinconf_data { i32 2 }], [96 x i8] zeroinitializer }, align 32
@bm1880_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.282, ptr @bm1880_pins, i32 112, ptr @bm1880_pctrl_ops, ptr @bm1880_pinmux_ops, ptr @bm1880_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bm1880_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BM1880 pinctrl driver initialized\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bm1880_pinctrl_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/pinctrl-bm1880.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bm1880_pinctrl_probe._entry_ptr = internal global ptr @bm1880_pinctrl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_grp\00", [23 x i8] zeroinitializer }, align 32
@nand_pins = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_grp\00", [24 x i8] zeroinitializer }, align 32
@spi_pins = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 8, i32 10, i32 11, i32 12, i32 13], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emmc_grp\00", [23 x i8] zeroinitializer }, align 32
@emmc_pins = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 9, i32 14, i32 15, i32 16], [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio_grp\00", [23 x i8] zeroinitializer }, align 32
@sdio_pins = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26], [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth0_grp\00", [23 x i8] zeroinitializer }, align 32
@eth0_pins = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 29], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 30], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 34], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 35], [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm4_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 43], [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm5_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 44], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm6_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm6_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 45], [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm7_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm7_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 46], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm8_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm8_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 47], [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm9_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm9_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm10_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm10_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 49], [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm11_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm11_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 50], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm12_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm12_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 51], [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm13_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm13_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 52], [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm14_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm14_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 53], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm15_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm15_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 54], [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm16_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm16_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 55], [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm17_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm17_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 56], [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm18_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm18_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 57], [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm19_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm19_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 58], [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm20_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm20_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 59], [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm21_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm21_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 60], [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm22_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm22_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 61], [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm23_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm23_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 62], [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm24_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm24_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 97], [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm25_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm25_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 98], [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm26_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm26_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 99], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm27_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm27_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 100], [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm28_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm28_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 101], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm29_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm29_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 102], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm30_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm30_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 103], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm31_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm31_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 104], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm32_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm32_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 105], [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm33_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm33_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 106], [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm34_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm34_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 107], [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm35_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm35_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 108], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm36_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm36_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 109], [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm37_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm37_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 110], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c0_grp\00", [23 x i8] zeroinitializer }, align 32
@i2c0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 63, i32 64], [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1_grp\00", [23 x i8] zeroinitializer }, align 32
@i2c1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 65, i32 66], [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2_grp\00", [23 x i8] zeroinitializer }, align 32
@i2c2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 67, i32 68], [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c3_grp\00", [23 x i8] zeroinitializer }, align 32
@i2c3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 69, i32 70], [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c4_grp\00", [23 x i8] zeroinitializer }, align 32
@i2c4_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 71, i32 72], [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_grp\00", [22 x i8] zeroinitializer }, align 32
@uart0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 73, i32 74], [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_grp\00", [22 x i8] zeroinitializer }, align 32
@uart1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 75, i32 76], [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_grp\00", [22 x i8] zeroinitializer }, align 32
@uart2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 77, i32 78], [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_grp\00", [22 x i8] zeroinitializer }, align 32
@uart3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 79, i32 80], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_grp\00", [22 x i8] zeroinitializer }, align 32
@uart4_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 81, i32 82], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart5_grp\00", [22 x i8] zeroinitializer }, align 32
@uart5_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 83, i32 84], [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart6_grp\00", [22 x i8] zeroinitializer }, align 32
@uart6_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 85, i32 86], [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart7_grp\00", [22 x i8] zeroinitializer }, align 32
@uart7_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 87, i32 88], [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart8_grp\00", [22 x i8] zeroinitializer }, align 32
@uart8_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 89, i32 90], [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart9_grp\00", [22 x i8] zeroinitializer }, align 32
@uart9_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 91, i32 92], [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart10_grp\00", [21 x i8] zeroinitializer }, align 32
@uart10_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 93, i32 94], [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart11_grp\00", [21 x i8] zeroinitializer }, align 32
@uart11_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 95, i32 96], [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart12_grp\00", [21 x i8] zeroinitializer }, align 32
@uart12_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 73, i32 74, i32 75, i32 76], [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart13_grp\00", [21 x i8] zeroinitializer }, align 32
@uart13_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 77, i32 78, i32 83, i32 84], [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart14_grp\00", [21 x i8] zeroinitializer }, align 32
@uart14_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 79, i32 80, i32 85, i32 86], [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart15_grp\00", [21 x i8] zeroinitializer }, align 32
@uart15_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 81, i32 82, i32 87, i32 88], [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio0_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 97], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio1_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 98], [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio2_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 99], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio3_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 100], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio4_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 101], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio5_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 102], [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio6_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio6_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 103], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio7_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio7_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 104], [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio8_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio8_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 105], [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio9_grp\00", [22 x i8] zeroinitializer }, align 32
@gpio9_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 106], [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio10_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio10_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 107], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio11_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio11_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 108], [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio12_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio12_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 109], [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio13_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio13_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 110], [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio14_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio14_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 43], [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio15_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio15_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 44], [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio16_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio16_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 45], [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio17_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio17_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 46], [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio18_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio18_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 47], [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio19_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio19_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48], [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio20_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio20_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 49], [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio21_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio21_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 50], [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio22_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio22_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 51], [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio23_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio23_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 52], [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio24_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio24_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 53], [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio25_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio25_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 54], [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio26_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio26_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 55], [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio27_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio27_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 56], [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio28_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio28_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 57], [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio29_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio29_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 58], [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio30_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio30_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 59], [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio31_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio31_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 60], [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio32_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio32_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 61], [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio33_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio33_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 62], [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio34_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio34_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 63], [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio35_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio35_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 64], [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio36_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio36_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 65], [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio37_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio37_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 66], [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio38_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio38_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 67], [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio39_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio39_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 68], [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio40_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio40_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 69], [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio41_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio41_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 70], [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio42_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio42_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 71], [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio43_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio43_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 72], [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio44_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio44_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 73], [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio45_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio45_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 74], [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio46_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio46_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 75], [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio47_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio47_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 76], [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio48_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio48_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 77], [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio49_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio49_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 78], [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio50_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio50_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 79], [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio51_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio51_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 80], [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio52_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio52_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 81], [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio53_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio53_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 82], [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio54_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio54_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 83], [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio55_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio55_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 84], [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio56_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio56_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 85], [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio57_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio57_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 86], [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio58_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio58_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 87], [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio59_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio59_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 88], [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio60_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio60_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 89], [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio61_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio61_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 90], [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio62_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio62_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 91], [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio63_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio63_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 92], [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio64_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio64_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 93], [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio65_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio65_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 94], [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio66_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio66_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 95], [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio67_grp\00", [21 x i8] zeroinitializer }, align 32
@gpio67_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 96], [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth1_grp\00", [23 x i8] zeroinitializer }, align 32
@eth1_pins = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_grp\00", [23 x i8] zeroinitializer }, align 32
@i2s0_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 87, i32 88, i32 89, i32 90, i32 91], [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s0_mclkin_grp\00", [16 x i8] zeroinitializer }, align 32
@i2s0_mclkin_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 97], [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_grp\00", [23 x i8] zeroinitializer }, align 32
@i2s1_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 92, i32 93, i32 94, i32 95, i32 96], [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s1_mclkin_grp\00", [16 x i8] zeroinitializer }, align 32
@i2s1_mclkin_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 98], [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_grp\00", [23 x i8] zeroinitializer }, align 32
@spi0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 59, i32 60, i32 61, i32 62], [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@spi_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@emmc_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@sdio_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eth0\00", [27 x i8] zeroinitializer }, align 32
@eth0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@pwm0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@pwm1_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@pwm2_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@pwm3_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@pwm4_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@pwm5_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@pwm6_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@pwm7_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm8\00", [27 x i8] zeroinitializer }, align 32
@pwm8_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm9\00", [27 x i8] zeroinitializer }, align 32
@pwm9_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm10\00", [26 x i8] zeroinitializer }, align 32
@pwm10_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm11\00", [26 x i8] zeroinitializer }, align 32
@pwm11_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm12\00", [26 x i8] zeroinitializer }, align 32
@pwm12_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm13\00", [26 x i8] zeroinitializer }, align 32
@pwm13_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm14\00", [26 x i8] zeroinitializer }, align 32
@pwm14_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.25], [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm15\00", [26 x i8] zeroinitializer }, align 32
@pwm15_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm16\00", [26 x i8] zeroinitializer }, align 32
@pwm16_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm17\00", [26 x i8] zeroinitializer }, align 32
@pwm17_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm18\00", [26 x i8] zeroinitializer }, align 32
@pwm18_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm19\00", [26 x i8] zeroinitializer }, align 32
@pwm19_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.30], [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm20\00", [26 x i8] zeroinitializer }, align 32
@pwm20_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm21\00", [26 x i8] zeroinitializer }, align 32
@pwm21_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm22\00", [26 x i8] zeroinitializer }, align 32
@pwm22_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm23\00", [26 x i8] zeroinitializer }, align 32
@pwm23_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm24\00", [26 x i8] zeroinitializer }, align 32
@pwm24_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm25\00", [26 x i8] zeroinitializer }, align 32
@pwm25_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm26\00", [26 x i8] zeroinitializer }, align 32
@pwm26_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.37], [28 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm27\00", [26 x i8] zeroinitializer }, align 32
@pwm27_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm28\00", [26 x i8] zeroinitializer }, align 32
@pwm28_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.39], [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm29\00", [26 x i8] zeroinitializer }, align 32
@pwm29_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm30\00", [26 x i8] zeroinitializer }, align 32
@pwm30_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm31\00", [26 x i8] zeroinitializer }, align 32
@pwm31_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.42], [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm32\00", [26 x i8] zeroinitializer }, align 32
@pwm32_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm33\00", [26 x i8] zeroinitializer }, align 32
@pwm33_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm34\00", [26 x i8] zeroinitializer }, align 32
@pwm34_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm35\00", [26 x i8] zeroinitializer }, align 32
@pwm35_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.46], [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm36\00", [26 x i8] zeroinitializer }, align 32
@pwm36_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.47], [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm37\00", [26 x i8] zeroinitializer }, align 32
@pwm37_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.48], [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@i2c0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@i2c1_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@i2c2_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@i2c3_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@i2c4_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@uart0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.54], [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@uart3_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.57], [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@uart4_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.58], [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart5\00", [26 x i8] zeroinitializer }, align 32
@uart5_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.59], [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart6\00", [26 x i8] zeroinitializer }, align 32
@uart6_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.60], [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart7\00", [26 x i8] zeroinitializer }, align 32
@uart7_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.61], [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart8\00", [26 x i8] zeroinitializer }, align 32
@uart8_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.62], [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart9\00", [26 x i8] zeroinitializer }, align 32
@uart9_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart10\00", [25 x i8] zeroinitializer }, align 32
@uart10_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.64], [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart11\00", [25 x i8] zeroinitializer }, align 32
@uart11_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart12\00", [25 x i8] zeroinitializer }, align 32
@uart12_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.66], [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart13\00", [25 x i8] zeroinitializer }, align 32
@uart13_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart14\00", [25 x i8] zeroinitializer }, align 32
@uart14_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart15\00", [25 x i8] zeroinitializer }, align 32
@uart15_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@gpio0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.70], [28 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@gpio1_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.71], [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@gpio2_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.72], [28 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@gpio3_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.73], [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@gpio4_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.74], [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@gpio5_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.75], [28 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@gpio6_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.76], [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@gpio7_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.77], [28 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@gpio8_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@gpio9_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.79], [28 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@gpio10_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.80], [28 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@gpio11_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.81], [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@gpio12_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.82], [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@gpio13_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.83], [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@gpio14_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.84], [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@gpio15_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@gpio16_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.86], [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@gpio17_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@gpio18_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.88], [28 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@gpio19_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@gpio20_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.90], [28 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@gpio21_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.91], [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@gpio22_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.92], [28 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@gpio23_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.93], [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@gpio24_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.94], [28 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@gpio25_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@gpio26_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.96], [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@gpio27_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.97], [28 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@gpio28_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.98], [28 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@gpio29_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.99], [28 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@gpio30_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.100], [28 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@gpio31_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.101], [28 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@gpio32_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.102], [28 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@gpio33_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.103], [28 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@gpio34_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.104], [28 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@gpio35_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.105], [28 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@gpio36_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.106], [28 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@gpio37_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.107], [28 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@gpio38_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.108], [28 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@gpio39_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.109], [28 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio40\00", [25 x i8] zeroinitializer }, align 32
@gpio40_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.110], [28 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio41\00", [25 x i8] zeroinitializer }, align 32
@gpio41_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio42\00", [25 x i8] zeroinitializer }, align 32
@gpio42_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.112], [28 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio43\00", [25 x i8] zeroinitializer }, align 32
@gpio43_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.113], [28 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio44\00", [25 x i8] zeroinitializer }, align 32
@gpio44_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.114], [28 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio45\00", [25 x i8] zeroinitializer }, align 32
@gpio45_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.115], [28 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio46\00", [25 x i8] zeroinitializer }, align 32
@gpio46_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.116], [28 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio47\00", [25 x i8] zeroinitializer }, align 32
@gpio47_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.117], [28 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio48\00", [25 x i8] zeroinitializer }, align 32
@gpio48_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.118], [28 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio49\00", [25 x i8] zeroinitializer }, align 32
@gpio49_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.119], [28 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio50\00", [25 x i8] zeroinitializer }, align 32
@gpio50_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.120], [28 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio51\00", [25 x i8] zeroinitializer }, align 32
@gpio51_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.121], [28 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio52\00", [25 x i8] zeroinitializer }, align 32
@gpio52_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.122], [28 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio53\00", [25 x i8] zeroinitializer }, align 32
@gpio53_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.123], [28 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio54\00", [25 x i8] zeroinitializer }, align 32
@gpio54_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.124], [28 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio55\00", [25 x i8] zeroinitializer }, align 32
@gpio55_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.125], [28 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio56\00", [25 x i8] zeroinitializer }, align 32
@gpio56_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.126], [28 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio57\00", [25 x i8] zeroinitializer }, align 32
@gpio57_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.127], [28 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio58\00", [25 x i8] zeroinitializer }, align 32
@gpio58_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.128], [28 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio59\00", [25 x i8] zeroinitializer }, align 32
@gpio59_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.129], [28 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio60\00", [25 x i8] zeroinitializer }, align 32
@gpio60_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.130], [28 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio61\00", [25 x i8] zeroinitializer }, align 32
@gpio61_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.131], [28 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio62\00", [25 x i8] zeroinitializer }, align 32
@gpio62_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.132], [28 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio63\00", [25 x i8] zeroinitializer }, align 32
@gpio63_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.133], [28 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio64\00", [25 x i8] zeroinitializer }, align 32
@gpio64_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.134], [28 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio65\00", [25 x i8] zeroinitializer }, align 32
@gpio65_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.135], [28 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio66\00", [25 x i8] zeroinitializer }, align 32
@gpio66_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.136], [28 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio67\00", [25 x i8] zeroinitializer }, align 32
@gpio67_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.137], [28 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eth1\00", [27 x i8] zeroinitializer }, align 32
@eth1_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.138], [28 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s0\00", [27 x i8] zeroinitializer }, align 32
@i2s0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.139], [28 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s0_mclkin\00", [20 x i8] zeroinitializer }, align 32
@i2s0_mclkin_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.140], [28 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@i2s1_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.141], [28 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s1_mclkin\00", [20 x i8] zeroinitializer }, align 32
@i2s1_mclkin_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.142], [28 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@spi0_group = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.143], [28 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bm1880_pinctrl\00", [17 x i8] zeroinitializer }, align 32
@bm1880_pins = internal constant { [112 x %struct.pinctrl_pin_desc], [320 x i8] } { [112 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.283, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.284, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.285, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.286, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.287, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.288, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.289, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.290, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.291, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.292, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.293, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.294, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.295, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.296, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.297, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.298, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.299, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.300, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.301, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.302, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.303, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.304, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.305, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.306, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.307, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.308, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.309, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.310, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.311, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.312, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.313, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.314, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.315, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.316, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.317, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.318, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.319, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.320, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.321, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.322, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.323, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.324, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.325, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.326, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.327, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.328, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.329, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.330, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.331, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.332, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.333, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.334, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.335, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.336, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.337, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.338, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.339, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.340, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.341, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.342, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.343, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.344, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.345, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.346, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.347, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.348, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.349, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.350, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.351, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.352, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.353, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.354, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.355, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.356, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.357, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.358, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.359, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.360, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.361, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.362, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.363, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.364, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.365, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.366, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.367, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.368, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.369, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.370, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.371, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.372, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.373, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.374, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.375, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.376, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.377, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.378, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.379, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.380, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.381, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.382, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.383, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.384, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.385, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.386, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.387, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.388, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.389, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.390, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.391, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.392, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.393, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.394, ptr null }], [320 x i8] zeroinitializer }, align 32
@bm1880_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bm1880_pctrl_get_groups_count, ptr @bm1880_pctrl_get_group_name, ptr @bm1880_pctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@bm1880_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @bm1880_pmux_get_functions_count, ptr @bm1880_pmux_get_function_name, ptr @bm1880_pmux_get_function_groups, ptr @bm1880_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@bm1880_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @bm1880_pinconf_cfg_get, ptr @bm1880_pinconf_cfg_set, ptr null, ptr @bm1880_pinconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO0\00", [27 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO1\00", [27 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO2\00", [27 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO3\00", [27 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO4\00", [27 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO5\00", [27 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO6\00", [27 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO7\00", [27 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO8\00", [27 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIO9\00", [27 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO10\00", [26 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO11\00", [26 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO12\00", [26 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO13\00", [26 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO14\00", [26 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO15\00", [26 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO16\00", [26 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO17\00", [26 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO18\00", [26 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO19\00", [26 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO20\00", [26 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO21\00", [26 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO22\00", [26 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO23\00", [26 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO24\00", [26 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO25\00", [26 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO26\00", [26 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO27\00", [26 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO28\00", [26 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO29\00", [26 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO30\00", [26 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO31\00", [26 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO32\00", [26 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO33\00", [26 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO34\00", [26 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO35\00", [26 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO36\00", [26 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO37\00", [26 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO38\00", [26 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO39\00", [26 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO40\00", [26 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO41\00", [26 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO42\00", [26 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO43\00", [26 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO44\00", [26 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO45\00", [26 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO46\00", [26 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO47\00", [26 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO48\00", [26 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO49\00", [26 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO50\00", [26 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO51\00", [26 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO52\00", [26 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO53\00", [26 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO54\00", [26 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO55\00", [26 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO56\00", [26 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO57\00", [26 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO58\00", [26 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO59\00", [26 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO60\00", [26 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO61\00", [26 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO62\00", [26 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO63\00", [26 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO64\00", [26 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO65\00", [26 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO66\00", [26 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO67\00", [26 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO68\00", [26 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO69\00", [26 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO70\00", [26 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO71\00", [26 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO72\00", [26 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO73\00", [26 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO74\00", [26 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO75\00", [26 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO76\00", [26 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO77\00", [26 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO78\00", [26 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO79\00", [26 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO80\00", [26 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO81\00", [26 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO82\00", [26 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO83\00", [26 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO84\00", [26 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO85\00", [26 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO86\00", [26 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO87\00", [26 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO88\00", [26 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO89\00", [26 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO90\00", [26 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO91\00", [26 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO92\00", [26 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO93\00", [26 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO94\00", [26 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO95\00", [26 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO96\00", [26 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO97\00", [26 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO98\00", [26 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIO99\00", [26 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO100\00", [25 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO101\00", [25 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO102\00", [25 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO103\00", [25 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO104\00", [25 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO105\00", [25 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO106\00", [25 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO107\00", [25 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO108\00", [25 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO109\00", [25 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO110\00", [25 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIO111\00", [25 x i8] zeroinitializer }, align 32
@bm1880_pinconf_cfg_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.396, ptr @.str.3, i32 1256, ptr @.str.397, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unsupported configuration parameter '%u'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bm1880_pinconf_cfg_set\00", [41 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bm1880_pinconf_cfg_set._entry_ptr = internal global ptr @bm1880_pinconf_cfg_set._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 9, i64 14, i64 24]
@__sancov_gen_cov_switch_values.398 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 9, i64 14, i64 24]
@__sancov_gen_cov_switch_values.399 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.400 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.401 = private unnamed_addr constant [22 x i8] c"bm1880_pinctrl_driver\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1345, i32 31 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1347, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant [24 x i8] c"bm1880_pinctrl_of_match\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1340, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c"bm1880_pctrl_groups\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 368, i32 40 }
@___asan_gen_.413 = private unnamed_addr constant [22 x i8] c"bm1880_pmux_functions\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 656, i32 44 }
@___asan_gen_.416 = private unnamed_addr constant [15 x i8] c"bm1880_pinconf\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 802, i32 41 }
@___asan_gen_.419 = private unnamed_addr constant [12 x i8] c"bm1880_desc\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1299, i32 28 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1335, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 369, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [10 x i8] c"nand_pins\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 218, i32 27 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 370, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [9 x i8] c"spi_pins\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 220, i32 27 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 371, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [10 x i8] c"emmc_pins\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 221, i32 27 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 372, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [10 x i8] c"sdio_pins\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 222, i32 27 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 373, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [10 x i8] c"eth0_pins\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 224, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 374, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [10 x i8] c"pwm0_pins\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 226, i32 27 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 375, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [10 x i8] c"pwm1_pins\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 227, i32 27 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 376, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [10 x i8] c"pwm2_pins\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 228, i32 27 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 377, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [10 x i8] c"pwm3_pins\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 229, i32 27 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 378, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [10 x i8] c"pwm4_pins\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 230, i32 27 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 379, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [10 x i8] c"pwm5_pins\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 231, i32 27 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 380, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [10 x i8] c"pwm6_pins\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 232, i32 27 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 381, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [10 x i8] c"pwm7_pins\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 233, i32 27 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 382, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [10 x i8] c"pwm8_pins\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 234, i32 27 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 383, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [10 x i8] c"pwm9_pins\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 235, i32 27 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 384, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [11 x i8] c"pwm10_pins\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 236, i32 27 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 385, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [11 x i8] c"pwm11_pins\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 237, i32 27 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 386, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [11 x i8] c"pwm12_pins\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 238, i32 27 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 387, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [11 x i8] c"pwm13_pins\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 239, i32 27 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 388, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [11 x i8] c"pwm14_pins\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 240, i32 27 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 389, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [11 x i8] c"pwm15_pins\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 241, i32 27 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 390, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [11 x i8] c"pwm16_pins\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 242, i32 27 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 391, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [11 x i8] c"pwm17_pins\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 243, i32 27 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 392, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [11 x i8] c"pwm18_pins\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 244, i32 27 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 393, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [11 x i8] c"pwm19_pins\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 245, i32 27 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 394, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [11 x i8] c"pwm20_pins\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 246, i32 27 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 395, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [11 x i8] c"pwm21_pins\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 247, i32 27 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 396, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [11 x i8] c"pwm22_pins\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 248, i32 27 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 397, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [11 x i8] c"pwm23_pins\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 249, i32 27 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 398, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant [11 x i8] c"pwm24_pins\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 250, i32 27 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 399, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [11 x i8] c"pwm25_pins\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 251, i32 27 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 400, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [11 x i8] c"pwm26_pins\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 252, i32 27 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 401, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [11 x i8] c"pwm27_pins\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 253, i32 27 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 402, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [11 x i8] c"pwm28_pins\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 254, i32 27 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 403, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant [11 x i8] c"pwm29_pins\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 255, i32 27 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 404, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [11 x i8] c"pwm30_pins\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 256, i32 27 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 405, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [11 x i8] c"pwm31_pins\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 257, i32 27 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 406, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [11 x i8] c"pwm32_pins\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 258, i32 27 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 407, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [11 x i8] c"pwm33_pins\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 259, i32 27 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 408, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant [11 x i8] c"pwm34_pins\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 260, i32 27 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 409, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [11 x i8] c"pwm35_pins\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 261, i32 27 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 410, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant [11 x i8] c"pwm36_pins\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 262, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 411, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [11 x i8] c"pwm37_pins\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 263, i32 27 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 412, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [10 x i8] c"i2c0_pins\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 264, i32 27 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 413, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [10 x i8] c"i2c1_pins\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 265, i32 27 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 414, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant [10 x i8] c"i2c2_pins\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 266, i32 27 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 415, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [10 x i8] c"i2c3_pins\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 267, i32 27 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 416, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant [10 x i8] c"i2c4_pins\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 268, i32 27 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 417, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant [11 x i8] c"uart0_pins\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 269, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 418, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 270, i32 27 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 419, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [11 x i8] c"uart2_pins\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 271, i32 27 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 420, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant [11 x i8] c"uart3_pins\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 272, i32 27 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 421, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [11 x i8] c"uart4_pins\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 273, i32 27 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 422, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [11 x i8] c"uart5_pins\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 274, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 423, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant [11 x i8] c"uart6_pins\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 275, i32 27 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 424, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant [11 x i8] c"uart7_pins\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 276, i32 27 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 425, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [11 x i8] c"uart8_pins\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 277, i32 27 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 426, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant [11 x i8] c"uart9_pins\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 278, i32 27 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 427, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [12 x i8] c"uart10_pins\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 279, i32 27 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 428, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant [12 x i8] c"uart11_pins\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 280, i32 27 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 429, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant [12 x i8] c"uart12_pins\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 281, i32 27 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 430, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [12 x i8] c"uart13_pins\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 282, i32 27 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 431, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant [12 x i8] c"uart14_pins\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 283, i32 27 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 432, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant [12 x i8] c"uart15_pins\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 284, i32 27 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 433, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [11 x i8] c"gpio0_pins\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 285, i32 27 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 434, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant [11 x i8] c"gpio1_pins\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 286, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 435, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant [11 x i8] c"gpio2_pins\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 287, i32 27 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 436, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant [11 x i8] c"gpio3_pins\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 288, i32 27 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 437, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [11 x i8] c"gpio4_pins\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 289, i32 27 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 438, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [11 x i8] c"gpio5_pins\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 290, i32 27 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 439, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [11 x i8] c"gpio6_pins\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 291, i32 27 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 440, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant [11 x i8] c"gpio7_pins\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 292, i32 27 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 441, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [11 x i8] c"gpio8_pins\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 293, i32 27 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 442, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant [11 x i8] c"gpio9_pins\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 294, i32 27 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 443, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [12 x i8] c"gpio10_pins\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 295, i32 27 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 444, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant [12 x i8] c"gpio11_pins\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 296, i32 27 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 445, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant [12 x i8] c"gpio12_pins\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 297, i32 27 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 446, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant [12 x i8] c"gpio13_pins\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 298, i32 27 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 447, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant [12 x i8] c"gpio14_pins\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 299, i32 27 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 448, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant [12 x i8] c"gpio15_pins\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 300, i32 27 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 449, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant [12 x i8] c"gpio16_pins\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 301, i32 27 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 450, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant [12 x i8] c"gpio17_pins\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 302, i32 27 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 451, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant [12 x i8] c"gpio18_pins\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 303, i32 27 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 452, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant [12 x i8] c"gpio19_pins\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 304, i32 27 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 453, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant [12 x i8] c"gpio20_pins\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 305, i32 27 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 454, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant [12 x i8] c"gpio21_pins\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 306, i32 27 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 455, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant [12 x i8] c"gpio22_pins\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 307, i32 27 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 456, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant [12 x i8] c"gpio23_pins\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 308, i32 27 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 457, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant [12 x i8] c"gpio24_pins\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 309, i32 27 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 458, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant [12 x i8] c"gpio25_pins\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 310, i32 27 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 459, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant [12 x i8] c"gpio26_pins\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 311, i32 27 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 460, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant [12 x i8] c"gpio27_pins\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 312, i32 27 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 461, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant [12 x i8] c"gpio28_pins\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 313, i32 27 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 462, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant [12 x i8] c"gpio29_pins\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 314, i32 27 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 463, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant [12 x i8] c"gpio30_pins\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 315, i32 27 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 464, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant [12 x i8] c"gpio31_pins\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 316, i32 27 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 465, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant [12 x i8] c"gpio32_pins\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 317, i32 27 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 466, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant [12 x i8] c"gpio33_pins\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 318, i32 27 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 467, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant [12 x i8] c"gpio34_pins\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 319, i32 27 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 468, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant [12 x i8] c"gpio35_pins\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 320, i32 27 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 469, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant [12 x i8] c"gpio36_pins\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 321, i32 27 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 470, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant [12 x i8] c"gpio37_pins\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 322, i32 27 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 471, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant [12 x i8] c"gpio38_pins\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 323, i32 27 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 472, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant [12 x i8] c"gpio39_pins\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 324, i32 27 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 473, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant [12 x i8] c"gpio40_pins\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 325, i32 27 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 474, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant [12 x i8] c"gpio41_pins\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 326, i32 27 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 475, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant [12 x i8] c"gpio42_pins\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 327, i32 27 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 476, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant [12 x i8] c"gpio43_pins\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 328, i32 27 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 477, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant [12 x i8] c"gpio44_pins\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 329, i32 27 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 478, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant [12 x i8] c"gpio45_pins\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 330, i32 27 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 479, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant [12 x i8] c"gpio46_pins\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 331, i32 27 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 480, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant [12 x i8] c"gpio47_pins\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 332, i32 27 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 481, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant [12 x i8] c"gpio48_pins\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 333, i32 27 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 482, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant [12 x i8] c"gpio49_pins\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 334, i32 27 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 483, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant [12 x i8] c"gpio50_pins\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 335, i32 27 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 484, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant [12 x i8] c"gpio51_pins\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 336, i32 27 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 485, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant [12 x i8] c"gpio52_pins\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 337, i32 27 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 486, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant [12 x i8] c"gpio53_pins\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 338, i32 27 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 487, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant [12 x i8] c"gpio54_pins\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 339, i32 27 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 488, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant [12 x i8] c"gpio55_pins\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 340, i32 27 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 489, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant [12 x i8] c"gpio56_pins\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 341, i32 27 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 490, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant [12 x i8] c"gpio57_pins\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 342, i32 27 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 491, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant [12 x i8] c"gpio58_pins\00", align 1
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 343, i32 27 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 492, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant [12 x i8] c"gpio59_pins\00", align 1
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 344, i32 27 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 493, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant [12 x i8] c"gpio60_pins\00", align 1
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 345, i32 27 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 494, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant [12 x i8] c"gpio61_pins\00", align 1
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 346, i32 27 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 495, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant [12 x i8] c"gpio62_pins\00", align 1
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 347, i32 27 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 496, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant [12 x i8] c"gpio63_pins\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 348, i32 27 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 497, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant [12 x i8] c"gpio64_pins\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 349, i32 27 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 498, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant [12 x i8] c"gpio65_pins\00", align 1
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 350, i32 27 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 499, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant [12 x i8] c"gpio66_pins\00", align 1
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 351, i32 27 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 500, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant [12 x i8] c"gpio67_pins\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 352, i32 27 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 501, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant [10 x i8] c"eth1_pins\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 353, i32 27 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 502, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant [10 x i8] c"i2s0_pins\00", align 1
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 355, i32 27 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 503, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant [17 x i8] c"i2s0_mclkin_pins\00", align 1
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 356, i32 27 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 504, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant [10 x i8] c"i2s1_pins\00", align 1
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 357, i32 27 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 505, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant [17 x i8] c"i2s1_mclkin_pins\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 358, i32 27 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 506, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant [10 x i8] c"spi0_pins\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 359, i32 27 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 657, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant [11 x i8] c"nand_group\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 509, i32 27 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 658, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant [10 x i8] c"spi_group\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 510, i32 27 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 659, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant [11 x i8] c"emmc_group\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 511, i32 27 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 660, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant [11 x i8] c"sdio_group\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 512, i32 27 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 661, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant [11 x i8] c"eth0_group\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 513, i32 27 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 662, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant [11 x i8] c"pwm0_group\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 514, i32 27 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 663, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant [11 x i8] c"pwm1_group\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 515, i32 27 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 664, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant [11 x i8] c"pwm2_group\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 516, i32 27 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 665, i32 2 }
@___asan_gen_.1319 = private unnamed_addr constant [11 x i8] c"pwm3_group\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 517, i32 27 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 666, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant [11 x i8] c"pwm4_group\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 518, i32 27 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 667, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant [11 x i8] c"pwm5_group\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 519, i32 27 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 668, i32 2 }
@___asan_gen_.1337 = private unnamed_addr constant [11 x i8] c"pwm6_group\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 520, i32 27 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 669, i32 2 }
@___asan_gen_.1343 = private unnamed_addr constant [11 x i8] c"pwm7_group\00", align 1
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 521, i32 27 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 670, i32 2 }
@___asan_gen_.1349 = private unnamed_addr constant [11 x i8] c"pwm8_group\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 522, i32 27 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 671, i32 2 }
@___asan_gen_.1355 = private unnamed_addr constant [11 x i8] c"pwm9_group\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 523, i32 27 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 672, i32 2 }
@___asan_gen_.1361 = private unnamed_addr constant [12 x i8] c"pwm10_group\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 524, i32 27 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 673, i32 2 }
@___asan_gen_.1367 = private unnamed_addr constant [12 x i8] c"pwm11_group\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 525, i32 27 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 674, i32 2 }
@___asan_gen_.1373 = private unnamed_addr constant [12 x i8] c"pwm12_group\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 526, i32 27 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 675, i32 2 }
@___asan_gen_.1379 = private unnamed_addr constant [12 x i8] c"pwm13_group\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 527, i32 27 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 676, i32 2 }
@___asan_gen_.1385 = private unnamed_addr constant [12 x i8] c"pwm14_group\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 528, i32 27 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 677, i32 2 }
@___asan_gen_.1391 = private unnamed_addr constant [12 x i8] c"pwm15_group\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 529, i32 27 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 678, i32 2 }
@___asan_gen_.1397 = private unnamed_addr constant [12 x i8] c"pwm16_group\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 530, i32 27 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 679, i32 2 }
@___asan_gen_.1403 = private unnamed_addr constant [12 x i8] c"pwm17_group\00", align 1
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 531, i32 27 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 680, i32 2 }
@___asan_gen_.1409 = private unnamed_addr constant [12 x i8] c"pwm18_group\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 532, i32 27 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 681, i32 2 }
@___asan_gen_.1415 = private unnamed_addr constant [12 x i8] c"pwm19_group\00", align 1
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 533, i32 27 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 682, i32 2 }
@___asan_gen_.1421 = private unnamed_addr constant [12 x i8] c"pwm20_group\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 534, i32 27 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 683, i32 2 }
@___asan_gen_.1427 = private unnamed_addr constant [12 x i8] c"pwm21_group\00", align 1
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 535, i32 27 }
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 684, i32 2 }
@___asan_gen_.1433 = private unnamed_addr constant [12 x i8] c"pwm22_group\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 536, i32 27 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 685, i32 2 }
@___asan_gen_.1439 = private unnamed_addr constant [12 x i8] c"pwm23_group\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 537, i32 27 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 686, i32 2 }
@___asan_gen_.1445 = private unnamed_addr constant [12 x i8] c"pwm24_group\00", align 1
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 538, i32 27 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 687, i32 2 }
@___asan_gen_.1451 = private unnamed_addr constant [12 x i8] c"pwm25_group\00", align 1
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 539, i32 27 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 688, i32 2 }
@___asan_gen_.1457 = private unnamed_addr constant [12 x i8] c"pwm26_group\00", align 1
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 540, i32 27 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 689, i32 2 }
@___asan_gen_.1463 = private unnamed_addr constant [12 x i8] c"pwm27_group\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 541, i32 27 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 690, i32 2 }
@___asan_gen_.1469 = private unnamed_addr constant [12 x i8] c"pwm28_group\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 542, i32 27 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 691, i32 2 }
@___asan_gen_.1475 = private unnamed_addr constant [12 x i8] c"pwm29_group\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 543, i32 27 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 692, i32 2 }
@___asan_gen_.1481 = private unnamed_addr constant [12 x i8] c"pwm30_group\00", align 1
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 544, i32 27 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 693, i32 2 }
@___asan_gen_.1487 = private unnamed_addr constant [12 x i8] c"pwm31_group\00", align 1
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 545, i32 27 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 694, i32 2 }
@___asan_gen_.1493 = private unnamed_addr constant [12 x i8] c"pwm32_group\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 546, i32 27 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 695, i32 2 }
@___asan_gen_.1499 = private unnamed_addr constant [12 x i8] c"pwm33_group\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 547, i32 27 }
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 696, i32 2 }
@___asan_gen_.1505 = private unnamed_addr constant [12 x i8] c"pwm34_group\00", align 1
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 548, i32 27 }
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 697, i32 2 }
@___asan_gen_.1511 = private unnamed_addr constant [12 x i8] c"pwm35_group\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 549, i32 27 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 698, i32 2 }
@___asan_gen_.1517 = private unnamed_addr constant [12 x i8] c"pwm36_group\00", align 1
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 550, i32 27 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 699, i32 2 }
@___asan_gen_.1523 = private unnamed_addr constant [12 x i8] c"pwm37_group\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 551, i32 27 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 700, i32 2 }
@___asan_gen_.1529 = private unnamed_addr constant [11 x i8] c"i2c0_group\00", align 1
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 552, i32 27 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 701, i32 2 }
@___asan_gen_.1535 = private unnamed_addr constant [11 x i8] c"i2c1_group\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 553, i32 27 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 702, i32 2 }
@___asan_gen_.1541 = private unnamed_addr constant [11 x i8] c"i2c2_group\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 554, i32 27 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 703, i32 2 }
@___asan_gen_.1547 = private unnamed_addr constant [11 x i8] c"i2c3_group\00", align 1
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 555, i32 27 }
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 704, i32 2 }
@___asan_gen_.1553 = private unnamed_addr constant [11 x i8] c"i2c4_group\00", align 1
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 556, i32 27 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 705, i32 2 }
@___asan_gen_.1559 = private unnamed_addr constant [12 x i8] c"uart0_group\00", align 1
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 557, i32 27 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 706, i32 2 }
@___asan_gen_.1565 = private unnamed_addr constant [12 x i8] c"uart1_group\00", align 1
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 558, i32 27 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 707, i32 2 }
@___asan_gen_.1571 = private unnamed_addr constant [12 x i8] c"uart2_group\00", align 1
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 559, i32 27 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 708, i32 2 }
@___asan_gen_.1577 = private unnamed_addr constant [12 x i8] c"uart3_group\00", align 1
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 560, i32 27 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 709, i32 2 }
@___asan_gen_.1583 = private unnamed_addr constant [12 x i8] c"uart4_group\00", align 1
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 561, i32 27 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 710, i32 2 }
@___asan_gen_.1589 = private unnamed_addr constant [12 x i8] c"uart5_group\00", align 1
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 562, i32 27 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 711, i32 2 }
@___asan_gen_.1595 = private unnamed_addr constant [12 x i8] c"uart6_group\00", align 1
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 563, i32 27 }
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 712, i32 2 }
@___asan_gen_.1601 = private unnamed_addr constant [12 x i8] c"uart7_group\00", align 1
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 564, i32 27 }
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 713, i32 2 }
@___asan_gen_.1607 = private unnamed_addr constant [12 x i8] c"uart8_group\00", align 1
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 565, i32 27 }
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 714, i32 2 }
@___asan_gen_.1613 = private unnamed_addr constant [12 x i8] c"uart9_group\00", align 1
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 566, i32 27 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 715, i32 2 }
@___asan_gen_.1619 = private unnamed_addr constant [13 x i8] c"uart10_group\00", align 1
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 567, i32 27 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 716, i32 2 }
@___asan_gen_.1625 = private unnamed_addr constant [13 x i8] c"uart11_group\00", align 1
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 568, i32 27 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 717, i32 2 }
@___asan_gen_.1631 = private unnamed_addr constant [13 x i8] c"uart12_group\00", align 1
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 569, i32 27 }
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 718, i32 2 }
@___asan_gen_.1637 = private unnamed_addr constant [13 x i8] c"uart13_group\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 570, i32 27 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 719, i32 2 }
@___asan_gen_.1643 = private unnamed_addr constant [13 x i8] c"uart14_group\00", align 1
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 571, i32 27 }
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 720, i32 2 }
@___asan_gen_.1649 = private unnamed_addr constant [13 x i8] c"uart15_group\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 572, i32 27 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 721, i32 2 }
@___asan_gen_.1655 = private unnamed_addr constant [12 x i8] c"gpio0_group\00", align 1
@___asan_gen_.1657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 573, i32 27 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 722, i32 2 }
@___asan_gen_.1661 = private unnamed_addr constant [12 x i8] c"gpio1_group\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 574, i32 27 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 723, i32 2 }
@___asan_gen_.1667 = private unnamed_addr constant [12 x i8] c"gpio2_group\00", align 1
@___asan_gen_.1669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 575, i32 27 }
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 724, i32 2 }
@___asan_gen_.1673 = private unnamed_addr constant [12 x i8] c"gpio3_group\00", align 1
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 576, i32 27 }
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 725, i32 2 }
@___asan_gen_.1679 = private unnamed_addr constant [12 x i8] c"gpio4_group\00", align 1
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 577, i32 27 }
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 726, i32 2 }
@___asan_gen_.1685 = private unnamed_addr constant [12 x i8] c"gpio5_group\00", align 1
@___asan_gen_.1687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 578, i32 27 }
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 727, i32 2 }
@___asan_gen_.1691 = private unnamed_addr constant [12 x i8] c"gpio6_group\00", align 1
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 579, i32 27 }
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 728, i32 2 }
@___asan_gen_.1697 = private unnamed_addr constant [12 x i8] c"gpio7_group\00", align 1
@___asan_gen_.1699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 580, i32 27 }
@___asan_gen_.1702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 729, i32 2 }
@___asan_gen_.1703 = private unnamed_addr constant [12 x i8] c"gpio8_group\00", align 1
@___asan_gen_.1705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 581, i32 27 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 730, i32 2 }
@___asan_gen_.1709 = private unnamed_addr constant [12 x i8] c"gpio9_group\00", align 1
@___asan_gen_.1711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 582, i32 27 }
@___asan_gen_.1714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 731, i32 2 }
@___asan_gen_.1715 = private unnamed_addr constant [13 x i8] c"gpio10_group\00", align 1
@___asan_gen_.1717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 583, i32 27 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 732, i32 2 }
@___asan_gen_.1721 = private unnamed_addr constant [13 x i8] c"gpio11_group\00", align 1
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 584, i32 27 }
@___asan_gen_.1726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 733, i32 2 }
@___asan_gen_.1727 = private unnamed_addr constant [13 x i8] c"gpio12_group\00", align 1
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 585, i32 27 }
@___asan_gen_.1732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 734, i32 2 }
@___asan_gen_.1733 = private unnamed_addr constant [13 x i8] c"gpio13_group\00", align 1
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 586, i32 27 }
@___asan_gen_.1738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 735, i32 2 }
@___asan_gen_.1739 = private unnamed_addr constant [13 x i8] c"gpio14_group\00", align 1
@___asan_gen_.1741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 587, i32 27 }
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 736, i32 2 }
@___asan_gen_.1745 = private unnamed_addr constant [13 x i8] c"gpio15_group\00", align 1
@___asan_gen_.1747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 588, i32 27 }
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 737, i32 2 }
@___asan_gen_.1751 = private unnamed_addr constant [13 x i8] c"gpio16_group\00", align 1
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 589, i32 27 }
@___asan_gen_.1756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 738, i32 2 }
@___asan_gen_.1757 = private unnamed_addr constant [13 x i8] c"gpio17_group\00", align 1
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 590, i32 27 }
@___asan_gen_.1762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 739, i32 2 }
@___asan_gen_.1763 = private unnamed_addr constant [13 x i8] c"gpio18_group\00", align 1
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 591, i32 27 }
@___asan_gen_.1768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 740, i32 2 }
@___asan_gen_.1769 = private unnamed_addr constant [13 x i8] c"gpio19_group\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 592, i32 27 }
@___asan_gen_.1774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 741, i32 2 }
@___asan_gen_.1775 = private unnamed_addr constant [13 x i8] c"gpio20_group\00", align 1
@___asan_gen_.1777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 593, i32 27 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 742, i32 2 }
@___asan_gen_.1781 = private unnamed_addr constant [13 x i8] c"gpio21_group\00", align 1
@___asan_gen_.1783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 594, i32 27 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 743, i32 2 }
@___asan_gen_.1787 = private unnamed_addr constant [13 x i8] c"gpio22_group\00", align 1
@___asan_gen_.1789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 595, i32 27 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 744, i32 2 }
@___asan_gen_.1793 = private unnamed_addr constant [13 x i8] c"gpio23_group\00", align 1
@___asan_gen_.1795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 596, i32 27 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 745, i32 2 }
@___asan_gen_.1799 = private unnamed_addr constant [13 x i8] c"gpio24_group\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 597, i32 27 }
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 746, i32 2 }
@___asan_gen_.1805 = private unnamed_addr constant [13 x i8] c"gpio25_group\00", align 1
@___asan_gen_.1807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 598, i32 27 }
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 747, i32 2 }
@___asan_gen_.1811 = private unnamed_addr constant [13 x i8] c"gpio26_group\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 599, i32 27 }
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 748, i32 2 }
@___asan_gen_.1817 = private unnamed_addr constant [13 x i8] c"gpio27_group\00", align 1
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 600, i32 27 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 749, i32 2 }
@___asan_gen_.1823 = private unnamed_addr constant [13 x i8] c"gpio28_group\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 601, i32 27 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 750, i32 2 }
@___asan_gen_.1829 = private unnamed_addr constant [13 x i8] c"gpio29_group\00", align 1
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 602, i32 27 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 751, i32 2 }
@___asan_gen_.1835 = private unnamed_addr constant [13 x i8] c"gpio30_group\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 603, i32 27 }
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 752, i32 2 }
@___asan_gen_.1841 = private unnamed_addr constant [13 x i8] c"gpio31_group\00", align 1
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 604, i32 27 }
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 753, i32 2 }
@___asan_gen_.1847 = private unnamed_addr constant [13 x i8] c"gpio32_group\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 605, i32 27 }
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 754, i32 2 }
@___asan_gen_.1853 = private unnamed_addr constant [13 x i8] c"gpio33_group\00", align 1
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 606, i32 27 }
@___asan_gen_.1858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 755, i32 2 }
@___asan_gen_.1859 = private unnamed_addr constant [13 x i8] c"gpio34_group\00", align 1
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 607, i32 27 }
@___asan_gen_.1864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 756, i32 2 }
@___asan_gen_.1865 = private unnamed_addr constant [13 x i8] c"gpio35_group\00", align 1
@___asan_gen_.1867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 608, i32 27 }
@___asan_gen_.1870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 757, i32 2 }
@___asan_gen_.1871 = private unnamed_addr constant [13 x i8] c"gpio36_group\00", align 1
@___asan_gen_.1873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 609, i32 27 }
@___asan_gen_.1876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 758, i32 2 }
@___asan_gen_.1877 = private unnamed_addr constant [13 x i8] c"gpio37_group\00", align 1
@___asan_gen_.1879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 610, i32 27 }
@___asan_gen_.1882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 759, i32 2 }
@___asan_gen_.1883 = private unnamed_addr constant [13 x i8] c"gpio38_group\00", align 1
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 611, i32 27 }
@___asan_gen_.1888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 760, i32 2 }
@___asan_gen_.1889 = private unnamed_addr constant [13 x i8] c"gpio39_group\00", align 1
@___asan_gen_.1891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 612, i32 27 }
@___asan_gen_.1894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 761, i32 2 }
@___asan_gen_.1895 = private unnamed_addr constant [13 x i8] c"gpio40_group\00", align 1
@___asan_gen_.1897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 613, i32 27 }
@___asan_gen_.1900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 762, i32 2 }
@___asan_gen_.1901 = private unnamed_addr constant [13 x i8] c"gpio41_group\00", align 1
@___asan_gen_.1903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 614, i32 27 }
@___asan_gen_.1906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 763, i32 2 }
@___asan_gen_.1907 = private unnamed_addr constant [13 x i8] c"gpio42_group\00", align 1
@___asan_gen_.1909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 615, i32 27 }
@___asan_gen_.1912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 764, i32 2 }
@___asan_gen_.1913 = private unnamed_addr constant [13 x i8] c"gpio43_group\00", align 1
@___asan_gen_.1915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 616, i32 27 }
@___asan_gen_.1918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 765, i32 2 }
@___asan_gen_.1919 = private unnamed_addr constant [13 x i8] c"gpio44_group\00", align 1
@___asan_gen_.1921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 617, i32 27 }
@___asan_gen_.1924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 766, i32 2 }
@___asan_gen_.1925 = private unnamed_addr constant [13 x i8] c"gpio45_group\00", align 1
@___asan_gen_.1927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 618, i32 27 }
@___asan_gen_.1930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 767, i32 2 }
@___asan_gen_.1931 = private unnamed_addr constant [13 x i8] c"gpio46_group\00", align 1
@___asan_gen_.1933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 619, i32 27 }
@___asan_gen_.1936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 768, i32 2 }
@___asan_gen_.1937 = private unnamed_addr constant [13 x i8] c"gpio47_group\00", align 1
@___asan_gen_.1939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 620, i32 27 }
@___asan_gen_.1942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 769, i32 2 }
@___asan_gen_.1943 = private unnamed_addr constant [13 x i8] c"gpio48_group\00", align 1
@___asan_gen_.1945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 621, i32 27 }
@___asan_gen_.1948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 770, i32 2 }
@___asan_gen_.1949 = private unnamed_addr constant [13 x i8] c"gpio49_group\00", align 1
@___asan_gen_.1951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 622, i32 27 }
@___asan_gen_.1954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 771, i32 2 }
@___asan_gen_.1955 = private unnamed_addr constant [13 x i8] c"gpio50_group\00", align 1
@___asan_gen_.1957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 623, i32 27 }
@___asan_gen_.1960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 772, i32 2 }
@___asan_gen_.1961 = private unnamed_addr constant [13 x i8] c"gpio51_group\00", align 1
@___asan_gen_.1963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 624, i32 27 }
@___asan_gen_.1966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 773, i32 2 }
@___asan_gen_.1967 = private unnamed_addr constant [13 x i8] c"gpio52_group\00", align 1
@___asan_gen_.1969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 625, i32 27 }
@___asan_gen_.1972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 774, i32 2 }
@___asan_gen_.1973 = private unnamed_addr constant [13 x i8] c"gpio53_group\00", align 1
@___asan_gen_.1975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 626, i32 27 }
@___asan_gen_.1978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 775, i32 2 }
@___asan_gen_.1979 = private unnamed_addr constant [13 x i8] c"gpio54_group\00", align 1
@___asan_gen_.1981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 627, i32 27 }
@___asan_gen_.1984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 776, i32 2 }
@___asan_gen_.1985 = private unnamed_addr constant [13 x i8] c"gpio55_group\00", align 1
@___asan_gen_.1987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 628, i32 27 }
@___asan_gen_.1990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 777, i32 2 }
@___asan_gen_.1991 = private unnamed_addr constant [13 x i8] c"gpio56_group\00", align 1
@___asan_gen_.1993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 629, i32 27 }
@___asan_gen_.1996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 778, i32 2 }
@___asan_gen_.1997 = private unnamed_addr constant [13 x i8] c"gpio57_group\00", align 1
@___asan_gen_.1999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 630, i32 27 }
@___asan_gen_.2002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 779, i32 2 }
@___asan_gen_.2003 = private unnamed_addr constant [13 x i8] c"gpio58_group\00", align 1
@___asan_gen_.2005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 631, i32 27 }
@___asan_gen_.2008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 780, i32 2 }
@___asan_gen_.2009 = private unnamed_addr constant [13 x i8] c"gpio59_group\00", align 1
@___asan_gen_.2011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 632, i32 27 }
@___asan_gen_.2014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 781, i32 2 }
@___asan_gen_.2015 = private unnamed_addr constant [13 x i8] c"gpio60_group\00", align 1
@___asan_gen_.2017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 633, i32 27 }
@___asan_gen_.2020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 782, i32 2 }
@___asan_gen_.2021 = private unnamed_addr constant [13 x i8] c"gpio61_group\00", align 1
@___asan_gen_.2023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 634, i32 27 }
@___asan_gen_.2026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 783, i32 2 }
@___asan_gen_.2027 = private unnamed_addr constant [13 x i8] c"gpio62_group\00", align 1
@___asan_gen_.2029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 635, i32 27 }
@___asan_gen_.2032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 784, i32 2 }
@___asan_gen_.2033 = private unnamed_addr constant [13 x i8] c"gpio63_group\00", align 1
@___asan_gen_.2035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 636, i32 27 }
@___asan_gen_.2038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 785, i32 2 }
@___asan_gen_.2039 = private unnamed_addr constant [13 x i8] c"gpio64_group\00", align 1
@___asan_gen_.2041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 637, i32 27 }
@___asan_gen_.2044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 786, i32 2 }
@___asan_gen_.2045 = private unnamed_addr constant [13 x i8] c"gpio65_group\00", align 1
@___asan_gen_.2047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 638, i32 27 }
@___asan_gen_.2050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 787, i32 2 }
@___asan_gen_.2051 = private unnamed_addr constant [13 x i8] c"gpio66_group\00", align 1
@___asan_gen_.2053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 639, i32 27 }
@___asan_gen_.2056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 788, i32 2 }
@___asan_gen_.2057 = private unnamed_addr constant [13 x i8] c"gpio67_group\00", align 1
@___asan_gen_.2059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 640, i32 27 }
@___asan_gen_.2062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 789, i32 2 }
@___asan_gen_.2063 = private unnamed_addr constant [11 x i8] c"eth1_group\00", align 1
@___asan_gen_.2065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 641, i32 27 }
@___asan_gen_.2068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 790, i32 2 }
@___asan_gen_.2069 = private unnamed_addr constant [11 x i8] c"i2s0_group\00", align 1
@___asan_gen_.2071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 642, i32 27 }
@___asan_gen_.2074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 791, i32 2 }
@___asan_gen_.2075 = private unnamed_addr constant [18 x i8] c"i2s0_mclkin_group\00", align 1
@___asan_gen_.2077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 643, i32 27 }
@___asan_gen_.2080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 792, i32 2 }
@___asan_gen_.2081 = private unnamed_addr constant [11 x i8] c"i2s1_group\00", align 1
@___asan_gen_.2083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 644, i32 27 }
@___asan_gen_.2086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 793, i32 2 }
@___asan_gen_.2087 = private unnamed_addr constant [18 x i8] c"i2s1_mclkin_group\00", align 1
@___asan_gen_.2089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 645, i32 27 }
@___asan_gen_.2092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 794, i32 2 }
@___asan_gen_.2093 = private unnamed_addr constant [11 x i8] c"spi0_group\00", align 1
@___asan_gen_.2095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 646, i32 27 }
@___asan_gen_.2098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1300, i32 10 }
@___asan_gen_.2099 = private unnamed_addr constant [12 x i8] c"bm1880_pins\00", align 1
@___asan_gen_.2101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 80, i32 38 }
@___asan_gen_.2102 = private unnamed_addr constant [17 x i8] c"bm1880_pctrl_ops\00", align 1
@___asan_gen_.2104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 945, i32 33 }
@___asan_gen_.2105 = private unnamed_addr constant [18 x i8] c"bm1880_pinmux_ops\00", align 1
@___asan_gen_.2107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1292, i32 32 }
@___asan_gen_.2108 = private unnamed_addr constant [19 x i8] c"bm1880_pinconf_ops\00", align 1
@___asan_gen_.2110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1285, i32 33 }
@___asan_gen_.2113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 81, i32 2 }
@___asan_gen_.2116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 82, i32 2 }
@___asan_gen_.2119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 83, i32 2 }
@___asan_gen_.2122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 84, i32 2 }
@___asan_gen_.2125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 85, i32 2 }
@___asan_gen_.2128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 86, i32 2 }
@___asan_gen_.2131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 87, i32 2 }
@___asan_gen_.2134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 88, i32 2 }
@___asan_gen_.2137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 89, i32 2 }
@___asan_gen_.2140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 90, i32 2 }
@___asan_gen_.2143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 91, i32 2 }
@___asan_gen_.2146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 92, i32 2 }
@___asan_gen_.2149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 93, i32 2 }
@___asan_gen_.2152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 94, i32 2 }
@___asan_gen_.2155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 95, i32 2 }
@___asan_gen_.2158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 96, i32 2 }
@___asan_gen_.2161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 97, i32 2 }
@___asan_gen_.2164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 98, i32 2 }
@___asan_gen_.2167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 99, i32 2 }
@___asan_gen_.2170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 100, i32 2 }
@___asan_gen_.2173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 101, i32 2 }
@___asan_gen_.2176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 102, i32 2 }
@___asan_gen_.2179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 103, i32 2 }
@___asan_gen_.2182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 104, i32 2 }
@___asan_gen_.2185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 105, i32 2 }
@___asan_gen_.2188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 106, i32 2 }
@___asan_gen_.2191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 107, i32 2 }
@___asan_gen_.2194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 108, i32 2 }
@___asan_gen_.2197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 109, i32 2 }
@___asan_gen_.2200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 110, i32 2 }
@___asan_gen_.2203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 111, i32 2 }
@___asan_gen_.2206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 112, i32 2 }
@___asan_gen_.2209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 113, i32 2 }
@___asan_gen_.2212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 114, i32 2 }
@___asan_gen_.2215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 115, i32 2 }
@___asan_gen_.2218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 116, i32 2 }
@___asan_gen_.2221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 117, i32 2 }
@___asan_gen_.2224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 118, i32 2 }
@___asan_gen_.2227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 119, i32 2 }
@___asan_gen_.2230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 120, i32 2 }
@___asan_gen_.2233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 121, i32 2 }
@___asan_gen_.2236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 122, i32 2 }
@___asan_gen_.2239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 123, i32 2 }
@___asan_gen_.2242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 124, i32 2 }
@___asan_gen_.2245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 125, i32 2 }
@___asan_gen_.2248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 126, i32 2 }
@___asan_gen_.2251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 127, i32 2 }
@___asan_gen_.2254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 128, i32 2 }
@___asan_gen_.2257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 129, i32 2 }
@___asan_gen_.2260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 130, i32 2 }
@___asan_gen_.2263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 131, i32 2 }
@___asan_gen_.2266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 132, i32 2 }
@___asan_gen_.2269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 133, i32 2 }
@___asan_gen_.2272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 134, i32 2 }
@___asan_gen_.2275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 135, i32 2 }
@___asan_gen_.2278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 136, i32 2 }
@___asan_gen_.2281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 137, i32 2 }
@___asan_gen_.2284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 138, i32 2 }
@___asan_gen_.2287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 139, i32 2 }
@___asan_gen_.2290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 140, i32 2 }
@___asan_gen_.2293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 141, i32 2 }
@___asan_gen_.2296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 142, i32 2 }
@___asan_gen_.2299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 143, i32 2 }
@___asan_gen_.2302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 144, i32 2 }
@___asan_gen_.2305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 145, i32 2 }
@___asan_gen_.2308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 146, i32 2 }
@___asan_gen_.2311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 147, i32 2 }
@___asan_gen_.2314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 148, i32 2 }
@___asan_gen_.2317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 149, i32 2 }
@___asan_gen_.2320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 150, i32 2 }
@___asan_gen_.2323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 151, i32 2 }
@___asan_gen_.2326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 152, i32 2 }
@___asan_gen_.2329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 153, i32 2 }
@___asan_gen_.2332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 154, i32 2 }
@___asan_gen_.2335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 155, i32 2 }
@___asan_gen_.2338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 156, i32 2 }
@___asan_gen_.2341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 157, i32 2 }
@___asan_gen_.2344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 158, i32 2 }
@___asan_gen_.2347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 159, i32 2 }
@___asan_gen_.2350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 160, i32 2 }
@___asan_gen_.2353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 161, i32 2 }
@___asan_gen_.2356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 162, i32 2 }
@___asan_gen_.2359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 163, i32 2 }
@___asan_gen_.2362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 164, i32 2 }
@___asan_gen_.2365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 165, i32 2 }
@___asan_gen_.2368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 166, i32 2 }
@___asan_gen_.2371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 167, i32 2 }
@___asan_gen_.2374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 168, i32 2 }
@___asan_gen_.2377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 169, i32 2 }
@___asan_gen_.2380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 170, i32 2 }
@___asan_gen_.2383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 171, i32 2 }
@___asan_gen_.2386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 172, i32 2 }
@___asan_gen_.2389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 173, i32 2 }
@___asan_gen_.2392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 174, i32 2 }
@___asan_gen_.2395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 175, i32 2 }
@___asan_gen_.2398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 176, i32 2 }
@___asan_gen_.2401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 177, i32 2 }
@___asan_gen_.2404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 178, i32 2 }
@___asan_gen_.2407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 179, i32 2 }
@___asan_gen_.2410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 180, i32 2 }
@___asan_gen_.2413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 181, i32 2 }
@___asan_gen_.2416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 182, i32 2 }
@___asan_gen_.2419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 183, i32 2 }
@___asan_gen_.2422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 184, i32 2 }
@___asan_gen_.2425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 185, i32 2 }
@___asan_gen_.2428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 186, i32 2 }
@___asan_gen_.2431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 187, i32 2 }
@___asan_gen_.2434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 188, i32 2 }
@___asan_gen_.2437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 189, i32 2 }
@___asan_gen_.2440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 190, i32 2 }
@___asan_gen_.2443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 191, i32 2 }
@___asan_gen_.2446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 192, i32 2 }
@___asan_gen_.2447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2457 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-bm1880.c\00", align 1
@___asan_gen_.2458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2457, i32 1254, i32 4 }
@llvm.compiler.used = appending global [689 x ptr] [ptr @__initcall__kmod_pinctrl_bm1880__223_1357_bm1880_pinctrl_init3, ptr @bm1880_pinconf_cfg_set._entry, ptr @bm1880_pinconf_cfg_set._entry_ptr, ptr @bm1880_pinctrl_probe._entry, ptr @bm1880_pinctrl_probe._entry_ptr, ptr @bm1880_pinctrl_driver, ptr @.str, ptr @bm1880_pinctrl_of_match, ptr @bm1880_pctrl_groups, ptr @bm1880_pmux_functions, ptr @bm1880_pinconf, ptr @bm1880_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nand_pins, ptr @.str.7, ptr @spi_pins, ptr @.str.8, ptr @emmc_pins, ptr @.str.9, ptr @sdio_pins, ptr @.str.10, ptr @eth0_pins, ptr @.str.11, ptr @pwm0_pins, ptr @.str.12, ptr @pwm1_pins, ptr @.str.13, ptr @pwm2_pins, ptr @.str.14, ptr @pwm3_pins, ptr @.str.15, ptr @pwm4_pins, ptr @.str.16, ptr @pwm5_pins, ptr @.str.17, ptr @pwm6_pins, ptr @.str.18, ptr @pwm7_pins, ptr @.str.19, ptr @pwm8_pins, ptr @.str.20, ptr @pwm9_pins, ptr @.str.21, ptr @pwm10_pins, ptr @.str.22, ptr @pwm11_pins, ptr @.str.23, ptr @pwm12_pins, ptr @.str.24, ptr @pwm13_pins, ptr @.str.25, ptr @pwm14_pins, ptr @.str.26, ptr @pwm15_pins, ptr @.str.27, ptr @pwm16_pins, ptr @.str.28, ptr @pwm17_pins, ptr @.str.29, ptr @pwm18_pins, ptr @.str.30, ptr @pwm19_pins, ptr @.str.31, ptr @pwm20_pins, ptr @.str.32, ptr @pwm21_pins, ptr @.str.33, ptr @pwm22_pins, ptr @.str.34, ptr @pwm23_pins, ptr @.str.35, ptr @pwm24_pins, ptr @.str.36, ptr @pwm25_pins, ptr @.str.37, ptr @pwm26_pins, ptr @.str.38, ptr @pwm27_pins, ptr @.str.39, ptr @pwm28_pins, ptr @.str.40, ptr @pwm29_pins, ptr @.str.41, ptr @pwm30_pins, ptr @.str.42, ptr @pwm31_pins, ptr @.str.43, ptr @pwm32_pins, ptr @.str.44, ptr @pwm33_pins, ptr @.str.45, ptr @pwm34_pins, ptr @.str.46, ptr @pwm35_pins, ptr @.str.47, ptr @pwm36_pins, ptr @.str.48, ptr @pwm37_pins, ptr @.str.49, ptr @i2c0_pins, ptr @.str.50, ptr @i2c1_pins, ptr @.str.51, ptr @i2c2_pins, ptr @.str.52, ptr @i2c3_pins, ptr @.str.53, ptr @i2c4_pins, ptr @.str.54, ptr @uart0_pins, ptr @.str.55, ptr @uart1_pins, ptr @.str.56, ptr @uart2_pins, ptr @.str.57, ptr @uart3_pins, ptr @.str.58, ptr @uart4_pins, ptr @.str.59, ptr @uart5_pins, ptr @.str.60, ptr @uart6_pins, ptr @.str.61, ptr @uart7_pins, ptr @.str.62, ptr @uart8_pins, ptr @.str.63, ptr @uart9_pins, ptr @.str.64, ptr @uart10_pins, ptr @.str.65, ptr @uart11_pins, ptr @.str.66, ptr @uart12_pins, ptr @.str.67, ptr @uart13_pins, ptr @.str.68, ptr @uart14_pins, ptr @.str.69, ptr @uart15_pins, ptr @.str.70, ptr @gpio0_pins, ptr @.str.71, ptr @gpio1_pins, ptr @.str.72, ptr @gpio2_pins, ptr @.str.73, ptr @gpio3_pins, ptr @.str.74, ptr @gpio4_pins, ptr @.str.75, ptr @gpio5_pins, ptr @.str.76, ptr @gpio6_pins, ptr @.str.77, ptr @gpio7_pins, ptr @.str.78, ptr @gpio8_pins, ptr @.str.79, ptr @gpio9_pins, ptr @.str.80, ptr @gpio10_pins, ptr @.str.81, ptr @gpio11_pins, ptr @.str.82, ptr @gpio12_pins, ptr @.str.83, ptr @gpio13_pins, ptr @.str.84, ptr @gpio14_pins, ptr @.str.85, ptr @gpio15_pins, ptr @.str.86, ptr @gpio16_pins, ptr @.str.87, ptr @gpio17_pins, ptr @.str.88, ptr @gpio18_pins, ptr @.str.89, ptr @gpio19_pins, ptr @.str.90, ptr @gpio20_pins, ptr @.str.91, ptr @gpio21_pins, ptr @.str.92, ptr @gpio22_pins, ptr @.str.93, ptr @gpio23_pins, ptr @.str.94, ptr @gpio24_pins, ptr @.str.95, ptr @gpio25_pins, ptr @.str.96, ptr @gpio26_pins, ptr @.str.97, ptr @gpio27_pins, ptr @.str.98, ptr @gpio28_pins, ptr @.str.99, ptr @gpio29_pins, ptr @.str.100, ptr @gpio30_pins, ptr @.str.101, ptr @gpio31_pins, ptr @.str.102, ptr @gpio32_pins, ptr @.str.103, ptr @gpio33_pins, ptr @.str.104, ptr @gpio34_pins, ptr @.str.105, ptr @gpio35_pins, ptr @.str.106, ptr @gpio36_pins, ptr @.str.107, ptr @gpio37_pins, ptr @.str.108, ptr @gpio38_pins, ptr @.str.109, ptr @gpio39_pins, ptr @.str.110, ptr @gpio40_pins, ptr @.str.111, ptr @gpio41_pins, ptr @.str.112, ptr @gpio42_pins, ptr @.str.113, ptr @gpio43_pins, ptr @.str.114, ptr @gpio44_pins, ptr @.str.115, ptr @gpio45_pins, ptr @.str.116, ptr @gpio46_pins, ptr @.str.117, ptr @gpio47_pins, ptr @.str.118, ptr @gpio48_pins, ptr @.str.119, ptr @gpio49_pins, ptr @.str.120, ptr @gpio50_pins, ptr @.str.121, ptr @gpio51_pins, ptr @.str.122, ptr @gpio52_pins, ptr @.str.123, ptr @gpio53_pins, ptr @.str.124, ptr @gpio54_pins, ptr @.str.125, ptr @gpio55_pins, ptr @.str.126, ptr @gpio56_pins, ptr @.str.127, ptr @gpio57_pins, ptr @.str.128, ptr @gpio58_pins, ptr @.str.129, ptr @gpio59_pins, ptr @.str.130, ptr @gpio60_pins, ptr @.str.131, ptr @gpio61_pins, ptr @.str.132, ptr @gpio62_pins, ptr @.str.133, ptr @gpio63_pins, ptr @.str.134, ptr @gpio64_pins, ptr @.str.135, ptr @gpio65_pins, ptr @.str.136, ptr @gpio66_pins, ptr @.str.137, ptr @gpio67_pins, ptr @.str.138, ptr @eth1_pins, ptr @.str.139, ptr @i2s0_pins, ptr @.str.140, ptr @i2s0_mclkin_pins, ptr @.str.141, ptr @i2s1_pins, ptr @.str.142, ptr @i2s1_mclkin_pins, ptr @.str.143, ptr @spi0_pins, ptr @.str.144, ptr @nand_group, ptr @.str.145, ptr @spi_group, ptr @.str.146, ptr @emmc_group, ptr @.str.147, ptr @sdio_group, ptr @.str.148, ptr @eth0_group, ptr @.str.149, ptr @pwm0_group, ptr @.str.150, ptr @pwm1_group, ptr @.str.151, ptr @pwm2_group, ptr @.str.152, ptr @pwm3_group, ptr @.str.153, ptr @pwm4_group, ptr @.str.154, ptr @pwm5_group, ptr @.str.155, ptr @pwm6_group, ptr @.str.156, ptr @pwm7_group, ptr @.str.157, ptr @pwm8_group, ptr @.str.158, ptr @pwm9_group, ptr @.str.159, ptr @pwm10_group, ptr @.str.160, ptr @pwm11_group, ptr @.str.161, ptr @pwm12_group, ptr @.str.162, ptr @pwm13_group, ptr @.str.163, ptr @pwm14_group, ptr @.str.164, ptr @pwm15_group, ptr @.str.165, ptr @pwm16_group, ptr @.str.166, ptr @pwm17_group, ptr @.str.167, ptr @pwm18_group, ptr @.str.168, ptr @pwm19_group, ptr @.str.169, ptr @pwm20_group, ptr @.str.170, ptr @pwm21_group, ptr @.str.171, ptr @pwm22_group, ptr @.str.172, ptr @pwm23_group, ptr @.str.173, ptr @pwm24_group, ptr @.str.174, ptr @pwm25_group, ptr @.str.175, ptr @pwm26_group, ptr @.str.176, ptr @pwm27_group, ptr @.str.177, ptr @pwm28_group, ptr @.str.178, ptr @pwm29_group, ptr @.str.179, ptr @pwm30_group, ptr @.str.180, ptr @pwm31_group, ptr @.str.181, ptr @pwm32_group, ptr @.str.182, ptr @pwm33_group, ptr @.str.183, ptr @pwm34_group, ptr @.str.184, ptr @pwm35_group, ptr @.str.185, ptr @pwm36_group, ptr @.str.186, ptr @pwm37_group, ptr @.str.187, ptr @i2c0_group, ptr @.str.188, ptr @i2c1_group, ptr @.str.189, ptr @i2c2_group, ptr @.str.190, ptr @i2c3_group, ptr @.str.191, ptr @i2c4_group, ptr @.str.192, ptr @uart0_group, ptr @.str.193, ptr @uart1_group, ptr @.str.194, ptr @uart2_group, ptr @.str.195, ptr @uart3_group, ptr @.str.196, ptr @uart4_group, ptr @.str.197, ptr @uart5_group, ptr @.str.198, ptr @uart6_group, ptr @.str.199, ptr @uart7_group, ptr @.str.200, ptr @uart8_group, ptr @.str.201, ptr @uart9_group, ptr @.str.202, ptr @uart10_group, ptr @.str.203, ptr @uart11_group, ptr @.str.204, ptr @uart12_group, ptr @.str.205, ptr @uart13_group, ptr @.str.206, ptr @uart14_group, ptr @.str.207, ptr @uart15_group, ptr @.str.208, ptr @gpio0_group, ptr @.str.209, ptr @gpio1_group, ptr @.str.210, ptr @gpio2_group, ptr @.str.211, ptr @gpio3_group, ptr @.str.212, ptr @gpio4_group, ptr @.str.213, ptr @gpio5_group, ptr @.str.214, ptr @gpio6_group, ptr @.str.215, ptr @gpio7_group, ptr @.str.216, ptr @gpio8_group, ptr @.str.217, ptr @gpio9_group, ptr @.str.218, ptr @gpio10_group, ptr @.str.219, ptr @gpio11_group, ptr @.str.220, ptr @gpio12_group, ptr @.str.221, ptr @gpio13_group, ptr @.str.222, ptr @gpio14_group, ptr @.str.223, ptr @gpio15_group, ptr @.str.224, ptr @gpio16_group, ptr @.str.225, ptr @gpio17_group, ptr @.str.226, ptr @gpio18_group, ptr @.str.227, ptr @gpio19_group, ptr @.str.228, ptr @gpio20_group, ptr @.str.229, ptr @gpio21_group, ptr @.str.230, ptr @gpio22_group, ptr @.str.231, ptr @gpio23_group, ptr @.str.232, ptr @gpio24_group, ptr @.str.233, ptr @gpio25_group, ptr @.str.234, ptr @gpio26_group, ptr @.str.235, ptr @gpio27_group, ptr @.str.236, ptr @gpio28_group, ptr @.str.237, ptr @gpio29_group, ptr @.str.238, ptr @gpio30_group, ptr @.str.239, ptr @gpio31_group, ptr @.str.240, ptr @gpio32_group, ptr @.str.241, ptr @gpio33_group, ptr @.str.242, ptr @gpio34_group, ptr @.str.243, ptr @gpio35_group, ptr @.str.244, ptr @gpio36_group, ptr @.str.245, ptr @gpio37_group, ptr @.str.246, ptr @gpio38_group, ptr @.str.247, ptr @gpio39_group, ptr @.str.248, ptr @gpio40_group, ptr @.str.249, ptr @gpio41_group, ptr @.str.250, ptr @gpio42_group, ptr @.str.251, ptr @gpio43_group, ptr @.str.252, ptr @gpio44_group, ptr @.str.253, ptr @gpio45_group, ptr @.str.254, ptr @gpio46_group, ptr @.str.255, ptr @gpio47_group, ptr @.str.256, ptr @gpio48_group, ptr @.str.257, ptr @gpio49_group, ptr @.str.258, ptr @gpio50_group, ptr @.str.259, ptr @gpio51_group, ptr @.str.260, ptr @gpio52_group, ptr @.str.261, ptr @gpio53_group, ptr @.str.262, ptr @gpio54_group, ptr @.str.263, ptr @gpio55_group, ptr @.str.264, ptr @gpio56_group, ptr @.str.265, ptr @gpio57_group, ptr @.str.266, ptr @gpio58_group, ptr @.str.267, ptr @gpio59_group, ptr @.str.268, ptr @gpio60_group, ptr @.str.269, ptr @gpio61_group, ptr @.str.270, ptr @gpio62_group, ptr @.str.271, ptr @gpio63_group, ptr @.str.272, ptr @gpio64_group, ptr @.str.273, ptr @gpio65_group, ptr @.str.274, ptr @gpio66_group, ptr @.str.275, ptr @gpio67_group, ptr @.str.276, ptr @eth1_group, ptr @.str.277, ptr @i2s0_group, ptr @.str.278, ptr @i2s0_mclkin_group, ptr @.str.279, ptr @i2s1_group, ptr @.str.280, ptr @i2s1_mclkin_group, ptr @.str.281, ptr @spi0_group, ptr @.str.282, ptr @bm1880_pins, ptr @bm1880_pctrl_ops, ptr @bm1880_pinmux_ops, ptr @bm1880_pinconf_ops, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397], section "llvm.metadata"
@0 = internal global [686 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pctrl_groups to i32), i32 1656, i32 2048, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pmux_functions to i32), i32 3312, i32 4128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinconf to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2447 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pins to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth0_pins to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm16_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm17_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm18_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm19_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm20_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm21_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm22_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm23_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm24_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm25_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm26_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm27_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm28_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm29_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm30_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm31_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm32_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm33_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm34_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm35_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm36_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm37_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c4_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart5_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart6_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart7_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart8_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart9_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart10_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart11_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart12_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart13_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart14_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart15_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio16_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio17_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio18_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio19_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio20_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio21_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio22_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio23_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio24_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio25_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio26_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio27_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio28_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio29_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio30_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio31_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio32_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio33_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio34_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio35_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio36_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio37_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio38_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio39_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio40_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio41_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio42_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio43_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio44_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio45_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio46_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio47_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio48_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio49_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio50_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio51_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio52_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio53_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio54_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio55_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio56_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio57_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio58_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio59_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio60_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio61_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio62_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio63_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio64_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio65_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio66_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio67_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth1_pins to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_mclkin_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_mclkin_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm6_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm7_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm8_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm9_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm10_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm11_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm12_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm13_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm14_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm15_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm16_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm17_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm18_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm19_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm20_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm21_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm22_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm23_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm24_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm25_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm26_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm27_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm28_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm29_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm30_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm31_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm32_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm33_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm34_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm35_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm36_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm37_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c4_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart5_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart6_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart7_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart8_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart9_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart10_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart11_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart12_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart13_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart14_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart15_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio14_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio15_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio16_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio17_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1757 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio18_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio19_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio20_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio21_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio22_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio23_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio24_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio25_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio26_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio27_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio28_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio29_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio30_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio31_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio32_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio33_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio34_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio35_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1865 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio36_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1871 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio37_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1877 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio38_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1883 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio39_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio40_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio41_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio42_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1907 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio43_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio44_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1919 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio45_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio46_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1931 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio47_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1937 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio48_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1943 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio49_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio50_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1955 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio51_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1961 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio52_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1967 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio53_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio54_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1979 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio55_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1985 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio56_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1991 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio57_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1997 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio58_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2003 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio59_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2009 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio60_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2015 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio61_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2021 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio62_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2027 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio63_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio64_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio65_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2045 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio66_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio67_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2057 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth1_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_mclkin_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2081 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_mclkin_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2093 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pins to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2102 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2105 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pinconf_cfg_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2447 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 ptrtoint (ptr @___asan_gen_.2457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2458 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pinctrl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bm1880_pinctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %groups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bm1880_pctrl_groups, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 138, ptr %ngroups, align 4
  %funcs = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bm1880_pmux_functions, ptr %funcs, align 4
  %nfuncs = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %nfuncs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 138, ptr %nfuncs, align 4
  %pinconf = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %pinconf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bm1880_pinconf, ptr %pinconf, align 4
  %call9 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @bm1880_desc, ptr noundef nonnull %call.i) #6
  %pctrldev = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %pctrldev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %pctrldev, align 4
  %cmp.i34 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %8, %if.then12 ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pctrl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %ngroups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bm1880_pctrl_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.bm1880_pctrl_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.bm1880_pctrl_group, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.bm1880_pctrl_group, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pmux_get_functions_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %nfuncs = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfuncs, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bm1880_pmux_get_function_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %funcs = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %arrayidx = getelementptr %struct.bm1880_pinmux_function, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pmux_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %funcs = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %groups1 = getelementptr %struct.bm1880_pinmux_function, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %funcs, align 4
  %ngroups = getelementptr %struct.bm1880_pinmux_function, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.bm1880_pctrl_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not = icmp eq i32 %3, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %funcs = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %pins = getelementptr %struct.bm1880_pctrl_group, ptr %1, i32 %group, i32 1
  %mux_val = getelementptr %struct.bm1880_pinmux_function, ptr %5, i32 %function, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 %i.025
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = shl i32 %9, 1
  %shl = and i32 %10, -4
  %11 = shl i32 %9, 4
  %shl3 = and i32 %11, 16
  %add4 = or i32 %shl3, 4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %shl
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !1377
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shl7 = shl i32 3, %add4
  %neg = xor i32 %shl7, -1
  %and8 = and i32 %15, %neg
  %16 = ptrtoint ptr %mux_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mux_val, align 4
  %shl9 = shl i32 %17, %add4
  %or = or i32 %and8, %shl9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %add.ptr11 = getelementptr i8, ptr %20, i32 32
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %18) #6, !srcloc !1378
  %inc = add nuw i32 %i.025, 1
  %21 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pinconf_cfg_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %2 = shl i32 %pin, 1
  %shl = and i32 %2, -4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %shl
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !1377
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %trunc = trunc i32 %1 to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb13
    i8 1, label %sw.bb28
    i8 14, label %sw.bb43
    i8 24, label %sw.bb58
    i8 9, label %sw.bb73
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = shl i32 %pin, 4
  %shl4 = and i32 %8, 16
  %add5 = or i32 %shl4, 1
  %9 = lshr i32 %6, %add5
  %10 = and i32 %9, 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = shl i32 %pin, 4
  %shl19 = and i32 %11, 16
  %add20 = or i32 %shl19, 2
  %12 = lshr i32 %6, %add20
  %13 = and i32 %12, 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = shl i32 %pin, 4
  %shl34 = and i32 %14, 16
  %15 = lshr i32 %6, %shl34
  %16 = and i32 %15, 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = shl i32 %pin, 4
  %shl49 = and i32 %17, 16
  %add50 = or i32 %shl49, 9
  %18 = lshr i32 %6, %add50
  %19 = and i32 %18, 1
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = shl i32 %pin, 4
  %shl64 = and i32 %20, 16
  %add65 = or i32 %shl64, 10
  %21 = lshr i32 %6, %add65
  %22 = and i32 %21, 1
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = shl i32 %pin, 4
  %shl79 = and i32 %23, 16
  %add80 = or i32 %shl79, 6
  %24 = shl nuw i32 1, %add80
  %25 = and i32 %6, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %switch.selectcmp.i.not = icmp eq i32 %25, 0
  %switch.select16.i = select i1 %switch.selectcmp.i.not, i32 4, i32 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %sw.bb58, %sw.bb43, %sw.bb28, %sw.bb13, %sw.bb
  %arg.0 = phi i32 [ %22, %sw.bb58 ], [ %19, %sw.bb43 ], [ %16, %sw.bb28 ], [ %13, %sw.bb13 ], [ %10, %sw.bb ], [ %switch.select16.i, %sw.bb73 ]
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %26 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pinconf_cfg_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = shl i32 %pin, 1
  %shl = and i32 %0, -4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !1377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp123.not = icmp eq i32 %num_configs, 0
  br i1 %cmp123.not, label %entry.cleanup76_crit_edge, label %for.body.lr.ph

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

for.body.lr.ph:                                   ; preds = %entry
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = shl i32 %pin, 4
  %shl65 = and i32 %5, 16
  %add66 = or i32 %shl65, 6
  %pinconf = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 6
  %shl66.i = shl i32 3, %add66
  %shl60.i = shl i32 2, %add66
  %shl54.i = shl nuw i32 1, %add66
  %neg40.i = xor i32 %shl66.i, -1
  %shl42.i = shl i32 7, %add66
  %shl36.i = shl i32 6, %add66
  %shl30.i = shl i32 5, %add66
  %shl24.i = shl i32 4, %add66
  %add49 = or i32 %shl65, 10
  %shl52 = shl nuw i32 1, %add49
  %neg56 = xor i32 %shl52, -1
  %add36 = or i32 %shl65, 9
  %shl38 = shl nuw i32 1, %add36
  %neg = xor i32 %shl38, -1
  %shl27 = shl nuw nsw i32 1, %shl65
  %add16 = or i32 %shl65, 2
  %shl17 = shl nuw i32 1, %add16
  %add7 = or i32 %shl65, 1
  %shl8 = shl nuw i32 1, %add7
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %regval.0124 = phi i32 [ %4, %for.body.lr.ph ], [ %regval.3, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0125
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %7 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.398)
  switch i8 %trunc, label %do.end [
    i8 5, label %sw.bb
    i8 3, label %sw.bb9
    i8 1, label %sw.bb19
    i8 14, label %sw.bb29
    i8 24, label %sw.bb42
    i8 9, label %sw.bb59
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %regval.0124, %shl8
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %regval.0124, %shl17
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or28 = or i32 %regval.0124, %shl27
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %tobool37.not = icmp ult i32 %7, 256
  br i1 %tobool37.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %or39 = or i32 %regval.0124, %shl38
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %and41 = and i32 %regval.0124, %neg
  br label %sw.epilog

sw.bb42:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %tobool50.not = icmp ult i32 %7, 256
  br i1 %tobool50.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  %or53 = or i32 %regval.0124, %shl52
  br label %sw.epilog

if.else54:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  %and57 = and i32 %regval.0124, %neg56
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.body
  %shr.i = lshr i32 %7, 8
  %9 = ptrtoint ptr %pinconf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pinconf, align 4
  %arrayidx67 = getelementptr %struct.bm1880_pinconf_data, ptr %10, i32 %pin
  %11 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp eq i32 %12, 3
  %13 = add nsw i32 %shr.i, -4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30) #6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb59
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.399)
  switch i32 %14, label %if.then.i.cleanup76_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb14.i
    i32 4, label %sw.bb20.i
    i32 5, label %sw.bb26.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb38.i
  ]

if.then.i.cleanup76_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i108 = and i32 %regval.0124, %neg40.i
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i = and i32 %regval.0124, %neg40.i
  %or7.i = or i32 %and5.i, %shl54.i
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and11.i = and i32 %regval.0124, %neg40.i
  %or13.i = or i32 %and11.i, %shl60.i
  br label %sw.epilog

sw.bb14.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %or19.i = or i32 %regval.0124, %shl66.i
  br label %sw.epilog

sw.bb20.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and23.i = and i32 %regval.0124, %neg40.i
  %or25.i = or i32 %and23.i, %shl24.i
  br label %sw.epilog

sw.bb26.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and29.i = and i32 %regval.0124, %neg40.i
  %or31.i = or i32 %and29.i, %shl30.i
  br label %sw.epilog

sw.bb32.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and35.i = and i32 %regval.0124, %neg40.i
  %or37.i = or i32 %and35.i, %shl36.i
  br label %sw.epilog

sw.bb38.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and41.i = and i32 %regval.0124, %neg40.i
  %or43.i = or i32 %and41.i, %shl42.i
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb59
  %16 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.400)
  switch i32 %14, label %if.else.i.cleanup76_crit_edge [
    i32 0, label %sw.bb44.i
    i32 1, label %sw.bb50.i
    i32 2, label %sw.bb56.i
    i32 3, label %sw.bb62.i
  ]

if.else.i.cleanup76_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

sw.bb44.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl45.i = shl i32 %12, %add66
  %neg46.i = xor i32 %shl45.i, -1
  %and47.i = and i32 %regval.0124, %neg46.i
  br label %sw.epilog

sw.bb50.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl51.i = shl i32 %12, %add66
  %neg52.i = xor i32 %shl51.i, -1
  %and53.i = and i32 %regval.0124, %neg52.i
  %or55.i = or i32 %and53.i, %shl54.i
  br label %sw.epilog

sw.bb56.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl57.i = shl i32 %12, %add66
  %neg58.i = xor i32 %shl57.i, -1
  %and59.i = and i32 %regval.0124, %neg58.i
  %or61.i = or i32 %and59.i, %shl60.i
  br label %sw.epilog

sw.bb62.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl63.i = shl i32 %12, %add66
  %neg64.i = xor i32 %shl63.i, -1
  %and65.i = and i32 %regval.0124, %neg64.i
  %or67.i = or i32 %and65.i, %shl66.i
  br label %sw.epilog

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %7, 255
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.395, i32 noundef %and.i) #9
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb62.i, %sw.bb56.i, %sw.bb50.i, %sw.bb44.i, %sw.bb38.i, %sw.bb32.i, %sw.bb26.i, %sw.bb20.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i, %if.else54, %if.then51, %if.else, %if.then, %sw.bb19, %sw.bb9, %sw.bb
  %regval.2 = phi i32 [ %and57, %if.else54 ], [ %or53, %if.then51 ], [ %and41, %if.else ], [ %or39, %if.then ], [ %or28, %sw.bb19 ], [ %or18, %sw.bb9 ], [ %or, %sw.bb ], [ %and47.i, %sw.bb44.i ], [ %or55.i, %sw.bb50.i ], [ %or61.i, %sw.bb56.i ], [ %or67.i, %sw.bb62.i ], [ %and.i108, %sw.bb.i ], [ %or7.i, %sw.bb2.i ], [ %or13.i, %sw.bb8.i ], [ %or19.i, %sw.bb14.i ], [ %or25.i, %sw.bb20.i ], [ %or31.i, %sw.bb26.i ], [ %or37.i, %sw.bb32.i ], [ %or43.i, %sw.bb38.i ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %regval.2)
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %add.ptr73 = getelementptr i8, ptr %21, i32 32
  %add.ptr74 = getelementptr i8, ptr %add.ptr73, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %19) #6, !srcloc !1378
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %do.end
  %regval.3 = phi i32 [ %regval.0124, %do.end ], [ %regval.2, %sw.epilog ]
  %inc = add nuw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup76_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup76_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

cleanup76:                                        ; preds = %for.inc.cleanup76_crit_edge, %if.else.i.cleanup76_crit_edge, %if.then.i.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup76_crit_edge ], [ -22, %if.else.i.cleanup76_crit_edge ], [ -22, %if.then.i.cleanup76_crit_edge ], [ 0, %for.inc.cleanup76_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pinconf_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.bm1880_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins = getelementptr %struct.bm1880_pctrl_group, ptr %1, i32 %selector, i32 1
  %npins = getelementptr %struct.bm1880_pctrl_group, ptr %1, i32 %selector, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx1 = getelementptr i32, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %call2 = tail call i32 @bm1880_pinconf_cfg_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 686)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 686)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !896, !898, !900, !902, !904, !906, !908, !910, !912, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1142, !1144, !1146, !1148, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1204, !1206, !1208, !1210, !1212, !1214, !1216, !1218, !1220, !1222, !1224, !1226, !1228, !1230, !1232, !1234, !1236, !1238, !1240, !1242, !1244, !1246, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1272, !1274, !1276, !1278, !1280, !1282, !1284, !1286, !1288, !1290, !1292, !1294, !1296, !1298, !1300, !1302, !1304, !1306, !1308, !1310, !1312, !1314, !1316, !1318, !1320, !1322, !1324, !1326, !1328, !1330, !1332, !1334, !1336, !1338, !1340, !1342, !1344, !1346, !1348, !1350, !1352, !1354, !1356, !1358, !1360, !1362, !1363, !1364, !1365, !1366}
!llvm.module.flags = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!llvm.ident = !{!1376}

!0 = !{ptr @__initcall__kmod_pinctrl_bm1880__223_1357_bm1880_pinctrl_init3, !1, !"__initcall__kmod_pinctrl_bm1880__223_1357_bm1880_pinctrl_init3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1357, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1347, i32 11}
!4 = !{ptr @bm1880_pinctrl_driver, !5, !"bm1880_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1345, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1335, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bm1880_pinctrl_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @bm1880_pinctrl_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 369, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 370, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 371, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 372, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 373, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 374, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 375, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 376, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 377, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 378, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 379, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 380, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 381, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 382, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 383, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 384, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 385, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 386, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 387, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 388, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 389, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 390, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 391, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 392, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 393, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 394, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 395, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 396, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 397, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 398, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 399, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 400, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 401, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 402, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 403, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 404, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 405, i32 2}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 406, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 407, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 408, i32 2}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 409, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 410, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 411, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 412, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 413, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 414, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 415, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 416, i32 2}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 417, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 418, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 419, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 420, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 421, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 422, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 423, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 424, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 425, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 426, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 427, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 428, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 429, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 430, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 431, i32 2}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 432, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 433, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 434, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 435, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 436, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 437, i32 2}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 438, i32 2}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 439, i32 2}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 440, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 441, i32 2}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 442, i32 2}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 443, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 444, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 445, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 446, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 447, i32 2}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 448, i32 2}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 449, i32 2}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 450, i32 2}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 451, i32 2}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 452, i32 2}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 453, i32 2}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 454, i32 2}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 455, i32 2}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 456, i32 2}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 457, i32 2}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 458, i32 2}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 459, i32 2}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 460, i32 2}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 461, i32 2}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 462, i32 2}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 463, i32 2}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 464, i32 2}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 465, i32 2}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 466, i32 2}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 467, i32 2}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 468, i32 2}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 469, i32 2}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 470, i32 2}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 471, i32 2}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 472, i32 2}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 473, i32 2}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 474, i32 2}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 475, i32 2}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 476, i32 2}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 477, i32 2}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 478, i32 2}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 479, i32 2}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 480, i32 2}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 481, i32 2}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 482, i32 2}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 483, i32 2}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 484, i32 2}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 485, i32 2}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 486, i32 2}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 487, i32 2}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 488, i32 2}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 489, i32 2}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 490, i32 2}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 491, i32 2}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 492, i32 2}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 493, i32 2}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 494, i32 2}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 495, i32 2}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 496, i32 2}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 497, i32 2}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 498, i32 2}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 499, i32 2}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 500, i32 2}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 501, i32 2}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 502, i32 2}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 503, i32 2}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 504, i32 2}
!286 = !{ptr @.str.142, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 505, i32 2}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 506, i32 2}
!290 = !{ptr @bm1880_pctrl_groups, !291, !"bm1880_pctrl_groups", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 368, i32 40}
!292 = !{ptr @nand_pins, !293, !"nand_pins", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 218, i32 27}
!294 = !{ptr @spi_pins, !295, !"spi_pins", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 220, i32 27}
!296 = !{ptr @emmc_pins, !297, !"emmc_pins", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 221, i32 27}
!298 = !{ptr @sdio_pins, !299, !"sdio_pins", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 222, i32 27}
!300 = !{ptr @eth0_pins, !301, !"eth0_pins", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 224, i32 27}
!302 = !{ptr @pwm0_pins, !303, !"pwm0_pins", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 226, i32 27}
!304 = !{ptr @pwm1_pins, !305, !"pwm1_pins", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 227, i32 27}
!306 = !{ptr @pwm2_pins, !307, !"pwm2_pins", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 228, i32 27}
!308 = !{ptr @pwm3_pins, !309, !"pwm3_pins", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 229, i32 27}
!310 = !{ptr @pwm4_pins, !311, !"pwm4_pins", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 230, i32 27}
!312 = !{ptr @pwm5_pins, !313, !"pwm5_pins", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 231, i32 27}
!314 = !{ptr @pwm6_pins, !315, !"pwm6_pins", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 232, i32 27}
!316 = !{ptr @pwm7_pins, !317, !"pwm7_pins", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 233, i32 27}
!318 = !{ptr @pwm8_pins, !319, !"pwm8_pins", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 234, i32 27}
!320 = !{ptr @pwm9_pins, !321, !"pwm9_pins", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 235, i32 27}
!322 = !{ptr @pwm10_pins, !323, !"pwm10_pins", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 236, i32 27}
!324 = !{ptr @pwm11_pins, !325, !"pwm11_pins", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 237, i32 27}
!326 = !{ptr @pwm12_pins, !327, !"pwm12_pins", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 238, i32 27}
!328 = !{ptr @pwm13_pins, !329, !"pwm13_pins", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 239, i32 27}
!330 = !{ptr @pwm14_pins, !331, !"pwm14_pins", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 240, i32 27}
!332 = !{ptr @pwm15_pins, !333, !"pwm15_pins", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 241, i32 27}
!334 = !{ptr @pwm16_pins, !335, !"pwm16_pins", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 242, i32 27}
!336 = !{ptr @pwm17_pins, !337, !"pwm17_pins", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 243, i32 27}
!338 = !{ptr @pwm18_pins, !339, !"pwm18_pins", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 244, i32 27}
!340 = !{ptr @pwm19_pins, !341, !"pwm19_pins", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 245, i32 27}
!342 = !{ptr @pwm20_pins, !343, !"pwm20_pins", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 246, i32 27}
!344 = !{ptr @pwm21_pins, !345, !"pwm21_pins", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 247, i32 27}
!346 = !{ptr @pwm22_pins, !347, !"pwm22_pins", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 248, i32 27}
!348 = !{ptr @pwm23_pins, !349, !"pwm23_pins", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 249, i32 27}
!350 = !{ptr @pwm24_pins, !351, !"pwm24_pins", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 250, i32 27}
!352 = !{ptr @pwm25_pins, !353, !"pwm25_pins", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 251, i32 27}
!354 = !{ptr @pwm26_pins, !355, !"pwm26_pins", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 252, i32 27}
!356 = !{ptr @pwm27_pins, !357, !"pwm27_pins", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 253, i32 27}
!358 = !{ptr @pwm28_pins, !359, !"pwm28_pins", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 254, i32 27}
!360 = !{ptr @pwm29_pins, !361, !"pwm29_pins", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 255, i32 27}
!362 = !{ptr @pwm30_pins, !363, !"pwm30_pins", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 256, i32 27}
!364 = !{ptr @pwm31_pins, !365, !"pwm31_pins", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 257, i32 27}
!366 = !{ptr @pwm32_pins, !367, !"pwm32_pins", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 258, i32 27}
!368 = !{ptr @pwm33_pins, !369, !"pwm33_pins", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 259, i32 27}
!370 = !{ptr @pwm34_pins, !371, !"pwm34_pins", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 260, i32 27}
!372 = !{ptr @pwm35_pins, !373, !"pwm35_pins", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 261, i32 27}
!374 = !{ptr @pwm36_pins, !375, !"pwm36_pins", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 262, i32 27}
!376 = !{ptr @pwm37_pins, !377, !"pwm37_pins", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 263, i32 27}
!378 = !{ptr @i2c0_pins, !379, !"i2c0_pins", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 264, i32 27}
!380 = !{ptr @i2c1_pins, !381, !"i2c1_pins", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 265, i32 27}
!382 = !{ptr @i2c2_pins, !383, !"i2c2_pins", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 266, i32 27}
!384 = !{ptr @i2c3_pins, !385, !"i2c3_pins", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 267, i32 27}
!386 = !{ptr @i2c4_pins, !387, !"i2c4_pins", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 268, i32 27}
!388 = !{ptr @uart0_pins, !389, !"uart0_pins", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 269, i32 27}
!390 = !{ptr @uart1_pins, !391, !"uart1_pins", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 270, i32 27}
!392 = !{ptr @uart2_pins, !393, !"uart2_pins", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 271, i32 27}
!394 = !{ptr @uart3_pins, !395, !"uart3_pins", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 272, i32 27}
!396 = !{ptr @uart4_pins, !397, !"uart4_pins", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 273, i32 27}
!398 = !{ptr @uart5_pins, !399, !"uart5_pins", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 274, i32 27}
!400 = !{ptr @uart6_pins, !401, !"uart6_pins", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 275, i32 27}
!402 = !{ptr @uart7_pins, !403, !"uart7_pins", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 276, i32 27}
!404 = !{ptr @uart8_pins, !405, !"uart8_pins", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 277, i32 27}
!406 = !{ptr @uart9_pins, !407, !"uart9_pins", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 278, i32 27}
!408 = !{ptr @uart10_pins, !409, !"uart10_pins", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 279, i32 27}
!410 = !{ptr @uart11_pins, !411, !"uart11_pins", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 280, i32 27}
!412 = !{ptr @uart12_pins, !413, !"uart12_pins", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 281, i32 27}
!414 = !{ptr @uart13_pins, !415, !"uart13_pins", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 282, i32 27}
!416 = !{ptr @uart14_pins, !417, !"uart14_pins", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 283, i32 27}
!418 = !{ptr @uart15_pins, !419, !"uart15_pins", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 284, i32 27}
!420 = !{ptr @gpio0_pins, !421, !"gpio0_pins", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 285, i32 27}
!422 = !{ptr @gpio1_pins, !423, !"gpio1_pins", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 286, i32 27}
!424 = !{ptr @gpio2_pins, !425, !"gpio2_pins", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 287, i32 27}
!426 = !{ptr @gpio3_pins, !427, !"gpio3_pins", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 288, i32 27}
!428 = !{ptr @gpio4_pins, !429, !"gpio4_pins", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 289, i32 27}
!430 = !{ptr @gpio5_pins, !431, !"gpio5_pins", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 290, i32 27}
!432 = !{ptr @gpio6_pins, !433, !"gpio6_pins", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 291, i32 27}
!434 = !{ptr @gpio7_pins, !435, !"gpio7_pins", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 292, i32 27}
!436 = !{ptr @gpio8_pins, !437, !"gpio8_pins", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 293, i32 27}
!438 = !{ptr @gpio9_pins, !439, !"gpio9_pins", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 294, i32 27}
!440 = !{ptr @gpio10_pins, !441, !"gpio10_pins", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 295, i32 27}
!442 = !{ptr @gpio11_pins, !443, !"gpio11_pins", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 296, i32 27}
!444 = !{ptr @gpio12_pins, !445, !"gpio12_pins", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 297, i32 27}
!446 = !{ptr @gpio13_pins, !447, !"gpio13_pins", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 298, i32 27}
!448 = !{ptr @gpio14_pins, !449, !"gpio14_pins", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 299, i32 27}
!450 = !{ptr @gpio15_pins, !451, !"gpio15_pins", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 300, i32 27}
!452 = !{ptr @gpio16_pins, !453, !"gpio16_pins", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 301, i32 27}
!454 = !{ptr @gpio17_pins, !455, !"gpio17_pins", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 302, i32 27}
!456 = !{ptr @gpio18_pins, !457, !"gpio18_pins", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 303, i32 27}
!458 = !{ptr @gpio19_pins, !459, !"gpio19_pins", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 304, i32 27}
!460 = !{ptr @gpio20_pins, !461, !"gpio20_pins", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 305, i32 27}
!462 = !{ptr @gpio21_pins, !463, !"gpio21_pins", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 306, i32 27}
!464 = !{ptr @gpio22_pins, !465, !"gpio22_pins", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 307, i32 27}
!466 = !{ptr @gpio23_pins, !467, !"gpio23_pins", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 308, i32 27}
!468 = !{ptr @gpio24_pins, !469, !"gpio24_pins", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 309, i32 27}
!470 = !{ptr @gpio25_pins, !471, !"gpio25_pins", i1 false, i1 false}
!471 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 310, i32 27}
!472 = !{ptr @gpio26_pins, !473, !"gpio26_pins", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 311, i32 27}
!474 = !{ptr @gpio27_pins, !475, !"gpio27_pins", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 312, i32 27}
!476 = !{ptr @gpio28_pins, !477, !"gpio28_pins", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 313, i32 27}
!478 = !{ptr @gpio29_pins, !479, !"gpio29_pins", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 314, i32 27}
!480 = !{ptr @gpio30_pins, !481, !"gpio30_pins", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 315, i32 27}
!482 = !{ptr @gpio31_pins, !483, !"gpio31_pins", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 316, i32 27}
!484 = !{ptr @gpio32_pins, !485, !"gpio32_pins", i1 false, i1 false}
!485 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 317, i32 27}
!486 = !{ptr @gpio33_pins, !487, !"gpio33_pins", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 318, i32 27}
!488 = !{ptr @gpio34_pins, !489, !"gpio34_pins", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 319, i32 27}
!490 = !{ptr @gpio35_pins, !491, !"gpio35_pins", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 320, i32 27}
!492 = !{ptr @gpio36_pins, !493, !"gpio36_pins", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 321, i32 27}
!494 = !{ptr @gpio37_pins, !495, !"gpio37_pins", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 322, i32 27}
!496 = !{ptr @gpio38_pins, !497, !"gpio38_pins", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 323, i32 27}
!498 = !{ptr @gpio39_pins, !499, !"gpio39_pins", i1 false, i1 false}
!499 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 324, i32 27}
!500 = !{ptr @gpio40_pins, !501, !"gpio40_pins", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 325, i32 27}
!502 = !{ptr @gpio41_pins, !503, !"gpio41_pins", i1 false, i1 false}
!503 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 326, i32 27}
!504 = !{ptr @gpio42_pins, !505, !"gpio42_pins", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 327, i32 27}
!506 = !{ptr @gpio43_pins, !507, !"gpio43_pins", i1 false, i1 false}
!507 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 328, i32 27}
!508 = !{ptr @gpio44_pins, !509, !"gpio44_pins", i1 false, i1 false}
!509 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 329, i32 27}
!510 = !{ptr @gpio45_pins, !511, !"gpio45_pins", i1 false, i1 false}
!511 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 330, i32 27}
!512 = !{ptr @gpio46_pins, !513, !"gpio46_pins", i1 false, i1 false}
!513 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 331, i32 27}
!514 = !{ptr @gpio47_pins, !515, !"gpio47_pins", i1 false, i1 false}
!515 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 332, i32 27}
!516 = !{ptr @gpio48_pins, !517, !"gpio48_pins", i1 false, i1 false}
!517 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 333, i32 27}
!518 = !{ptr @gpio49_pins, !519, !"gpio49_pins", i1 false, i1 false}
!519 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 334, i32 27}
!520 = !{ptr @gpio50_pins, !521, !"gpio50_pins", i1 false, i1 false}
!521 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 335, i32 27}
!522 = !{ptr @gpio51_pins, !523, !"gpio51_pins", i1 false, i1 false}
!523 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 336, i32 27}
!524 = !{ptr @gpio52_pins, !525, !"gpio52_pins", i1 false, i1 false}
!525 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 337, i32 27}
!526 = !{ptr @gpio53_pins, !527, !"gpio53_pins", i1 false, i1 false}
!527 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 338, i32 27}
!528 = !{ptr @gpio54_pins, !529, !"gpio54_pins", i1 false, i1 false}
!529 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 339, i32 27}
!530 = !{ptr @gpio55_pins, !531, !"gpio55_pins", i1 false, i1 false}
!531 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 340, i32 27}
!532 = !{ptr @gpio56_pins, !533, !"gpio56_pins", i1 false, i1 false}
!533 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 341, i32 27}
!534 = !{ptr @gpio57_pins, !535, !"gpio57_pins", i1 false, i1 false}
!535 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 342, i32 27}
!536 = !{ptr @gpio58_pins, !537, !"gpio58_pins", i1 false, i1 false}
!537 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 343, i32 27}
!538 = !{ptr @gpio59_pins, !539, !"gpio59_pins", i1 false, i1 false}
!539 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 344, i32 27}
!540 = !{ptr @gpio60_pins, !541, !"gpio60_pins", i1 false, i1 false}
!541 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 345, i32 27}
!542 = !{ptr @gpio61_pins, !543, !"gpio61_pins", i1 false, i1 false}
!543 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 346, i32 27}
!544 = !{ptr @gpio62_pins, !545, !"gpio62_pins", i1 false, i1 false}
!545 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 347, i32 27}
!546 = !{ptr @gpio63_pins, !547, !"gpio63_pins", i1 false, i1 false}
!547 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 348, i32 27}
!548 = !{ptr @gpio64_pins, !549, !"gpio64_pins", i1 false, i1 false}
!549 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 349, i32 27}
!550 = !{ptr @gpio65_pins, !551, !"gpio65_pins", i1 false, i1 false}
!551 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 350, i32 27}
!552 = !{ptr @gpio66_pins, !553, !"gpio66_pins", i1 false, i1 false}
!553 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 351, i32 27}
!554 = !{ptr @gpio67_pins, !555, !"gpio67_pins", i1 false, i1 false}
!555 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 352, i32 27}
!556 = !{ptr @eth1_pins, !557, !"eth1_pins", i1 false, i1 false}
!557 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 353, i32 27}
!558 = !{ptr @i2s0_pins, !559, !"i2s0_pins", i1 false, i1 false}
!559 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 355, i32 27}
!560 = !{ptr @i2s0_mclkin_pins, !561, !"i2s0_mclkin_pins", i1 false, i1 false}
!561 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 356, i32 27}
!562 = !{ptr @i2s1_pins, !563, !"i2s1_pins", i1 false, i1 false}
!563 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 357, i32 27}
!564 = !{ptr @i2s1_mclkin_pins, !565, !"i2s1_mclkin_pins", i1 false, i1 false}
!565 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 358, i32 27}
!566 = !{ptr @spi0_pins, !567, !"spi0_pins", i1 false, i1 false}
!567 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 359, i32 27}
!568 = !{ptr @.str.144, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 657, i32 2}
!570 = !{ptr @.str.145, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 658, i32 2}
!572 = !{ptr @.str.146, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 659, i32 2}
!574 = !{ptr @.str.147, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 660, i32 2}
!576 = !{ptr @.str.148, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 661, i32 2}
!578 = !{ptr @.str.149, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 662, i32 2}
!580 = !{ptr @.str.150, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 663, i32 2}
!582 = !{ptr @.str.151, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 664, i32 2}
!584 = !{ptr @.str.152, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 665, i32 2}
!586 = !{ptr @.str.153, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 666, i32 2}
!588 = !{ptr @.str.154, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 667, i32 2}
!590 = !{ptr @.str.155, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 668, i32 2}
!592 = !{ptr @.str.156, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 669, i32 2}
!594 = !{ptr @.str.157, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 670, i32 2}
!596 = !{ptr @.str.158, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 671, i32 2}
!598 = !{ptr @.str.159, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 672, i32 2}
!600 = !{ptr @.str.160, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 673, i32 2}
!602 = !{ptr @.str.161, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 674, i32 2}
!604 = !{ptr @.str.162, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 675, i32 2}
!606 = !{ptr @.str.163, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 676, i32 2}
!608 = !{ptr @.str.164, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 677, i32 2}
!610 = !{ptr @.str.165, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 678, i32 2}
!612 = !{ptr @.str.166, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 679, i32 2}
!614 = !{ptr @.str.167, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 680, i32 2}
!616 = !{ptr @.str.168, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 681, i32 2}
!618 = !{ptr @.str.169, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 682, i32 2}
!620 = !{ptr @.str.170, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 683, i32 2}
!622 = !{ptr @.str.171, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 684, i32 2}
!624 = !{ptr @.str.172, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 685, i32 2}
!626 = !{ptr @.str.173, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 686, i32 2}
!628 = !{ptr @.str.174, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 687, i32 2}
!630 = !{ptr @.str.175, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 688, i32 2}
!632 = !{ptr @.str.176, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 689, i32 2}
!634 = !{ptr @.str.177, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 690, i32 2}
!636 = !{ptr @.str.178, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 691, i32 2}
!638 = !{ptr @.str.179, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 692, i32 2}
!640 = !{ptr @.str.180, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 693, i32 2}
!642 = !{ptr @.str.181, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 694, i32 2}
!644 = !{ptr @.str.182, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 695, i32 2}
!646 = !{ptr @.str.183, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 696, i32 2}
!648 = !{ptr @.str.184, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 697, i32 2}
!650 = !{ptr @.str.185, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 698, i32 2}
!652 = !{ptr @.str.186, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 699, i32 2}
!654 = !{ptr @.str.187, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 700, i32 2}
!656 = !{ptr @.str.188, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 701, i32 2}
!658 = !{ptr @.str.189, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 702, i32 2}
!660 = !{ptr @.str.190, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 703, i32 2}
!662 = !{ptr @.str.191, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 704, i32 2}
!664 = !{ptr @.str.192, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 705, i32 2}
!666 = !{ptr @.str.193, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 706, i32 2}
!668 = !{ptr @.str.194, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 707, i32 2}
!670 = !{ptr @.str.195, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 708, i32 2}
!672 = !{ptr @.str.196, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 709, i32 2}
!674 = !{ptr @.str.197, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 710, i32 2}
!676 = !{ptr @.str.198, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 711, i32 2}
!678 = !{ptr @.str.199, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 712, i32 2}
!680 = !{ptr @.str.200, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 713, i32 2}
!682 = !{ptr @.str.201, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 714, i32 2}
!684 = !{ptr @.str.202, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 715, i32 2}
!686 = !{ptr @.str.203, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 716, i32 2}
!688 = !{ptr @.str.204, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 717, i32 2}
!690 = !{ptr @.str.205, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 718, i32 2}
!692 = !{ptr @.str.206, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 719, i32 2}
!694 = !{ptr @.str.207, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 720, i32 2}
!696 = !{ptr @.str.208, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 721, i32 2}
!698 = !{ptr @.str.209, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 722, i32 2}
!700 = !{ptr @.str.210, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 723, i32 2}
!702 = !{ptr @.str.211, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 724, i32 2}
!704 = !{ptr @.str.212, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 725, i32 2}
!706 = !{ptr @.str.213, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 726, i32 2}
!708 = !{ptr @.str.214, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 727, i32 2}
!710 = !{ptr @.str.215, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 728, i32 2}
!712 = !{ptr @.str.216, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 729, i32 2}
!714 = !{ptr @.str.217, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 730, i32 2}
!716 = !{ptr @.str.218, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 731, i32 2}
!718 = !{ptr @.str.219, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 732, i32 2}
!720 = !{ptr @.str.220, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 733, i32 2}
!722 = !{ptr @.str.221, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 734, i32 2}
!724 = !{ptr @.str.222, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 735, i32 2}
!726 = !{ptr @.str.223, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 736, i32 2}
!728 = !{ptr @.str.224, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 737, i32 2}
!730 = !{ptr @.str.225, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 738, i32 2}
!732 = !{ptr @.str.226, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 739, i32 2}
!734 = !{ptr @.str.227, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 740, i32 2}
!736 = !{ptr @.str.228, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 741, i32 2}
!738 = !{ptr @.str.229, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 742, i32 2}
!740 = !{ptr @.str.230, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 743, i32 2}
!742 = !{ptr @.str.231, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 744, i32 2}
!744 = !{ptr @.str.232, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 745, i32 2}
!746 = !{ptr @.str.233, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 746, i32 2}
!748 = !{ptr @.str.234, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 747, i32 2}
!750 = !{ptr @.str.235, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 748, i32 2}
!752 = !{ptr @.str.236, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 749, i32 2}
!754 = !{ptr @.str.237, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 750, i32 2}
!756 = !{ptr @.str.238, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 751, i32 2}
!758 = !{ptr @.str.239, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 752, i32 2}
!760 = !{ptr @.str.240, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 753, i32 2}
!762 = !{ptr @.str.241, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 754, i32 2}
!764 = !{ptr @.str.242, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 755, i32 2}
!766 = !{ptr @.str.243, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 756, i32 2}
!768 = !{ptr @.str.244, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 757, i32 2}
!770 = !{ptr @.str.245, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 758, i32 2}
!772 = !{ptr @.str.246, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 759, i32 2}
!774 = !{ptr @.str.247, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 760, i32 2}
!776 = !{ptr @.str.248, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 761, i32 2}
!778 = !{ptr @.str.249, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 762, i32 2}
!780 = !{ptr @.str.250, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 763, i32 2}
!782 = !{ptr @.str.251, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 764, i32 2}
!784 = !{ptr @.str.252, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 765, i32 2}
!786 = !{ptr @.str.253, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 766, i32 2}
!788 = !{ptr @.str.254, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 767, i32 2}
!790 = !{ptr @.str.255, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 768, i32 2}
!792 = !{ptr @.str.256, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 769, i32 2}
!794 = !{ptr @.str.257, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 770, i32 2}
!796 = !{ptr @.str.258, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 771, i32 2}
!798 = !{ptr @.str.259, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 772, i32 2}
!800 = !{ptr @.str.260, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 773, i32 2}
!802 = !{ptr @.str.261, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 774, i32 2}
!804 = !{ptr @.str.262, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 775, i32 2}
!806 = !{ptr @.str.263, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 776, i32 2}
!808 = !{ptr @.str.264, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 777, i32 2}
!810 = !{ptr @.str.265, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 778, i32 2}
!812 = !{ptr @.str.266, !813, !"<string literal>", i1 false, i1 false}
!813 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 779, i32 2}
!814 = !{ptr @.str.267, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 780, i32 2}
!816 = !{ptr @.str.268, !817, !"<string literal>", i1 false, i1 false}
!817 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 781, i32 2}
!818 = !{ptr @.str.269, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 782, i32 2}
!820 = !{ptr @.str.270, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 783, i32 2}
!822 = !{ptr @.str.271, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 784, i32 2}
!824 = !{ptr @.str.272, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 785, i32 2}
!826 = !{ptr @.str.273, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 786, i32 2}
!828 = !{ptr @.str.274, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 787, i32 2}
!830 = !{ptr @.str.275, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 788, i32 2}
!832 = !{ptr @.str.276, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 789, i32 2}
!834 = !{ptr @.str.277, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 790, i32 2}
!836 = !{ptr @.str.278, !837, !"<string literal>", i1 false, i1 false}
!837 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 791, i32 2}
!838 = !{ptr @.str.279, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 792, i32 2}
!840 = !{ptr @.str.280, !841, !"<string literal>", i1 false, i1 false}
!841 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 793, i32 2}
!842 = !{ptr @.str.281, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 794, i32 2}
!844 = !{ptr @bm1880_pmux_functions, !845, !"bm1880_pmux_functions", i1 false, i1 false}
!845 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 656, i32 44}
!846 = !{ptr @nand_group, !847, !"nand_group", i1 false, i1 false}
!847 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 509, i32 27}
!848 = !{ptr @spi_group, !849, !"spi_group", i1 false, i1 false}
!849 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 510, i32 27}
!850 = !{ptr @emmc_group, !851, !"emmc_group", i1 false, i1 false}
!851 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 511, i32 27}
!852 = !{ptr @sdio_group, !853, !"sdio_group", i1 false, i1 false}
!853 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 512, i32 27}
!854 = !{ptr @eth0_group, !855, !"eth0_group", i1 false, i1 false}
!855 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 513, i32 27}
!856 = !{ptr @pwm0_group, !857, !"pwm0_group", i1 false, i1 false}
!857 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 514, i32 27}
!858 = !{ptr @pwm1_group, !859, !"pwm1_group", i1 false, i1 false}
!859 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 515, i32 27}
!860 = !{ptr @pwm2_group, !861, !"pwm2_group", i1 false, i1 false}
!861 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 516, i32 27}
!862 = !{ptr @pwm3_group, !863, !"pwm3_group", i1 false, i1 false}
!863 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 517, i32 27}
!864 = !{ptr @pwm4_group, !865, !"pwm4_group", i1 false, i1 false}
!865 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 518, i32 27}
!866 = !{ptr @pwm5_group, !867, !"pwm5_group", i1 false, i1 false}
!867 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 519, i32 27}
!868 = !{ptr @pwm6_group, !869, !"pwm6_group", i1 false, i1 false}
!869 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 520, i32 27}
!870 = !{ptr @pwm7_group, !871, !"pwm7_group", i1 false, i1 false}
!871 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 521, i32 27}
!872 = !{ptr @pwm8_group, !873, !"pwm8_group", i1 false, i1 false}
!873 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 522, i32 27}
!874 = !{ptr @pwm9_group, !875, !"pwm9_group", i1 false, i1 false}
!875 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 523, i32 27}
!876 = !{ptr @pwm10_group, !877, !"pwm10_group", i1 false, i1 false}
!877 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 524, i32 27}
!878 = !{ptr @pwm11_group, !879, !"pwm11_group", i1 false, i1 false}
!879 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 525, i32 27}
!880 = !{ptr @pwm12_group, !881, !"pwm12_group", i1 false, i1 false}
!881 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 526, i32 27}
!882 = !{ptr @pwm13_group, !883, !"pwm13_group", i1 false, i1 false}
!883 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 527, i32 27}
!884 = !{ptr @pwm14_group, !885, !"pwm14_group", i1 false, i1 false}
!885 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 528, i32 27}
!886 = !{ptr @pwm15_group, !887, !"pwm15_group", i1 false, i1 false}
!887 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 529, i32 27}
!888 = !{ptr @pwm16_group, !889, !"pwm16_group", i1 false, i1 false}
!889 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 530, i32 27}
!890 = !{ptr @pwm17_group, !891, !"pwm17_group", i1 false, i1 false}
!891 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 531, i32 27}
!892 = !{ptr @pwm18_group, !893, !"pwm18_group", i1 false, i1 false}
!893 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 532, i32 27}
!894 = !{ptr @pwm19_group, !895, !"pwm19_group", i1 false, i1 false}
!895 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 533, i32 27}
!896 = !{ptr @pwm20_group, !897, !"pwm20_group", i1 false, i1 false}
!897 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 534, i32 27}
!898 = !{ptr @pwm21_group, !899, !"pwm21_group", i1 false, i1 false}
!899 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 535, i32 27}
!900 = !{ptr @pwm22_group, !901, !"pwm22_group", i1 false, i1 false}
!901 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 536, i32 27}
!902 = !{ptr @pwm23_group, !903, !"pwm23_group", i1 false, i1 false}
!903 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 537, i32 27}
!904 = !{ptr @pwm24_group, !905, !"pwm24_group", i1 false, i1 false}
!905 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 538, i32 27}
!906 = !{ptr @pwm25_group, !907, !"pwm25_group", i1 false, i1 false}
!907 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 539, i32 27}
!908 = !{ptr @pwm26_group, !909, !"pwm26_group", i1 false, i1 false}
!909 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 540, i32 27}
!910 = !{ptr @pwm27_group, !911, !"pwm27_group", i1 false, i1 false}
!911 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 541, i32 27}
!912 = !{ptr @pwm28_group, !913, !"pwm28_group", i1 false, i1 false}
!913 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 542, i32 27}
!914 = !{ptr @pwm29_group, !915, !"pwm29_group", i1 false, i1 false}
!915 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 543, i32 27}
!916 = !{ptr @pwm30_group, !917, !"pwm30_group", i1 false, i1 false}
!917 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 544, i32 27}
!918 = !{ptr @pwm31_group, !919, !"pwm31_group", i1 false, i1 false}
!919 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 545, i32 27}
!920 = !{ptr @pwm32_group, !921, !"pwm32_group", i1 false, i1 false}
!921 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 546, i32 27}
!922 = !{ptr @pwm33_group, !923, !"pwm33_group", i1 false, i1 false}
!923 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 547, i32 27}
!924 = !{ptr @pwm34_group, !925, !"pwm34_group", i1 false, i1 false}
!925 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 548, i32 27}
!926 = !{ptr @pwm35_group, !927, !"pwm35_group", i1 false, i1 false}
!927 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 549, i32 27}
!928 = !{ptr @pwm36_group, !929, !"pwm36_group", i1 false, i1 false}
!929 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 550, i32 27}
!930 = !{ptr @pwm37_group, !931, !"pwm37_group", i1 false, i1 false}
!931 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 551, i32 27}
!932 = !{ptr @i2c0_group, !933, !"i2c0_group", i1 false, i1 false}
!933 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 552, i32 27}
!934 = !{ptr @i2c1_group, !935, !"i2c1_group", i1 false, i1 false}
!935 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 553, i32 27}
!936 = !{ptr @i2c2_group, !937, !"i2c2_group", i1 false, i1 false}
!937 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 554, i32 27}
!938 = !{ptr @i2c3_group, !939, !"i2c3_group", i1 false, i1 false}
!939 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 555, i32 27}
!940 = !{ptr @i2c4_group, !941, !"i2c4_group", i1 false, i1 false}
!941 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 556, i32 27}
!942 = !{ptr @uart0_group, !943, !"uart0_group", i1 false, i1 false}
!943 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 557, i32 27}
!944 = !{ptr @uart1_group, !945, !"uart1_group", i1 false, i1 false}
!945 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 558, i32 27}
!946 = !{ptr @uart2_group, !947, !"uart2_group", i1 false, i1 false}
!947 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 559, i32 27}
!948 = !{ptr @uart3_group, !949, !"uart3_group", i1 false, i1 false}
!949 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 560, i32 27}
!950 = !{ptr @uart4_group, !951, !"uart4_group", i1 false, i1 false}
!951 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 561, i32 27}
!952 = !{ptr @uart5_group, !953, !"uart5_group", i1 false, i1 false}
!953 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 562, i32 27}
!954 = !{ptr @uart6_group, !955, !"uart6_group", i1 false, i1 false}
!955 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 563, i32 27}
!956 = !{ptr @uart7_group, !957, !"uart7_group", i1 false, i1 false}
!957 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 564, i32 27}
!958 = !{ptr @uart8_group, !959, !"uart8_group", i1 false, i1 false}
!959 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 565, i32 27}
!960 = !{ptr @uart9_group, !961, !"uart9_group", i1 false, i1 false}
!961 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 566, i32 27}
!962 = !{ptr @uart10_group, !963, !"uart10_group", i1 false, i1 false}
!963 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 567, i32 27}
!964 = !{ptr @uart11_group, !965, !"uart11_group", i1 false, i1 false}
!965 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 568, i32 27}
!966 = !{ptr @uart12_group, !967, !"uart12_group", i1 false, i1 false}
!967 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 569, i32 27}
!968 = !{ptr @uart13_group, !969, !"uart13_group", i1 false, i1 false}
!969 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 570, i32 27}
!970 = !{ptr @uart14_group, !971, !"uart14_group", i1 false, i1 false}
!971 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 571, i32 27}
!972 = !{ptr @uart15_group, !973, !"uart15_group", i1 false, i1 false}
!973 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 572, i32 27}
!974 = !{ptr @gpio0_group, !975, !"gpio0_group", i1 false, i1 false}
!975 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 573, i32 27}
!976 = !{ptr @gpio1_group, !977, !"gpio1_group", i1 false, i1 false}
!977 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 574, i32 27}
!978 = !{ptr @gpio2_group, !979, !"gpio2_group", i1 false, i1 false}
!979 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 575, i32 27}
!980 = !{ptr @gpio3_group, !981, !"gpio3_group", i1 false, i1 false}
!981 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 576, i32 27}
!982 = !{ptr @gpio4_group, !983, !"gpio4_group", i1 false, i1 false}
!983 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 577, i32 27}
!984 = !{ptr @gpio5_group, !985, !"gpio5_group", i1 false, i1 false}
!985 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 578, i32 27}
!986 = !{ptr @gpio6_group, !987, !"gpio6_group", i1 false, i1 false}
!987 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 579, i32 27}
!988 = !{ptr @gpio7_group, !989, !"gpio7_group", i1 false, i1 false}
!989 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 580, i32 27}
!990 = !{ptr @gpio8_group, !991, !"gpio8_group", i1 false, i1 false}
!991 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 581, i32 27}
!992 = !{ptr @gpio9_group, !993, !"gpio9_group", i1 false, i1 false}
!993 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 582, i32 27}
!994 = !{ptr @gpio10_group, !995, !"gpio10_group", i1 false, i1 false}
!995 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 583, i32 27}
!996 = !{ptr @gpio11_group, !997, !"gpio11_group", i1 false, i1 false}
!997 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 584, i32 27}
!998 = !{ptr @gpio12_group, !999, !"gpio12_group", i1 false, i1 false}
!999 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 585, i32 27}
!1000 = !{ptr @gpio13_group, !1001, !"gpio13_group", i1 false, i1 false}
!1001 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 586, i32 27}
!1002 = !{ptr @gpio14_group, !1003, !"gpio14_group", i1 false, i1 false}
!1003 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 587, i32 27}
!1004 = !{ptr @gpio15_group, !1005, !"gpio15_group", i1 false, i1 false}
!1005 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 588, i32 27}
!1006 = !{ptr @gpio16_group, !1007, !"gpio16_group", i1 false, i1 false}
!1007 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 589, i32 27}
!1008 = !{ptr @gpio17_group, !1009, !"gpio17_group", i1 false, i1 false}
!1009 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 590, i32 27}
!1010 = !{ptr @gpio18_group, !1011, !"gpio18_group", i1 false, i1 false}
!1011 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 591, i32 27}
!1012 = !{ptr @gpio19_group, !1013, !"gpio19_group", i1 false, i1 false}
!1013 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 592, i32 27}
!1014 = !{ptr @gpio20_group, !1015, !"gpio20_group", i1 false, i1 false}
!1015 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 593, i32 27}
!1016 = !{ptr @gpio21_group, !1017, !"gpio21_group", i1 false, i1 false}
!1017 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 594, i32 27}
!1018 = !{ptr @gpio22_group, !1019, !"gpio22_group", i1 false, i1 false}
!1019 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 595, i32 27}
!1020 = !{ptr @gpio23_group, !1021, !"gpio23_group", i1 false, i1 false}
!1021 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 596, i32 27}
!1022 = !{ptr @gpio24_group, !1023, !"gpio24_group", i1 false, i1 false}
!1023 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 597, i32 27}
!1024 = !{ptr @gpio25_group, !1025, !"gpio25_group", i1 false, i1 false}
!1025 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 598, i32 27}
!1026 = !{ptr @gpio26_group, !1027, !"gpio26_group", i1 false, i1 false}
!1027 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 599, i32 27}
!1028 = !{ptr @gpio27_group, !1029, !"gpio27_group", i1 false, i1 false}
!1029 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 600, i32 27}
!1030 = !{ptr @gpio28_group, !1031, !"gpio28_group", i1 false, i1 false}
!1031 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 601, i32 27}
!1032 = !{ptr @gpio29_group, !1033, !"gpio29_group", i1 false, i1 false}
!1033 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 602, i32 27}
!1034 = !{ptr @gpio30_group, !1035, !"gpio30_group", i1 false, i1 false}
!1035 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 603, i32 27}
!1036 = !{ptr @gpio31_group, !1037, !"gpio31_group", i1 false, i1 false}
!1037 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 604, i32 27}
!1038 = !{ptr @gpio32_group, !1039, !"gpio32_group", i1 false, i1 false}
!1039 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 605, i32 27}
!1040 = !{ptr @gpio33_group, !1041, !"gpio33_group", i1 false, i1 false}
!1041 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 606, i32 27}
!1042 = !{ptr @gpio34_group, !1043, !"gpio34_group", i1 false, i1 false}
!1043 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 607, i32 27}
!1044 = !{ptr @gpio35_group, !1045, !"gpio35_group", i1 false, i1 false}
!1045 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 608, i32 27}
!1046 = !{ptr @gpio36_group, !1047, !"gpio36_group", i1 false, i1 false}
!1047 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 609, i32 27}
!1048 = !{ptr @gpio37_group, !1049, !"gpio37_group", i1 false, i1 false}
!1049 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 610, i32 27}
!1050 = !{ptr @gpio38_group, !1051, !"gpio38_group", i1 false, i1 false}
!1051 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 611, i32 27}
!1052 = !{ptr @gpio39_group, !1053, !"gpio39_group", i1 false, i1 false}
!1053 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 612, i32 27}
!1054 = !{ptr @gpio40_group, !1055, !"gpio40_group", i1 false, i1 false}
!1055 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 613, i32 27}
!1056 = !{ptr @gpio41_group, !1057, !"gpio41_group", i1 false, i1 false}
!1057 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 614, i32 27}
!1058 = !{ptr @gpio42_group, !1059, !"gpio42_group", i1 false, i1 false}
!1059 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 615, i32 27}
!1060 = !{ptr @gpio43_group, !1061, !"gpio43_group", i1 false, i1 false}
!1061 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 616, i32 27}
!1062 = !{ptr @gpio44_group, !1063, !"gpio44_group", i1 false, i1 false}
!1063 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 617, i32 27}
!1064 = !{ptr @gpio45_group, !1065, !"gpio45_group", i1 false, i1 false}
!1065 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 618, i32 27}
!1066 = !{ptr @gpio46_group, !1067, !"gpio46_group", i1 false, i1 false}
!1067 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 619, i32 27}
!1068 = !{ptr @gpio47_group, !1069, !"gpio47_group", i1 false, i1 false}
!1069 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 620, i32 27}
!1070 = !{ptr @gpio48_group, !1071, !"gpio48_group", i1 false, i1 false}
!1071 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 621, i32 27}
!1072 = !{ptr @gpio49_group, !1073, !"gpio49_group", i1 false, i1 false}
!1073 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 622, i32 27}
!1074 = !{ptr @gpio50_group, !1075, !"gpio50_group", i1 false, i1 false}
!1075 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 623, i32 27}
!1076 = !{ptr @gpio51_group, !1077, !"gpio51_group", i1 false, i1 false}
!1077 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 624, i32 27}
!1078 = !{ptr @gpio52_group, !1079, !"gpio52_group", i1 false, i1 false}
!1079 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 625, i32 27}
!1080 = !{ptr @gpio53_group, !1081, !"gpio53_group", i1 false, i1 false}
!1081 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 626, i32 27}
!1082 = !{ptr @gpio54_group, !1083, !"gpio54_group", i1 false, i1 false}
!1083 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 627, i32 27}
!1084 = !{ptr @gpio55_group, !1085, !"gpio55_group", i1 false, i1 false}
!1085 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 628, i32 27}
!1086 = !{ptr @gpio56_group, !1087, !"gpio56_group", i1 false, i1 false}
!1087 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 629, i32 27}
!1088 = !{ptr @gpio57_group, !1089, !"gpio57_group", i1 false, i1 false}
!1089 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 630, i32 27}
!1090 = !{ptr @gpio58_group, !1091, !"gpio58_group", i1 false, i1 false}
!1091 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 631, i32 27}
!1092 = !{ptr @gpio59_group, !1093, !"gpio59_group", i1 false, i1 false}
!1093 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 632, i32 27}
!1094 = !{ptr @gpio60_group, !1095, !"gpio60_group", i1 false, i1 false}
!1095 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 633, i32 27}
!1096 = !{ptr @gpio61_group, !1097, !"gpio61_group", i1 false, i1 false}
!1097 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 634, i32 27}
!1098 = !{ptr @gpio62_group, !1099, !"gpio62_group", i1 false, i1 false}
!1099 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 635, i32 27}
!1100 = !{ptr @gpio63_group, !1101, !"gpio63_group", i1 false, i1 false}
!1101 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 636, i32 27}
!1102 = !{ptr @gpio64_group, !1103, !"gpio64_group", i1 false, i1 false}
!1103 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 637, i32 27}
!1104 = !{ptr @gpio65_group, !1105, !"gpio65_group", i1 false, i1 false}
!1105 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 638, i32 27}
!1106 = !{ptr @gpio66_group, !1107, !"gpio66_group", i1 false, i1 false}
!1107 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 639, i32 27}
!1108 = !{ptr @gpio67_group, !1109, !"gpio67_group", i1 false, i1 false}
!1109 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 640, i32 27}
!1110 = !{ptr @eth1_group, !1111, !"eth1_group", i1 false, i1 false}
!1111 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 641, i32 27}
!1112 = !{ptr @i2s0_group, !1113, !"i2s0_group", i1 false, i1 false}
!1113 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 642, i32 27}
!1114 = !{ptr @i2s0_mclkin_group, !1115, !"i2s0_mclkin_group", i1 false, i1 false}
!1115 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 643, i32 27}
!1116 = !{ptr @i2s1_group, !1117, !"i2s1_group", i1 false, i1 false}
!1117 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 644, i32 27}
!1118 = !{ptr @i2s1_mclkin_group, !1119, !"i2s1_mclkin_group", i1 false, i1 false}
!1119 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 645, i32 27}
!1120 = !{ptr @spi0_group, !1121, !"spi0_group", i1 false, i1 false}
!1121 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 646, i32 27}
!1122 = !{ptr @bm1880_pinconf, !1123, !"bm1880_pinconf", i1 false, i1 false}
!1123 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 802, i32 41}
!1124 = !{ptr @.str.282, !1125, !"<string literal>", i1 false, i1 false}
!1125 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1300, i32 10}
!1126 = !{ptr @bm1880_desc, !1127, !"bm1880_desc", i1 false, i1 false}
!1127 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1299, i32 28}
!1128 = !{ptr @.str.283, !1129, !"<string literal>", i1 false, i1 false}
!1129 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 81, i32 2}
!1130 = !{ptr @.str.284, !1131, !"<string literal>", i1 false, i1 false}
!1131 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 82, i32 2}
!1132 = !{ptr @.str.285, !1133, !"<string literal>", i1 false, i1 false}
!1133 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 83, i32 2}
!1134 = !{ptr @.str.286, !1135, !"<string literal>", i1 false, i1 false}
!1135 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 84, i32 2}
!1136 = !{ptr @.str.287, !1137, !"<string literal>", i1 false, i1 false}
!1137 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 85, i32 2}
!1138 = !{ptr @.str.288, !1139, !"<string literal>", i1 false, i1 false}
!1139 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 86, i32 2}
!1140 = !{ptr @.str.289, !1141, !"<string literal>", i1 false, i1 false}
!1141 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 87, i32 2}
!1142 = !{ptr @.str.290, !1143, !"<string literal>", i1 false, i1 false}
!1143 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 88, i32 2}
!1144 = !{ptr @.str.291, !1145, !"<string literal>", i1 false, i1 false}
!1145 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 89, i32 2}
!1146 = !{ptr @.str.292, !1147, !"<string literal>", i1 false, i1 false}
!1147 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 90, i32 2}
!1148 = !{ptr @.str.293, !1149, !"<string literal>", i1 false, i1 false}
!1149 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 91, i32 2}
!1150 = !{ptr @.str.294, !1151, !"<string literal>", i1 false, i1 false}
!1151 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 92, i32 2}
!1152 = !{ptr @.str.295, !1153, !"<string literal>", i1 false, i1 false}
!1153 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 93, i32 2}
!1154 = !{ptr @.str.296, !1155, !"<string literal>", i1 false, i1 false}
!1155 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 94, i32 2}
!1156 = !{ptr @.str.297, !1157, !"<string literal>", i1 false, i1 false}
!1157 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 95, i32 2}
!1158 = !{ptr @.str.298, !1159, !"<string literal>", i1 false, i1 false}
!1159 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 96, i32 2}
!1160 = !{ptr @.str.299, !1161, !"<string literal>", i1 false, i1 false}
!1161 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 97, i32 2}
!1162 = !{ptr @.str.300, !1163, !"<string literal>", i1 false, i1 false}
!1163 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 98, i32 2}
!1164 = !{ptr @.str.301, !1165, !"<string literal>", i1 false, i1 false}
!1165 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 99, i32 2}
!1166 = !{ptr @.str.302, !1167, !"<string literal>", i1 false, i1 false}
!1167 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 100, i32 2}
!1168 = !{ptr @.str.303, !1169, !"<string literal>", i1 false, i1 false}
!1169 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 101, i32 2}
!1170 = !{ptr @.str.304, !1171, !"<string literal>", i1 false, i1 false}
!1171 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 102, i32 2}
!1172 = !{ptr @.str.305, !1173, !"<string literal>", i1 false, i1 false}
!1173 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 103, i32 2}
!1174 = !{ptr @.str.306, !1175, !"<string literal>", i1 false, i1 false}
!1175 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 104, i32 2}
!1176 = !{ptr @.str.307, !1177, !"<string literal>", i1 false, i1 false}
!1177 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 105, i32 2}
!1178 = !{ptr @.str.308, !1179, !"<string literal>", i1 false, i1 false}
!1179 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 106, i32 2}
!1180 = !{ptr @.str.309, !1181, !"<string literal>", i1 false, i1 false}
!1181 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 107, i32 2}
!1182 = !{ptr @.str.310, !1183, !"<string literal>", i1 false, i1 false}
!1183 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 108, i32 2}
!1184 = !{ptr @.str.311, !1185, !"<string literal>", i1 false, i1 false}
!1185 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 109, i32 2}
!1186 = !{ptr @.str.312, !1187, !"<string literal>", i1 false, i1 false}
!1187 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 110, i32 2}
!1188 = !{ptr @.str.313, !1189, !"<string literal>", i1 false, i1 false}
!1189 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 111, i32 2}
!1190 = !{ptr @.str.314, !1191, !"<string literal>", i1 false, i1 false}
!1191 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 112, i32 2}
!1192 = !{ptr @.str.315, !1193, !"<string literal>", i1 false, i1 false}
!1193 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 113, i32 2}
!1194 = !{ptr @.str.316, !1195, !"<string literal>", i1 false, i1 false}
!1195 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 114, i32 2}
!1196 = !{ptr @.str.317, !1197, !"<string literal>", i1 false, i1 false}
!1197 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 115, i32 2}
!1198 = !{ptr @.str.318, !1199, !"<string literal>", i1 false, i1 false}
!1199 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 116, i32 2}
!1200 = !{ptr @.str.319, !1201, !"<string literal>", i1 false, i1 false}
!1201 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 117, i32 2}
!1202 = !{ptr @.str.320, !1203, !"<string literal>", i1 false, i1 false}
!1203 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 118, i32 2}
!1204 = !{ptr @.str.321, !1205, !"<string literal>", i1 false, i1 false}
!1205 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 119, i32 2}
!1206 = !{ptr @.str.322, !1207, !"<string literal>", i1 false, i1 false}
!1207 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 120, i32 2}
!1208 = !{ptr @.str.323, !1209, !"<string literal>", i1 false, i1 false}
!1209 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 121, i32 2}
!1210 = !{ptr @.str.324, !1211, !"<string literal>", i1 false, i1 false}
!1211 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 122, i32 2}
!1212 = !{ptr @.str.325, !1213, !"<string literal>", i1 false, i1 false}
!1213 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 123, i32 2}
!1214 = !{ptr @.str.326, !1215, !"<string literal>", i1 false, i1 false}
!1215 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 124, i32 2}
!1216 = !{ptr @.str.327, !1217, !"<string literal>", i1 false, i1 false}
!1217 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 125, i32 2}
!1218 = !{ptr @.str.328, !1219, !"<string literal>", i1 false, i1 false}
!1219 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 126, i32 2}
!1220 = !{ptr @.str.329, !1221, !"<string literal>", i1 false, i1 false}
!1221 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 127, i32 2}
!1222 = !{ptr @.str.330, !1223, !"<string literal>", i1 false, i1 false}
!1223 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 128, i32 2}
!1224 = !{ptr @.str.331, !1225, !"<string literal>", i1 false, i1 false}
!1225 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 129, i32 2}
!1226 = !{ptr @.str.332, !1227, !"<string literal>", i1 false, i1 false}
!1227 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 130, i32 2}
!1228 = !{ptr @.str.333, !1229, !"<string literal>", i1 false, i1 false}
!1229 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 131, i32 2}
!1230 = !{ptr @.str.334, !1231, !"<string literal>", i1 false, i1 false}
!1231 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 132, i32 2}
!1232 = !{ptr @.str.335, !1233, !"<string literal>", i1 false, i1 false}
!1233 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 133, i32 2}
!1234 = !{ptr @.str.336, !1235, !"<string literal>", i1 false, i1 false}
!1235 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 134, i32 2}
!1236 = !{ptr @.str.337, !1237, !"<string literal>", i1 false, i1 false}
!1237 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 135, i32 2}
!1238 = !{ptr @.str.338, !1239, !"<string literal>", i1 false, i1 false}
!1239 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 136, i32 2}
!1240 = !{ptr @.str.339, !1241, !"<string literal>", i1 false, i1 false}
!1241 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 137, i32 2}
!1242 = !{ptr @.str.340, !1243, !"<string literal>", i1 false, i1 false}
!1243 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 138, i32 2}
!1244 = !{ptr @.str.341, !1245, !"<string literal>", i1 false, i1 false}
!1245 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 139, i32 2}
!1246 = !{ptr @.str.342, !1247, !"<string literal>", i1 false, i1 false}
!1247 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 140, i32 2}
!1248 = !{ptr @.str.343, !1249, !"<string literal>", i1 false, i1 false}
!1249 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 141, i32 2}
!1250 = !{ptr @.str.344, !1251, !"<string literal>", i1 false, i1 false}
!1251 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 142, i32 2}
!1252 = !{ptr @.str.345, !1253, !"<string literal>", i1 false, i1 false}
!1253 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 143, i32 2}
!1254 = !{ptr @.str.346, !1255, !"<string literal>", i1 false, i1 false}
!1255 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 144, i32 2}
!1256 = !{ptr @.str.347, !1257, !"<string literal>", i1 false, i1 false}
!1257 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 145, i32 2}
!1258 = !{ptr @.str.348, !1259, !"<string literal>", i1 false, i1 false}
!1259 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 146, i32 2}
!1260 = !{ptr @.str.349, !1261, !"<string literal>", i1 false, i1 false}
!1261 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 147, i32 2}
!1262 = !{ptr @.str.350, !1263, !"<string literal>", i1 false, i1 false}
!1263 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 148, i32 2}
!1264 = !{ptr @.str.351, !1265, !"<string literal>", i1 false, i1 false}
!1265 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 149, i32 2}
!1266 = !{ptr @.str.352, !1267, !"<string literal>", i1 false, i1 false}
!1267 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 150, i32 2}
!1268 = !{ptr @.str.353, !1269, !"<string literal>", i1 false, i1 false}
!1269 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 151, i32 2}
!1270 = !{ptr @.str.354, !1271, !"<string literal>", i1 false, i1 false}
!1271 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 152, i32 2}
!1272 = !{ptr @.str.355, !1273, !"<string literal>", i1 false, i1 false}
!1273 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 153, i32 2}
!1274 = !{ptr @.str.356, !1275, !"<string literal>", i1 false, i1 false}
!1275 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 154, i32 2}
!1276 = !{ptr @.str.357, !1277, !"<string literal>", i1 false, i1 false}
!1277 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 155, i32 2}
!1278 = !{ptr @.str.358, !1279, !"<string literal>", i1 false, i1 false}
!1279 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 156, i32 2}
!1280 = !{ptr @.str.359, !1281, !"<string literal>", i1 false, i1 false}
!1281 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 157, i32 2}
!1282 = !{ptr @.str.360, !1283, !"<string literal>", i1 false, i1 false}
!1283 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 158, i32 2}
!1284 = !{ptr @.str.361, !1285, !"<string literal>", i1 false, i1 false}
!1285 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 159, i32 2}
!1286 = !{ptr @.str.362, !1287, !"<string literal>", i1 false, i1 false}
!1287 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 160, i32 2}
!1288 = !{ptr @.str.363, !1289, !"<string literal>", i1 false, i1 false}
!1289 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 161, i32 2}
!1290 = !{ptr @.str.364, !1291, !"<string literal>", i1 false, i1 false}
!1291 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 162, i32 2}
!1292 = !{ptr @.str.365, !1293, !"<string literal>", i1 false, i1 false}
!1293 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 163, i32 2}
!1294 = !{ptr @.str.366, !1295, !"<string literal>", i1 false, i1 false}
!1295 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 164, i32 2}
!1296 = !{ptr @.str.367, !1297, !"<string literal>", i1 false, i1 false}
!1297 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 165, i32 2}
!1298 = !{ptr @.str.368, !1299, !"<string literal>", i1 false, i1 false}
!1299 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 166, i32 2}
!1300 = !{ptr @.str.369, !1301, !"<string literal>", i1 false, i1 false}
!1301 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 167, i32 2}
!1302 = !{ptr @.str.370, !1303, !"<string literal>", i1 false, i1 false}
!1303 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 168, i32 2}
!1304 = !{ptr @.str.371, !1305, !"<string literal>", i1 false, i1 false}
!1305 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 169, i32 2}
!1306 = !{ptr @.str.372, !1307, !"<string literal>", i1 false, i1 false}
!1307 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 170, i32 2}
!1308 = !{ptr @.str.373, !1309, !"<string literal>", i1 false, i1 false}
!1309 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 171, i32 2}
!1310 = !{ptr @.str.374, !1311, !"<string literal>", i1 false, i1 false}
!1311 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 172, i32 2}
!1312 = !{ptr @.str.375, !1313, !"<string literal>", i1 false, i1 false}
!1313 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 173, i32 2}
!1314 = !{ptr @.str.376, !1315, !"<string literal>", i1 false, i1 false}
!1315 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 174, i32 2}
!1316 = !{ptr @.str.377, !1317, !"<string literal>", i1 false, i1 false}
!1317 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 175, i32 2}
!1318 = !{ptr @.str.378, !1319, !"<string literal>", i1 false, i1 false}
!1319 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 176, i32 2}
!1320 = !{ptr @.str.379, !1321, !"<string literal>", i1 false, i1 false}
!1321 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 177, i32 2}
!1322 = !{ptr @.str.380, !1323, !"<string literal>", i1 false, i1 false}
!1323 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 178, i32 2}
!1324 = !{ptr @.str.381, !1325, !"<string literal>", i1 false, i1 false}
!1325 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 179, i32 2}
!1326 = !{ptr @.str.382, !1327, !"<string literal>", i1 false, i1 false}
!1327 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 180, i32 2}
!1328 = !{ptr @.str.383, !1329, !"<string literal>", i1 false, i1 false}
!1329 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 181, i32 2}
!1330 = !{ptr @.str.384, !1331, !"<string literal>", i1 false, i1 false}
!1331 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 182, i32 2}
!1332 = !{ptr @.str.385, !1333, !"<string literal>", i1 false, i1 false}
!1333 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 183, i32 2}
!1334 = !{ptr @.str.386, !1335, !"<string literal>", i1 false, i1 false}
!1335 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 184, i32 2}
!1336 = !{ptr @.str.387, !1337, !"<string literal>", i1 false, i1 false}
!1337 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 185, i32 2}
!1338 = !{ptr @.str.388, !1339, !"<string literal>", i1 false, i1 false}
!1339 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 186, i32 2}
!1340 = !{ptr @.str.389, !1341, !"<string literal>", i1 false, i1 false}
!1341 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 187, i32 2}
!1342 = !{ptr @.str.390, !1343, !"<string literal>", i1 false, i1 false}
!1343 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 188, i32 2}
!1344 = !{ptr @.str.391, !1345, !"<string literal>", i1 false, i1 false}
!1345 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 189, i32 2}
!1346 = !{ptr @.str.392, !1347, !"<string literal>", i1 false, i1 false}
!1347 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 190, i32 2}
!1348 = !{ptr @.str.393, !1349, !"<string literal>", i1 false, i1 false}
!1349 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 191, i32 2}
!1350 = !{ptr @.str.394, !1351, !"<string literal>", i1 false, i1 false}
!1351 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 192, i32 2}
!1352 = !{ptr @bm1880_pins, !1353, !"bm1880_pins", i1 false, i1 false}
!1353 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 80, i32 38}
!1354 = !{ptr @bm1880_pctrl_ops, !1355, !"bm1880_pctrl_ops", i1 false, i1 false}
!1355 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 945, i32 33}
!1356 = !{ptr @bm1880_pinmux_ops, !1357, !"bm1880_pinmux_ops", i1 false, i1 false}
!1357 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1292, i32 32}
!1358 = !{ptr @bm1880_pinconf_ops, !1359, !"bm1880_pinconf_ops", i1 false, i1 false}
!1359 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1285, i32 33}
!1360 = !{ptr @.str.395, !1361, !"<string literal>", i1 false, i1 false}
!1361 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1254, i32 4}
!1362 = !{ptr @.str.396, !1361, !"<string literal>", i1 false, i1 false}
!1363 = !{ptr @.str.397, !1361, !"<string literal>", i1 false, i1 false}
!1364 = !{ptr @bm1880_pinconf_cfg_set._entry, !1361, !"_entry", i1 false, i1 false}
!1365 = !{ptr @bm1880_pinconf_cfg_set._entry_ptr, !1361, !"_entry_ptr", i1 false, i1 false}
!1366 = !{ptr @bm1880_pinctrl_of_match, !1367, !"bm1880_pinctrl_of_match", i1 false, i1 false}
!1367 = !{!"../drivers/pinctrl/pinctrl-bm1880.c", i32 1340, i32 34}
!1368 = !{i32 1, !"wchar_size", i32 2}
!1369 = !{i32 1, !"min_enum_size", i32 4}
!1370 = !{i32 8, !"branch-target-enforcement", i32 0}
!1371 = !{i32 8, !"sign-return-address", i32 0}
!1372 = !{i32 8, !"sign-return-address-all", i32 0}
!1373 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1374 = !{i32 7, !"uwtable", i32 1}
!1375 = !{i32 7, !"frame-pointer", i32 2}
!1376 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1377 = !{i64 728743}
!1378 = !{i64 728325}
