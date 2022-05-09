; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-pistachio.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-pistachio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pistachio_function = type { ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.pistachio_pin_group = type { ptr, i32, [3 x i32], i32, i32, i32 }
%struct.pistachio_gpio_bank = type { ptr, ptr, i32, i32, %struct.gpio_chip, %struct.irq_chip }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pistachio_pinctrl = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_pinctrl_pistachio__228_1487_pistachio_pinctrl_register3 = internal global ptr @pistachio_pinctrl_register, section ".initcall3.init", align 4
@pistachio_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pistachio_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @pistachio_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pistachio-pinctrl\00", [46 x i8] zeroinitializer }, align 32
@pistachio_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,pistachio-system-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pistachio_pins = internal constant { [99 x %struct.pinctrl_pin_desc], [316 x i8] } { [99 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.104, ptr null }], [316 x i8] zeroinitializer }, align 32
@pistachio_functions = internal constant { [58 x %struct.pistachio_function], [448 x i8] } { [58 x %struct.pistachio_function] [%struct.pistachio_function { ptr @.str.105, ptr @pistachio_spim0_groups, i32 11, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.106, ptr @pistachio_spim1_groups, i32 13, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.107, ptr @pistachio_spis_groups, i32 4, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.108, ptr @pistachio_sdhost_groups, i32 13, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.109, ptr @pistachio_i2c0_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.110, ptr @pistachio_i2c1_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.111, ptr @pistachio_i2c2_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.112, ptr @pistachio_i2c3_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.113, ptr @pistachio_audio_clk_in_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.114, ptr @pistachio_i2s_out_groups, i32 9, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.115, ptr @pistachio_i2s_dac_clk_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.116, ptr @pistachio_audio_sync_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.117, ptr @pistachio_audio_trigger_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.118, ptr @pistachio_i2s_in_groups, i32 8, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.119, ptr @pistachio_uart0_groups, i32 4, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.120, ptr @pistachio_uart1_groups, i32 4, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.121, ptr @pistachio_spdif_out_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.122, ptr @pistachio_spdif_in_groups, i32 2, ptr @pistachio_spdif_in_scenarios, i32 2, i32 248, i32 0, i32 1 }, %struct.pistachio_function { ptr @.str.123, ptr @pistachio_eth_groups, i32 9, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.124, ptr @pistachio_ir_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.125, ptr @pistachio_pwmpdm_groups, i32 4, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.126, ptr @pistachio_mips_trace_clk_groups, i32 3, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.127, ptr @pistachio_mips_trace_dint_groups, i32 3, ptr @pistachio_mips_trace_dint_scenarios, i32 3, i32 248, i32 1, i32 3 }, %struct.pistachio_function { ptr @.str.128, ptr @pistachio_mips_trace_trigout_groups, i32 3, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.129, ptr @pistachio_mips_trace_trigin_groups, i32 3, ptr @pistachio_mips_trace_trigin_scenarios, i32 3, i32 248, i32 3, i32 3 }, %struct.pistachio_function { ptr @.str.130, ptr @pistachio_mips_trace_dm_groups, i32 3, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.131, ptr @pistachio_mips_probe_n_groups, i32 3, ptr @pistachio_mips_probe_n_scenarios, i32 3, i32 248, i32 5, i32 3 }, %struct.pistachio_function { ptr @.str.132, ptr @pistachio_mips_trace_data_groups, i32 24, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.133, ptr @pistachio_sram_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.134, ptr @pistachio_rom_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.135, ptr @pistachio_rpu_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.136, ptr @pistachio_mips_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.137, ptr @pistachio_eth_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.138, ptr @pistachio_usb_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.139, ptr @pistachio_sdhost_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.140, ptr @pistachio_socif_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.141, ptr @pistachio_mdc_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.142, ptr @pistachio_ddr_debug_groups, i32 2, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.143, ptr @pistachio_dreq0_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.144, ptr @pistachio_dreq1_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.145, ptr @pistachio_dreq2_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.146, ptr @pistachio_dreq3_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.147, ptr @pistachio_dreq4_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.148, ptr @pistachio_dreq5_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.149, ptr @pistachio_mips_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.150, ptr @pistachio_audio_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.151, ptr @pistachio_rpu_v_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.152, ptr @pistachio_rpu_l_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.153, ptr @pistachio_sys_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.154, ptr @pistachio_wifi_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.155, ptr @pistachio_bt_pll_lock_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.156, ptr @pistachio_debug_raw_cca_ind_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.157, ptr @pistachio_debug_ed_sec20_cca_ind_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.158, ptr @pistachio_debug_ed_sec40_cca_ind_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.159, ptr @pistachio_debug_agc_done_0_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.160, ptr @pistachio_debug_agc_done_1_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.161, ptr @pistachio_debug_ed_cca_ind_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }, %struct.pistachio_function { ptr @.str.162, ptr @pistachio_debug_s2l_done_groups, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0 }], [448 x i8] zeroinitializer }, align 32
@pistachio_groups = internal constant { [99 x %struct.pistachio_pin_group], [768 x i8] } { [99 x %struct.pistachio_pin_group] [%struct.pistachio_pin_group { ptr @.str.6, i32 0, [3 x i32] [i32 1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.7, i32 1, [3 x i32] [i32 1, i32 0, i32 15], i32 192, i32 0, i32 3 }, %struct.pistachio_pin_group { ptr @.str.8, i32 2, [3 x i32] [i32 1, i32 0, i32 15], i32 192, i32 2, i32 3 }, %struct.pistachio_pin_group { ptr @.str.9, i32 3, [3 x i32] [i32 1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.10, i32 4, [3 x i32] [i32 1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.11, i32 5, [3 x i32] [i32 1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.12, i32 6, [3 x i32] [i32 1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.13, i32 7, [3 x i32] [i32 1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.14, i32 8, [3 x i32] [i32 0, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.15, i32 9, [3 x i32] [i32 0, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.16, i32 10, [3 x i32] [i32 0, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.17, i32 11, [3 x i32] [i32 2, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.18, i32 12, [3 x i32] [i32 2, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.19, i32 13, [3 x i32] [i32 2, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.20, i32 14, [3 x i32] [i32 2, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.21, i32 15, [3 x i32] [i32 3, i32 21, i32 27], i32 192, i32 4, i32 3 }, %struct.pistachio_pin_group { ptr @.str.22, i32 16, [3 x i32] [i32 3, i32 22, i32 27], i32 192, i32 6, i32 3 }, %struct.pistachio_pin_group { ptr @.str.23, i32 17, [3 x i32] [i32 3, i32 23, i32 27], i32 192, i32 8, i32 3 }, %struct.pistachio_pin_group { ptr @.str.24, i32 18, [3 x i32] [i32 3, i32 24, i32 27], i32 192, i32 10, i32 3 }, %struct.pistachio_pin_group { ptr @.str.25, i32 19, [3 x i32] [i32 3, i32 25, i32 27], i32 192, i32 12, i32 3 }, %struct.pistachio_pin_group { ptr @.str.26, i32 20, [3 x i32] [i32 3, i32 26, i32 27], i32 192, i32 14, i32 3 }, %struct.pistachio_pin_group { ptr @.str.27, i32 21, [3 x i32] [i32 3, i32 -1, i32 27], i32 192, i32 16, i32 3 }, %struct.pistachio_pin_group { ptr @.str.28, i32 22, [3 x i32] [i32 3, i32 -1, i32 27], i32 192, i32 18, i32 3 }, %struct.pistachio_pin_group { ptr @.str.29, i32 23, [3 x i32] [i32 3, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.30, i32 24, [3 x i32] [i32 3, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.31, i32 25, [3 x i32] [i32 3, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.32, i32 26, [3 x i32] [i32 3, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.33, i32 27, [3 x i32] [i32 3, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.34, i32 28, [3 x i32] [i32 4, i32 0, i32 -1], i32 192, i32 20, i32 1 }, %struct.pistachio_pin_group { ptr @.str.35, i32 29, [3 x i32] [i32 4, i32 0, i32 -1], i32 192, i32 21, i32 1 }, %struct.pistachio_pin_group { ptr @.str.36, i32 30, [3 x i32] [i32 5, i32 0, i32 -1], i32 192, i32 22, i32 1 }, %struct.pistachio_pin_group { ptr @.str.37, i32 31, [3 x i32] [i32 5, i32 1, i32 -1], i32 192, i32 23, i32 1 }, %struct.pistachio_pin_group { ptr @.str.38, i32 32, [3 x i32] [i32 6, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.39, i32 33, [3 x i32] [i32 6, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.40, i32 34, [3 x i32] [i32 7, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.41, i32 35, [3 x i32] [i32 7, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.42, i32 36, [3 x i32] [i32 9, i32 8, i32 -1], i32 192, i32 24, i32 1 }, %struct.pistachio_pin_group { ptr @.str.43, i32 37, [3 x i32] [i32 9, i32 51, i32 -1], i32 192, i32 25, i32 1 }, %struct.pistachio_pin_group { ptr @.str.44, i32 38, [3 x i32] [i32 9, i32 52, i32 -1], i32 192, i32 26, i32 1 }, %struct.pistachio_pin_group { ptr @.str.45, i32 39, [3 x i32] [i32 9, i32 53, i32 -1], i32 192, i32 27, i32 1 }, %struct.pistachio_pin_group { ptr @.str.46, i32 40, [3 x i32] [i32 9, i32 54, i32 -1], i32 192, i32 28, i32 1 }, %struct.pistachio_pin_group { ptr @.str.47, i32 41, [3 x i32] [i32 9, i32 55, i32 -1], i32 192, i32 29, i32 1 }, %struct.pistachio_pin_group { ptr @.str.48, i32 42, [3 x i32] [i32 9, i32 56, i32 -1], i32 192, i32 30, i32 1 }, %struct.pistachio_pin_group { ptr @.str.49, i32 43, [3 x i32] [i32 9, i32 57, i32 -1], i32 192, i32 31, i32 1 }, %struct.pistachio_pin_group { ptr @.str.50, i32 44, [3 x i32] [i32 9, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.51, i32 45, [3 x i32] [i32 10, i32 11, i32 -1], i32 196, i32 0, i32 1 }, %struct.pistachio_pin_group { ptr @.str.52, i32 46, [3 x i32] [i32 12, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.53, i32 47, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.54, i32 48, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.55, i32 49, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.56, i32 50, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.57, i32 51, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.58, i32 52, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.59, i32 53, [3 x i32] [i32 13, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.60, i32 54, [3 x i32] [i32 13, i32 -1, i32 17], i32 196, i32 1, i32 3 }, %struct.pistachio_pin_group { ptr @.str.61, i32 55, [3 x i32] [i32 14, i32 0, i32 1], i32 196, i32 3, i32 3 }, %struct.pistachio_pin_group { ptr @.str.62, i32 56, [3 x i32] [i32 14, i32 0, i32 1], i32 196, i32 5, i32 3 }, %struct.pistachio_pin_group { ptr @.str.63, i32 57, [3 x i32] [i32 14, i32 0, i32 1], i32 196, i32 7, i32 3 }, %struct.pistachio_pin_group { ptr @.str.64, i32 58, [3 x i32] [i32 14, i32 1, i32 -1], i32 196, i32 9, i32 1 }, %struct.pistachio_pin_group { ptr @.str.65, i32 59, [3 x i32] [i32 15, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.66, i32 60, [3 x i32] [i32 15, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.67, i32 61, [3 x i32] [i32 16, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.68, i32 62, [3 x i32] [i32 17, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.69, i32 63, [3 x i32] [i32 18, i32 21, i32 27], i32 196, i32 10, i32 3 }, %struct.pistachio_pin_group { ptr @.str.70, i32 64, [3 x i32] [i32 18, i32 22, i32 27], i32 196, i32 12, i32 3 }, %struct.pistachio_pin_group { ptr @.str.71, i32 65, [3 x i32] [i32 18, i32 23, i32 27], i32 196, i32 14, i32 3 }, %struct.pistachio_pin_group { ptr @.str.72, i32 66, [3 x i32] [i32 18, i32 24, i32 27], i32 196, i32 16, i32 3 }, %struct.pistachio_pin_group { ptr @.str.73, i32 67, [3 x i32] [i32 18, i32 25, i32 27], i32 196, i32 18, i32 3 }, %struct.pistachio_pin_group { ptr @.str.74, i32 68, [3 x i32] [i32 18, i32 26, i32 27], i32 196, i32 20, i32 3 }, %struct.pistachio_pin_group { ptr @.str.75, i32 69, [3 x i32] [i32 18, i32 -1, i32 27], i32 196, i32 22, i32 3 }, %struct.pistachio_pin_group { ptr @.str.76, i32 70, [3 x i32] [i32 18, i32 -1, i32 27], i32 196, i32 24, i32 3 }, %struct.pistachio_pin_group { ptr @.str.77, i32 71, [3 x i32] [i32 18, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.78, i32 72, [3 x i32] [i32 19, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.79, i32 73, [3 x i32] [i32 20, i32 21, i32 28], i32 196, i32 26, i32 3 }, %struct.pistachio_pin_group { ptr @.str.80, i32 74, [3 x i32] [i32 20, i32 22, i32 28], i32 196, i32 28, i32 3 }, %struct.pistachio_pin_group { ptr @.str.81, i32 75, [3 x i32] [i32 20, i32 23, i32 29], i32 196, i32 30, i32 3 }, %struct.pistachio_pin_group { ptr @.str.82, i32 76, [3 x i32] [i32 20, i32 24, i32 29], i32 200, i32 0, i32 3 }, %struct.pistachio_pin_group { ptr @.str.83, i32 77, [3 x i32] [i32 36, i32 25, i32 30], i32 200, i32 2, i32 3 }, %struct.pistachio_pin_group { ptr @.str.84, i32 78, [3 x i32] [i32 36, i32 26, i32 30], i32 200, i32 4, i32 3 }, %struct.pistachio_pin_group { ptr @.str.85, i32 79, [3 x i32] [i32 37, i32 27, i32 31], i32 200, i32 6, i32 3 }, %struct.pistachio_pin_group { ptr @.str.86, i32 80, [3 x i32] [i32 37, i32 27, i32 31], i32 200, i32 8, i32 3 }, %struct.pistachio_pin_group { ptr @.str.87, i32 81, [3 x i32] [i32 38, i32 27, i32 32], i32 200, i32 10, i32 3 }, %struct.pistachio_pin_group { ptr @.str.88, i32 82, [3 x i32] [i32 39, i32 27, i32 32], i32 200, i32 12, i32 3 }, %struct.pistachio_pin_group { ptr @.str.89, i32 83, [3 x i32] [i32 44, i32 27, i32 33], i32 200, i32 14, i32 3 }, %struct.pistachio_pin_group { ptr @.str.90, i32 84, [3 x i32] [i32 45, i32 27, i32 33], i32 200, i32 16, i32 3 }, %struct.pistachio_pin_group { ptr @.str.91, i32 85, [3 x i32] [i32 46, i32 27, i32 34], i32 200, i32 18, i32 3 }, %struct.pistachio_pin_group { ptr @.str.92, i32 86, [3 x i32] [i32 47, i32 27, i32 34], i32 200, i32 20, i32 3 }, %struct.pistachio_pin_group { ptr @.str.93, i32 87, [3 x i32] [i32 48, i32 40, i32 35], i32 200, i32 22, i32 3 }, %struct.pistachio_pin_group { ptr @.str.94, i32 88, [3 x i32] [i32 49, i32 41, i32 35], i32 200, i32 24, i32 3 }, %struct.pistachio_pin_group { ptr @.str.95, i32 89, [3 x i32] [i32 50, i32 42, i32 43], i32 200, i32 26, i32 3 }, %struct.pistachio_pin_group { ptr @.str.163, i32 90, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.164, i32 91, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.165, i32 92, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.166, i32 93, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.167, i32 94, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.168, i32 95, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.169, i32 96, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.170, i32 97, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }, %struct.pistachio_pin_group { ptr @.str.171, i32 98, [3 x i32] [i32 -1, i32 -1, i32 -1], i32 -1, i32 -1, i32 -1 }], [768 x i8] zeroinitializer }, align 32
@pistachio_gpio_banks = internal global { [6 x %struct.pistachio_gpio_bank], [744 x i8] } { [6 x %struct.pistachio_gpio_bank] [%struct.pistachio_gpio_bank { ptr null, ptr null, i32 0, i32 16, %struct.gpio_chip { ptr @.str.172, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @pistachio_gpio_get_direction, ptr @pistachio_gpio_direction_input, ptr @pistachio_gpio_direction_output, ptr @pistachio_gpio_get, ptr null, ptr @pistachio_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.172, ptr @pistachio_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_ack, ptr @pistachio_gpio_irq_mask, ptr null, ptr @pistachio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 } }, %struct.pistachio_gpio_bank { ptr null, ptr null, i32 16, i32 16, %struct.gpio_chip { ptr @.str.173, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @pistachio_gpio_get_direction, ptr @pistachio_gpio_direction_input, ptr @pistachio_gpio_direction_output, ptr @pistachio_gpio_get, ptr null, ptr @pistachio_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.173, ptr @pistachio_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_ack, ptr @pistachio_gpio_irq_mask, ptr null, ptr @pistachio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 } }, %struct.pistachio_gpio_bank { ptr null, ptr null, i32 32, i32 16, %struct.gpio_chip { ptr @.str.174, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @pistachio_gpio_get_direction, ptr @pistachio_gpio_direction_input, ptr @pistachio_gpio_direction_output, ptr @pistachio_gpio_get, ptr null, ptr @pistachio_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 32, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.174, ptr @pistachio_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_ack, ptr @pistachio_gpio_irq_mask, ptr null, ptr @pistachio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 } }, %struct.pistachio_gpio_bank { ptr null, ptr null, i32 48, i32 16, %struct.gpio_chip { ptr @.str.175, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @pistachio_gpio_get_direction, ptr @pistachio_gpio_direction_input, ptr @pistachio_gpio_direction_output, ptr @pistachio_gpio_get, ptr null, ptr @pistachio_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 48, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.175, ptr @pistachio_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_ack, ptr @pistachio_gpio_irq_mask, ptr null, ptr @pistachio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 } }, %struct.pistachio_gpio_bank { ptr null, ptr null, i32 64, i32 16, %struct.gpio_chip { ptr @.str.176, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @pistachio_gpio_get_direction, ptr @pistachio_gpio_direction_input, ptr @pistachio_gpio_direction_output, ptr @pistachio_gpio_get, ptr null, ptr @pistachio_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 64, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.176, ptr @pistachio_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_ack, ptr @pistachio_gpio_irq_mask, ptr null, ptr @pistachio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 } }, %struct.pistachio_gpio_bank { ptr null, ptr null, i32 80, i32 10, %struct.gpio_chip { ptr @.str.177, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @pistachio_gpio_get_direction, ptr @pistachio_gpio_direction_input, ptr @pistachio_gpio_direction_output, ptr @pistachio_gpio_get, ptr null, ptr @pistachio_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 80, i16 10, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.177, ptr @pistachio_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_ack, ptr @pistachio_gpio_irq_mask, ptr null, ptr @pistachio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @pistachio_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 } }], [744 x i8] zeroinitializer }, align 32
@pistachio_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @pistachio_pinctrl_ops, ptr @pistachio_pinmux_ops, ptr @pistachio_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pistachio_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register pinctrl device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pistachio_pinctrl_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pinctrl/pinctrl-pistachio.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pistachio_pinctrl_probe._entry_ptr = internal global ptr @pistachio_pinctrl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio0\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio2\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio3\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio4\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio5\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio6\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio7\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio8\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mfio9\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio10\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio11\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio12\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio13\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio14\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio15\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio16\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio17\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio18\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio19\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio20\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio21\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio22\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio23\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio24\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio25\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio26\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio27\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio28\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio29\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio30\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio31\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio32\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio33\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio34\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio35\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio36\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio37\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio38\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio39\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio40\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio41\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio42\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio43\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio44\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio45\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio46\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio47\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio48\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio49\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio50\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio51\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio52\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio53\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio54\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio55\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio56\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio57\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio58\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio59\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio60\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio61\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio62\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio63\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio64\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio65\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio66\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio67\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio68\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio69\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio70\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio71\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio72\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio73\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio74\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio75\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio76\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio77\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio78\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio79\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio80\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio81\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio82\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio83\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio84\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio85\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio86\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio87\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio88\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio89\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tck\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trstn\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tdi\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tms\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tdo\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jtag_comply\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"safe_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"por_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resetn\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spim0\00", [26 x i8] zeroinitializer }, align 32
@pistachio_spim0_groups = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.61, ptr @.str.62, ptr @.str.63], [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spim1\00", [26 x i8] zeroinitializer }, align 32
@pistachio_spim1_groups = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.37, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spis\00", [27 x i8] zeroinitializer }, align 32
@pistachio_spis_groups = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdhost\00", [25 x i8] zeroinitializer }, align 32
@pistachio_sdhost_groups = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@pistachio_i2c0_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.34, ptr @.str.35], [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@pistachio_i2c1_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@pistachio_i2c2_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@pistachio_i2c3_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.41], [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_clk_in\00", [19 x i8] zeroinitializer }, align 32
@pistachio_audio_clk_in_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.42], [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_out\00", [24 x i8] zeroinitializer }, align 32
@pistachio_i2s_out_groups = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [60 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s_dac_clk\00", [20 x i8] zeroinitializer }, align 32
@pistachio_i2s_dac_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_sync\00", [21 x i8] zeroinitializer }, align 32
@pistachio_audio_sync_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_trigger\00", [18 x i8] zeroinitializer }, align 32
@pistachio_audio_trigger_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s_in\00", [25 x i8] zeroinitializer }, align 32
@pistachio_i2s_in_groups = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@pistachio_uart0_groups = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@pistachio_uart1_groups = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.7, ptr @.str.8], [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_out\00", [22 x i8] zeroinitializer }, align 32
@pistachio_spdif_out_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_in\00", [23 x i8] zeroinitializer }, align 32
@pistachio_spdif_in_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.68, ptr @.str.60], [24 x i8] zeroinitializer }, align 32
@pistachio_spdif_in_scenarios = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 62, i32 54], [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@pistachio_eth_groups = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [60 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ir\00", [29 x i8] zeroinitializer }, align 32
@pistachio_ir_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwmpdm\00", [25 x i8] zeroinitializer }, align 32
@pistachio_pwmpdm_groups = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mips_trace_clk\00", [17 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_clk_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.69, ptr @.str.79], [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mips_trace_dint\00", [16 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_dint_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.70, ptr @.str.80], [20 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_dint_scenarios = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 64, i32 74], [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mips_trace_trigout\00", [45 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_trigout_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.71, ptr @.str.81], [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mips_trace_trigin\00", [46 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_trigin_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.24, ptr @.str.72, ptr @.str.82], [20 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_trigin_scenarios = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 18, i32 66, i32 76], [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mips_trace_dm\00", [18 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_dm_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.73, ptr @.str.83], [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mips_probe_n\00", [19 x i8] zeroinitializer }, align 32
@pistachio_mips_probe_n_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.74, ptr @.str.84], [20 x i8] zeroinitializer }, align 32
@pistachio_mips_probe_n_scenarios = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 20, i32 68, i32 78], [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mips_trace_data\00", [16 x i8] zeroinitializer }, align 32
@pistachio_mips_trace_data_groups = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram_debug\00", [21 x i8] zeroinitializer }, align 32
@pistachio_sram_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.79, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rom_debug\00", [22 x i8] zeroinitializer }, align 32
@pistachio_rom_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.81, ptr @.str.82], [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rpu_debug\00", [22 x i8] zeroinitializer }, align 32
@pistachio_rpu_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.83, ptr @.str.84], [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mips_debug\00", [21 x i8] zeroinitializer }, align 32
@pistachio_mips_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eth_debug\00", [22 x i8] zeroinitializer }, align 32
@pistachio_eth_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.87, ptr @.str.88], [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_debug\00", [22 x i8] zeroinitializer }, align 32
@pistachio_usb_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.89, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdhost_debug\00", [19 x i8] zeroinitializer }, align 32
@pistachio_sdhost_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.91, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"socif_debug\00", [20 x i8] zeroinitializer }, align 32
@pistachio_socif_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.93, ptr @.str.94], [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdc_debug\00", [22 x i8] zeroinitializer }, align 32
@pistachio_mdc_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.83, ptr @.str.84], [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ddr_debug\00", [22 x i8] zeroinitializer }, align 32
@pistachio_ddr_debug_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dreq0\00", [26 x i8] zeroinitializer }, align 32
@pistachio_dreq0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dreq1\00", [26 x i8] zeroinitializer }, align 32
@pistachio_dreq1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.88], [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dreq2\00", [26 x i8] zeroinitializer }, align 32
@pistachio_dreq2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.93], [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dreq3\00", [26 x i8] zeroinitializer }, align 32
@pistachio_dreq3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.94], [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dreq4\00", [26 x i8] zeroinitializer }, align 32
@pistachio_dreq4_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dreq5\00", [26 x i8] zeroinitializer }, align 32
@pistachio_dreq5_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mips_pll_lock\00", [18 x i8] zeroinitializer }, align 32
@pistachio_mips_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll_lock\00", [17 x i8] zeroinitializer }, align 32
@pistachio_audio_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.90], [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rpu_v_pll_lock\00", [17 x i8] zeroinitializer }, align 32
@pistachio_rpu_v_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.91], [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rpu_l_pll_lock\00", [17 x i8] zeroinitializer }, align 32
@pistachio_rpu_l_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.92], [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll_lock\00", [19 x i8] zeroinitializer }, align 32
@pistachio_sys_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.93], [28 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wifi_pll_lock\00", [18 x i8] zeroinitializer }, align 32
@pistachio_wifi_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.94], [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt_pll_lock\00", [20 x i8] zeroinitializer }, align 32
@pistachio_bt_pll_lock_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.95], [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debug_raw_cca_ind\00", [46 x i8] zeroinitializer }, align 32
@pistachio_debug_raw_cca_ind_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"debug_ed_sec20_cca_ind\00", [41 x i8] zeroinitializer }, align 32
@pistachio_debug_ed_sec20_cca_ind_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"debug_ed_sec40_cca_ind\00", [41 x i8] zeroinitializer }, align 32
@pistachio_debug_ed_sec40_cca_ind_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_agc_done_0\00", [47 x i8] zeroinitializer }, align 32
@pistachio_debug_agc_done_0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.46], [28 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_agc_done_1\00", [47 x i8] zeroinitializer }, align 32
@pistachio_debug_agc_done_1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.47], [28 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_ed_cca_ind\00", [47 x i8] zeroinitializer }, align 32
@pistachio_debug_ed_cca_ind_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.48], [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"debug_s2l_done\00", [17 x i8] zeroinitializer }, align 32
@pistachio_debug_s2l_done_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\22tck\22\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\22trstn\22\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\22tdi\22\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\22tms\22\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\22tdo\22\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\22jtag_comply\22\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\22safe_mode\22\00", [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\22por_disable\22\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\22resetn\22\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO0\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO4\00", [26 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO5\00", [26 x i8] zeroinitializer }, align 32
@pistachio_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pistachio_pinctrl_get_groups_count, ptr @pistachio_pinctrl_get_group_name, ptr @pistachio_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@pistachio_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pistachio_pinmux_get_functions_count, ptr @pistachio_pinmux_get_function_name, ptr @pistachio_pinmux_get_function_groups, ptr @pistachio_pinmux_enable, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pistachio_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @pistachio_pinconf_get, ptr @pistachio_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pistachio_pinmux_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 960, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot mux pin %u to function %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pistachio_pinmux_enable\00", [40 x i8] zeroinitializer }, align 32
@pistachio_pinmux_enable._entry_ptr = internal global ptr @pistachio_pinmux_enable._entry, section ".printk_index", align 4
@pistachio_pinconf_get.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.180, ptr @.str.181, ptr @.str.3, ptr @.str.182, i8 1, i8 7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl_pistachio\00", [46 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pistachio_pinconf_get\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Property %u not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@pistachio_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.3, i32 1136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Drive strength %umA not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pistachio_pinconf_set\00", [42 x i8] zeroinitializer }, align 32
@pistachio_pinconf_set._entry_ptr = internal global ptr @pistachio_pinconf_set._entry, section ".printk_index", align 4
@pistachio_pinconf_set._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.184, ptr @.str.3, i32 1144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pistachio_pinconf_set._entry_ptr.186 = internal global ptr @pistachio_pinconf_set._entry.185, section ".printk_index", align 4
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio%d\00", [25 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.3, i32 1363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No node for bank %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pistachio_gpio_register\00", [40 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry_ptr = internal global ptr @pistachio_gpio_register._entry, section ".printk_index", align 4
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.189, ptr @.str.3, i32 1370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No gpio-controller property for bank %u\0A\00", [55 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry_ptr.193 = internal global ptr @pistachio_gpio_register._entry.191, section ".printk_index", align 4
@pistachio_gpio_register._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.189, ptr @.str.3, i32 1378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No IRQ for bank %u: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry_ptr.196 = internal global ptr @pistachio_gpio_register._entry.194, section ".printk_index", align 4
@pistachio_gpio_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pistachio_gpio_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pistachio_gpio_register._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.189, ptr @.str.3, i32 1409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add GPIO chip %u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry_ptr.199 = internal global ptr @pistachio_gpio_register._entry.197, section ".printk_index", align 4
@pistachio_gpio_register._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.189, ptr @.str.3, i32 1418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to add GPIO range %u: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pistachio_gpio_register._entry_ptr.202 = internal global ptr @pistachio_gpio_register._entry.200, section ".printk_index", align 4
@switch.table.pistachio_pinconf_get = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 8, i32 12], [16 x i8] zeroinitializer }, align 32
@switch.table.pistachio_pinconf_set = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 3], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.203 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 2, i64 3, i64 5, i64 9, i64 14, i64 24]
@__sancov_gen_cov_switch_values.204 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 2, i64 3, i64 5, i64 9, i64 14, i64 24]
@___asan_gen_.205 = private unnamed_addr constant [25 x i8] c"pistachio_pinctrl_driver\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1474, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1476, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"pistachio_pinctrl_of_match\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1433, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"pistachio_pins\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 129, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c"pistachio_functions\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 573, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"pistachio_groups\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 676, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [21 x i8] c"pistachio_gpio_banks\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1339, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [23 x i8] c"pistachio_pinctrl_desc\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1158, i32 28 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1467, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 130, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 131, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 132, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 133, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 134, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 135, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 136, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 137, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 138, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 139, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 140, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 141, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 142, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 143, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 144, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 145, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 146, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 147, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 148, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 149, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 150, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 151, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 152, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 153, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 154, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 155, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 156, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 157, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 158, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 159, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 160, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 161, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 162, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 163, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 164, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 165, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 166, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 167, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 168, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 169, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 170, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 171, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 172, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 173, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 174, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 175, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 176, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 177, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 178, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 179, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 180, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 181, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 182, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 183, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 184, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 185, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 186, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 187, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 188, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 189, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 190, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 191, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 192, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 193, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 194, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 195, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 196, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 197, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 198, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 199, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 200, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 201, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 202, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 203, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 204, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 205, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 206, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 207, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 208, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 209, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 210, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 211, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 212, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 213, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 214, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 215, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 216, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 217, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 218, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 219, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 220, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 221, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 222, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 223, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 224, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 225, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 226, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 227, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 228, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 574, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [23 x i8] c"pistachio_spim0_groups\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 231, i32 27 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 575, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [23 x i8] c"pistachio_spim1_groups\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 236, i32 27 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 576, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [22 x i8] c"pistachio_spis_groups\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 241, i32 27 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 577, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [24 x i8] c"pistachio_sdhost_groups\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 245, i32 26 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 578, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [22 x i8] c"pistachio_i2c0_groups\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 251, i32 27 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 579, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [22 x i8] c"pistachio_i2c1_groups\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 255, i32 27 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 580, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [22 x i8] c"pistachio_i2c2_groups\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 259, i32 27 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 581, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [22 x i8] c"pistachio_i2c3_groups\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 263, i32 27 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 582, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [30 x i8] c"pistachio_audio_clk_in_groups\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 267, i32 27 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 583, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [25 x i8] c"pistachio_i2s_out_groups\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 271, i32 27 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 584, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [29 x i8] c"pistachio_i2s_dac_clk_groups\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 304, i32 27 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 585, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [28 x i8] c"pistachio_audio_sync_groups\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 308, i32 27 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 586, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [31 x i8] c"pistachio_audio_trigger_groups\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 312, i32 27 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 587, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [24 x i8] c"pistachio_i2s_in_groups\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 316, i32 27 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 588, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [23 x i8] c"pistachio_uart0_groups\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 321, i32 27 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 589, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant [23 x i8] c"pistachio_uart1_groups\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 325, i32 27 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 590, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [27 x i8] c"pistachio_spdif_out_groups\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 329, i32 27 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 591, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [26 x i8] c"pistachio_spdif_in_groups\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 333, i32 27 }
@___asan_gen_.652 = private unnamed_addr constant [29 x i8] c"pistachio_spdif_in_scenarios\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 336, i32 18 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 592, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [21 x i8] c"pistachio_eth_groups\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 341, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 593, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [20 x i8] c"pistachio_ir_groups\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 346, i32 27 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 594, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant [24 x i8] c"pistachio_pwmpdm_groups\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 350, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 595, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [32 x i8] c"pistachio_mips_trace_clk_groups\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 354, i32 27 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 596, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant [33 x i8] c"pistachio_mips_trace_dint_groups\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 358, i32 27 }
@___asan_gen_.685 = private unnamed_addr constant [36 x i8] c"pistachio_mips_trace_dint_scenarios\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 361, i32 18 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 597, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [36 x i8] c"pistachio_mips_trace_trigout_groups\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 367, i32 27 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 598, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [35 x i8] c"pistachio_mips_trace_trigin_groups\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 371, i32 27 }
@___asan_gen_.700 = private unnamed_addr constant [38 x i8] c"pistachio_mips_trace_trigin_scenarios\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 374, i32 18 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 599, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [31 x i8] c"pistachio_mips_trace_dm_groups\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 380, i32 27 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 600, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [30 x i8] c"pistachio_mips_probe_n_groups\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 384, i32 27 }
@___asan_gen_.715 = private unnamed_addr constant [33 x i8] c"pistachio_mips_probe_n_scenarios\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 387, i32 18 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 601, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [33 x i8] c"pistachio_mips_trace_data_groups\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 393, i32 27 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 602, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [28 x i8] c"pistachio_sram_debug_groups\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 400, i32 27 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 603, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [27 x i8] c"pistachio_rom_debug_groups\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 404, i32 27 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 604, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [27 x i8] c"pistachio_rpu_debug_groups\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 408, i32 27 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 605, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [28 x i8] c"pistachio_mips_debug_groups\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 412, i32 27 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 606, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [27 x i8] c"pistachio_eth_debug_groups\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 416, i32 27 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 607, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [27 x i8] c"pistachio_usb_debug_groups\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 420, i32 27 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 608, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [30 x i8] c"pistachio_sdhost_debug_groups\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 424, i32 27 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 609, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [29 x i8] c"pistachio_socif_debug_groups\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 428, i32 27 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 610, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [27 x i8] c"pistachio_mdc_debug_groups\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 432, i32 27 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 611, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [27 x i8] c"pistachio_ddr_debug_groups\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 436, i32 27 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 612, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [23 x i8] c"pistachio_dreq0_groups\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 440, i32 27 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 613, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [23 x i8] c"pistachio_dreq1_groups\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 444, i32 27 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 614, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [23 x i8] c"pistachio_dreq2_groups\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 448, i32 27 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 615, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [23 x i8] c"pistachio_dreq3_groups\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 452, i32 27 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 616, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [23 x i8] c"pistachio_dreq4_groups\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 456, i32 27 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 617, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant [23 x i8] c"pistachio_dreq5_groups\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 460, i32 27 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 618, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [31 x i8] c"pistachio_mips_pll_lock_groups\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 464, i32 27 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 619, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [32 x i8] c"pistachio_audio_pll_lock_groups\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 468, i32 27 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 620, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [32 x i8] c"pistachio_rpu_v_pll_lock_groups\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 472, i32 27 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 621, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [32 x i8] c"pistachio_rpu_l_pll_lock_groups\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 476, i32 27 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 622, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [30 x i8] c"pistachio_sys_pll_lock_groups\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 480, i32 27 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 623, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [31 x i8] c"pistachio_wifi_pll_lock_groups\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 484, i32 27 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 624, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant [29 x i8] c"pistachio_bt_pll_lock_groups\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 488, i32 27 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 625, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [35 x i8] c"pistachio_debug_raw_cca_ind_groups\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 276, i32 27 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 626, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [40 x i8] c"pistachio_debug_ed_sec20_cca_ind_groups\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 280, i32 27 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 627, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [40 x i8] c"pistachio_debug_ed_sec40_cca_ind_groups\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 284, i32 27 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 628, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [34 x i8] c"pistachio_debug_agc_done_0_groups\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 288, i32 27 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 629, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [34 x i8] c"pistachio_debug_agc_done_1_groups\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 292, i32 27 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 630, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant [34 x i8] c"pistachio_debug_ed_cca_ind_groups\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 296, i32 27 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 631, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [32 x i8] c"pistachio_debug_s2l_done_groups\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 300, i32 27 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 820, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 821, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 822, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 823, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 824, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 825, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 826, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 827, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 828, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1340, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1341, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1342, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1343, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1344, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1345, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant [22 x i8] c"pistachio_pinctrl_ops\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 907, i32 33 }
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c"pistachio_pinmux_ops\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 991, i32 32 }
@___asan_gen_.955 = private unnamed_addr constant [22 x i8] c"pistachio_pinconf_ops\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1152, i32 33 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 959, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1054, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1134, i32 5 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1143, i32 4 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1360, i32 44 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1363, i32 4 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1368, i32 32 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1369, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1378, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1406, i32 9 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1408, i32 4 }
@___asan_gen_.1027 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1031 = private constant [39 x i8] c"../drivers/pinctrl/pinctrl-pistachio.c\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1031, i32 1417, i32 4 }
@___asan_gen_.1033 = private unnamed_addr constant [35 x i8] c"switch.table.pistachio_pinconf_get\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant [35 x i8] c"switch.table.pistachio_pinconf_set\00", align 1
@llvm.compiler.used = appending global [288 x ptr] [ptr @__initcall__kmod_pinctrl_pistachio__228_1487_pistachio_pinctrl_register3, ptr @pistachio_gpio_register._entry, ptr @pistachio_gpio_register._entry.191, ptr @pistachio_gpio_register._entry.194, ptr @pistachio_gpio_register._entry.197, ptr @pistachio_gpio_register._entry.200, ptr @pistachio_gpio_register._entry_ptr, ptr @pistachio_gpio_register._entry_ptr.193, ptr @pistachio_gpio_register._entry_ptr.196, ptr @pistachio_gpio_register._entry_ptr.199, ptr @pistachio_gpio_register._entry_ptr.202, ptr @pistachio_pinconf_set._entry, ptr @pistachio_pinconf_set._entry.185, ptr @pistachio_pinconf_set._entry_ptr, ptr @pistachio_pinconf_set._entry_ptr.186, ptr @pistachio_pinctrl_probe._entry, ptr @pistachio_pinctrl_probe._entry_ptr, ptr @pistachio_pinmux_enable._entry, ptr @pistachio_pinmux_enable._entry_ptr, ptr @pistachio_pinctrl_driver, ptr @.str, ptr @pistachio_pinctrl_of_match, ptr @pistachio_pins, ptr @pistachio_functions, ptr @pistachio_groups, ptr @pistachio_gpio_banks, ptr @pistachio_pinctrl_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @pistachio_spim0_groups, ptr @.str.106, ptr @pistachio_spim1_groups, ptr @.str.107, ptr @pistachio_spis_groups, ptr @.str.108, ptr @pistachio_sdhost_groups, ptr @.str.109, ptr @pistachio_i2c0_groups, ptr @.str.110, ptr @pistachio_i2c1_groups, ptr @.str.111, ptr @pistachio_i2c2_groups, ptr @.str.112, ptr @pistachio_i2c3_groups, ptr @.str.113, ptr @pistachio_audio_clk_in_groups, ptr @.str.114, ptr @pistachio_i2s_out_groups, ptr @.str.115, ptr @pistachio_i2s_dac_clk_groups, ptr @.str.116, ptr @pistachio_audio_sync_groups, ptr @.str.117, ptr @pistachio_audio_trigger_groups, ptr @.str.118, ptr @pistachio_i2s_in_groups, ptr @.str.119, ptr @pistachio_uart0_groups, ptr @.str.120, ptr @pistachio_uart1_groups, ptr @.str.121, ptr @pistachio_spdif_out_groups, ptr @.str.122, ptr @pistachio_spdif_in_groups, ptr @pistachio_spdif_in_scenarios, ptr @.str.123, ptr @pistachio_eth_groups, ptr @.str.124, ptr @pistachio_ir_groups, ptr @.str.125, ptr @pistachio_pwmpdm_groups, ptr @.str.126, ptr @pistachio_mips_trace_clk_groups, ptr @.str.127, ptr @pistachio_mips_trace_dint_groups, ptr @pistachio_mips_trace_dint_scenarios, ptr @.str.128, ptr @pistachio_mips_trace_trigout_groups, ptr @.str.129, ptr @pistachio_mips_trace_trigin_groups, ptr @pistachio_mips_trace_trigin_scenarios, ptr @.str.130, ptr @pistachio_mips_trace_dm_groups, ptr @.str.131, ptr @pistachio_mips_probe_n_groups, ptr @pistachio_mips_probe_n_scenarios, ptr @.str.132, ptr @pistachio_mips_trace_data_groups, ptr @.str.133, ptr @pistachio_sram_debug_groups, ptr @.str.134, ptr @pistachio_rom_debug_groups, ptr @.str.135, ptr @pistachio_rpu_debug_groups, ptr @.str.136, ptr @pistachio_mips_debug_groups, ptr @.str.137, ptr @pistachio_eth_debug_groups, ptr @.str.138, ptr @pistachio_usb_debug_groups, ptr @.str.139, ptr @pistachio_sdhost_debug_groups, ptr @.str.140, ptr @pistachio_socif_debug_groups, ptr @.str.141, ptr @pistachio_mdc_debug_groups, ptr @.str.142, ptr @pistachio_ddr_debug_groups, ptr @.str.143, ptr @pistachio_dreq0_groups, ptr @.str.144, ptr @pistachio_dreq1_groups, ptr @.str.145, ptr @pistachio_dreq2_groups, ptr @.str.146, ptr @pistachio_dreq3_groups, ptr @.str.147, ptr @pistachio_dreq4_groups, ptr @.str.148, ptr @pistachio_dreq5_groups, ptr @.str.149, ptr @pistachio_mips_pll_lock_groups, ptr @.str.150, ptr @pistachio_audio_pll_lock_groups, ptr @.str.151, ptr @pistachio_rpu_v_pll_lock_groups, ptr @.str.152, ptr @pistachio_rpu_l_pll_lock_groups, ptr @.str.153, ptr @pistachio_sys_pll_lock_groups, ptr @.str.154, ptr @pistachio_wifi_pll_lock_groups, ptr @.str.155, ptr @pistachio_bt_pll_lock_groups, ptr @.str.156, ptr @pistachio_debug_raw_cca_ind_groups, ptr @.str.157, ptr @pistachio_debug_ed_sec20_cca_ind_groups, ptr @.str.158, ptr @pistachio_debug_ed_sec40_cca_ind_groups, ptr @.str.159, ptr @pistachio_debug_agc_done_0_groups, ptr @.str.160, ptr @pistachio_debug_agc_done_1_groups, ptr @.str.161, ptr @pistachio_debug_ed_cca_ind_groups, ptr @.str.162, ptr @pistachio_debug_s2l_done_groups, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @pistachio_pinctrl_ops, ptr @pistachio_pinmux_ops, ptr @pistachio_pinconf_ops, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @pistachio_gpio_register.lock_key, ptr @pistachio_gpio_register.request_key, ptr @.str.198, ptr @.str.201, ptr @switch.table.pistachio_pinconf_get, ptr @switch.table.pistachio_pinconf_set], section "llvm.metadata"
@0 = internal global [278 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pins to i32), i32 1188, i32 1504, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_functions to i32), i32 1856, i32 2304, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_groups to i32), i32 3168, i32 3936, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_banks to i32), i32 3000, i32 3744, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_spim0_groups to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_spim1_groups to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_spis_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_sdhost_groups to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2c0_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2c1_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2c2_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2c3_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_audio_clk_in_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2s_out_groups to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2s_dac_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_audio_sync_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_audio_trigger_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_i2s_in_groups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_uart0_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_uart1_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_spdif_out_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_spdif_in_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_spdif_in_scenarios to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_eth_groups to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_ir_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pwmpdm_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_clk_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_dint_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_dint_scenarios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_trigout_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_trigin_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_trigin_scenarios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_dm_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_probe_n_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_probe_n_scenarios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_trace_data_groups to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_sram_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_rom_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_rpu_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_eth_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_usb_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_sdhost_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_socif_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mdc_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_ddr_debug_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_dreq0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_dreq1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_dreq2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_dreq3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_dreq4_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_dreq5_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_mips_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_audio_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_rpu_v_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_rpu_l_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_sys_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_wifi_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_bt_pll_lock_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_raw_cca_ind_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_ed_sec20_cca_ind_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_ed_sec40_cca_ind_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_agc_done_0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_agc_done_1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_ed_cca_ind_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_debug_s2l_done_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinmux_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pinconf_set._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_gpio_register._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pistachio_pinconf_get to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pistachio_pinconf_set to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinctrl_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pistachio_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %child_name.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %pins = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pistachio_pins, ptr %pins, align 4
  %npins = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 99, ptr %npins, align 4
  %functions = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pistachio_functions, ptr %functions, align 4
  %nfunctions = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %nfunctions to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 58, ptr %nfunctions, align 4
  %groups = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pistachio_groups, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 99, ptr %ngroups, align 4
  %gpio_banks = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %gpio_banks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pistachio_gpio_banks, ptr %gpio_banks, align 4
  %nbanks = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %nbanks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %nbanks, align 4
  store ptr @pistachio_pins, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @pistachio_pinctrl_desc, i32 0, i32 1), align 4
  store i32 99, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @pistachio_pinctrl_desc, i32 0, i32 2), align 4
  %call14 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @pistachio_pinctrl_desc, ptr noundef nonnull %call.i) #8
  %pctldev = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %pctldev, align 4
  %cmp.i48 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %13 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctldev, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %20 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp148.not.i = icmp eq i32 %21, 0
  br i1 %cmp148.not.i, label %if.end21.cleanup_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %i.0149.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %child_name.i) #8
  %22 = call ptr @memset(ptr %child_name.i, i32 255, i32 7)
  %call.i49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %child_name.i, i32 noundef 7, ptr noundef nonnull @.str.187, i32 noundef %i.0149.i) #8
  %call2.i = call ptr @of_get_child_by_name(ptr noundef %19, ptr noundef nonnull %child_name.i) #8
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.188, i32 noundef %i.0149.i) #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call4.i = call ptr @of_find_property(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.190, ptr noundef null) #8
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.192, i32 noundef %i.0149.i) #11
  call void @of_node_put(ptr noundef nonnull %call2.i) #8
  br label %cleanup.i

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = call i32 @irq_of_parse_and_map(ptr noundef nonnull %call2.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.195, i32 noundef %i.0149.i, i32 noundef %call12.i) #11
  call void @of_node_put(ptr noundef nonnull %call2.i) #8
  br label %cleanup.i

if.end19.i:                                       ; preds = %if.end11.i
  %29 = ptrtoint ptr %gpio_banks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpio_banks, align 4
  %arrayidx.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %mul.i = mul i32 %i.0149.i, 36
  %add.i = add i32 %mul.i, 512
  %add.ptr.i = getelementptr i8, ptr %33, i32 %add.i
  %base21.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 1
  %34 = ptrtoint ptr %base21.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i, ptr %base21.i, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %gpio_chip.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4
  %parent.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 2
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %parent.i, align 4
  %of_node24.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 39
  %38 = ptrtoint ptr %of_node24.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call2.i, ptr %of_node24.i, align 4
  %irq26.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 37
  %irq_chip.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 5
  %39 = ptrtoint ptr %irq26.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %irq_chip.i, ptr %irq26.i, align 4
  %parent_handler.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 37, i32 13
  %40 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pistachio_gpio_irq_handler, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 37, i32 15
  %41 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num_parents.i, align 4
  %42 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %42, i32 noundef 4, i32 noundef 3520) #8
  %parents.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 37, i32 16
  %43 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i.i, ptr %parents.i, align 4
  %tobool30.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool30.not.i, label %if.end19.i.cleanup.i_crit_edge, label %if.end32.i

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end32.i:                                       ; preds = %if.end19.i
  %44 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call12.i, ptr %call5.i.i.i, align 4
  %default_type.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 37, i32 10
  %45 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 4, i32 37, i32 9
  %46 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @handle_level_irq, ptr %handler.i, align 4
  %call36.i = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip.i, ptr noundef %arrayidx.i, ptr noundef nonnull @pistachio_gpio_register.lock_key, ptr noundef nonnull @pistachio_gpio_register.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  br i1 %cmp37.i, label %do.end41.i, label %if.end43.i

do.end41.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.198, i32 noundef %i.0149.i, i32 noundef %call36.i) #11
  br label %cleanup.i

if.end43.i:                                       ; preds = %if.end32.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end43.i.dev_name.exit.i_crit_edge

if.end43.i.dev_name.exit.i_crit_edge:             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end43.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %52, %if.end.i.i ], [ %50, %if.end43.i.dev_name.exit.i_crit_edge ]
  %pin_base.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 2
  %53 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pin_base.i, align 4
  %npins.i = getelementptr %struct.pistachio_gpio_bank, ptr %30, i32 %i.0149.i, i32 3
  %55 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %npins.i, align 4
  %call47.i = call i32 @gpiochip_add_pin_range(ptr noundef %gpio_chip.i, ptr noundef %retval.0.i.i, i32 noundef 0, i32 noundef %54, i32 noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %do.end52.i, label %for.inc.i

do.end52.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.201, i32 noundef %i.0149.i, i32 noundef %call47.i) #11
  call void @gpiochip_remove(ptr noundef %gpio_chip.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end52.i, %do.end41.i, %if.end19.i.cleanup.i_crit_edge, %do.end17.i, %do.end9.i, %do.end.i
  %ret.0.i = phi i32 [ %call12.i, %do.end17.i ], [ %call36.i, %do.end41.i ], [ %call47.i, %do.end52.i ], [ -19, %do.end9.i ], [ -19, %do.end.i ], [ -12, %if.end19.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %child_name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0149.i)
  %cmp59.not150.i = icmp eq i32 %i.0149.i, 0
  br i1 %cmp59.not150.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body60.i_crit_edge

cleanup.i.for.body60.i_crit_edge:                 ; preds = %cleanup.i
  br label %for.body60.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i:                                        ; preds = %dev_name.exit.i
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %child_name.i) #8
  %inc.i = add nuw i32 %i.0149.i, 1
  %59 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nbanks, align 4
  %cmp.i50 = icmp ult i32 %inc.i, %60
  br i1 %cmp.i50, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body60.i:                                     ; preds = %for.body60.i.for.body60.i_crit_edge, %cleanup.i.for.body60.i_crit_edge
  %i.1151.i = phi i32 [ %sub.i, %for.body60.i.for.body60.i_crit_edge ], [ %i.0149.i, %cleanup.i.for.body60.i_crit_edge ]
  %61 = ptrtoint ptr %gpio_banks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gpio_banks, align 4
  %sub.i = add i32 %i.1151.i, -1
  %gpio_chip63.i = getelementptr %struct.pistachio_gpio_bank, ptr %62, i32 %sub.i, i32 4
  call void @gpiochip_remove(ptr noundef %gpio_chip63.i) #8
  %cmp59.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp59.not.i, label %for.body60.i.cleanup_crit_edge, label %for.body60.i.for.body60.i_crit_edge

for.body60.i.for.body60.i_crit_edge:              ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body60.i

for.body60.i.cleanup_crit_edge:                   ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body60.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %15, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0.i, %cleanup.i.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %ret.0.i, %for.body60.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %base.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !555
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = lshr i32 %4, %offset
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %shl.i = shl i32 65536, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #8, !srcloc !558
  %shl.i.i = shl i32 65537, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #8
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !558
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %or.i.i = select i1 %tobool.not.i, i32 65536, i32 65537
  %shl.i.i = shl i32 %or.i.i, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #8
  %base.i.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %0) #8, !srcloc !558
  %shl.i = shl i32 65537, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #8, !srcloc !558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %3) #8, !srcloc !558
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %base.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !555
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  %shl = shl nuw i32 1, %offset
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 12, i32 8
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 %.
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #8, !srcloc !555
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  %8 = lshr i32 %7, %offset
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or.i = select i1 %tobool.not, i32 65536, i32 65537
  %shl.i = shl i32 %or.i, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #8, !srcloc !558
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_gpio_irq_startup(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %shl.i.i = shl i32 65536, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #8
  %base.i.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %4) #8, !srcloc !558
  %shl.i.i.i = shl i32 65537, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i.i) #8
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !558
  %10 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_data.i, align 4
  %call1.i.i = tail call ptr @gpiochip_get_data(ptr noundef %11) #8
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %shl.i.i4 = shl i32 65537, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i4) #8
  %base.i.i.i5 = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i5, align 4
  %add.ptr.i.i.i6 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i6, i32 %14) #8, !srcloc !558
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_gpio_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl.i = shl i32 65536, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !558
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl.i = shl i32 65536, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !558
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl.i = shl i32 65537, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !558
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %and = and i32 %type, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
    i32 4, label %sw.bb10
    i32 8, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %shl.i = shl i32 65537, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %base.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !558
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %shl.i43 = shl i32 65537, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i43) #8
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %10) #8, !srcloc !558
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %shl.i46 = shl i32 65536, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl.i46) #8
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %15) #8, !srcloc !558
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq4 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %hwirq4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwirq4, align 4
  %shl.i49 = shl i32 65536, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i49) #8
  %base.i.i50 = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i50, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 %20) #8, !srcloc !558
  %23 = ptrtoint ptr %hwirq4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwirq4, align 4
  %shl.i52 = shl i32 65537, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %shl.i52) #8
  %26 = ptrtoint ptr %base.i.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i50, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %25) #8, !srcloc !558
  %28 = ptrtoint ptr %hwirq4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwirq4, align 4
  %shl.i55 = shl i32 65536, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %shl.i55) #8
  %31 = ptrtoint ptr %base.i.i50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i50, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %30) #8, !srcloc !558
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq8 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %33 = ptrtoint ptr %hwirq8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwirq8, align 4
  %shl.i58 = shl i32 65537, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %shl.i58) #8
  %base.i.i59 = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i59, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 %35) #8, !srcloc !558
  %38 = ptrtoint ptr %hwirq8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwirq8, align 4
  %shl.i61 = shl i32 65537, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %shl.i61) #8
  %41 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i59, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %40) #8, !srcloc !558
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq11 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %43 = ptrtoint ptr %hwirq11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hwirq11, align 4
  %shl.i64 = shl i32 65537, %44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %shl.i64) #8
  %base.i.i65 = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %46 = ptrtoint ptr %base.i.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i65, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 %45) #8, !srcloc !558
  %48 = ptrtoint ptr %hwirq11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hwirq11, align 4
  %shl.i67 = shl i32 65536, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %shl.i67) #8
  %51 = ptrtoint ptr %base.i.i65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i65, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69, i32 %50) #8, !srcloc !558
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq14 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %53 = ptrtoint ptr %hwirq14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwirq14, align 4
  %shl.i70 = shl i32 65536, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %shl.i70) #8
  %base.i.i71 = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1.i, i32 0, i32 1
  %56 = ptrtoint ptr %base.i.i71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i71, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %55) #8, !srcloc !558
  %58 = ptrtoint ptr %hwirq14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwirq14, align 4
  %shl.i73 = shl i32 65536, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %shl.i73) #8
  %61 = ptrtoint ptr %base.i.i71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i71, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %62, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 %60) #8, !srcloc !558
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb3, %sw.bb
  %and16 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  %common.i.i76 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %63 = ptrtoint ptr %common.i.i76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %common.i.i76, align 4
  %handle_irq.i77 = getelementptr inbounds %struct.irq_desc, ptr %64, i32 0, i32 3
  %handle_edge_irq.handle_level_irq = select i1 %tobool.not, ptr @handle_edge_irq, ptr @handle_level_irq
  %65 = ptrtoint ptr %handle_irq.i77 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %handle_edge_irq.handle_level_irq, ptr %handle_irq.i77, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinctrl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pistachio_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinmux_get_functions_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nfunctions = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pistachio_pinmux_get_function_name(ptr noundef %pctldev, i32 noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.pistachio_function, ptr %1, i32 %func
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinmux_get_function_groups(ptr noundef %pctldev, i32 noundef %func, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.pistachio_function, ptr %1, i32 %func, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.pistachio_function, ptr %5, i32 %func, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinmux_enable(ptr noundef %pctldev, i32 noundef %func, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %functions = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %mux_reg = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 3
  %4 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mux_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body.preheader, label %entry.if.end64_crit_edge

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

for.body.preheader:                               ; preds = %entry
  %arrayidx3 = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %func)
  %cmp4 = icmp eq i32 %7, %func
  br i1 %cmp4, label %for.body.preheader.if.end8_crit_edge, label %for.inc

for.body.preheader.if.end8_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx3.1 = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %func)
  %cmp4.1 = icmp eq i32 %9, %func
  br i1 %cmp4.1, label %for.inc.if.end8_crit_edge, label %for.inc.1

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.inc.1:                                        ; preds = %for.inc
  %arrayidx3.2 = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %func)
  %cmp4.2 = icmp eq i32 %11, %func
  br i1 %cmp4.2, label %for.inc.1.if.end8_crit_edge, label %do.end

for.inc.1.if.end8_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.178, i32 noundef %group, i32 noundef %func) #11
  br label %cleanup

if.end8:                                          ; preds = %for.inc.1.if.end8_crit_edge, %for.inc.if.end8_crit_edge, %for.body.preheader.if.end8_crit_edge
  %i.0130.lcssa = phi i32 [ 0, %for.body.preheader.if.end8_crit_edge ], [ 1, %for.inc.if.end8_crit_edge ], [ 2, %for.inc.1.if.end8_crit_edge ]
  %base.i = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !555
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %mux_mask = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 5
  %18 = ptrtoint ptr %mux_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mux_mask, align 4
  %mux_shift = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 4
  %20 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mux_shift, align 4
  %shl = shl i32 %19, %21
  %neg = xor i32 %shl, -1
  %and = and i32 %17, %neg
  %shl12 = shl i32 %i.0130.lcssa, %21
  %or = or i32 %and, %shl12
  %22 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mux_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %26, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %24) #8, !srcloc !558
  %scenarios = getelementptr %struct.pistachio_function, ptr %3, i32 %func, i32 3
  %27 = ptrtoint ptr %scenarios to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scenarios, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.end8.if.end64_crit_edge, label %for.cond15.preheader

if.end8.if.end64_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

for.cond15.preheader:                             ; preds = %if.end8
  %nscenarios = getelementptr %struct.pistachio_function, ptr %3, i32 %func, i32 4
  %29 = ptrtoint ptr %nscenarios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nscenarios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp16131.not = icmp eq i32 %30, 0
  br i1 %cmp16131.not, label %for.cond15.preheader.for.end25_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end25_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body17:                                       ; preds = %for.inc23.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.1132 = phi i32 [ %inc24, %for.inc23.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %arrayidx19 = getelementptr i32, ptr %28, i32 %i.1132
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %group)
  %cmp20 = icmp eq i32 %32, %group
  br i1 %cmp20, label %for.body17.for.end25_crit_edge, label %for.inc23

for.body17.for.end25_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.inc23:                                        ; preds = %for.body17
  %inc24 = add nuw i32 %i.1132, 1
  %exitcond.not = icmp eq i32 %inc24, %30
  br i1 %exitcond.not, label %for.inc23.do.end39_crit_edge, label %for.inc23.for.body17_crit_edge

for.inc23.for.body17_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.inc23.do.end39_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

for.end25:                                        ; preds = %for.body17.for.end25_crit_edge, %for.cond15.preheader.for.end25_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond15.preheader.for.end25_crit_edge ], [ %i.1132, %for.body17.for.end25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %30)
  %cmp27 = icmp eq i32 %i.1.lcssa, %30
  br i1 %cmp27, label %for.end25.do.end39_crit_edge, label %if.end54, !prof !561

for.end25.do.end39_crit_edge:                     ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end39:                                         ; preds = %for.end25.do.end39_crit_edge, %for.inc23.do.end39_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 974, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end54:                                         ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #10
  %scenario_reg = getelementptr %struct.pistachio_function, ptr %3, i32 %func, i32 5
  %33 = ptrtoint ptr %scenario_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scenario_reg, align 4
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #8, !srcloc !555
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %scenario_mask = getelementptr %struct.pistachio_function, ptr %3, i32 %func, i32 7
  %39 = ptrtoint ptr %scenario_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scenario_mask, align 4
  %scenario_shift = getelementptr %struct.pistachio_function, ptr %3, i32 %func, i32 6
  %41 = ptrtoint ptr %scenario_shift to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scenario_shift, align 4
  %shl56 = shl i32 %40, %42
  %neg57 = xor i32 %shl56, -1
  %and58 = and i32 %38, %neg57
  %shl60 = shl i32 %i.1.lcssa, %42
  %or61 = or i32 %and58, %shl60
  %43 = ptrtoint ptr %scenario_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scenario_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %or61) #8
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %47, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %45) #8, !srcloc !558
  br label %if.end64

if.end64:                                         ; preds = %if.end54, %if.end8.if.end64_crit_edge, %entry.if.end64_crit_edge
  %pctldev65 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 2
  %48 = ptrtoint ptr %pctldev65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pctldev65, align 4
  %pin = getelementptr %struct.pistachio_pin_group, ptr %1, i32 %group, i32 1
  %50 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pin, align 4
  %call66 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %49, i32 noundef %51) #8
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %if.then68

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call66, i32 0, i32 7
  %52 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gc, align 4
  %call69 = tail call ptr @gpiochip_get_data(ptr noundef %53) #8
  %54 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pin, align 4
  %pin_base = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call66, i32 0, i32 4
  %56 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pin_base, align 4
  %sub = sub i32 %55, %57
  %shl.i.i = shl i32 65536, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #8
  %base.i.i.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call69, i32 0, i32 1
  %59 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !558
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end64.cleanup_crit_edge, %do.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end39 ], [ 0, %if.then68 ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.203)
  switch i8 %trunc, label %do.body [
    i8 14, label %sw.bb
    i8 2, label %sw.bb4
    i8 5, label %sw.bb12
    i8 3, label %sw.bb23
    i8 0, label %sw.bb34
    i8 24, label %sw.bb45
    i8 9, label %sw.bb58
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = lshr i32 %pin, 3
  %mul = and i32 %3, 536870908
  %base.i = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !555
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem = and i32 %pin, 31
  %8 = lshr i32 %7, %rem
  %9 = and i32 %8, 1
  br label %sw.epilog81

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = lshr i32 %pin, 2
  %mul6 = and i32 %10, 1073741820
  %add7 = add nuw nsw i32 %mul6, 64
  %base.i122 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %base.i122 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i122, align 4
  %add.ptr.i123 = getelementptr i8, ptr %12, i32 %add7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #8, !srcloc !555
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem9 = shl i32 %pin, 1
  %mul10 = and i32 %rem9, 30
  %15 = shl nuw i32 3, %mul10
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %conv = zext i1 %cmp to i32
  br label %sw.epilog81

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = lshr i32 %pin, 2
  %mul14 = and i32 %17, 1073741820
  %add15 = add nuw nsw i32 %mul14, 64
  %base.i124 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %base.i124 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %19, i32 %add15
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #8, !srcloc !555
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem17 = shl i32 %pin, 1
  %mul18 = and i32 %rem17, 30
  %shr19 = lshr i32 %21, %mul18
  %and20 = and i32 %shr19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 1
  %conv22 = zext i1 %cmp21 to i32
  br label %sw.epilog81

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = lshr i32 %pin, 2
  %mul25 = and i32 %22, 1073741820
  %add26 = add nuw nsw i32 %mul25, 64
  %base.i126 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i126, align 4
  %add.ptr.i127 = getelementptr i8, ptr %24, i32 %add26
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #8, !srcloc !555
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem28 = shl i32 %pin, 1
  %mul29 = and i32 %rem28, 30
  %shr30 = lshr i32 %26, %mul29
  %and31 = and i32 %shr30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 2
  %conv33 = zext i1 %cmp32 to i32
  br label %sw.epilog81

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %27 = lshr i32 %pin, 2
  %mul36 = and i32 %27, 1073741820
  %add37 = add nuw nsw i32 %mul36, 64
  %base.i128 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %base.i128 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %29, i32 %add37
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #8, !srcloc !555
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem39 = shl i32 %pin, 1
  %mul40 = and i32 %rem39, 30
  %shr41 = lshr i32 %31, %mul40
  %and42 = and i32 %shr41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and42)
  %cmp43 = icmp eq i32 %and42, 3
  %conv44 = zext i1 %cmp43 to i32
  br label %sw.epilog81

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %32 = lshr i32 %pin, 3
  %mul47 = and i32 %32, 536870908
  %add48 = add nuw nsw i32 %mul47, 256
  %base.i130 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %base.i130 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %34, i32 %add48
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #8, !srcloc !555
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem50 = and i32 %pin, 31
  %37 = lshr i32 %36, %rem50
  %38 = and i32 %37, 1
  br label %sw.epilog81

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %39 = lshr i32 %pin, 2
  %mul60 = and i32 %39, 1073741820
  %add61 = add nuw nsw i32 %mul60, 288
  %base.i132 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %40 = ptrtoint ptr %base.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %41, i32 %add61
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #8, !srcloc !555
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %rem63 = shl i32 %pin, 1
  %mul64 = and i32 %rem63, 30
  %shr65 = lshr i32 %43, %mul64
  %and66 = and i32 %shr65, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.pistachio_pinconf_get, i32 0, i32 %and66
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog81

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pistachio_pinconf_get.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pistachio_pinconf_get, %cleanup)) #8
          to label %if.then [label %cleanup], !srcloc !562

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pistachio_pinconf_get.__UNIQUE_ID_ddebug227, ptr noundef %46, ptr noundef nonnull @.str.182, i32 noundef %and.i) #8
  br label %cleanup

sw.epilog81:                                      ; preds = %sw.bb58, %sw.bb45, %sw.bb34, %sw.bb23, %sw.bb12, %sw.bb4, %sw.bb
  %arg.0 = phi i32 [ %38, %sw.bb45 ], [ %conv44, %sw.bb34 ], [ %conv33, %sw.bb23 ], [ %conv22, %sw.bb12 ], [ %conv, %sw.bb4 ], [ %9, %sw.bb ], [ %switch.load, %sw.bb58 ]
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %47 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog81, %if.then, %do.body
  %retval.0 = phi i32 [ 0, %sw.epilog81 ], [ -524, %if.then ], [ -524, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pistachio_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp234.not = icmp eq i32 %num_configs, 0
  br i1 %cmp234.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = lshr i32 %pin, 2
  %mul99 = and i32 %0, 1073741820
  %add100 = add nuw nsw i32 %mul99, 288
  %base.i228 = getelementptr inbounds %struct.pistachio_pinctrl, ptr %call, i32 0, i32 1
  %rem102 = shl i32 %pin, 1
  %mul103 = and i32 %rem102, 30
  %shl104 = shl nuw i32 3, %mul103
  %neg105 = xor i32 %shl104, -1
  %1 = lshr i32 %pin, 3
  %mul80 = and i32 %1, 536870908
  %add81 = add nuw nsw i32 %mul80, 256
  %rem85 = and i32 %pin, 31
  %shl86 = shl nuw i32 1, %rem85
  %neg91 = xor i32 %shl86, -1
  %add64 = add nuw nsw i32 %mul99, 64
  %shl56 = shl nuw i32 2, %mul103
  %shl39 = shl nuw nsw i32 1, %mul103
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0235
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %trunc, label %do.end121 [
    i8 14, label %sw.bb
    i8 2, label %sw.bb10
    i8 5, label %sw.bb27
    i8 3, label %sw.bb44
    i8 0, label %sw.bb61
    i8 24, label %sw.bb78
    i8 9, label %sw.bb97
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i228, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !555
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool.not = icmp ult i32 %3, 256
  %or = or i32 %8, %shl86
  %and = and i32 %8, %neg91
  %val.0 = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %10 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i228, align 4
  %add.ptr.i207 = getelementptr i8, ptr %11, i32 %mul80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %9) #8, !srcloc !558
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i228, align 4
  %add.ptr.i209 = getelementptr i8, ptr %13, i32 %add64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #8, !srcloc !555
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %and19 = and i32 %15, %neg105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and19) #8
  %17 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i228, align 4
  %add.ptr.i211 = getelementptr i8, ptr %18, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %16) #8, !srcloc !558
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i228, align 4
  %add.ptr.i213 = getelementptr i8, ptr %20, i32 %add64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #8, !srcloc !555
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %and36 = and i32 %22, %neg105
  %or40 = or i32 %and36, %shl39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or40) #8
  %24 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i228, align 4
  %add.ptr.i215 = getelementptr i8, ptr %25, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %23) #8, !srcloc !558
  br label %for.inc

sw.bb44:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i228, align 4
  %add.ptr.i217 = getelementptr i8, ptr %27, i32 %add64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #8, !srcloc !555
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %and53 = and i32 %29, %neg105
  %or57 = or i32 %and53, %shl56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or57) #8
  %31 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i228, align 4
  %add.ptr.i219 = getelementptr i8, ptr %32, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %30) #8, !srcloc !558
  br label %for.inc

sw.bb61:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i228, align 4
  %add.ptr.i221 = getelementptr i8, ptr %34, i32 %add64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #8, !srcloc !555
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %or74 = or i32 %36, %shl104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or74) #8
  %38 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i228, align 4
  %add.ptr.i223 = getelementptr i8, ptr %39, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 %37) #8, !srcloc !558
  br label %for.inc

sw.bb78:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i228, align 4
  %add.ptr.i225 = getelementptr i8, ptr %41, i32 %add81
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #8, !srcloc !555
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool83.not = icmp ult i32 %3, 256
  %or87 = or i32 %43, %shl86
  %and92 = and i32 %43, %neg91
  %val.1 = select i1 %tobool83.not, i32 %and92, i32 %or87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %val.1) #8
  %45 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i228, align 4
  %add.ptr.i227 = getelementptr i8, ptr %46, i32 %add81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %44) #8, !srcloc !558
  br label %for.inc

sw.bb97:                                          ; preds = %for.body
  %shr.i = lshr i32 %3, 8
  %47 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i228, align 4
  %add.ptr.i229 = getelementptr i8, ptr %48, i32 %add100
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #8, !srcloc !555
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %and106 = and i32 %50, %neg105
  %51 = add nsw i32 %shr.i, -2
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %53 = icmp ult i32 %52, 6
  br i1 %53, label %switch.hole_check, label %sw.bb97.do.end_crit_edge

sw.bb97.do.end_crit_edge:                         ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %sw.bb97.do.end_crit_edge
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.183, i32 noundef %shr.i) #11
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb97
  %switch.maskindex = trunc i32 %52 to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %56 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %switch.lobit.not = icmp eq i8 %56, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.pistachio_pinconf_set, i32 0, i32 %52
  %57 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shl113 = shl nuw i32 %switch.load, %mul103
  %or114 = or i32 %shl113, %and106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %or114) #8
  %59 = ptrtoint ptr %base.i228 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i228, align 4
  %add.ptr.i231 = getelementptr i8, ptr %60, i32 %add100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 %58) #8, !srcloc !558
  br label %for.inc

do.end121:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %3, 255
  %61 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.182, i32 noundef %and.i) #11
  br label %cleanup

for.inc:                                          ; preds = %switch.lookup, %sw.bb78, %sw.bb61, %sw.bb44, %sw.bb27, %sw.bb10, %sw.bb
  %inc = add nuw i32 %i.0235, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end121, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end121 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pistachio_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base.i = getelementptr inbounds %struct.pistachio_gpio_bank, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !555
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !555
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  %18 = and i32 %17, %14
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pending, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5)
  %cmp22 = icmp ult i32 %call5, 16
  br i1 %cmp22, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pin.023 = phi i32 [ %call5, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain, align 4
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %pin.023) #8
  %add = add nuw nsw i32 %pin.023, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 16, i32 noundef %add) #8
  %cmp = icmp ult i32 %call7, 16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %23 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i19 = icmp eq ptr %24, null
  br i1 %tobool.not.i19, label %if.else.i20, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i20:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i20, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %26, %if.else.i20 ], [ %24, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 278)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 278)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !499, !500, !501, !503, !505, !506, !507, !508, !510, !511, !512, !513, !515, !516, !518, !520, !521, !522, !523, !525, !527, !528, !529, !531, !532, !533, !535, !536, !538, !539, !540, !542, !543, !544}
!llvm.module.flags = !{!546, !547, !548, !549, !550, !551, !552, !553}
!llvm.ident = !{!554}

!0 = !{ptr @__initcall__kmod_pinctrl_pistachio__228_1487_pistachio_pinctrl_register3, !1, !"__initcall__kmod_pinctrl_pistachio__228_1487_pistachio_pinctrl_register3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1487, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1476, i32 11}
!4 = !{ptr @pistachio_pinctrl_driver, !5, !"pistachio_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1474, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1467, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pistachio_pinctrl_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @pistachio_pinctrl_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 130, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 131, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 132, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 133, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 134, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 135, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 136, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 137, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 138, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 139, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 140, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 141, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 142, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 143, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 144, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 145, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 146, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 147, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 148, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 149, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 150, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 151, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 152, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 153, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 154, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 155, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 156, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 157, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 158, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 159, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 160, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 161, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 162, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 163, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 164, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 165, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 166, i32 2}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 167, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 168, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 169, i32 2}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 170, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 171, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 172, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 173, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 174, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 175, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 176, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 177, i32 2}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 178, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 179, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 180, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 181, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 182, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 183, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 184, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 185, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 186, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 187, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 188, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 189, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 190, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 191, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 192, i32 2}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 193, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 194, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 195, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 196, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 197, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 198, i32 2}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 199, i32 2}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 200, i32 2}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 201, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 202, i32 2}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 203, i32 2}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 204, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 205, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 206, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 207, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 208, i32 2}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 209, i32 2}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 210, i32 2}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 211, i32 2}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 212, i32 2}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 213, i32 2}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 214, i32 2}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 215, i32 2}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 216, i32 2}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 217, i32 2}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 218, i32 2}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 219, i32 2}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 220, i32 2}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 221, i32 2}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 222, i32 2}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 223, i32 2}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 224, i32 2}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 225, i32 2}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 226, i32 2}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 227, i32 2}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 228, i32 2}
!212 = !{ptr @pistachio_pins, !213, !"pistachio_pins", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 129, i32 38}
!214 = !{ptr @.str.105, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 574, i32 2}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 575, i32 2}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 576, i32 2}
!220 = !{ptr @.str.108, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 577, i32 2}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 578, i32 2}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 579, i32 2}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 580, i32 2}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 581, i32 2}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 582, i32 2}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 583, i32 2}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 584, i32 2}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 585, i32 2}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 586, i32 2}
!240 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 587, i32 2}
!242 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 588, i32 2}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 589, i32 2}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 590, i32 2}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 591, i32 2}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 592, i32 2}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 593, i32 2}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 594, i32 2}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 595, i32 2}
!258 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 596, i32 2}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 597, i32 2}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 598, i32 2}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 599, i32 2}
!266 = !{ptr @.str.131, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 600, i32 2}
!268 = !{ptr @.str.132, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 601, i32 2}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 602, i32 2}
!272 = !{ptr @.str.134, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 603, i32 2}
!274 = !{ptr @.str.135, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 604, i32 2}
!276 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 605, i32 2}
!278 = !{ptr @.str.137, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 606, i32 2}
!280 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 607, i32 2}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 608, i32 2}
!284 = !{ptr @.str.140, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 609, i32 2}
!286 = !{ptr @.str.141, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 610, i32 2}
!288 = !{ptr @.str.142, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 611, i32 2}
!290 = !{ptr @.str.143, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 612, i32 2}
!292 = !{ptr @.str.144, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 613, i32 2}
!294 = !{ptr @.str.145, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 614, i32 2}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 615, i32 2}
!298 = !{ptr @.str.147, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 616, i32 2}
!300 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 617, i32 2}
!302 = !{ptr @.str.149, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 618, i32 2}
!304 = !{ptr @.str.150, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 619, i32 2}
!306 = !{ptr @.str.151, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 620, i32 2}
!308 = !{ptr @.str.152, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 621, i32 2}
!310 = !{ptr @.str.153, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 622, i32 2}
!312 = !{ptr @.str.154, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 623, i32 2}
!314 = !{ptr @.str.155, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 624, i32 2}
!316 = !{ptr @.str.156, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 625, i32 2}
!318 = !{ptr @.str.157, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 626, i32 2}
!320 = !{ptr @.str.158, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 627, i32 2}
!322 = !{ptr @.str.159, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 628, i32 2}
!324 = !{ptr @.str.160, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 629, i32 2}
!326 = !{ptr @.str.161, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 630, i32 2}
!328 = !{ptr @.str.162, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 631, i32 2}
!330 = !{ptr @pistachio_functions, !331, !"pistachio_functions", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 573, i32 40}
!332 = !{ptr @pistachio_spim0_groups, !333, !"pistachio_spim0_groups", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 231, i32 27}
!334 = !{ptr @pistachio_spim1_groups, !335, !"pistachio_spim1_groups", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 236, i32 27}
!336 = !{ptr @pistachio_spis_groups, !337, !"pistachio_spis_groups", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 241, i32 27}
!338 = !{ptr @pistachio_sdhost_groups, !339, !"pistachio_sdhost_groups", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 245, i32 26}
!340 = !{ptr @pistachio_i2c0_groups, !341, !"pistachio_i2c0_groups", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 251, i32 27}
!342 = !{ptr @pistachio_i2c1_groups, !343, !"pistachio_i2c1_groups", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 255, i32 27}
!344 = !{ptr @pistachio_i2c2_groups, !345, !"pistachio_i2c2_groups", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 259, i32 27}
!346 = !{ptr @pistachio_i2c3_groups, !347, !"pistachio_i2c3_groups", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 263, i32 27}
!348 = !{ptr @pistachio_audio_clk_in_groups, !349, !"pistachio_audio_clk_in_groups", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 267, i32 27}
!350 = !{ptr @pistachio_i2s_out_groups, !351, !"pistachio_i2s_out_groups", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 271, i32 27}
!352 = !{ptr @pistachio_i2s_dac_clk_groups, !353, !"pistachio_i2s_dac_clk_groups", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 304, i32 27}
!354 = !{ptr @pistachio_audio_sync_groups, !355, !"pistachio_audio_sync_groups", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 308, i32 27}
!356 = !{ptr @pistachio_audio_trigger_groups, !357, !"pistachio_audio_trigger_groups", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 312, i32 27}
!358 = !{ptr @pistachio_i2s_in_groups, !359, !"pistachio_i2s_in_groups", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 316, i32 27}
!360 = !{ptr @pistachio_uart0_groups, !361, !"pistachio_uart0_groups", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 321, i32 27}
!362 = !{ptr @pistachio_uart1_groups, !363, !"pistachio_uart1_groups", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 325, i32 27}
!364 = !{ptr @pistachio_spdif_out_groups, !365, !"pistachio_spdif_out_groups", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 329, i32 27}
!366 = !{ptr @pistachio_spdif_in_groups, !367, !"pistachio_spdif_in_groups", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 333, i32 27}
!368 = !{ptr @pistachio_spdif_in_scenarios, !369, !"pistachio_spdif_in_scenarios", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 336, i32 18}
!370 = !{ptr @pistachio_eth_groups, !371, !"pistachio_eth_groups", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 341, i32 27}
!372 = !{ptr @pistachio_ir_groups, !373, !"pistachio_ir_groups", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 346, i32 27}
!374 = !{ptr @pistachio_pwmpdm_groups, !375, !"pistachio_pwmpdm_groups", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 350, i32 27}
!376 = !{ptr @pistachio_mips_trace_clk_groups, !377, !"pistachio_mips_trace_clk_groups", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 354, i32 27}
!378 = !{ptr @pistachio_mips_trace_dint_groups, !379, !"pistachio_mips_trace_dint_groups", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 358, i32 27}
!380 = !{ptr @pistachio_mips_trace_dint_scenarios, !381, !"pistachio_mips_trace_dint_scenarios", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 361, i32 18}
!382 = !{ptr @pistachio_mips_trace_trigout_groups, !383, !"pistachio_mips_trace_trigout_groups", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 367, i32 27}
!384 = !{ptr @pistachio_mips_trace_trigin_groups, !385, !"pistachio_mips_trace_trigin_groups", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 371, i32 27}
!386 = !{ptr @pistachio_mips_trace_trigin_scenarios, !387, !"pistachio_mips_trace_trigin_scenarios", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 374, i32 18}
!388 = !{ptr @pistachio_mips_trace_dm_groups, !389, !"pistachio_mips_trace_dm_groups", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 380, i32 27}
!390 = !{ptr @pistachio_mips_probe_n_groups, !391, !"pistachio_mips_probe_n_groups", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 384, i32 27}
!392 = !{ptr @pistachio_mips_probe_n_scenarios, !393, !"pistachio_mips_probe_n_scenarios", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 387, i32 18}
!394 = !{ptr @pistachio_mips_trace_data_groups, !395, !"pistachio_mips_trace_data_groups", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 393, i32 27}
!396 = !{ptr @pistachio_sram_debug_groups, !397, !"pistachio_sram_debug_groups", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 400, i32 27}
!398 = !{ptr @pistachio_rom_debug_groups, !399, !"pistachio_rom_debug_groups", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 404, i32 27}
!400 = !{ptr @pistachio_rpu_debug_groups, !401, !"pistachio_rpu_debug_groups", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 408, i32 27}
!402 = !{ptr @pistachio_mips_debug_groups, !403, !"pistachio_mips_debug_groups", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 412, i32 27}
!404 = !{ptr @pistachio_eth_debug_groups, !405, !"pistachio_eth_debug_groups", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 416, i32 27}
!406 = !{ptr @pistachio_usb_debug_groups, !407, !"pistachio_usb_debug_groups", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 420, i32 27}
!408 = !{ptr @pistachio_sdhost_debug_groups, !409, !"pistachio_sdhost_debug_groups", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 424, i32 27}
!410 = !{ptr @pistachio_socif_debug_groups, !411, !"pistachio_socif_debug_groups", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 428, i32 27}
!412 = !{ptr @pistachio_mdc_debug_groups, !413, !"pistachio_mdc_debug_groups", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 432, i32 27}
!414 = !{ptr @pistachio_ddr_debug_groups, !415, !"pistachio_ddr_debug_groups", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 436, i32 27}
!416 = !{ptr @pistachio_dreq0_groups, !417, !"pistachio_dreq0_groups", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 440, i32 27}
!418 = !{ptr @pistachio_dreq1_groups, !419, !"pistachio_dreq1_groups", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 444, i32 27}
!420 = !{ptr @pistachio_dreq2_groups, !421, !"pistachio_dreq2_groups", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 448, i32 27}
!422 = !{ptr @pistachio_dreq3_groups, !423, !"pistachio_dreq3_groups", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 452, i32 27}
!424 = !{ptr @pistachio_dreq4_groups, !425, !"pistachio_dreq4_groups", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 456, i32 27}
!426 = !{ptr @pistachio_dreq5_groups, !427, !"pistachio_dreq5_groups", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 460, i32 27}
!428 = !{ptr @pistachio_mips_pll_lock_groups, !429, !"pistachio_mips_pll_lock_groups", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 464, i32 27}
!430 = !{ptr @pistachio_audio_pll_lock_groups, !431, !"pistachio_audio_pll_lock_groups", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 468, i32 27}
!432 = !{ptr @pistachio_rpu_v_pll_lock_groups, !433, !"pistachio_rpu_v_pll_lock_groups", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 472, i32 27}
!434 = !{ptr @pistachio_rpu_l_pll_lock_groups, !435, !"pistachio_rpu_l_pll_lock_groups", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 476, i32 27}
!436 = !{ptr @pistachio_sys_pll_lock_groups, !437, !"pistachio_sys_pll_lock_groups", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 480, i32 27}
!438 = !{ptr @pistachio_wifi_pll_lock_groups, !439, !"pistachio_wifi_pll_lock_groups", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 484, i32 27}
!440 = !{ptr @pistachio_bt_pll_lock_groups, !441, !"pistachio_bt_pll_lock_groups", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 488, i32 27}
!442 = !{ptr @pistachio_debug_raw_cca_ind_groups, !443, !"pistachio_debug_raw_cca_ind_groups", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 276, i32 27}
!444 = !{ptr @pistachio_debug_ed_sec20_cca_ind_groups, !445, !"pistachio_debug_ed_sec20_cca_ind_groups", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 280, i32 27}
!446 = !{ptr @pistachio_debug_ed_sec40_cca_ind_groups, !447, !"pistachio_debug_ed_sec40_cca_ind_groups", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 284, i32 27}
!448 = !{ptr @pistachio_debug_agc_done_0_groups, !449, !"pistachio_debug_agc_done_0_groups", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 288, i32 27}
!450 = !{ptr @pistachio_debug_agc_done_1_groups, !451, !"pistachio_debug_agc_done_1_groups", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 292, i32 27}
!452 = !{ptr @pistachio_debug_ed_cca_ind_groups, !453, !"pistachio_debug_ed_cca_ind_groups", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 296, i32 27}
!454 = !{ptr @pistachio_debug_s2l_done_groups, !455, !"pistachio_debug_s2l_done_groups", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 300, i32 27}
!456 = !{ptr @.str.163, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 820, i32 2}
!458 = !{ptr @.str.164, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 821, i32 2}
!460 = !{ptr @.str.165, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 822, i32 2}
!462 = !{ptr @.str.166, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 823, i32 2}
!464 = !{ptr @.str.167, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 824, i32 2}
!466 = !{ptr @.str.168, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 825, i32 2}
!468 = !{ptr @.str.169, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 826, i32 2}
!470 = !{ptr @.str.170, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 827, i32 2}
!472 = !{ptr @.str.171, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 828, i32 2}
!474 = !{ptr @pistachio_groups, !475, !"pistachio_groups", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 676, i32 41}
!476 = !{ptr @.str.172, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1340, i32 2}
!478 = !{ptr @.str.173, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1341, i32 2}
!480 = !{ptr @.str.174, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1342, i32 2}
!482 = !{ptr @.str.175, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1343, i32 2}
!484 = !{ptr @.str.176, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1344, i32 2}
!486 = !{ptr @.str.177, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1345, i32 2}
!488 = !{ptr @pistachio_gpio_banks, !489, !"pistachio_gpio_banks", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1339, i32 35}
!490 = !{ptr @pistachio_pinctrl_desc, !491, !"pistachio_pinctrl_desc", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1158, i32 28}
!492 = !{ptr @pistachio_pinctrl_ops, !493, !"pistachio_pinctrl_ops", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 907, i32 33}
!494 = !{ptr @pistachio_pinmux_ops, !495, !"pistachio_pinmux_ops", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 991, i32 32}
!496 = !{ptr @.str.178, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 959, i32 4}
!498 = !{ptr @.str.179, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @pistachio_pinmux_enable._entry, !497, !"_entry", i1 false, i1 false}
!500 = !{ptr @pistachio_pinmux_enable._entry_ptr, !497, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @pistachio_pinconf_ops, !502, !"pistachio_pinconf_ops", i1 false, i1 false}
!502 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1152, i32 33}
!503 = !{ptr @.str.180, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1054, i32 3}
!505 = !{ptr @.str.181, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @.str.182, !504, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @pistachio_pinconf_get.__UNIQUE_ID_ddebug227, !504, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!508 = !{ptr @.str.183, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1134, i32 5}
!510 = !{ptr @.str.184, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @pistachio_pinconf_set._entry, !509, !"_entry", i1 false, i1 false}
!512 = !{ptr @pistachio_pinconf_set._entry_ptr, !509, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @pistachio_pinconf_set._entry.185, !514, !"_entry", i1 false, i1 false}
!514 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1143, i32 4}
!515 = !{ptr @pistachio_pinconf_set._entry_ptr.186, !514, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.187, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1360, i32 44}
!518 = !{ptr @.str.188, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1363, i32 4}
!520 = !{ptr @.str.189, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @pistachio_gpio_register._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @pistachio_gpio_register._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.190, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1368, i32 32}
!525 = !{ptr @.str.192, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1369, i32 4}
!527 = !{ptr @pistachio_gpio_register._entry.191, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @pistachio_gpio_register._entry_ptr.193, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.195, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1378, i32 4}
!531 = !{ptr @pistachio_gpio_register._entry.194, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @pistachio_gpio_register._entry_ptr.196, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @pistachio_gpio_register.lock_key, !534, !"lock_key", i1 false, i1 false}
!534 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1406, i32 9}
!535 = !{ptr @pistachio_gpio_register.request_key, !534, !"request_key", i1 false, i1 false}
!536 = !{ptr @.str.198, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1408, i32 4}
!538 = !{ptr @pistachio_gpio_register._entry.197, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @pistachio_gpio_register._entry_ptr.199, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.201, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1417, i32 4}
!542 = !{ptr @pistachio_gpio_register._entry.200, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @pistachio_gpio_register._entry_ptr.202, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @pistachio_pinctrl_of_match, !545, !"pistachio_pinctrl_of_match", i1 false, i1 false}
!545 = !{!"../drivers/pinctrl/pinctrl-pistachio.c", i32 1433, i32 34}
!546 = !{i32 1, !"wchar_size", i32 2}
!547 = !{i32 1, !"min_enum_size", i32 4}
!548 = !{i32 8, !"branch-target-enforcement", i32 0}
!549 = !{i32 8, !"sign-return-address", i32 0}
!550 = !{i32 8, !"sign-return-address-all", i32 0}
!551 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!552 = !{i32 7, !"uwtable", i32 1}
!553 = !{i32 7, !"frame-pointer", i32 2}
!554 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!555 = !{i64 4879353}
!556 = !{i64 2154081404}
!557 = !{i64 2154081786}
!558 = !{i64 4878935}
!559 = !{i64 2154080028}
!560 = !{i64 2154080410}
!561 = !{!"branch_weights", i32 1, i32 2000}
!562 = !{i64 2148341121, i64 2148341126, i64 2148341139, i64 2148341183, i64 2148341217, i64 2148341238}
