; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/cirrus/pinctrl-lochnagar.c_pt.bc'
source_filename = "../drivers/pinctrl/cirrus/pinctrl-lochnagar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.lochnagar_func = type { ptr, i32, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.lochnagar_group = type { ptr, i32, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lochnagar_pin = type { [20 x i8], i32, i32, i32, i8 }
%struct.lochnagar_aif = type { [16 x i8], [4 x i32], i16, i16, i16, i16, i16 }
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
%struct.lochnagar_pin_priv = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, [2 x %struct.lochnagar_func_groups], %struct.gpio_chip }
%struct.lochnagar_func_groups = type { ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.lochnagar = type { i32, ptr, ptr, %struct.mutex }

@__initcall__kmod_pinctrl_lochnagar__231_1228_lochnagar_pin_driver_init6 = internal global ptr @lochnagar_pin_driver_init, section ".initcall6.init", align 4
@lochnagar_pin_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lochnagar_pin_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lochnagar_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lochnagar_pin_driver_exit = internal global ptr @lochnagar_pin_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [72 x i8] c"pinctrl_lochnagar.author=Charles Keepax <ckeepax@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [78 x i8] c"pinctrl_lochnagar.description=Pinctrl driver for Cirrus Logic Lochnagar Board\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [64 x i8] c"pinctrl_lochnagar.file=drivers/pinctrl/cirrus/pinctrl-lochnagar\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [33 x i8] c"pinctrl_lochnagar.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lochnagar-pinctrl\00", [46 x i8] zeroinitializer }, align 32
@lochnagar_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,lochnagar-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lochnagar_pin_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @lochnagar_pin_group_ops, ptr @lochnagar_pin_mux_ops, ptr @lochnagar_pin_conf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_funcs = internal constant { [26 x %struct.lochnagar_func], [72 x i8] } { [26 x %struct.lochnagar_func] [%struct.lochnagar_func { ptr @.str.49, i32 0, i8 1 }, %struct.lochnagar_func { ptr @.str.50, i32 0, i8 2 }, %struct.lochnagar_func { ptr @.str.51, i32 0, i8 3 }, %struct.lochnagar_func { ptr @.str.52, i32 0, i8 4 }, %struct.lochnagar_func { ptr @.str.53, i32 0, i8 5 }, %struct.lochnagar_func { ptr @.str.54, i32 0, i8 6 }, %struct.lochnagar_func { ptr @.str.55, i32 0, i8 7 }, %struct.lochnagar_func { ptr @.str.56, i32 0, i8 8 }, %struct.lochnagar_func { ptr @.str.57, i32 0, i8 9 }, %struct.lochnagar_func { ptr @.str.58, i32 0, i8 10 }, %struct.lochnagar_func { ptr @.str.59, i32 0, i8 11 }, %struct.lochnagar_func { ptr @lochnagar1_GF_GPIO2_pin, i32 0, i8 12 }, %struct.lochnagar_func { ptr @lochnagar1_GF_GPIO3_pin, i32 0, i8 13 }, %struct.lochnagar_func { ptr @lochnagar1_GF_GPIO7_pin, i32 0, i8 14 }, %struct.lochnagar_func { ptr @lochnagar1_SPDIF_AIF_aif, i32 1, i8 1 }, %struct.lochnagar_func { ptr @lochnagar1_PSIA1_aif, i32 1, i8 2 }, %struct.lochnagar_func { ptr @lochnagar1_PSIA2_aif, i32 1, i8 3 }, %struct.lochnagar_func { ptr @lochnagar1_CDC_AIF1_aif, i32 1, i8 4 }, %struct.lochnagar_func { ptr @lochnagar1_CDC_AIF2_aif, i32 1, i8 5 }, %struct.lochnagar_func { ptr @lochnagar1_CDC_AIF3_aif, i32 1, i8 6 }, %struct.lochnagar_func { ptr @lochnagar1_DSP_AIF1_aif, i32 1, i8 7 }, %struct.lochnagar_func { ptr @lochnagar1_DSP_AIF2_aif, i32 1, i8 8 }, %struct.lochnagar_func { ptr @lochnagar1_GF_AIF3_aif, i32 1, i8 9 }, %struct.lochnagar_func { ptr @lochnagar1_GF_AIF4_aif, i32 1, i8 10 }, %struct.lochnagar_func { ptr @lochnagar1_GF_AIF1_aif, i32 1, i8 11 }, %struct.lochnagar_func { ptr @lochnagar1_GF_AIF2_aif, i32 1, i8 12 }], [72 x i8] zeroinitializer }, align 32
@lochnagar1_pins = internal constant { [56 x %struct.pinctrl_pin_desc], [160 x i8] } { [56 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @lochnagar1_CDC_RESET_pin, ptr @lochnagar1_CDC_RESET_pin }, %struct.pinctrl_pin_desc { i32 1, ptr @lochnagar1_DSP_RESET_pin, ptr @lochnagar1_DSP_RESET_pin }, %struct.pinctrl_pin_desc { i32 2, ptr @lochnagar1_CDC_CIF1MODE_pin, ptr @lochnagar1_CDC_CIF1MODE_pin }, %struct.pinctrl_pin_desc { i32 3, ptr @lochnagar1_GF_GPIO2_pin, ptr @lochnagar1_GF_GPIO2_pin }, %struct.pinctrl_pin_desc { i32 4, ptr @lochnagar1_GF_GPIO3_pin, ptr @lochnagar1_GF_GPIO3_pin }, %struct.pinctrl_pin_desc { i32 5, ptr @lochnagar1_GF_GPIO7_pin, ptr @lochnagar1_GF_GPIO7_pin }, %struct.pinctrl_pin_desc { i32 6, ptr @lochnagar1_LED1_pin, ptr @lochnagar1_LED1_pin }, %struct.pinctrl_pin_desc { i32 7, ptr @lochnagar1_LED2_pin, ptr @lochnagar1_LED2_pin }, %struct.pinctrl_pin_desc { i32 8, ptr @lochnagar1_CDC_AIF1_BCLK_pin, ptr @lochnagar1_CDC_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 9, ptr @lochnagar1_CDC_AIF1_LRCLK_pin, ptr @lochnagar1_CDC_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 10, ptr @lochnagar1_CDC_AIF1_RXDAT_pin, ptr @lochnagar1_CDC_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 11, ptr @lochnagar1_CDC_AIF1_TXDAT_pin, ptr @lochnagar1_CDC_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 12, ptr @lochnagar1_CDC_AIF2_BCLK_pin, ptr @lochnagar1_CDC_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 13, ptr @lochnagar1_CDC_AIF2_LRCLK_pin, ptr @lochnagar1_CDC_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 14, ptr @lochnagar1_CDC_AIF2_RXDAT_pin, ptr @lochnagar1_CDC_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 15, ptr @lochnagar1_CDC_AIF2_TXDAT_pin, ptr @lochnagar1_CDC_AIF2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 16, ptr @lochnagar1_CDC_AIF3_BCLK_pin, ptr @lochnagar1_CDC_AIF3_BCLK_pin }, %struct.pinctrl_pin_desc { i32 17, ptr @lochnagar1_CDC_AIF3_LRCLK_pin, ptr @lochnagar1_CDC_AIF3_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 18, ptr @lochnagar1_CDC_AIF3_RXDAT_pin, ptr @lochnagar1_CDC_AIF3_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 19, ptr @lochnagar1_CDC_AIF3_TXDAT_pin, ptr @lochnagar1_CDC_AIF3_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 20, ptr @lochnagar1_DSP_AIF1_BCLK_pin, ptr @lochnagar1_DSP_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 21, ptr @lochnagar1_DSP_AIF1_LRCLK_pin, ptr @lochnagar1_DSP_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 22, ptr @lochnagar1_DSP_AIF1_RXDAT_pin, ptr @lochnagar1_DSP_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 23, ptr @lochnagar1_DSP_AIF1_TXDAT_pin, ptr @lochnagar1_DSP_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 24, ptr @lochnagar1_DSP_AIF2_BCLK_pin, ptr @lochnagar1_DSP_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 25, ptr @lochnagar1_DSP_AIF2_LRCLK_pin, ptr @lochnagar1_DSP_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 26, ptr @lochnagar1_DSP_AIF2_RXDAT_pin, ptr @lochnagar1_DSP_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 27, ptr @lochnagar1_DSP_AIF2_TXDAT_pin, ptr @lochnagar1_DSP_AIF2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 28, ptr @lochnagar1_PSIA1_BCLK_pin, ptr @lochnagar1_PSIA1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 29, ptr @lochnagar1_PSIA1_LRCLK_pin, ptr @lochnagar1_PSIA1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 30, ptr @lochnagar1_PSIA1_RXDAT_pin, ptr @lochnagar1_PSIA1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 31, ptr @lochnagar1_PSIA1_TXDAT_pin, ptr @lochnagar1_PSIA1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 32, ptr @lochnagar1_PSIA2_BCLK_pin, ptr @lochnagar1_PSIA2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 33, ptr @lochnagar1_PSIA2_LRCLK_pin, ptr @lochnagar1_PSIA2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 34, ptr @lochnagar1_PSIA2_RXDAT_pin, ptr @lochnagar1_PSIA2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 35, ptr @lochnagar1_PSIA2_TXDAT_pin, ptr @lochnagar1_PSIA2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 36, ptr @lochnagar1_SPDIF_AIF_BCLK_pin, ptr @lochnagar1_SPDIF_AIF_BCLK_pin }, %struct.pinctrl_pin_desc { i32 37, ptr @lochnagar1_SPDIF_AIF_LRCLK_pin, ptr @lochnagar1_SPDIF_AIF_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 38, ptr @lochnagar1_SPDIF_AIF_RXDAT_pin, ptr @lochnagar1_SPDIF_AIF_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 39, ptr @lochnagar1_SPDIF_AIF_TXDAT_pin, ptr @lochnagar1_SPDIF_AIF_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 40, ptr @lochnagar1_GF_AIF3_BCLK_pin, ptr @lochnagar1_GF_AIF3_BCLK_pin }, %struct.pinctrl_pin_desc { i32 41, ptr @lochnagar1_GF_AIF3_RXDAT_pin, ptr @lochnagar1_GF_AIF3_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 42, ptr @lochnagar1_GF_AIF3_LRCLK_pin, ptr @lochnagar1_GF_AIF3_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 43, ptr @lochnagar1_GF_AIF3_TXDAT_pin, ptr @lochnagar1_GF_AIF3_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 44, ptr @lochnagar1_GF_AIF4_BCLK_pin, ptr @lochnagar1_GF_AIF4_BCLK_pin }, %struct.pinctrl_pin_desc { i32 45, ptr @lochnagar1_GF_AIF4_RXDAT_pin, ptr @lochnagar1_GF_AIF4_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 46, ptr @lochnagar1_GF_AIF4_LRCLK_pin, ptr @lochnagar1_GF_AIF4_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 47, ptr @lochnagar1_GF_AIF4_TXDAT_pin, ptr @lochnagar1_GF_AIF4_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 48, ptr @lochnagar1_GF_AIF1_BCLK_pin, ptr @lochnagar1_GF_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 49, ptr @lochnagar1_GF_AIF1_RXDAT_pin, ptr @lochnagar1_GF_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 50, ptr @lochnagar1_GF_AIF1_LRCLK_pin, ptr @lochnagar1_GF_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 51, ptr @lochnagar1_GF_AIF1_TXDAT_pin, ptr @lochnagar1_GF_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 52, ptr @lochnagar1_GF_AIF2_BCLK_pin, ptr @lochnagar1_GF_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 53, ptr @lochnagar1_GF_AIF2_RXDAT_pin, ptr @lochnagar1_GF_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 54, ptr @lochnagar1_GF_AIF2_LRCLK_pin, ptr @lochnagar1_GF_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 55, ptr @lochnagar1_GF_AIF2_TXDAT_pin, ptr @lochnagar1_GF_AIF2_TXDAT_pin }], [160 x i8] zeroinitializer }, align 32
@lochnagar1_groups = internal constant { [17 x %struct.lochnagar_group], [76 x i8] } { [17 x %struct.lochnagar_group] [%struct.lochnagar_group { ptr @lochnagar1_GF_GPIO2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 36), i32 1, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 36) }, %struct.lochnagar_group { ptr @lochnagar1_GF_GPIO3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 48), i32 1, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 48) }, %struct.lochnagar_group { ptr @lochnagar1_GF_GPIO7_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 60), i32 1, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 60) }, %struct.lochnagar_group { ptr @lochnagar1_LED1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 72), i32 1, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 72) }, %struct.lochnagar_group { ptr @lochnagar1_LED2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 84), i32 1, ptr getelementptr (i8, ptr @lochnagar1_pins, i64 84) }, %struct.lochnagar_group { ptr @lochnagar1_CDC_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_CDC_AIF1_aif, i64 16), i32 4, ptr @lochnagar1_CDC_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar1_CDC_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_CDC_AIF2_aif, i64 16), i32 4, ptr @lochnagar1_CDC_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar1_CDC_AIF3_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_CDC_AIF3_aif, i64 16), i32 4, ptr @lochnagar1_CDC_AIF3_aif }, %struct.lochnagar_group { ptr @lochnagar1_DSP_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_DSP_AIF1_aif, i64 16), i32 4, ptr @lochnagar1_DSP_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar1_DSP_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_DSP_AIF2_aif, i64 16), i32 4, ptr @lochnagar1_DSP_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar1_PSIA1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_PSIA1_aif, i64 16), i32 4, ptr @lochnagar1_PSIA1_aif }, %struct.lochnagar_group { ptr @lochnagar1_PSIA2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_PSIA2_aif, i64 16), i32 4, ptr @lochnagar1_PSIA2_aif }, %struct.lochnagar_group { ptr @lochnagar1_GF_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_GF_AIF1_aif, i64 16), i32 4, ptr @lochnagar1_GF_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar1_GF_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_GF_AIF2_aif, i64 16), i32 4, ptr @lochnagar1_GF_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar1_GF_AIF3_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_GF_AIF3_aif, i64 16), i32 4, ptr @lochnagar1_GF_AIF3_aif }, %struct.lochnagar_group { ptr @lochnagar1_GF_AIF4_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_GF_AIF4_aif, i64 16), i32 4, ptr @lochnagar1_GF_AIF4_aif }, %struct.lochnagar_group { ptr @lochnagar1_SPDIF_AIF_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar1_SPDIF_AIF_aif, i64 16), i32 4, ptr @lochnagar1_SPDIF_AIF_aif }], [76 x i8] zeroinitializer }, align 32
@lochnagar2_funcs = internal constant { [142 x %struct.lochnagar_func], [440 x i8] } { [142 x %struct.lochnagar_func] [%struct.lochnagar_func { ptr @.str.60, i32 0, i8 0 }, %struct.lochnagar_func { ptr @lochnagar2_FPGA_GPIO1_pin, i32 0, i8 1 }, %struct.lochnagar_func { ptr @lochnagar2_FPGA_GPIO2_pin, i32 0, i8 2 }, %struct.lochnagar_func { ptr @lochnagar2_FPGA_GPIO3_pin, i32 0, i8 3 }, %struct.lochnagar_func { ptr @lochnagar2_FPGA_GPIO4_pin, i32 0, i8 4 }, %struct.lochnagar_func { ptr @lochnagar2_FPGA_GPIO5_pin, i32 0, i8 5 }, %struct.lochnagar_func { ptr @lochnagar2_FPGA_GPIO6_pin, i32 0, i8 6 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO1_pin, i32 0, i8 7 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO2_pin, i32 0, i8 8 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO3_pin, i32 0, i8 9 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO4_pin, i32 0, i8 10 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO5_pin, i32 0, i8 11 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO6_pin, i32 0, i8 12 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO7_pin, i32 0, i8 13 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_GPIO8_pin, i32 0, i8 14 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO1_pin, i32 0, i8 15 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO2_pin, i32 0, i8 16 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO3_pin, i32 0, i8 17 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO4_pin, i32 0, i8 18 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO5_pin, i32 0, i8 19 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO6_pin, i32 0, i8 20 }, %struct.lochnagar_func { ptr @lochnagar2_GF_GPIO2_pin, i32 0, i8 21 }, %struct.lochnagar_func { ptr @lochnagar2_GF_GPIO3_pin, i32 0, i8 22 }, %struct.lochnagar_func { ptr @lochnagar2_GF_GPIO7_pin, i32 0, i8 23 }, %struct.lochnagar_func { ptr @lochnagar2_GF_GPIO1_pin, i32 0, i8 24 }, %struct.lochnagar_func { ptr @lochnagar2_GF_GPIO5_pin, i32 0, i8 25 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_GPIO20_pin, i32 0, i8 26 }, %struct.lochnagar_func { ptr @.str.61, i32 0, i8 32 }, %struct.lochnagar_func { ptr @.str.62, i32 0, i8 33 }, %struct.lochnagar_func { ptr @.str.63, i32 0, i8 34 }, %struct.lochnagar_func { ptr @.str.64, i32 0, i8 35 }, %struct.lochnagar_func { ptr @.str.65, i32 0, i8 36 }, %struct.lochnagar_func { ptr @.str.66, i32 0, i8 37 }, %struct.lochnagar_func { ptr @.str.67, i32 0, i8 38 }, %struct.lochnagar_func { ptr @.str.68, i32 0, i8 39 }, %struct.lochnagar_func { ptr @.str.69, i32 0, i8 41 }, %struct.lochnagar_func { ptr @.str.70, i32 0, i8 42 }, %struct.lochnagar_func { ptr @.str.71, i32 0, i8 43 }, %struct.lochnagar_func { ptr @.str.72, i32 0, i8 44 }, %struct.lochnagar_func { ptr @.str.73, i32 0, i8 45 }, %struct.lochnagar_func { ptr @.str.74, i32 0, i8 46 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_MCLK1_pin, i32 0, i8 47 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_MCLK2_pin, i32 0, i8 48 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_CLKIN_pin, i32 0, i8 49 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA1_MCLK_pin, i32 0, i8 50 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA2_MCLK_pin, i32 0, i8 51 }, %struct.lochnagar_func { ptr @.str.75, i32 0, i8 52 }, %struct.lochnagar_func { ptr @.str.76, i32 0, i8 66 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_RESET_pin, i32 0, i8 67 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_RESET_pin, i32 0, i8 68 }, %struct.lochnagar_func { ptr @.str.77, i32 0, i8 69 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_STANDBY_pin, i32 0, i8 70 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_PDMCLK1_pin, i32 0, i8 -112 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_PDMDAT1_pin, i32 0, i8 -111 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_PDMCLK2_pin, i32 0, i8 -110 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_PDMDAT2_pin, i32 0, i8 -109 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICCLK1_pin, i32 0, i8 -96 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICDAT1_pin, i32 0, i8 -95 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICCLK2_pin, i32 0, i8 -94 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICDAT2_pin, i32 0, i8 -93 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICCLK3_pin, i32 0, i8 -92 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICDAT3_pin, i32 0, i8 -91 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICCLK4_pin, i32 0, i8 -90 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_DMICDAT4_pin, i32 0, i8 -89 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_DMICCLK1_pin, i32 0, i8 -88 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_DMICDAT1_pin, i32 0, i8 -87 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_DMICCLK2_pin, i32 0, i8 -86 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_DMICDAT2_pin, i32 0, i8 -85 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_UART1_RX_pin, i32 0, i8 -64 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_UART1_TX_pin, i32 0, i8 -63 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_UART2_RX_pin, i32 0, i8 -62 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_UART2_TX_pin, i32 0, i8 -61 }, %struct.lochnagar_func { ptr @lochnagar2_GF_UART2_RX_pin, i32 0, i8 -60 }, %struct.lochnagar_func { ptr @lochnagar2_GF_UART2_TX_pin, i32 0, i8 -59 }, %struct.lochnagar_func { ptr @lochnagar2_USB_UART_RX_pin, i32 0, i8 -58 }, %struct.lochnagar_func { ptr @.str.78, i32 0, i8 -57 }, %struct.lochnagar_func { ptr @lochnagar2_I2C2_SCL_pin, i32 0, i8 -32 }, %struct.lochnagar_func { ptr @lochnagar2_I2C2_SDA_pin, i32 0, i8 -31 }, %struct.lochnagar_func { ptr @lochnagar2_I2C3_SCL_pin, i32 0, i8 -30 }, %struct.lochnagar_func { ptr @lochnagar2_I2C3_SDA_pin, i32 0, i8 -29 }, %struct.lochnagar_func { ptr @lochnagar2_I2C4_SCL_pin, i32 0, i8 -28 }, %struct.lochnagar_func { ptr @lochnagar2_I2C4_SDA_pin, i32 0, i8 -27 }, %struct.lochnagar_func { ptr @lochnagar2_SPDIF_AIF_aif, i32 1, i8 1 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA1_aif, i32 1, i8 2 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA1_BCLK_pin, i32 0, i8 80 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA1_LRCLK_pin, i32 0, i8 81 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA1_RXDAT_pin, i32 0, i8 82 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA1_TXDAT_pin, i32 0, i8 83 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA2_aif, i32 1, i8 3 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA2_BCLK_pin, i32 0, i8 84 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA2_LRCLK_pin, i32 0, i8 85 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA2_RXDAT_pin, i32 0, i8 86 }, %struct.lochnagar_func { ptr @lochnagar2_PSIA2_TXDAT_pin, i32 0, i8 87 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF1_aif, i32 1, i8 4 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF1_BCLK_pin, i32 0, i8 89 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF1_LRCLK_pin, i32 0, i8 91 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF1_RXDAT_pin, i32 0, i8 90 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF1_TXDAT_pin, i32 0, i8 88 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF2_aif, i32 1, i8 5 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF2_BCLK_pin, i32 0, i8 93 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF2_LRCLK_pin, i32 0, i8 95 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF2_RXDAT_pin, i32 0, i8 94 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF2_TXDAT_pin, i32 0, i8 92 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF3_aif, i32 1, i8 6 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF3_BCLK_pin, i32 0, i8 97 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF3_LRCLK_pin, i32 0, i8 98 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF3_RXDAT_pin, i32 0, i8 99 }, %struct.lochnagar_func { ptr @lochnagar2_CDC_AIF3_TXDAT_pin, i32 0, i8 96 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF1_aif, i32 1, i8 7 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF1_BCLK_pin, i32 0, i8 101 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF1_LRCLK_pin, i32 0, i8 103 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF1_RXDAT_pin, i32 0, i8 102 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF1_TXDAT_pin, i32 0, i8 100 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF2_aif, i32 1, i8 8 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF2_BCLK_pin, i32 0, i8 105 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF2_LRCLK_pin, i32 0, i8 107 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF2_RXDAT_pin, i32 0, i8 106 }, %struct.lochnagar_func { ptr @lochnagar2_DSP_AIF2_TXDAT_pin, i32 0, i8 104 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF3_aif, i32 1, i8 9 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF3_BCLK_pin, i32 0, i8 109 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF3_LRCLK_pin, i32 0, i8 111 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF3_RXDAT_pin, i32 0, i8 108 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF3_TXDAT_pin, i32 0, i8 110 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF4_aif, i32 1, i8 10 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF4_BCLK_pin, i32 0, i8 113 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF4_LRCLK_pin, i32 0, i8 115 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF4_RXDAT_pin, i32 0, i8 112 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF4_TXDAT_pin, i32 0, i8 114 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF1_aif, i32 1, i8 11 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF1_BCLK_pin, i32 0, i8 117 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF1_LRCLK_pin, i32 0, i8 119 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF1_RXDAT_pin, i32 0, i8 116 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF1_TXDAT_pin, i32 0, i8 118 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF2_aif, i32 1, i8 12 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF2_BCLK_pin, i32 0, i8 121 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF2_LRCLK_pin, i32 0, i8 123 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF2_RXDAT_pin, i32 0, i8 120 }, %struct.lochnagar_func { ptr @lochnagar2_GF_AIF2_TXDAT_pin, i32 0, i8 122 }, %struct.lochnagar_func { ptr @lochnagar2_USB_AIF1_aif, i32 1, i8 13 }, %struct.lochnagar_func { ptr @lochnagar2_USB_AIF2_aif, i32 1, i8 14 }, %struct.lochnagar_func { ptr @lochnagar2_ADAT_AIF_aif, i32 1, i8 15 }, %struct.lochnagar_func { ptr @lochnagar2_SOUNDCARD_AIF_aif, i32 1, i8 16 }], [440 x i8] zeroinitializer }, align 32
@lochnagar2_pins = internal constant { [131 x %struct.pinctrl_pin_desc], [412 x i8] } { [131 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @lochnagar2_CDC_RESET_pin, ptr @lochnagar2_CDC_RESET_pin }, %struct.pinctrl_pin_desc { i32 1, ptr @lochnagar2_DSP_RESET_pin, ptr @lochnagar2_DSP_RESET_pin }, %struct.pinctrl_pin_desc { i32 2, ptr @lochnagar2_CDC_CIF1MODE_pin, ptr @lochnagar2_CDC_CIF1MODE_pin }, %struct.pinctrl_pin_desc { i32 3, ptr @lochnagar2_CDC_LDOENA_pin, ptr @lochnagar2_CDC_LDOENA_pin }, %struct.pinctrl_pin_desc { i32 4, ptr @lochnagar2_SPDIF_HWMODE_pin, ptr @lochnagar2_SPDIF_HWMODE_pin }, %struct.pinctrl_pin_desc { i32 5, ptr @lochnagar2_SPDIF_RESET_pin, ptr @lochnagar2_SPDIF_RESET_pin }, %struct.pinctrl_pin_desc { i32 6, ptr @lochnagar2_FPGA_GPIO1_pin, ptr @lochnagar2_FPGA_GPIO1_pin }, %struct.pinctrl_pin_desc { i32 7, ptr @lochnagar2_FPGA_GPIO2_pin, ptr @lochnagar2_FPGA_GPIO2_pin }, %struct.pinctrl_pin_desc { i32 8, ptr @lochnagar2_FPGA_GPIO3_pin, ptr @lochnagar2_FPGA_GPIO3_pin }, %struct.pinctrl_pin_desc { i32 9, ptr @lochnagar2_FPGA_GPIO4_pin, ptr @lochnagar2_FPGA_GPIO4_pin }, %struct.pinctrl_pin_desc { i32 10, ptr @lochnagar2_FPGA_GPIO5_pin, ptr @lochnagar2_FPGA_GPIO5_pin }, %struct.pinctrl_pin_desc { i32 11, ptr @lochnagar2_FPGA_GPIO6_pin, ptr @lochnagar2_FPGA_GPIO6_pin }, %struct.pinctrl_pin_desc { i32 12, ptr @lochnagar2_CDC_GPIO1_pin, ptr @lochnagar2_CDC_GPIO1_pin }, %struct.pinctrl_pin_desc { i32 13, ptr @lochnagar2_CDC_GPIO2_pin, ptr @lochnagar2_CDC_GPIO2_pin }, %struct.pinctrl_pin_desc { i32 14, ptr @lochnagar2_CDC_GPIO3_pin, ptr @lochnagar2_CDC_GPIO3_pin }, %struct.pinctrl_pin_desc { i32 15, ptr @lochnagar2_CDC_GPIO4_pin, ptr @lochnagar2_CDC_GPIO4_pin }, %struct.pinctrl_pin_desc { i32 16, ptr @lochnagar2_CDC_GPIO5_pin, ptr @lochnagar2_CDC_GPIO5_pin }, %struct.pinctrl_pin_desc { i32 17, ptr @lochnagar2_CDC_GPIO6_pin, ptr @lochnagar2_CDC_GPIO6_pin }, %struct.pinctrl_pin_desc { i32 18, ptr @lochnagar2_CDC_GPIO7_pin, ptr @lochnagar2_CDC_GPIO7_pin }, %struct.pinctrl_pin_desc { i32 19, ptr @lochnagar2_CDC_GPIO8_pin, ptr @lochnagar2_CDC_GPIO8_pin }, %struct.pinctrl_pin_desc { i32 20, ptr @lochnagar2_DSP_GPIO1_pin, ptr @lochnagar2_DSP_GPIO1_pin }, %struct.pinctrl_pin_desc { i32 21, ptr @lochnagar2_DSP_GPIO2_pin, ptr @lochnagar2_DSP_GPIO2_pin }, %struct.pinctrl_pin_desc { i32 22, ptr @lochnagar2_DSP_GPIO3_pin, ptr @lochnagar2_DSP_GPIO3_pin }, %struct.pinctrl_pin_desc { i32 23, ptr @lochnagar2_DSP_GPIO4_pin, ptr @lochnagar2_DSP_GPIO4_pin }, %struct.pinctrl_pin_desc { i32 24, ptr @lochnagar2_DSP_GPIO5_pin, ptr @lochnagar2_DSP_GPIO5_pin }, %struct.pinctrl_pin_desc { i32 25, ptr @lochnagar2_DSP_GPIO6_pin, ptr @lochnagar2_DSP_GPIO6_pin }, %struct.pinctrl_pin_desc { i32 26, ptr @lochnagar2_GF_GPIO2_pin, ptr @lochnagar2_GF_GPIO2_pin }, %struct.pinctrl_pin_desc { i32 27, ptr @lochnagar2_GF_GPIO3_pin, ptr @lochnagar2_GF_GPIO3_pin }, %struct.pinctrl_pin_desc { i32 28, ptr @lochnagar2_GF_GPIO7_pin, ptr @lochnagar2_GF_GPIO7_pin }, %struct.pinctrl_pin_desc { i32 29, ptr @lochnagar2_CDC_AIF1_BCLK_pin, ptr @lochnagar2_CDC_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 30, ptr @lochnagar2_CDC_AIF1_RXDAT_pin, ptr @lochnagar2_CDC_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 31, ptr @lochnagar2_CDC_AIF1_LRCLK_pin, ptr @lochnagar2_CDC_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 32, ptr @lochnagar2_CDC_AIF1_TXDAT_pin, ptr @lochnagar2_CDC_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 33, ptr @lochnagar2_CDC_AIF2_BCLK_pin, ptr @lochnagar2_CDC_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 34, ptr @lochnagar2_CDC_AIF2_RXDAT_pin, ptr @lochnagar2_CDC_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 35, ptr @lochnagar2_CDC_AIF2_LRCLK_pin, ptr @lochnagar2_CDC_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 36, ptr @lochnagar2_CDC_AIF2_TXDAT_pin, ptr @lochnagar2_CDC_AIF2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 37, ptr @lochnagar2_CDC_AIF3_BCLK_pin, ptr @lochnagar2_CDC_AIF3_BCLK_pin }, %struct.pinctrl_pin_desc { i32 38, ptr @lochnagar2_CDC_AIF3_RXDAT_pin, ptr @lochnagar2_CDC_AIF3_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 39, ptr @lochnagar2_CDC_AIF3_LRCLK_pin, ptr @lochnagar2_CDC_AIF3_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 40, ptr @lochnagar2_CDC_AIF3_TXDAT_pin, ptr @lochnagar2_CDC_AIF3_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 41, ptr @lochnagar2_DSP_AIF1_BCLK_pin, ptr @lochnagar2_DSP_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 42, ptr @lochnagar2_DSP_AIF1_RXDAT_pin, ptr @lochnagar2_DSP_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 43, ptr @lochnagar2_DSP_AIF1_LRCLK_pin, ptr @lochnagar2_DSP_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 44, ptr @lochnagar2_DSP_AIF1_TXDAT_pin, ptr @lochnagar2_DSP_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 45, ptr @lochnagar2_DSP_AIF2_BCLK_pin, ptr @lochnagar2_DSP_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 46, ptr @lochnagar2_DSP_AIF2_RXDAT_pin, ptr @lochnagar2_DSP_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 47, ptr @lochnagar2_DSP_AIF2_LRCLK_pin, ptr @lochnagar2_DSP_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 48, ptr @lochnagar2_DSP_AIF2_TXDAT_pin, ptr @lochnagar2_DSP_AIF2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 49, ptr @lochnagar2_PSIA1_BCLK_pin, ptr @lochnagar2_PSIA1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 50, ptr @lochnagar2_PSIA1_RXDAT_pin, ptr @lochnagar2_PSIA1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 51, ptr @lochnagar2_PSIA1_LRCLK_pin, ptr @lochnagar2_PSIA1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 52, ptr @lochnagar2_PSIA1_TXDAT_pin, ptr @lochnagar2_PSIA1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 53, ptr @lochnagar2_PSIA2_BCLK_pin, ptr @lochnagar2_PSIA2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 54, ptr @lochnagar2_PSIA2_RXDAT_pin, ptr @lochnagar2_PSIA2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 55, ptr @lochnagar2_PSIA2_LRCLK_pin, ptr @lochnagar2_PSIA2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 56, ptr @lochnagar2_PSIA2_TXDAT_pin, ptr @lochnagar2_PSIA2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 57, ptr @lochnagar2_GF_AIF3_BCLK_pin, ptr @lochnagar2_GF_AIF3_BCLK_pin }, %struct.pinctrl_pin_desc { i32 58, ptr @lochnagar2_GF_AIF3_RXDAT_pin, ptr @lochnagar2_GF_AIF3_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 59, ptr @lochnagar2_GF_AIF3_LRCLK_pin, ptr @lochnagar2_GF_AIF3_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 60, ptr @lochnagar2_GF_AIF3_TXDAT_pin, ptr @lochnagar2_GF_AIF3_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 61, ptr @lochnagar2_GF_AIF4_BCLK_pin, ptr @lochnagar2_GF_AIF4_BCLK_pin }, %struct.pinctrl_pin_desc { i32 62, ptr @lochnagar2_GF_AIF4_RXDAT_pin, ptr @lochnagar2_GF_AIF4_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 63, ptr @lochnagar2_GF_AIF4_LRCLK_pin, ptr @lochnagar2_GF_AIF4_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 64, ptr @lochnagar2_GF_AIF4_TXDAT_pin, ptr @lochnagar2_GF_AIF4_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 65, ptr @lochnagar2_GF_AIF1_BCLK_pin, ptr @lochnagar2_GF_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 66, ptr @lochnagar2_GF_AIF1_RXDAT_pin, ptr @lochnagar2_GF_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 67, ptr @lochnagar2_GF_AIF1_LRCLK_pin, ptr @lochnagar2_GF_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 68, ptr @lochnagar2_GF_AIF1_TXDAT_pin, ptr @lochnagar2_GF_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 69, ptr @lochnagar2_GF_AIF2_BCLK_pin, ptr @lochnagar2_GF_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 70, ptr @lochnagar2_GF_AIF2_RXDAT_pin, ptr @lochnagar2_GF_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 71, ptr @lochnagar2_GF_AIF2_LRCLK_pin, ptr @lochnagar2_GF_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 72, ptr @lochnagar2_GF_AIF2_TXDAT_pin, ptr @lochnagar2_GF_AIF2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 73, ptr @lochnagar2_DSP_UART1_RX_pin, ptr @lochnagar2_DSP_UART1_RX_pin }, %struct.pinctrl_pin_desc { i32 74, ptr @lochnagar2_DSP_UART1_TX_pin, ptr @lochnagar2_DSP_UART1_TX_pin }, %struct.pinctrl_pin_desc { i32 75, ptr @lochnagar2_DSP_UART2_RX_pin, ptr @lochnagar2_DSP_UART2_RX_pin }, %struct.pinctrl_pin_desc { i32 76, ptr @lochnagar2_DSP_UART2_TX_pin, ptr @lochnagar2_DSP_UART2_TX_pin }, %struct.pinctrl_pin_desc { i32 77, ptr @lochnagar2_GF_UART2_RX_pin, ptr @lochnagar2_GF_UART2_RX_pin }, %struct.pinctrl_pin_desc { i32 78, ptr @lochnagar2_GF_UART2_TX_pin, ptr @lochnagar2_GF_UART2_TX_pin }, %struct.pinctrl_pin_desc { i32 79, ptr @lochnagar2_USB_UART_RX_pin, ptr @lochnagar2_USB_UART_RX_pin }, %struct.pinctrl_pin_desc { i32 80, ptr @lochnagar2_CDC_PDMCLK1_pin, ptr @lochnagar2_CDC_PDMCLK1_pin }, %struct.pinctrl_pin_desc { i32 81, ptr @lochnagar2_CDC_PDMDAT1_pin, ptr @lochnagar2_CDC_PDMDAT1_pin }, %struct.pinctrl_pin_desc { i32 82, ptr @lochnagar2_CDC_PDMCLK2_pin, ptr @lochnagar2_CDC_PDMCLK2_pin }, %struct.pinctrl_pin_desc { i32 83, ptr @lochnagar2_CDC_PDMDAT2_pin, ptr @lochnagar2_CDC_PDMDAT2_pin }, %struct.pinctrl_pin_desc { i32 84, ptr @lochnagar2_CDC_DMICCLK1_pin, ptr @lochnagar2_CDC_DMICCLK1_pin }, %struct.pinctrl_pin_desc { i32 85, ptr @lochnagar2_CDC_DMICDAT1_pin, ptr @lochnagar2_CDC_DMICDAT1_pin }, %struct.pinctrl_pin_desc { i32 86, ptr @lochnagar2_CDC_DMICCLK2_pin, ptr @lochnagar2_CDC_DMICCLK2_pin }, %struct.pinctrl_pin_desc { i32 87, ptr @lochnagar2_CDC_DMICDAT2_pin, ptr @lochnagar2_CDC_DMICDAT2_pin }, %struct.pinctrl_pin_desc { i32 88, ptr @lochnagar2_CDC_DMICCLK3_pin, ptr @lochnagar2_CDC_DMICCLK3_pin }, %struct.pinctrl_pin_desc { i32 89, ptr @lochnagar2_CDC_DMICDAT3_pin, ptr @lochnagar2_CDC_DMICDAT3_pin }, %struct.pinctrl_pin_desc { i32 90, ptr @lochnagar2_CDC_DMICCLK4_pin, ptr @lochnagar2_CDC_DMICCLK4_pin }, %struct.pinctrl_pin_desc { i32 91, ptr @lochnagar2_CDC_DMICDAT4_pin, ptr @lochnagar2_CDC_DMICDAT4_pin }, %struct.pinctrl_pin_desc { i32 92, ptr @lochnagar2_DSP_DMICCLK1_pin, ptr @lochnagar2_DSP_DMICCLK1_pin }, %struct.pinctrl_pin_desc { i32 93, ptr @lochnagar2_DSP_DMICDAT1_pin, ptr @lochnagar2_DSP_DMICDAT1_pin }, %struct.pinctrl_pin_desc { i32 94, ptr @lochnagar2_DSP_DMICCLK2_pin, ptr @lochnagar2_DSP_DMICCLK2_pin }, %struct.pinctrl_pin_desc { i32 95, ptr @lochnagar2_DSP_DMICDAT2_pin, ptr @lochnagar2_DSP_DMICDAT2_pin }, %struct.pinctrl_pin_desc { i32 96, ptr @lochnagar2_I2C2_SCL_pin, ptr @lochnagar2_I2C2_SCL_pin }, %struct.pinctrl_pin_desc { i32 97, ptr @lochnagar2_I2C2_SDA_pin, ptr @lochnagar2_I2C2_SDA_pin }, %struct.pinctrl_pin_desc { i32 98, ptr @lochnagar2_I2C3_SCL_pin, ptr @lochnagar2_I2C3_SCL_pin }, %struct.pinctrl_pin_desc { i32 99, ptr @lochnagar2_I2C3_SDA_pin, ptr @lochnagar2_I2C3_SDA_pin }, %struct.pinctrl_pin_desc { i32 100, ptr @lochnagar2_I2C4_SCL_pin, ptr @lochnagar2_I2C4_SCL_pin }, %struct.pinctrl_pin_desc { i32 101, ptr @lochnagar2_I2C4_SDA_pin, ptr @lochnagar2_I2C4_SDA_pin }, %struct.pinctrl_pin_desc { i32 102, ptr @lochnagar2_DSP_STANDBY_pin, ptr @lochnagar2_DSP_STANDBY_pin }, %struct.pinctrl_pin_desc { i32 103, ptr @lochnagar2_CDC_MCLK1_pin, ptr @lochnagar2_CDC_MCLK1_pin }, %struct.pinctrl_pin_desc { i32 104, ptr @lochnagar2_CDC_MCLK2_pin, ptr @lochnagar2_CDC_MCLK2_pin }, %struct.pinctrl_pin_desc { i32 105, ptr @lochnagar2_DSP_CLKIN_pin, ptr @lochnagar2_DSP_CLKIN_pin }, %struct.pinctrl_pin_desc { i32 106, ptr @lochnagar2_PSIA1_MCLK_pin, ptr @lochnagar2_PSIA1_MCLK_pin }, %struct.pinctrl_pin_desc { i32 107, ptr @lochnagar2_PSIA2_MCLK_pin, ptr @lochnagar2_PSIA2_MCLK_pin }, %struct.pinctrl_pin_desc { i32 108, ptr @lochnagar2_GF_GPIO1_pin, ptr @lochnagar2_GF_GPIO1_pin }, %struct.pinctrl_pin_desc { i32 109, ptr @lochnagar2_GF_GPIO5_pin, ptr @lochnagar2_GF_GPIO5_pin }, %struct.pinctrl_pin_desc { i32 110, ptr @lochnagar2_DSP_GPIO20_pin, ptr @lochnagar2_DSP_GPIO20_pin }, %struct.pinctrl_pin_desc { i32 111, ptr @lochnagar2_SPDIF_AIF_BCLK_pin, ptr @lochnagar2_SPDIF_AIF_BCLK_pin }, %struct.pinctrl_pin_desc { i32 112, ptr @lochnagar2_SPDIF_AIF_LRCLK_pin, ptr @lochnagar2_SPDIF_AIF_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 113, ptr @lochnagar2_SPDIF_AIF_RXDAT_pin, ptr @lochnagar2_SPDIF_AIF_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 114, ptr @lochnagar2_SPDIF_AIF_TXDAT_pin, ptr @lochnagar2_SPDIF_AIF_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 115, ptr @lochnagar2_USB_AIF1_BCLK_pin, ptr @lochnagar2_USB_AIF1_BCLK_pin }, %struct.pinctrl_pin_desc { i32 116, ptr @lochnagar2_USB_AIF1_LRCLK_pin, ptr @lochnagar2_USB_AIF1_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 117, ptr @lochnagar2_USB_AIF1_RXDAT_pin, ptr @lochnagar2_USB_AIF1_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 118, ptr @lochnagar2_USB_AIF1_TXDAT_pin, ptr @lochnagar2_USB_AIF1_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 119, ptr @lochnagar2_USB_AIF2_BCLK_pin, ptr @lochnagar2_USB_AIF2_BCLK_pin }, %struct.pinctrl_pin_desc { i32 120, ptr @lochnagar2_USB_AIF2_LRCLK_pin, ptr @lochnagar2_USB_AIF2_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 121, ptr @lochnagar2_USB_AIF2_RXDAT_pin, ptr @lochnagar2_USB_AIF2_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 122, ptr @lochnagar2_USB_AIF2_TXDAT_pin, ptr @lochnagar2_USB_AIF2_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 123, ptr @lochnagar2_ADAT_AIF_BCLK_pin, ptr @lochnagar2_ADAT_AIF_BCLK_pin }, %struct.pinctrl_pin_desc { i32 124, ptr @lochnagar2_ADAT_AIF_LRCLK_pin, ptr @lochnagar2_ADAT_AIF_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 125, ptr @lochnagar2_ADAT_AIF_RXDAT_pin, ptr @lochnagar2_ADAT_AIF_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 126, ptr @lochnagar2_ADAT_AIF_TXDAT_pin, ptr @lochnagar2_ADAT_AIF_TXDAT_pin }, %struct.pinctrl_pin_desc { i32 127, ptr @lochnagar2_SOUNDCARD_AIF_BCLK_pin, ptr @lochnagar2_SOUNDCARD_AIF_BCLK_pin }, %struct.pinctrl_pin_desc { i32 128, ptr @lochnagar2_SOUNDCARD_AIF_LRCLK_pin, ptr @lochnagar2_SOUNDCARD_AIF_LRCLK_pin }, %struct.pinctrl_pin_desc { i32 129, ptr @lochnagar2_SOUNDCARD_AIF_RXDAT_pin, ptr @lochnagar2_SOUNDCARD_AIF_RXDAT_pin }, %struct.pinctrl_pin_desc { i32 130, ptr @lochnagar2_SOUNDCARD_AIF_TXDAT_pin, ptr @lochnagar2_SOUNDCARD_AIF_TXDAT_pin }], [412 x i8] zeroinitializer }, align 32
@lochnagar2_groups = internal constant { [121 x %struct.lochnagar_group], [588 x i8] } { [121 x %struct.lochnagar_group] [%struct.lochnagar_group { ptr @lochnagar2_FPGA_GPIO1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 72), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 72) }, %struct.lochnagar_group { ptr @lochnagar2_FPGA_GPIO2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 84), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 84) }, %struct.lochnagar_group { ptr @lochnagar2_FPGA_GPIO3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 96), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 96) }, %struct.lochnagar_group { ptr @lochnagar2_FPGA_GPIO4_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 108), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 108) }, %struct.lochnagar_group { ptr @lochnagar2_FPGA_GPIO5_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 120), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 120) }, %struct.lochnagar_group { ptr @lochnagar2_FPGA_GPIO6_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 132), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 132) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 144), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 144) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 156), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 156) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 168), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 168) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO4_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 180), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 180) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO5_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 192), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 192) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO6_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 204), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 204) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO7_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 216), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 216) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_GPIO8_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 228), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 228) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 240), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 240) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 252), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 252) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 264), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 264) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO4_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 276), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 276) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO5_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 288), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 288) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO6_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 300), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 300) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_GPIO20_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1320), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1320) }, %struct.lochnagar_group { ptr @lochnagar2_GF_GPIO1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1296), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1296) }, %struct.lochnagar_group { ptr @lochnagar2_GF_GPIO2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 312), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 312) }, %struct.lochnagar_group { ptr @lochnagar2_GF_GPIO5_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1308), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1308) }, %struct.lochnagar_group { ptr @lochnagar2_GF_GPIO3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 324), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 324) }, %struct.lochnagar_group { ptr @lochnagar2_GF_GPIO7_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 336), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 336) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_UART1_RX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 876), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 876) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_UART1_TX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 888), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 888) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_UART2_RX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 900), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 900) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_UART2_TX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 912), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 912) }, %struct.lochnagar_group { ptr @lochnagar2_GF_UART2_RX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 924), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 924) }, %struct.lochnagar_group { ptr @lochnagar2_GF_UART2_TX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 936), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 936) }, %struct.lochnagar_group { ptr @lochnagar2_USB_UART_RX_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 948), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 948) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_PDMCLK1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 960), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 960) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_PDMDAT1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 972), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 972) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_PDMCLK2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 984), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 984) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_PDMDAT2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 996), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 996) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICCLK1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1008), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1008) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICDAT1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1020), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1020) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICCLK2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1032), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1032) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICDAT2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1044), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1044) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICCLK3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1056), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1056) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICDAT3_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1068), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1068) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICCLK4_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1080), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1080) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_DMICDAT4_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1092), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1092) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_DMICCLK1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1104), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1104) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_DMICDAT1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1116), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1116) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_DMICCLK2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1128), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1128) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_DMICDAT2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1140), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1140) }, %struct.lochnagar_group { ptr @lochnagar2_I2C2_SCL_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1152), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1152) }, %struct.lochnagar_group { ptr @lochnagar2_I2C2_SDA_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1164), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1164) }, %struct.lochnagar_group { ptr @lochnagar2_I2C3_SCL_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1176), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1176) }, %struct.lochnagar_group { ptr @lochnagar2_I2C3_SDA_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1188), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1188) }, %struct.lochnagar_group { ptr @lochnagar2_I2C4_SCL_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1200), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1200) }, %struct.lochnagar_group { ptr @lochnagar2_I2C4_SDA_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1212), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1212) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_STANDBY_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1224), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1224) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_MCLK1_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1236), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1236) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_MCLK2_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1248), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1248) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_CLKIN_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1260), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1260) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA1_MCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1272), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1272) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA2_MCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1284), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 1284) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_CDC_AIF1_aif, i64 16), i32 4, ptr @lochnagar2_CDC_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF1_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 348), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 348) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF1_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 372), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 372) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF1_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 360), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 360) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF1_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 384), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 384) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_CDC_AIF2_aif, i64 16), i32 4, ptr @lochnagar2_CDC_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF2_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 396), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 396) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF2_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 420), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 420) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF2_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 408), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 408) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF2_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 432), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 432) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF3_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_CDC_AIF3_aif, i64 16), i32 4, ptr @lochnagar2_CDC_AIF3_aif }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF3_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 444), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 444) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF3_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 468), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 468) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF3_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 456), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 456) }, %struct.lochnagar_group { ptr @lochnagar2_CDC_AIF3_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 480), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 480) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_DSP_AIF1_aif, i64 16), i32 4, ptr @lochnagar2_DSP_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF1_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 492), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 492) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF1_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 516), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 516) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF1_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 504), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 504) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF1_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 528), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 528) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_DSP_AIF2_aif, i64 16), i32 4, ptr @lochnagar2_DSP_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF2_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 540), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 540) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF2_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 564), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 564) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF2_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 552), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 552) }, %struct.lochnagar_group { ptr @lochnagar2_DSP_AIF2_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 576), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 576) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_PSIA1_aif, i64 16), i32 4, ptr @lochnagar2_PSIA1_aif }, %struct.lochnagar_group { ptr @lochnagar2_PSIA1_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 588), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 588) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA1_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 612), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 612) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA1_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 600), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 600) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA1_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 624), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 624) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_PSIA2_aif, i64 16), i32 4, ptr @lochnagar2_PSIA2_aif }, %struct.lochnagar_group { ptr @lochnagar2_PSIA2_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 636), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 636) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA2_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 660), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 660) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA2_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 648), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 648) }, %struct.lochnagar_group { ptr @lochnagar2_PSIA2_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 672), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 672) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_GF_AIF1_aif, i64 16), i32 4, ptr @lochnagar2_GF_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF1_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 780), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 780) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF1_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 804), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 804) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF1_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 792), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 792) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF1_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 816), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 816) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_GF_AIF2_aif, i64 16), i32 4, ptr @lochnagar2_GF_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF2_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 828), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 828) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF2_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 852), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 852) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF2_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 840), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 840) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF2_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 864), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 864) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF3_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_GF_AIF3_aif, i64 16), i32 4, ptr @lochnagar2_GF_AIF3_aif }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF3_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 684), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 684) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF3_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 708), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 708) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF3_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 696), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 696) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF3_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 720), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 720) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF4_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_GF_AIF4_aif, i64 16), i32 4, ptr @lochnagar2_GF_AIF4_aif }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF4_BCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 732), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 732) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF4_LRCLK_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 756), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 756) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF4_RXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 744), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 744) }, %struct.lochnagar_group { ptr @lochnagar2_GF_AIF4_TXDAT_pin, i32 0, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 768), i32 1, ptr getelementptr (i8, ptr @lochnagar2_pins, i64 768) }, %struct.lochnagar_group { ptr @lochnagar2_SPDIF_AIF_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_SPDIF_AIF_aif, i64 16), i32 4, ptr @lochnagar2_SPDIF_AIF_aif }, %struct.lochnagar_group { ptr @lochnagar2_USB_AIF1_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_USB_AIF1_aif, i64 16), i32 4, ptr @lochnagar2_USB_AIF1_aif }, %struct.lochnagar_group { ptr @lochnagar2_USB_AIF2_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_USB_AIF2_aif, i64 16), i32 4, ptr @lochnagar2_USB_AIF2_aif }, %struct.lochnagar_group { ptr @lochnagar2_ADAT_AIF_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_ADAT_AIF_aif, i64 16), i32 4, ptr @lochnagar2_ADAT_AIF_aif }, %struct.lochnagar_group { ptr @lochnagar2_SOUNDCARD_AIF_aif, i32 1, ptr getelementptr (i8, ptr @lochnagar2_SOUNDCARD_AIF_aif, i64 16), i32 4, ptr @lochnagar2_SOUNDCARD_AIF_aif }], [588 x i8] zeroinitializer }, align 32
@lochnagar_pin_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown Lochnagar type: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lochnagar_pin_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pinctrl/cirrus/pinctrl-lochnagar.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lochnagar_pin_probe._entry_ptr = internal global ptr @lochnagar_pin_probe._entry, section ".printk_index", align 4
@lochnagar_pin_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register pinctrl: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lochnagar_pin_probe._entry_ptr.8 = internal global ptr @lochnagar_pin_probe._entry.6, section ".printk_index", align 4
@lochnagar_pin_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lochnagar_pin_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lochnagar_pin_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register gpiochip: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lochnagar_pin_probe._entry_ptr.11 = internal global ptr @lochnagar_pin_probe._entry.9, section ".printk_index", align 4
@lochnagar_pin_group_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @lochnagar_get_groups_count, ptr @lochnagar_get_group_name, ptr @lochnagar_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@lochnagar_pin_mux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @lochnagar_get_funcs_count, ptr @lochnagar_get_func_name, ptr @lochnagar_get_func_groups, ptr @lochnagar_set_mux, ptr @lochnagar_gpio_request, ptr null, ptr @lochnagar_gpio_set_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@lochnagar_pin_conf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr null, ptr @lochnagar_conf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lochnagar_set_mux.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 -27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl_lochnagar\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lochnagar_set_mux\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Set group %s to %s\0A\00", [44 x i8] zeroinitializer }, align 32
@lochnagar_set_mux.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 -25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set pin %s to %s\0A\00", [46 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 874, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set %s source: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lochnagar_aif_set_mux\00", [42 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_mux._entry_ptr = internal global ptr @lochnagar_aif_set_mux._entry, section ".printk_index", align 4
@lochnagar_aif_set_mux._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 882, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set %s enable: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_mux._entry_ptr.20 = internal global ptr @lochnagar_aif_set_mux._entry.18, section ".printk_index", align 4
@lochnagar_aif_set_mux.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.3, ptr @.str.21, i8 0, i8 -33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set pin %s to AIF\0A\00", [45 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_mux._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set %s to AIF: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_mux._entry_ptr.24 = internal global ptr @lochnagar_aif_set_mux._entry.22, section ".printk_index", align 4
@lochnagar_pin_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 844, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get channel for %s: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lochnagar_pin_set_mux\00", [42 x i8] zeroinitializer }, align 32
@lochnagar_pin_set_mux._entry_ptr = internal global ptr @lochnagar_pin_set_mux._entry, section ".printk_index", align 4
@lochnagar_pin_set_mux.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Set pin %s to 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@lochnagar_pin_set_mux._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set %s mux: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lochnagar_pin_set_mux._entry_ptr.30 = internal global ptr @lochnagar_pin_set_mux._entry.28, section ".printk_index", align 4
@lochnagar2_get_gpio_chan.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lochnagar2_get_gpio_chan\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set channel %d to 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@lochnagar_gpio_request.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lochnagar_gpio_request\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Requesting GPIO %s\0A\00", [44 x i8] zeroinitializer }, align 32
@lochnagar_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get low channel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@lochnagar_gpio_request._entry_ptr = internal global ptr @lochnagar_gpio_request._entry, section ".printk_index", align 4
@lochnagar_gpio_request._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get high channel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lochnagar_gpio_request._entry_ptr.38 = internal global ptr @lochnagar_gpio_request._entry.36, section ".printk_index", align 4
@lochnagar_aif_set_master.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lochnagar_aif_set_master\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set AIF %s to %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.3, i32 1006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set %s mode: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lochnagar_aif_set_master._entry_ptr = internal global ptr @lochnagar_aif_set_master._entry, section ".printk_index", align 4
@lochnagar_gpio_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lochnagar_gpio_set\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set GPIO %s to %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@lochnagar_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.3, i32 1091, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set %s value: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lochnagar_gpio_set._entry_ptr = internal global ptr @lochnagar_gpio_set._entry, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp-gpio1\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp-gpio2\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp-gpio3\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio1\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio2\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio3\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio4\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio5\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio6\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio7\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec-gpio8\00", [20 x i8] zeroinitializer }, align 32
@lochnagar1_GF_GPIO2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio2\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 38, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_GPIO3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio3\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 39, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_GPIO7_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio7\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 40, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_SPDIF_AIF_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"spdif-aif\00\00\00\00\00\00\00", [4 x i32] [i32 36, i32 37, i32 39, i32 38], i16 25, i16 255, i16 15, i16 8, i16 48 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"psia1\00\00\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 28, i32 29, i32 31, i32 30], i16 23, i16 255, i16 22, i16 1, i16 6 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"psia2\00\00\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 32, i32 33, i32 35, i32 34], i16 24, i16 255, i16 22, i16 16, i16 96 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"codec-aif1\00\00\00\00\00\00", [4 x i32] [i32 8, i32 9, i32 11, i32 10], i16 8, i16 255, i16 13, i16 1, i16 6 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"codec-aif2\00\00\00\00\00\00", [4 x i32] [i32 12, i32 13, i32 15, i32 14], i16 9, i16 255, i16 13, i16 16, i16 96 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF3_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"codec-aif3\00\00\00\00\00\00", [4 x i32] [i32 16, i32 17, i32 19, i32 18], i16 10, i16 255, i16 14, i16 16, i16 96 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"dsp-aif1\00\00\00\00\00\00\00\00", [4 x i32] [i32 20, i32 21, i32 23, i32 22], i16 16, i16 255, i16 19, i16 1, i16 6 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"dsp-aif2\00\00\00\00\00\00\00\00", [4 x i32] [i32 24, i32 25, i32 27, i32 26], i16 17, i16 255, i16 19, i16 16, i16 96 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF3_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif3\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 40, i32 42, i32 43, i32 41], i16 28, i16 255, i16 20, i16 8, i16 48 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF4_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif4\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 44, i32 46, i32 47, i32 45], i16 29, i16 255, i16 21, i16 8, i16 48 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif1\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 48, i32 50, i32 51, i32 49], i16 31, i16 255, i16 20, i16 1, i16 6 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif2\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 52, i32 54, i32 55, i32 53], i16 32, i16 255, i16 21, i16 1, i16 6 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_RESET_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-reset\00\00\00\00\00\00\00\00\00", i32 0, i32 41, i32 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_RESET_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-reset\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 41, i32 1, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_CIF1MODE_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-cif1mode\00\00\00\00\00\00", i32 0, i32 70, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_LED1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"led1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 42, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_LED2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"led2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 43, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-bclk\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-lrclk\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-rxdat\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-txdat\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-bclk\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-lrclk\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-rxdat\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-txdat\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF3_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-bclk\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF3_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-lrclk\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF3_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-rxdat\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_CDC_AIF3_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-txdat\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-bclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-lrclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-rxdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-txdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-bclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-lrclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-rxdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_DSP_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-txdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-bclk\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-lrclk\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-rxdat\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-txdat\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-bclk\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-lrclk\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-rxdat\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_PSIA2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-txdat\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_SPDIF_AIF_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-bclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_SPDIF_AIF_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-lrclk\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_SPDIF_AIF_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-rxdat\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_SPDIF_AIF_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-txdat\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF3_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-bclk\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF3_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-rxdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF3_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-lrclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF3_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-txdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF4_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-bclk\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF4_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-rxdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF4_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-lrclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF4_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-txdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-bclk\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-rxdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-lrclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-txdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-bclk\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-rxdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-lrclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar1_GF_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-txdat\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aif\00", [28 x i8] zeroinitializer }, align 32
@lochnagar2_FPGA_GPIO1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"fpga-gpio1\00\00\00\00\00\00\00\00\00\00", i32 1, i32 49, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_FPGA_GPIO2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"fpga-gpio2\00\00\00\00\00\00\00\00\00\00", i32 1, i32 50, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_FPGA_GPIO3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"fpga-gpio3\00\00\00\00\00\00\00\00\00\00", i32 1, i32 51, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_FPGA_GPIO4_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"fpga-gpio4\00\00\00\00\00\00\00\00\00\00", i32 1, i32 52, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_FPGA_GPIO5_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"fpga-gpio5\00\00\00\00\00\00\00\00\00\00", i32 1, i32 53, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_FPGA_GPIO6_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"fpga-gpio6\00\00\00\00\00\00\00\00\00\00", i32 1, i32 54, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio1\00\00\00\00\00\00\00\00\00", i32 1, i32 55, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio2\00\00\00\00\00\00\00\00\00", i32 1, i32 56, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio3\00\00\00\00\00\00\00\00\00", i32 1, i32 57, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO4_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio4\00\00\00\00\00\00\00\00\00", i32 1, i32 58, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO5_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio5\00\00\00\00\00\00\00\00\00", i32 1, i32 59, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO6_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio6\00\00\00\00\00\00\00\00\00", i32 1, i32 60, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO7_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio7\00\00\00\00\00\00\00\00\00", i32 1, i32 61, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_GPIO8_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-gpio8\00\00\00\00\00\00\00\00\00", i32 1, i32 62, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio1\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 63, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio2\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 64, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio3\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 65, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO4_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio4\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 66, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO5_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio5\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 67, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO6_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio6\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 68, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_GPIO2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio2\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 69, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_GPIO3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio3\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 70, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_GPIO7_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio7\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 71, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_GPIO1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio1\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 152, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_GPIO5_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-gpio5\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 153, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_GPIO20_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-gpio20\00\00\00\00\00\00\00\00\00\00", i32 1, i32 154, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec-clkout\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsp-clkout\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pmic-32k\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spdif-clkout\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-12m288\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-11m2986\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-24m576\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk-22m5792\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xmos-mclk\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gf-clkout1\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gf-mclk1\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gf-mclk3\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gf-mclk2\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gf-clkout2\00", [21 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_MCLK1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-mclk1\00\00\00\00\00\00\00\00\00", i32 1, i32 147, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_MCLK2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-mclk2\00\00\00\00\00\00\00\00\00", i32 1, i32 148, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_CLKIN_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-clkin\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 149, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA1_MCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-mclk\00\00\00\00\00\00\00\00\00\00", i32 1, i32 150, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA2_MCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-mclk\00\00\00\00\00\00\00\00\00\00", i32 1, i32 151, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif-mclk\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"codec-irq\00", [22 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_RESET_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-reset\00\00\00\00\00\00\00\00\00", i32 0, i32 223, i32 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_RESET_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-reset\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 223, i32 1, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsp-irq\00", [24 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_STANDBY_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-standby\00\00\00\00\00\00\00\00\00", i32 1, i32 146, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_PDMCLK1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-pdmclk1\00\00\00\00\00\00\00", i32 1, i32 124, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_PDMDAT1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-pdmdat1\00\00\00\00\00\00\00", i32 1, i32 125, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_PDMCLK2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-pdmclk2\00\00\00\00\00\00\00", i32 1, i32 126, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_PDMDAT2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-pdmdat2\00\00\00\00\00\00\00", i32 1, i32 127, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICCLK1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicclk1\00\00\00\00\00\00", i32 1, i32 128, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICDAT1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicdat1\00\00\00\00\00\00", i32 1, i32 129, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICCLK2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicclk2\00\00\00\00\00\00", i32 1, i32 130, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICDAT2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicdat2\00\00\00\00\00\00", i32 1, i32 131, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICCLK3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicclk3\00\00\00\00\00\00", i32 1, i32 132, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICDAT3_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicdat3\00\00\00\00\00\00", i32 1, i32 133, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICCLK4_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicclk4\00\00\00\00\00\00", i32 1, i32 134, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_DMICDAT4_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-dmicdat4\00\00\00\00\00\00", i32 1, i32 135, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_DMICCLK1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-dmicclk1\00\00\00\00\00\00\00\00", i32 1, i32 136, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_DMICDAT1_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-dmicdat1\00\00\00\00\00\00\00\00", i32 1, i32 137, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_DMICCLK2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-dmicclk2\00\00\00\00\00\00\00\00", i32 1, i32 138, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_DMICDAT2_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-dmicdat2\00\00\00\00\00\00\00\00", i32 1, i32 139, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_UART1_RX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-uart1-rx\00\00\00\00\00\00\00\00", i32 1, i32 116, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_UART1_TX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-uart1-tx\00\00\00\00\00\00\00\00", i32 1, i32 117, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_UART2_RX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-uart2-rx\00\00\00\00\00\00\00\00", i32 1, i32 118, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_UART2_TX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-uart2-tx\00\00\00\00\00\00\00\00", i32 1, i32 119, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_UART2_RX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-uart2-rx\00\00\00\00\00\00\00\00\00", i32 1, i32 120, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_UART2_TX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-uart2-tx\00\00\00\00\00\00\00\00\00", i32 1, i32 121, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_UART_RX_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-uart-rx\00\00\00\00\00\00\00\00\00", i32 1, i32 122, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-uart-tx\00", [20 x i8] zeroinitializer }, align 32
@lochnagar2_I2C2_SCL_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"i2c2-scl\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 140, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_I2C2_SDA_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"i2c2-sda\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 141, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_I2C3_SCL_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"i2c3-scl\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 142, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_I2C3_SDA_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"i2c3-sda\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 143, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_I2C4_SCL_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"i2c4-scl\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 144, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_I2C4_SDA_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"i2c4-sda\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 145, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_AIF_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"spdif-aif\00\00\00\00\00\00\00", [4 x i32] [i32 111, i32 112, i32 114, i32 113], i16 24, i16 255, i16 24, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"psia1\00\00\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 49, i32 51, i32 52, i32 50], i16 18, i16 255, i16 18, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-bclk\00\00\00\00\00\00\00\00\00\00", i32 1, i32 92, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-lrclk\00\00\00\00\00\00\00\00\00", i32 1, i32 94, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-rxdat\00\00\00\00\00\00\00\00\00", i32 1, i32 93, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia1-txdat\00\00\00\00\00\00\00\00\00", i32 1, i32 95, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"psia2\00\00\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 53, i32 55, i32 56, i32 54], i16 19, i16 255, i16 19, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-bclk\00\00\00\00\00\00\00\00\00\00", i32 1, i32 96, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-lrclk\00\00\00\00\00\00\00\00\00", i32 1, i32 98, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-rxdat\00\00\00\00\00\00\00\00\00", i32 1, i32 97, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_PSIA2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"psia2-txdat\00\00\00\00\00\00\00\00\00", i32 1, i32 99, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"codec-aif1\00\00\00\00\00\00", [4 x i32] [i32 29, i32 31, i32 32, i32 30], i16 13, i16 255, i16 13, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-bclk\00\00\00\00\00", i32 1, i32 72, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-lrclk\00\00\00\00", i32 1, i32 74, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-rxdat\00\00\00\00", i32 1, i32 73, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif1-txdat\00\00\00\00", i32 1, i32 75, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"codec-aif2\00\00\00\00\00\00", [4 x i32] [i32 33, i32 35, i32 36, i32 34], i16 14, i16 255, i16 14, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-bclk\00\00\00\00\00", i32 1, i32 76, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-lrclk\00\00\00\00", i32 1, i32 78, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-rxdat\00\00\00\00", i32 1, i32 77, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif2-txdat\00\00\00\00", i32 1, i32 79, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF3_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"codec-aif3\00\00\00\00\00\00", [4 x i32] [i32 37, i32 39, i32 40, i32 38], i16 15, i16 255, i16 15, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF3_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-bclk\00\00\00\00\00", i32 1, i32 80, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF3_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-lrclk\00\00\00\00", i32 1, i32 82, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF3_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-rxdat\00\00\00\00", i32 1, i32 81, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_AIF3_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-aif3-txdat\00\00\00\00", i32 1, i32 83, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"dsp-aif1\00\00\00\00\00\00\00\00", [4 x i32] [i32 41, i32 43, i32 44, i32 42], i16 16, i16 255, i16 16, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-bclk\00\00\00\00\00\00\00", i32 1, i32 84, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-lrclk\00\00\00\00\00\00", i32 1, i32 86, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-rxdat\00\00\00\00\00\00", i32 1, i32 85, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif1-txdat\00\00\00\00\00\00", i32 1, i32 87, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"dsp-aif2\00\00\00\00\00\00\00\00", [4 x i32] [i32 45, i32 47, i32 48, i32 46], i16 17, i16 255, i16 17, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-bclk\00\00\00\00\00\00\00", i32 1, i32 88, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-lrclk\00\00\00\00\00\00", i32 1, i32 90, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-rxdat\00\00\00\00\00\00", i32 1, i32 89, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_DSP_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"dsp-aif2-txdat\00\00\00\00\00\00", i32 1, i32 91, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF3_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif3\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 57, i32 59, i32 60, i32 58], i16 20, i16 255, i16 20, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF3_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-bclk\00\00\00\00\00\00\00\00", i32 1, i32 100, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF3_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-lrclk\00\00\00\00\00\00\00", i32 1, i32 102, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF3_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-rxdat\00\00\00\00\00\00\00", i32 1, i32 101, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF3_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif3-txdat\00\00\00\00\00\00\00", i32 1, i32 103, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF4_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif4\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 61, i32 63, i32 64, i32 62], i16 21, i16 255, i16 21, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF4_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-bclk\00\00\00\00\00\00\00\00", i32 1, i32 104, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF4_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-lrclk\00\00\00\00\00\00\00", i32 1, i32 106, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF4_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-rxdat\00\00\00\00\00\00\00", i32 1, i32 105, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF4_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif4-txdat\00\00\00\00\00\00\00", i32 1, i32 107, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif1\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 65, i32 67, i32 68, i32 66], i16 22, i16 255, i16 22, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-bclk\00\00\00\00\00\00\00\00", i32 1, i32 108, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-lrclk\00\00\00\00\00\00\00", i32 1, i32 110, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-rxdat\00\00\00\00\00\00\00", i32 1, i32 109, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif1-txdat\00\00\00\00\00\00\00", i32 1, i32 111, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"gf-aif2\00\00\00\00\00\00\00\00\00", [4 x i32] [i32 69, i32 71, i32 72, i32 70], i16 23, i16 255, i16 23, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-bclk\00\00\00\00\00\00\00\00", i32 1, i32 112, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-lrclk\00\00\00\00\00\00\00", i32 1, i32 114, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-rxdat\00\00\00\00\00\00\00", i32 1, i32 113, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_GF_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"gf-aif2-txdat\00\00\00\00\00\00\00", i32 1, i32 115, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF1_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"usb-aif1\00\00\00\00\00\00\00\00", [4 x i32] [i32 115, i32 116, i32 118, i32 117], i16 25, i16 255, i16 25, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF2_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"usb-aif2\00\00\00\00\00\00\00\00", [4 x i32] [i32 119, i32 120, i32 122, i32 121], i16 26, i16 255, i16 26, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_ADAT_AIF_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"adat-aif\00\00\00\00\00\00\00\00", [4 x i32] [i32 123, i32 124, i32 126, i32 125], i16 27, i16 255, i16 27, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_SOUNDCARD_AIF_aif = internal constant { %struct.lochnagar_aif, [52 x i8] } { %struct.lochnagar_aif { [16 x i8] c"soundcard-aif\00\00\00", [4 x i32] [i32 127, i32 128, i32 130, i32 129], i16 384, i16 255, i16 384, i16 -32768, i16 24576 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_CIF1MODE_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-cif1mode\00\00\00\00\00\00", i32 0, i32 240, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_CDC_LDOENA_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"codec-ldoena\00\00\00\00\00\00\00\00", i32 0, i32 278, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_HWMODE_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-hwmode\00\00\00\00\00\00\00\00", i32 0, i32 254, i32 3, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_RESET_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-reset\00\00\00\00\00\00\00\00\00", i32 0, i32 254, i32 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_AIF_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-bclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_AIF_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-lrclk\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_AIF_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-rxdat\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SPDIF_AIF_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"spdif-aif-txdat\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF1_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif1-bclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF1_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif1-lrclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF1_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif1-rxdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF1_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif1-txdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF2_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif2-bclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF2_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif2-lrclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF2_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif2-rxdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_USB_AIF2_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"usb-aif2-txdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_ADAT_AIF_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"adat-aif-bclk\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_ADAT_AIF_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"adat-aif-lrclk\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_ADAT_AIF_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"adat-aif-rxdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_ADAT_AIF_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"adat-aif-txdat\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SOUNDCARD_AIF_BCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"soundcard-aif-bclk\00\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SOUNDCARD_AIF_LRCLK_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"soundcard-aif-lrclk\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SOUNDCARD_AIF_RXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"soundcard-aif-rxdat\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lochnagar2_SOUNDCARD_AIF_TXDAT_pin = internal constant { %struct.lochnagar_pin, [60 x i8] } { %struct.lochnagar_pin { [20 x i8] c"soundcard-aif-txdat\00", i32 2, i32 0, i32 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 18]
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"lochnagar_pin_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1220, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1222, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"lochnagar_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1214, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"lochnagar_pin_desc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1049, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"lochnagar1_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 473, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"lochnagar1_pins\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 305, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"lochnagar1_groups\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 643, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"lochnagar2_funcs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 503, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"lochnagar2_pins\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 317, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"lochnagar2_groups\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 656, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1187, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1201, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1205, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1207, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"lochnagar_pin_group_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 753, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"lochnagar_pin_mux_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 973, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"lochnagar_pin_conf_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1045, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 917, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 924, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 873, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 881, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 892, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 898, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 843, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 852, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 856, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 823, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 941, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 948, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 954, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1000, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1005, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1068, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 1090, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 474, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 475, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 476, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 477, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 478, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 479, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 480, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 481, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 482, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 483, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 484, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [24 x i8] c"lochnagar1_GF_GPIO2_pin\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 203, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant [24 x i8] c"lochnagar1_GF_GPIO3_pin\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 204, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant [24 x i8] c"lochnagar1_GF_GPIO7_pin\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 205, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant [25 x i8] c"lochnagar1_SPDIF_AIF_aif\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 415, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant [21 x i8] c"lochnagar1_PSIA1_aif\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 409, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"lochnagar1_PSIA2_aif\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 410, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [24 x i8] c"lochnagar1_CDC_AIF1_aif\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 404, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [24 x i8] c"lochnagar1_CDC_AIF2_aif\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 405, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant [24 x i8] c"lochnagar1_CDC_AIF3_aif\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 406, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant [24 x i8] c"lochnagar1_DSP_AIF1_aif\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 407, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant [24 x i8] c"lochnagar1_DSP_AIF2_aif\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 408, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant [23 x i8] c"lochnagar1_GF_AIF3_aif\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 413, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant [23 x i8] c"lochnagar1_GF_AIF4_aif\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 414, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [23 x i8] c"lochnagar1_GF_AIF1_aif\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 411, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [23 x i8] c"lochnagar1_GF_AIF2_aif\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 412, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant [25 x i8] c"lochnagar1_CDC_RESET_pin\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 200, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [25 x i8] c"lochnagar1_DSP_RESET_pin\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 201, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant [28 x i8] c"lochnagar1_CDC_CIF1MODE_pin\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 202, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c"lochnagar1_LED1_pin\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 206, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c"lochnagar1_LED2_pin\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 207, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant [29 x i8] c"lochnagar1_CDC_AIF1_BCLK_pin\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 208, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"lochnagar1_CDC_AIF2_BCLK_pin\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 209, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant [29 x i8] c"lochnagar1_CDC_AIF3_BCLK_pin\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF3_LRCLK_pin\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF3_RXDAT_pin\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [30 x i8] c"lochnagar1_CDC_AIF3_TXDAT_pin\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 210, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant [29 x i8] c"lochnagar1_DSP_AIF1_BCLK_pin\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [30 x i8] c"lochnagar1_DSP_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [30 x i8] c"lochnagar1_DSP_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [30 x i8] c"lochnagar1_DSP_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 211, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant [29 x i8] c"lochnagar1_DSP_AIF2_BCLK_pin\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [30 x i8] c"lochnagar1_DSP_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [30 x i8] c"lochnagar1_DSP_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [30 x i8] c"lochnagar1_DSP_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 212, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant [26 x i8] c"lochnagar1_PSIA1_BCLK_pin\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [27 x i8] c"lochnagar1_PSIA1_LRCLK_pin\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [27 x i8] c"lochnagar1_PSIA1_RXDAT_pin\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [27 x i8] c"lochnagar1_PSIA1_TXDAT_pin\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 213, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant [26 x i8] c"lochnagar1_PSIA2_BCLK_pin\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [27 x i8] c"lochnagar1_PSIA2_LRCLK_pin\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [27 x i8] c"lochnagar1_PSIA2_RXDAT_pin\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [27 x i8] c"lochnagar1_PSIA2_TXDAT_pin\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 214, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant [30 x i8] c"lochnagar1_SPDIF_AIF_BCLK_pin\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [31 x i8] c"lochnagar1_SPDIF_AIF_LRCLK_pin\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [31 x i8] c"lochnagar1_SPDIF_AIF_RXDAT_pin\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [31 x i8] c"lochnagar1_SPDIF_AIF_TXDAT_pin\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 215, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant [28 x i8] c"lochnagar1_GF_AIF3_BCLK_pin\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF3_RXDAT_pin\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF3_LRCLK_pin\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF3_TXDAT_pin\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 218, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant [28 x i8] c"lochnagar1_GF_AIF4_BCLK_pin\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF4_RXDAT_pin\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF4_LRCLK_pin\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF4_TXDAT_pin\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 219, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [28 x i8] c"lochnagar1_GF_AIF1_BCLK_pin\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 216, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant [28 x i8] c"lochnagar1_GF_AIF2_BCLK_pin\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [29 x i8] c"lochnagar1_GF_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 217, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 504, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [26 x i8] c"lochnagar2_FPGA_GPIO1_pin\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 227, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [26 x i8] c"lochnagar2_FPGA_GPIO2_pin\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 228, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant [26 x i8] c"lochnagar2_FPGA_GPIO3_pin\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 229, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant [26 x i8] c"lochnagar2_FPGA_GPIO4_pin\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 230, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant [26 x i8] c"lochnagar2_FPGA_GPIO5_pin\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 231, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [26 x i8] c"lochnagar2_FPGA_GPIO6_pin\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 232, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO1_pin\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 233, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO2_pin\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 234, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO3_pin\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 235, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO4_pin\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 236, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO5_pin\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 237, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO6_pin\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 238, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO7_pin\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 239, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_GPIO8_pin\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 240, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_GPIO1_pin\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 241, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_GPIO2_pin\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 242, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_GPIO3_pin\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 243, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_GPIO4_pin\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 244, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_GPIO5_pin\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 245, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_GPIO6_pin\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 246, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant [24 x i8] c"lochnagar2_GF_GPIO2_pin\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 247, i32 1 }
@___asan_gen_.574 = private unnamed_addr constant [24 x i8] c"lochnagar2_GF_GPIO3_pin\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 248, i32 1 }
@___asan_gen_.577 = private unnamed_addr constant [24 x i8] c"lochnagar2_GF_GPIO7_pin\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 249, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant [24 x i8] c"lochnagar2_GF_GPIO1_pin\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 285, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant [24 x i8] c"lochnagar2_GF_GPIO5_pin\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 286, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant [26 x i8] c"lochnagar2_DSP_GPIO20_pin\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 287, i32 1 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 531, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 532, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 533, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 534, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 535, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 536, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 537, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 538, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 539, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 540, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 541, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 542, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 543, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 544, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_MCLK1_pin\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 280, i32 1 }
@___asan_gen_.634 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_MCLK2_pin\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 281, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_CLKIN_pin\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 282, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant [26 x i8] c"lochnagar2_PSIA1_MCLK_pin\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 283, i32 1 }
@___asan_gen_.643 = private unnamed_addr constant [26 x i8] c"lochnagar2_PSIA2_MCLK_pin\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 284, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 550, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 551, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [25 x i8] c"lochnagar2_CDC_RESET_pin\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 221, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant [25 x i8] c"lochnagar2_DSP_RESET_pin\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 222, i32 1 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 554, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [27 x i8] c"lochnagar2_DSP_STANDBY_pin\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 279, i32 1 }
@___asan_gen_.664 = private unnamed_addr constant [27 x i8] c"lochnagar2_CDC_PDMCLK1_pin\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 257, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant [27 x i8] c"lochnagar2_CDC_PDMDAT1_pin\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 258, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant [27 x i8] c"lochnagar2_CDC_PDMCLK2_pin\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 259, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant [27 x i8] c"lochnagar2_CDC_PDMDAT2_pin\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 260, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICCLK1_pin\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 261, i32 1 }
@___asan_gen_.679 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICDAT1_pin\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 262, i32 1 }
@___asan_gen_.682 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICCLK2_pin\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 263, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICDAT2_pin\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 264, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICCLK3_pin\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 265, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICDAT3_pin\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 266, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICCLK4_pin\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 267, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_DMICDAT4_pin\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 268, i32 1 }
@___asan_gen_.700 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_DMICCLK1_pin\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 269, i32 1 }
@___asan_gen_.703 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_DMICDAT1_pin\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 270, i32 1 }
@___asan_gen_.706 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_DMICCLK2_pin\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 271, i32 1 }
@___asan_gen_.709 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_DMICDAT2_pin\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 272, i32 1 }
@___asan_gen_.712 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_UART1_RX_pin\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 250, i32 1 }
@___asan_gen_.715 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_UART1_TX_pin\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 251, i32 1 }
@___asan_gen_.718 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_UART2_RX_pin\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 252, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant [28 x i8] c"lochnagar2_DSP_UART2_TX_pin\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 253, i32 1 }
@___asan_gen_.724 = private unnamed_addr constant [27 x i8] c"lochnagar2_GF_UART2_RX_pin\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 254, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant [27 x i8] c"lochnagar2_GF_UART2_TX_pin\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 255, i32 1 }
@___asan_gen_.730 = private unnamed_addr constant [27 x i8] c"lochnagar2_USB_UART_RX_pin\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 256, i32 1 }
@___asan_gen_.733 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 579, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [24 x i8] c"lochnagar2_I2C2_SCL_pin\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 273, i32 1 }
@___asan_gen_.739 = private unnamed_addr constant [24 x i8] c"lochnagar2_I2C2_SDA_pin\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 274, i32 1 }
@___asan_gen_.742 = private unnamed_addr constant [24 x i8] c"lochnagar2_I2C3_SCL_pin\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 275, i32 1 }
@___asan_gen_.745 = private unnamed_addr constant [24 x i8] c"lochnagar2_I2C3_SDA_pin\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 276, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant [24 x i8] c"lochnagar2_I2C4_SCL_pin\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 277, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant [24 x i8] c"lochnagar2_I2C4_SDA_pin\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 278, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant [25 x i8] c"lochnagar2_SPDIF_AIF_aif\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 428, i32 1 }
@___asan_gen_.757 = private unnamed_addr constant [21 x i8] c"lochnagar2_PSIA1_aif\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 422, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant [26 x i8] c"lochnagar2_PSIA1_BCLK_pin\00", align 1
@___asan_gen_.763 = private unnamed_addr constant [27 x i8] c"lochnagar2_PSIA1_LRCLK_pin\00", align 1
@___asan_gen_.766 = private unnamed_addr constant [27 x i8] c"lochnagar2_PSIA1_RXDAT_pin\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [27 x i8] c"lochnagar2_PSIA1_TXDAT_pin\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 293, i32 1 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c"lochnagar2_PSIA2_aif\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 423, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant [26 x i8] c"lochnagar2_PSIA2_BCLK_pin\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [27 x i8] c"lochnagar2_PSIA2_LRCLK_pin\00", align 1
@___asan_gen_.781 = private unnamed_addr constant [27 x i8] c"lochnagar2_PSIA2_RXDAT_pin\00", align 1
@___asan_gen_.784 = private unnamed_addr constant [27 x i8] c"lochnagar2_PSIA2_TXDAT_pin\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 294, i32 1 }
@___asan_gen_.787 = private unnamed_addr constant [24 x i8] c"lochnagar2_CDC_AIF1_aif\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 417, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant [29 x i8] c"lochnagar2_CDC_AIF1_BCLK_pin\00", align 1
@___asan_gen_.793 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.799 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 288, i32 1 }
@___asan_gen_.802 = private unnamed_addr constant [24 x i8] c"lochnagar2_CDC_AIF2_aif\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 418, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant [29 x i8] c"lochnagar2_CDC_AIF2_BCLK_pin\00", align 1
@___asan_gen_.808 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.811 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.814 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 289, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant [24 x i8] c"lochnagar2_CDC_AIF3_aif\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 419, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant [29 x i8] c"lochnagar2_CDC_AIF3_BCLK_pin\00", align 1
@___asan_gen_.823 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF3_LRCLK_pin\00", align 1
@___asan_gen_.826 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF3_RXDAT_pin\00", align 1
@___asan_gen_.829 = private unnamed_addr constant [30 x i8] c"lochnagar2_CDC_AIF3_TXDAT_pin\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 290, i32 1 }
@___asan_gen_.832 = private unnamed_addr constant [24 x i8] c"lochnagar2_DSP_AIF1_aif\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 420, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant [29 x i8] c"lochnagar2_DSP_AIF1_BCLK_pin\00", align 1
@___asan_gen_.838 = private unnamed_addr constant [30 x i8] c"lochnagar2_DSP_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.841 = private unnamed_addr constant [30 x i8] c"lochnagar2_DSP_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.844 = private unnamed_addr constant [30 x i8] c"lochnagar2_DSP_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 291, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant [24 x i8] c"lochnagar2_DSP_AIF2_aif\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 421, i32 1 }
@___asan_gen_.850 = private unnamed_addr constant [29 x i8] c"lochnagar2_DSP_AIF2_BCLK_pin\00", align 1
@___asan_gen_.853 = private unnamed_addr constant [30 x i8] c"lochnagar2_DSP_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.856 = private unnamed_addr constant [30 x i8] c"lochnagar2_DSP_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.859 = private unnamed_addr constant [30 x i8] c"lochnagar2_DSP_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 292, i32 1 }
@___asan_gen_.862 = private unnamed_addr constant [23 x i8] c"lochnagar2_GF_AIF3_aif\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 426, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant [28 x i8] c"lochnagar2_GF_AIF3_BCLK_pin\00", align 1
@___asan_gen_.868 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF3_LRCLK_pin\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF3_RXDAT_pin\00", align 1
@___asan_gen_.874 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF3_TXDAT_pin\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 297, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant [23 x i8] c"lochnagar2_GF_AIF4_aif\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 427, i32 1 }
@___asan_gen_.880 = private unnamed_addr constant [28 x i8] c"lochnagar2_GF_AIF4_BCLK_pin\00", align 1
@___asan_gen_.883 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF4_LRCLK_pin\00", align 1
@___asan_gen_.886 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF4_RXDAT_pin\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF4_TXDAT_pin\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 298, i32 1 }
@___asan_gen_.892 = private unnamed_addr constant [23 x i8] c"lochnagar2_GF_AIF1_aif\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 424, i32 1 }
@___asan_gen_.895 = private unnamed_addr constant [28 x i8] c"lochnagar2_GF_AIF1_BCLK_pin\00", align 1
@___asan_gen_.898 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.904 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 295, i32 1 }
@___asan_gen_.907 = private unnamed_addr constant [23 x i8] c"lochnagar2_GF_AIF2_aif\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 425, i32 1 }
@___asan_gen_.910 = private unnamed_addr constant [28 x i8] c"lochnagar2_GF_AIF2_BCLK_pin\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.919 = private unnamed_addr constant [29 x i8] c"lochnagar2_GF_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 296, i32 1 }
@___asan_gen_.922 = private unnamed_addr constant [24 x i8] c"lochnagar2_USB_AIF1_aif\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 429, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant [24 x i8] c"lochnagar2_USB_AIF2_aif\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 430, i32 1 }
@___asan_gen_.928 = private unnamed_addr constant [24 x i8] c"lochnagar2_ADAT_AIF_aif\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 431, i32 1 }
@___asan_gen_.931 = private unnamed_addr constant [29 x i8] c"lochnagar2_SOUNDCARD_AIF_aif\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 432, i32 1 }
@___asan_gen_.934 = private unnamed_addr constant [28 x i8] c"lochnagar2_CDC_CIF1MODE_pin\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 223, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant [26 x i8] c"lochnagar2_CDC_LDOENA_pin\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 224, i32 1 }
@___asan_gen_.940 = private unnamed_addr constant [28 x i8] c"lochnagar2_SPDIF_HWMODE_pin\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 225, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant [27 x i8] c"lochnagar2_SPDIF_RESET_pin\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 226, i32 1 }
@___asan_gen_.946 = private unnamed_addr constant [30 x i8] c"lochnagar2_SPDIF_AIF_BCLK_pin\00", align 1
@___asan_gen_.949 = private unnamed_addr constant [31 x i8] c"lochnagar2_SPDIF_AIF_LRCLK_pin\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [31 x i8] c"lochnagar2_SPDIF_AIF_RXDAT_pin\00", align 1
@___asan_gen_.955 = private unnamed_addr constant [31 x i8] c"lochnagar2_SPDIF_AIF_TXDAT_pin\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 299, i32 1 }
@___asan_gen_.958 = private unnamed_addr constant [29 x i8] c"lochnagar2_USB_AIF1_BCLK_pin\00", align 1
@___asan_gen_.961 = private unnamed_addr constant [30 x i8] c"lochnagar2_USB_AIF1_LRCLK_pin\00", align 1
@___asan_gen_.964 = private unnamed_addr constant [30 x i8] c"lochnagar2_USB_AIF1_RXDAT_pin\00", align 1
@___asan_gen_.967 = private unnamed_addr constant [30 x i8] c"lochnagar2_USB_AIF1_TXDAT_pin\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 300, i32 1 }
@___asan_gen_.970 = private unnamed_addr constant [29 x i8] c"lochnagar2_USB_AIF2_BCLK_pin\00", align 1
@___asan_gen_.973 = private unnamed_addr constant [30 x i8] c"lochnagar2_USB_AIF2_LRCLK_pin\00", align 1
@___asan_gen_.976 = private unnamed_addr constant [30 x i8] c"lochnagar2_USB_AIF2_RXDAT_pin\00", align 1
@___asan_gen_.979 = private unnamed_addr constant [30 x i8] c"lochnagar2_USB_AIF2_TXDAT_pin\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 301, i32 1 }
@___asan_gen_.982 = private unnamed_addr constant [29 x i8] c"lochnagar2_ADAT_AIF_BCLK_pin\00", align 1
@___asan_gen_.985 = private unnamed_addr constant [30 x i8] c"lochnagar2_ADAT_AIF_LRCLK_pin\00", align 1
@___asan_gen_.988 = private unnamed_addr constant [30 x i8] c"lochnagar2_ADAT_AIF_RXDAT_pin\00", align 1
@___asan_gen_.991 = private unnamed_addr constant [30 x i8] c"lochnagar2_ADAT_AIF_TXDAT_pin\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 302, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant [34 x i8] c"lochnagar2_SOUNDCARD_AIF_BCLK_pin\00", align 1
@___asan_gen_.997 = private unnamed_addr constant [35 x i8] c"lochnagar2_SOUNDCARD_AIF_LRCLK_pin\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant [35 x i8] c"lochnagar2_SOUNDCARD_AIF_RXDAT_pin\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant [35 x i8] c"lochnagar2_SOUNDCARD_AIF_TXDAT_pin\00", align 1
@___asan_gen_.1004 = private constant [46 x i8] c"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1004, i32 303, i32 1 }
@llvm.compiler.used = appending global [327 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_lochnagar_pin_driver_exit, ptr @__initcall__kmod_pinctrl_lochnagar__231_1228_lochnagar_pin_driver_init6, ptr @lochnagar_aif_set_master._entry, ptr @lochnagar_aif_set_master._entry_ptr, ptr @lochnagar_aif_set_mux._entry, ptr @lochnagar_aif_set_mux._entry.18, ptr @lochnagar_aif_set_mux._entry.22, ptr @lochnagar_aif_set_mux._entry_ptr, ptr @lochnagar_aif_set_mux._entry_ptr.20, ptr @lochnagar_aif_set_mux._entry_ptr.24, ptr @lochnagar_gpio_request._entry, ptr @lochnagar_gpio_request._entry.36, ptr @lochnagar_gpio_request._entry_ptr, ptr @lochnagar_gpio_request._entry_ptr.38, ptr @lochnagar_gpio_set._entry, ptr @lochnagar_gpio_set._entry_ptr, ptr @lochnagar_pin_driver_exit, ptr @lochnagar_pin_probe._entry, ptr @lochnagar_pin_probe._entry.6, ptr @lochnagar_pin_probe._entry.9, ptr @lochnagar_pin_probe._entry_ptr, ptr @lochnagar_pin_probe._entry_ptr.11, ptr @lochnagar_pin_probe._entry_ptr.8, ptr @lochnagar_pin_set_mux._entry, ptr @lochnagar_pin_set_mux._entry.28, ptr @lochnagar_pin_set_mux._entry_ptr, ptr @lochnagar_pin_set_mux._entry_ptr.30, ptr @lochnagar_pin_driver, ptr @.str, ptr @lochnagar_of_match, ptr @lochnagar_pin_desc, ptr @lochnagar1_funcs, ptr @lochnagar1_pins, ptr @lochnagar1_groups, ptr @lochnagar2_funcs, ptr @lochnagar2_pins, ptr @lochnagar2_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lochnagar_pin_probe.lock_key, ptr @lochnagar_pin_probe.request_key, ptr @.str.10, ptr @lochnagar_pin_group_ops, ptr @lochnagar_pin_mux_ops, ptr @lochnagar_pin_conf_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @lochnagar1_GF_GPIO2_pin, ptr @lochnagar1_GF_GPIO3_pin, ptr @lochnagar1_GF_GPIO7_pin, ptr @lochnagar1_SPDIF_AIF_aif, ptr @lochnagar1_PSIA1_aif, ptr @lochnagar1_PSIA2_aif, ptr @lochnagar1_CDC_AIF1_aif, ptr @lochnagar1_CDC_AIF2_aif, ptr @lochnagar1_CDC_AIF3_aif, ptr @lochnagar1_DSP_AIF1_aif, ptr @lochnagar1_DSP_AIF2_aif, ptr @lochnagar1_GF_AIF3_aif, ptr @lochnagar1_GF_AIF4_aif, ptr @lochnagar1_GF_AIF1_aif, ptr @lochnagar1_GF_AIF2_aif, ptr @lochnagar1_CDC_RESET_pin, ptr @lochnagar1_DSP_RESET_pin, ptr @lochnagar1_CDC_CIF1MODE_pin, ptr @lochnagar1_LED1_pin, ptr @lochnagar1_LED2_pin, ptr @lochnagar1_CDC_AIF1_BCLK_pin, ptr @lochnagar1_CDC_AIF1_LRCLK_pin, ptr @lochnagar1_CDC_AIF1_RXDAT_pin, ptr @lochnagar1_CDC_AIF1_TXDAT_pin, ptr @lochnagar1_CDC_AIF2_BCLK_pin, ptr @lochnagar1_CDC_AIF2_LRCLK_pin, ptr @lochnagar1_CDC_AIF2_RXDAT_pin, ptr @lochnagar1_CDC_AIF2_TXDAT_pin, ptr @lochnagar1_CDC_AIF3_BCLK_pin, ptr @lochnagar1_CDC_AIF3_LRCLK_pin, ptr @lochnagar1_CDC_AIF3_RXDAT_pin, ptr @lochnagar1_CDC_AIF3_TXDAT_pin, ptr @lochnagar1_DSP_AIF1_BCLK_pin, ptr @lochnagar1_DSP_AIF1_LRCLK_pin, ptr @lochnagar1_DSP_AIF1_RXDAT_pin, ptr @lochnagar1_DSP_AIF1_TXDAT_pin, ptr @lochnagar1_DSP_AIF2_BCLK_pin, ptr @lochnagar1_DSP_AIF2_LRCLK_pin, ptr @lochnagar1_DSP_AIF2_RXDAT_pin, ptr @lochnagar1_DSP_AIF2_TXDAT_pin, ptr @lochnagar1_PSIA1_BCLK_pin, ptr @lochnagar1_PSIA1_LRCLK_pin, ptr @lochnagar1_PSIA1_RXDAT_pin, ptr @lochnagar1_PSIA1_TXDAT_pin, ptr @lochnagar1_PSIA2_BCLK_pin, ptr @lochnagar1_PSIA2_LRCLK_pin, ptr @lochnagar1_PSIA2_RXDAT_pin, ptr @lochnagar1_PSIA2_TXDAT_pin, ptr @lochnagar1_SPDIF_AIF_BCLK_pin, ptr @lochnagar1_SPDIF_AIF_LRCLK_pin, ptr @lochnagar1_SPDIF_AIF_RXDAT_pin, ptr @lochnagar1_SPDIF_AIF_TXDAT_pin, ptr @lochnagar1_GF_AIF3_BCLK_pin, ptr @lochnagar1_GF_AIF3_RXDAT_pin, ptr @lochnagar1_GF_AIF3_LRCLK_pin, ptr @lochnagar1_GF_AIF3_TXDAT_pin, ptr @lochnagar1_GF_AIF4_BCLK_pin, ptr @lochnagar1_GF_AIF4_RXDAT_pin, ptr @lochnagar1_GF_AIF4_LRCLK_pin, ptr @lochnagar1_GF_AIF4_TXDAT_pin, ptr @lochnagar1_GF_AIF1_BCLK_pin, ptr @lochnagar1_GF_AIF1_RXDAT_pin, ptr @lochnagar1_GF_AIF1_LRCLK_pin, ptr @lochnagar1_GF_AIF1_TXDAT_pin, ptr @lochnagar1_GF_AIF2_BCLK_pin, ptr @lochnagar1_GF_AIF2_RXDAT_pin, ptr @lochnagar1_GF_AIF2_LRCLK_pin, ptr @lochnagar1_GF_AIF2_TXDAT_pin, ptr @.str.60, ptr @lochnagar2_FPGA_GPIO1_pin, ptr @lochnagar2_FPGA_GPIO2_pin, ptr @lochnagar2_FPGA_GPIO3_pin, ptr @lochnagar2_FPGA_GPIO4_pin, ptr @lochnagar2_FPGA_GPIO5_pin, ptr @lochnagar2_FPGA_GPIO6_pin, ptr @lochnagar2_CDC_GPIO1_pin, ptr @lochnagar2_CDC_GPIO2_pin, ptr @lochnagar2_CDC_GPIO3_pin, ptr @lochnagar2_CDC_GPIO4_pin, ptr @lochnagar2_CDC_GPIO5_pin, ptr @lochnagar2_CDC_GPIO6_pin, ptr @lochnagar2_CDC_GPIO7_pin, ptr @lochnagar2_CDC_GPIO8_pin, ptr @lochnagar2_DSP_GPIO1_pin, ptr @lochnagar2_DSP_GPIO2_pin, ptr @lochnagar2_DSP_GPIO3_pin, ptr @lochnagar2_DSP_GPIO4_pin, ptr @lochnagar2_DSP_GPIO5_pin, ptr @lochnagar2_DSP_GPIO6_pin, ptr @lochnagar2_GF_GPIO2_pin, ptr @lochnagar2_GF_GPIO3_pin, ptr @lochnagar2_GF_GPIO7_pin, ptr @lochnagar2_GF_GPIO1_pin, ptr @lochnagar2_GF_GPIO5_pin, ptr @lochnagar2_DSP_GPIO20_pin, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @lochnagar2_CDC_MCLK1_pin, ptr @lochnagar2_CDC_MCLK2_pin, ptr @lochnagar2_DSP_CLKIN_pin, ptr @lochnagar2_PSIA1_MCLK_pin, ptr @lochnagar2_PSIA2_MCLK_pin, ptr @.str.75, ptr @.str.76, ptr @lochnagar2_CDC_RESET_pin, ptr @lochnagar2_DSP_RESET_pin, ptr @.str.77, ptr @lochnagar2_DSP_STANDBY_pin, ptr @lochnagar2_CDC_PDMCLK1_pin, ptr @lochnagar2_CDC_PDMDAT1_pin, ptr @lochnagar2_CDC_PDMCLK2_pin, ptr @lochnagar2_CDC_PDMDAT2_pin, ptr @lochnagar2_CDC_DMICCLK1_pin, ptr @lochnagar2_CDC_DMICDAT1_pin, ptr @lochnagar2_CDC_DMICCLK2_pin, ptr @lochnagar2_CDC_DMICDAT2_pin, ptr @lochnagar2_CDC_DMICCLK3_pin, ptr @lochnagar2_CDC_DMICDAT3_pin, ptr @lochnagar2_CDC_DMICCLK4_pin, ptr @lochnagar2_CDC_DMICDAT4_pin, ptr @lochnagar2_DSP_DMICCLK1_pin, ptr @lochnagar2_DSP_DMICDAT1_pin, ptr @lochnagar2_DSP_DMICCLK2_pin, ptr @lochnagar2_DSP_DMICDAT2_pin, ptr @lochnagar2_DSP_UART1_RX_pin, ptr @lochnagar2_DSP_UART1_TX_pin, ptr @lochnagar2_DSP_UART2_RX_pin, ptr @lochnagar2_DSP_UART2_TX_pin, ptr @lochnagar2_GF_UART2_RX_pin, ptr @lochnagar2_GF_UART2_TX_pin, ptr @lochnagar2_USB_UART_RX_pin, ptr @.str.78, ptr @lochnagar2_I2C2_SCL_pin, ptr @lochnagar2_I2C2_SDA_pin, ptr @lochnagar2_I2C3_SCL_pin, ptr @lochnagar2_I2C3_SDA_pin, ptr @lochnagar2_I2C4_SCL_pin, ptr @lochnagar2_I2C4_SDA_pin, ptr @lochnagar2_SPDIF_AIF_aif, ptr @lochnagar2_PSIA1_aif, ptr @lochnagar2_PSIA1_BCLK_pin, ptr @lochnagar2_PSIA1_LRCLK_pin, ptr @lochnagar2_PSIA1_RXDAT_pin, ptr @lochnagar2_PSIA1_TXDAT_pin, ptr @lochnagar2_PSIA2_aif, ptr @lochnagar2_PSIA2_BCLK_pin, ptr @lochnagar2_PSIA2_LRCLK_pin, ptr @lochnagar2_PSIA2_RXDAT_pin, ptr @lochnagar2_PSIA2_TXDAT_pin, ptr @lochnagar2_CDC_AIF1_aif, ptr @lochnagar2_CDC_AIF1_BCLK_pin, ptr @lochnagar2_CDC_AIF1_LRCLK_pin, ptr @lochnagar2_CDC_AIF1_RXDAT_pin, ptr @lochnagar2_CDC_AIF1_TXDAT_pin, ptr @lochnagar2_CDC_AIF2_aif, ptr @lochnagar2_CDC_AIF2_BCLK_pin, ptr @lochnagar2_CDC_AIF2_LRCLK_pin, ptr @lochnagar2_CDC_AIF2_RXDAT_pin, ptr @lochnagar2_CDC_AIF2_TXDAT_pin, ptr @lochnagar2_CDC_AIF3_aif, ptr @lochnagar2_CDC_AIF3_BCLK_pin, ptr @lochnagar2_CDC_AIF3_LRCLK_pin, ptr @lochnagar2_CDC_AIF3_RXDAT_pin, ptr @lochnagar2_CDC_AIF3_TXDAT_pin, ptr @lochnagar2_DSP_AIF1_aif, ptr @lochnagar2_DSP_AIF1_BCLK_pin, ptr @lochnagar2_DSP_AIF1_LRCLK_pin, ptr @lochnagar2_DSP_AIF1_RXDAT_pin, ptr @lochnagar2_DSP_AIF1_TXDAT_pin, ptr @lochnagar2_DSP_AIF2_aif, ptr @lochnagar2_DSP_AIF2_BCLK_pin, ptr @lochnagar2_DSP_AIF2_LRCLK_pin, ptr @lochnagar2_DSP_AIF2_RXDAT_pin, ptr @lochnagar2_DSP_AIF2_TXDAT_pin, ptr @lochnagar2_GF_AIF3_aif, ptr @lochnagar2_GF_AIF3_BCLK_pin, ptr @lochnagar2_GF_AIF3_LRCLK_pin, ptr @lochnagar2_GF_AIF3_RXDAT_pin, ptr @lochnagar2_GF_AIF3_TXDAT_pin, ptr @lochnagar2_GF_AIF4_aif, ptr @lochnagar2_GF_AIF4_BCLK_pin, ptr @lochnagar2_GF_AIF4_LRCLK_pin, ptr @lochnagar2_GF_AIF4_RXDAT_pin, ptr @lochnagar2_GF_AIF4_TXDAT_pin, ptr @lochnagar2_GF_AIF1_aif, ptr @lochnagar2_GF_AIF1_BCLK_pin, ptr @lochnagar2_GF_AIF1_LRCLK_pin, ptr @lochnagar2_GF_AIF1_RXDAT_pin, ptr @lochnagar2_GF_AIF1_TXDAT_pin, ptr @lochnagar2_GF_AIF2_aif, ptr @lochnagar2_GF_AIF2_BCLK_pin, ptr @lochnagar2_GF_AIF2_LRCLK_pin, ptr @lochnagar2_GF_AIF2_RXDAT_pin, ptr @lochnagar2_GF_AIF2_TXDAT_pin, ptr @lochnagar2_USB_AIF1_aif, ptr @lochnagar2_USB_AIF2_aif, ptr @lochnagar2_ADAT_AIF_aif, ptr @lochnagar2_SOUNDCARD_AIF_aif, ptr @lochnagar2_CDC_CIF1MODE_pin, ptr @lochnagar2_CDC_LDOENA_pin, ptr @lochnagar2_SPDIF_HWMODE_pin, ptr @lochnagar2_SPDIF_RESET_pin, ptr @lochnagar2_SPDIF_AIF_BCLK_pin, ptr @lochnagar2_SPDIF_AIF_LRCLK_pin, ptr @lochnagar2_SPDIF_AIF_RXDAT_pin, ptr @lochnagar2_SPDIF_AIF_TXDAT_pin, ptr @lochnagar2_USB_AIF1_BCLK_pin, ptr @lochnagar2_USB_AIF1_LRCLK_pin, ptr @lochnagar2_USB_AIF1_RXDAT_pin, ptr @lochnagar2_USB_AIF1_TXDAT_pin, ptr @lochnagar2_USB_AIF2_BCLK_pin, ptr @lochnagar2_USB_AIF2_LRCLK_pin, ptr @lochnagar2_USB_AIF2_RXDAT_pin, ptr @lochnagar2_USB_AIF2_TXDAT_pin, ptr @lochnagar2_ADAT_AIF_BCLK_pin, ptr @lochnagar2_ADAT_AIF_LRCLK_pin, ptr @lochnagar2_ADAT_AIF_RXDAT_pin, ptr @lochnagar2_ADAT_AIF_TXDAT_pin, ptr @lochnagar2_SOUNDCARD_AIF_BCLK_pin, ptr @lochnagar2_SOUNDCARD_AIF_LRCLK_pin, ptr @lochnagar2_SOUNDCARD_AIF_RXDAT_pin, ptr @lochnagar2_SOUNDCARD_AIF_TXDAT_pin], section "llvm.metadata"
@0 = internal global [308 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_funcs to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_pins to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_groups to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_funcs to i32), i32 1704, i32 2144, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_pins to i32), i32 1572, i32 1984, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_groups to i32), i32 2420, i32 3008, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_group_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_mux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_conf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_aif_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_aif_set_mux._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_aif_set_mux._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_pin_set_mux._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_gpio_request._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_aif_set_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_GPIO2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_GPIO3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_GPIO7_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_SPDIF_AIF_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF3_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF3_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF4_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_RESET_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_RESET_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_CIF1MODE_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_LED1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_LED2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF3_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF3_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF3_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_CDC_AIF3_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_DSP_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_PSIA2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_SPDIF_AIF_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_SPDIF_AIF_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_SPDIF_AIF_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_SPDIF_AIF_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF3_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF3_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF3_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF3_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF4_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF4_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF4_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF4_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_GF_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_FPGA_GPIO1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_FPGA_GPIO2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_FPGA_GPIO3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_FPGA_GPIO4_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_FPGA_GPIO5_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_FPGA_GPIO6_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO4_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO5_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO6_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO7_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_GPIO8_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO4_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO5_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO6_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_GPIO2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_GPIO3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_GPIO7_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_GPIO1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_GPIO5_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_GPIO20_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_MCLK1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_MCLK2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_CLKIN_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA1_MCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA2_MCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_RESET_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_RESET_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_STANDBY_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_PDMCLK1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_PDMDAT1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_PDMCLK2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_PDMDAT2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICCLK1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICDAT1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICCLK2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICDAT2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICCLK3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICDAT3_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICCLK4_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_DMICDAT4_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_DMICCLK1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_DMICDAT1_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_DMICCLK2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_DMICDAT2_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_UART1_RX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_UART1_TX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_UART2_RX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_UART2_TX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_UART2_RX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_UART2_TX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_UART_RX_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_I2C2_SCL_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_I2C2_SDA_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_I2C3_SCL_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_I2C3_SDA_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_I2C4_SCL_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_I2C4_SDA_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_AIF_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_PSIA2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF3_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF3_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF3_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF3_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_AIF3_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_DSP_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF3_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF3_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF3_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF3_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF3_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF4_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF4_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF4_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF4_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF4_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_GF_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF1_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF2_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_ADAT_AIF_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SOUNDCARD_AIF_aif to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_CIF1MODE_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_CDC_LDOENA_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_HWMODE_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_RESET_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_AIF_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_AIF_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_AIF_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SPDIF_AIF_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF1_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF1_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF1_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF1_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF2_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF2_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF2_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_USB_AIF2_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_ADAT_AIF_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_ADAT_AIF_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_ADAT_AIF_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_ADAT_AIF_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SOUNDCARD_AIF_BCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SOUNDCARD_AIF_LRCLK_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SOUNDCARD_AIF_RXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_SOUNDCARD_AIF_TXDAT_pin to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_pin_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lochnagar_pin_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lochnagar_pin_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @lochnagar_pin_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_pin_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev4, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call.i, align 4
  %call.i113 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i113, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = call ptr @memcpy(ptr %call.i113, ptr @lochnagar_pin_desc, i32 44)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.dev_name.exit_crit_edge

if.end9.dev_name.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end9.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end9.dev_name.exit_crit_edge ]
  %gpio_chip = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %gpio_chip, align 4
  %request = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 6
  %13 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %direction_output = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 9
  %14 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lochnagar_gpio_direction_out, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 12
  %15 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @lochnagar_gpio_set, ptr %set, align 4
  %can_sleep = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 23
  %16 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %can_sleep, align 4
  %parent17 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %parent17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent17, align 4
  %base = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 19
  %18 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %base, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end [
    i32 0, label %dev_name.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb20
  ]

dev_name.exit.sw.epilog_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %20) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %dev_name.exit.sw.epilog_crit_edge
  %lochnagar2_funcs.sink = phi ptr [ @lochnagar2_funcs, %sw.bb20 ], [ @lochnagar1_funcs, %dev_name.exit.sw.epilog_crit_edge ]
  %.sink122 = phi i32 [ 142, %sw.bb20 ], [ 26, %dev_name.exit.sw.epilog_crit_edge ]
  %lochnagar2_pins.sink = phi ptr [ @lochnagar2_pins, %sw.bb20 ], [ @lochnagar1_pins, %dev_name.exit.sw.epilog_crit_edge ]
  %.sink121 = phi i32 [ 131, %sw.bb20 ], [ 56, %dev_name.exit.sw.epilog_crit_edge ]
  %lochnagar2_groups.sink = phi ptr [ @lochnagar2_groups, %sw.bb20 ], [ @lochnagar1_groups, %dev_name.exit.sw.epilog_crit_edge ]
  %.sink120 = phi i32 [ 121, %sw.bb20 ], [ 17, %dev_name.exit.sw.epilog_crit_edge ]
  %.sink = phi i16 [ 111, %sw.bb20 ], [ 3, %dev_name.exit.sw.epilog_crit_edge ]
  %funcs21 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %funcs21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lochnagar2_funcs.sink, ptr %funcs21, align 4
  %nfuncs22 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %nfuncs22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink122, ptr %nfuncs22, align 4
  %pins23 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %pins23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lochnagar2_pins.sink, ptr %pins23, align 4
  %npins24 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %npins24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink121, ptr %npins24, align 4
  %groups25 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %groups25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lochnagar2_groups.sink, ptr %groups25, align 4
  %ngroups26 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %ngroups26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink120, ptr %ngroups26, align 4
  %ngpio28 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 9, i32 20
  %28 = ptrtoint ptr %ngpio28 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %.sink, ptr %ngpio28, align 4
  %ngroups.i = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 7
  %groups.i = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %for.body.i
  %ngroups9.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %31 = ptrtoint ptr %ngroups9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ngroups9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i114 = icmp eq i32 %32, 0
  br i1 %tobool.not.i114, label %for.cond4.preheader.i.for.inc17.i_crit_edge, label %if.end.i115

for.cond4.preheader.i.for.inc17.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog
  %i.067.i = phi i32 [ 0, %sw.epilog ], [ %inc3.i, %for.body.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.lochnagar_group, ptr %30, i32 %i.067.i, i32 1
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  %ngroups2.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 %34, i32 1
  %35 = ptrtoint ptr %ngroups2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ngroups2.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %ngroups2.i, align 4
  %inc3.i = add nuw i32 %i.067.i, 1
  %37 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ngroups.i, align 4
  %cmp.i = icmp ult i32 %inc3.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.cond4.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body23.lr.ph.i:                               ; preds = %for.inc17.1.i
  %groups25.i = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 6
  br label %for.body23.i

if.end.i115:                                      ; preds = %for.cond4.preheader.i
  %arrayidx8.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 0
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end.i115.devm_kcalloc.exit.thread.i_crit_edge, label %devm_kcalloc.exit.i, !prof !542

if.end.i115.devm_kcalloc.exit.thread.i_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit.thread.i

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.1.i.devm_kcalloc.exit.thread.i_crit_edge, %if.end.i115.devm_kcalloc.exit.thread.i_crit_edge
  %arrayidx8.lcssa.i = phi ptr [ %arrayidx8.i, %if.end.i115.devm_kcalloc.exit.thread.i_crit_edge ], [ %arrayidx8.1.i, %if.end.1.i.devm_kcalloc.exit.thread.i_crit_edge ]
  %41 = ptrtoint ptr %arrayidx8.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx8.lcssa.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end.i115
  %42 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev4, align 4
  %44 = extractvalue { i32, i1 } %39, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %44, i32 noundef 3520) #8
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5.i.i.i, ptr %arrayidx8.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool13.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end15.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %ngroups9.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ngroups9.i, align 4
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %if.end15.i, %for.cond4.preheader.i.for.inc17.i_crit_edge
  %ngroups9.1.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %47 = ptrtoint ptr %ngroups9.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ngroups9.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.1.i = icmp eq i32 %48, 0
  br i1 %tobool.not.1.i, label %for.inc17.i.for.inc17.1.i_crit_edge, label %if.end.1.i

for.inc17.i.for.inc17.1.i_crit_edge:              ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.1.i

if.end.1.i:                                       ; preds = %for.inc17.i
  %arrayidx8.1.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 1
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 4) #8
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end.1.i.devm_kcalloc.exit.thread.i_crit_edge, label %devm_kcalloc.exit.1.i, !prof !542

if.end.1.i.devm_kcalloc.exit.thread.i_crit_edge:  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit.thread.i

devm_kcalloc.exit.1.i:                            ; preds = %if.end.1.i
  %51 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev4, align 4
  %53 = extractvalue { i32, i1 } %49, 0
  %call5.i.i.1.i = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef %53, i32 noundef 3520) #8
  %54 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i.i.1.i, ptr %arrayidx8.1.i, align 4
  %tobool13.not.1.i = icmp eq ptr %call5.i.i.1.i, null
  br i1 %tobool13.not.1.i, label %devm_kcalloc.exit.1.i.cleanup_crit_edge, label %if.end15.1.i

devm_kcalloc.exit.1.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.1.i:                                     ; preds = %devm_kcalloc.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %ngroups9.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %ngroups9.1.i, align 4
  br label %for.inc17.1.i

for.inc17.1.i:                                    ; preds = %if.end15.1.i, %for.inc17.i.for.inc17.1.i_crit_edge
  %56 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp2270.not.i = icmp eq i32 %57, 0
  br i1 %cmp2270.not.i, label %for.inc17.1.i.if.end32_crit_edge, label %for.body23.lr.ph.i

for.inc17.1.i.if.end32_crit_edge:                 ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.271.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc36.i, %for.body23.i.for.body23.i_crit_edge ]
  %58 = ptrtoint ptr %groups25.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %groups25.i, align 4
  %arrayidx26.i = getelementptr %struct.lochnagar_group, ptr %59, i32 %i.271.i
  %type27.i = getelementptr %struct.lochnagar_group, ptr %59, i32 %i.271.i, i32 1
  %60 = ptrtoint ptr %type27.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type27.i, align 4
  %arrayidx28.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 %61
  %62 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx26.i, align 4
  %64 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx28.i, align 4
  %ngroups32.i = getelementptr %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 8, i32 %61, i32 1
  %66 = ptrtoint ptr %ngroups32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ngroups32.i, align 4
  %inc33.i = add i32 %67, 1
  store i32 %inc33.i, ptr %ngroups32.i, align 4
  %arrayidx34.i = getelementptr ptr, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %63, ptr %arrayidx34.i, align 4
  %inc36.i = add nuw i32 %i.271.i, 1
  %69 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ngroups.i, align 4
  %cmp22.i = icmp ult i32 %inc36.i, %70
  br i1 %cmp22.i, label %for.body23.i.for.body23.i_crit_edge, label %for.body23.i.if.end32_crit_edge

for.body23.i.if.end32_crit_edge:                  ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23.i

if.end32:                                         ; preds = %for.body23.i.if.end32_crit_edge, %for.inc17.1.i.if.end32_crit_edge
  %pins33 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 4
  %71 = ptrtoint ptr %pins33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pins33, align 4
  %pins34 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i113, i32 0, i32 1
  %73 = ptrtoint ptr %pins34 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %pins34, align 4
  %npins35 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call.i, i32 0, i32 5
  %74 = ptrtoint ptr %npins35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %npins35, align 4
  %npins36 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i113, i32 0, i32 2
  %76 = ptrtoint ptr %npins36 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %npins36, align 4
  %call37 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull %call.i113, ptr noundef nonnull %call.i) #8
  %cmp.i117 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %call37 to i32
  %78 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.7, i32 noundef %77) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  %call47 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @lochnagar_pin_probe.lock_key, ptr noundef nonnull @lochnagar_pin_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call47) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end45.cleanup_crit_edge, %if.then39, %devm_kcalloc.exit.1.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %77, %if.then39 ], [ %call47, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.1.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lochnagar_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value)
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lochnagar_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %pins = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %offset, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %tobool to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_gpio_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_gpio_set, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !543

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %cond = select i1 %tobool, ptr @.str.46, ptr @.str.47
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_gpio_set.__UNIQUE_ID_ddebug230, ptr noundef %7, ptr noundef nonnull @.str.45, ptr noundef %5, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.lochnagar_pin, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %9, label %do.end.do.end27_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ]

do.end.do.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %lnot.ext, 254
  %call13 = tail call fastcc i32 @lochnagar_pin_set_mux(ptr noundef %call, ptr noundef %5, i32 noundef %or)
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %invert = getelementptr inbounds %struct.lochnagar_pin, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %invert, align 4, !range !544
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  %lnot.ext19 = zext i1 %lnot to i32
  %spec.select = select i1 %tobool15.not, i32 %lnot.ext, i32 %lnot.ext19
  %regmap = getelementptr inbounds %struct.lochnagar, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.lochnagar_pin, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.lochnagar_pin, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shift, align 4
  %shl = shl nuw i32 1, %18
  %shl22 = shl nuw i32 %spec.select, %18
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %shl, i32 noundef %shl22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb
  %ret.0 = phi i32 [ %call.i, %sw.bb14 ], [ %call13, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog.do.end27_crit_edge, label %sw.epilog.if.end30_crit_edge

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.epilog.do.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end27:                                         ; preds = %sw.epilog.do.end27_crit_edge, %do.end.do.end27_crit_edge
  %ret.051 = phi i32 [ %ret.0, %sw.epilog.do.end27_crit_edge ], [ -22, %do.end.do.end27_crit_edge ]
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.48, ptr noundef %5, i32 noundef %ret.051) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %sw.epilog.if.end30_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lochnagar_get_group_name(ptr noundef %pctldev, i32 noundef %group_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.lochnagar_group, ptr %1, i32 %group_idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_get_group_pins(ptr noundef %pctldev, i32 noundef %group_idx, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.lochnagar_group, ptr %1, i32 %group_idx, i32 2
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.lochnagar_group, ptr %5, i32 %group_idx, i32 3
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nfuncs = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfuncs, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lochnagar_get_func_name(ptr noundef %pctldev, i32 noundef %func_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %funcs = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %arrayidx = getelementptr %struct.lochnagar_func, ptr %1, i32 %func_idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_get_func_groups(ptr noundef %pctldev, i32 noundef %func_idx, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %funcs = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %type = getelementptr %struct.lochnagar_func, ptr %1, i32 %func_idx, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx1 = getelementptr %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %ngroups = getelementptr %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 8, i32 %3, i32 1
  %7 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ngroups, align 4
  %9 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_set_mux(ptr noundef %pctldev, i32 noundef %func_idx, i32 noundef %group_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %funcs = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %arrayidx = getelementptr %struct.lochnagar_func, ptr %1, i32 %func_idx
  %groups = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx1 = getelementptr %struct.lochnagar_group, ptr %3, i32 %group_idx
  %type = getelementptr %struct.lochnagar_func, ptr %1, i32 %func_idx, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 0, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_set_mux.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_set_mux, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !543

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_set_mux.__UNIQUE_ID_ddebug226, ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef %10, ptr noundef %12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %op = getelementptr %struct.lochnagar_func, ptr %1, i32 %func_idx, i32 2
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %op, align 4
  %conv = zext i8 %14 to i32
  %call7 = tail call fastcc i32 @lochnagar_aif_set_mux(ptr noundef %call, ptr noundef %arrayidx1, i32 noundef %conv)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %pins = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pins, align 4
  %pins9 = getelementptr %struct.lochnagar_group, ptr %3, i32 %group_idx, i32 2
  %17 = ptrtoint ptr %pins9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins9, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %16, i32 %20, i32 2
  %21 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_set_mux.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_set_mux, %do.end31)) #8
          to label %if.then25 [label %do.end31], !srcloc !543

if.then25:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev26, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_set_mux.__UNIQUE_ID_ddebug227, ptr noundef %24, ptr noundef nonnull @.str.15, ptr noundef %22, ptr noundef %26) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %sw.bb8
  %op32 = getelementptr %struct.lochnagar_func, ptr %1, i32 %func_idx, i32 2
  %27 = ptrtoint ptr %op32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %op32, align 4
  %conv33 = zext i8 %28 to i32
  %call34 = tail call fastcc i32 @lochnagar_pin_set_mux(ptr noundef %call, ptr noundef %22, i32 noundef %conv33)
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end31 ], [ %call7, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_gpio_request(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %pins = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %offset, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_gpio_request.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_gpio_request, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !543

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_gpio_request.__UNIQUE_ID_ddebug228, ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %type6 = getelementptr inbounds %struct.lochnagar_pin, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7.not = icmp eq i32 %11, 1
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call fastcc i32 @lochnagar2_get_gpio_chan(ptr noundef %call, i32 noundef 254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.35, i32 noundef %call10) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call fastcc i32 @lochnagar2_get_gpio_chan(ptr noundef %call, i32 noundef 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %call18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end17.cleanup_crit_edge, %do.end15, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call18, %do.end23 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lochnagar_gpio_set_direction(ptr nocapture noundef readnone %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %input, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lochnagar_aif_set_mux(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %group, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap1 = getelementptr inbounds %struct.lochnagar, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %priv2 = getelementptr inbounds %struct.lochnagar_group, ptr %group, i32 0, i32 4
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %src_reg = getelementptr inbounds %struct.lochnagar_aif, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %src_reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %src_reg, align 4
  %conv = zext i16 %7 to i32
  %src_mask = getelementptr inbounds %struct.lochnagar_aif, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %src_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %src_mask, align 2
  %conv3 = zext i16 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %op, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef %13, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_reg = getelementptr inbounds %struct.lochnagar_aif, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ctrl_reg, align 4
  %conv4 = zext i16 %15 to i32
  %ena_mask = getelementptr inbounds %struct.lochnagar_aif, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %ena_mask to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ena_mask, align 2
  %conv5 = zext i16 %17 to i32
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool9.not = icmp eq i32 %call.i78, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %do.end13

for.cond.preheader:                               ; preds = %if.end
  %npins = getelementptr inbounds %struct.lochnagar_group, ptr %group, i32 0, i32 3
  %18 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp81.not = icmp eq i32 %19, 0
  br i1 %cmp81.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pins = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 4
  %pins18 = getelementptr inbounds %struct.lochnagar_group, ptr %group, i32 0, i32 2
  %dev31 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  br label %for.body

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev14, align 4
  %22 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef %23, i32 noundef %call.i78) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pins, align 4
  %26 = ptrtoint ptr %pins18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pins18, align 4
  %arrayidx = getelementptr i32, ptr %27, i32 %i.082
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %25, i32 %29, i32 2
  %30 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv_data, align 4
  %type = getelementptr inbounds %struct.lochnagar_pin, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp20.not = icmp eq i32 %33, 1
  br i1 %cmp20.not, label %do.body24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body24:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_aif_set_mux.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_aif_set_mux, %do.end35)) #8
          to label %if.then30 [label %do.end35], !srcloc !543

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_aif_set_mux.__UNIQUE_ID_ddebug225, ptr noundef %35, ptr noundef nonnull @.str.21, ptr noundef %31) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body24
  %reg = getelementptr inbounds %struct.lochnagar_pin, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %37, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool37.not = icmp eq i32 %call.i79, 0
  br i1 %tobool37.not, label %do.end35.for.inc_crit_edge, label %do.end41

do.end35.for.inc_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end41:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.23, ptr noundef %31, i32 noundef %call.i79) #11
  br label %cleanup

for.inc:                                          ; preds = %do.end35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.082, 1
  %40 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end41, %do.end13, %for.cond.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i78, %do.end13 ], [ %call.i79, %do.end41 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lochnagar_pin_set_mux(ptr nocapture noundef readonly %priv, ptr noundef %pin, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %entry.do.body1_crit_edge, label %sw.default

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

sw.default:                                       ; preds = %entry
  %call = tail call fastcc i32 @lochnagar2_get_gpio_chan(ptr noundef %priv, i32 noundef %op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %sw.default.do.body1_crit_edge

sw.default.do.body1_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef %pin, i32 noundef %call) #11
  br label %cleanup

do.body1:                                         ; preds = %sw.default.do.body1_crit_edge, %entry.do.body1_crit_edge
  %op.addr.0 = phi i32 [ %op, %entry.do.body1_crit_edge ], [ %call, %sw.default.do.body1_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_pin_set_mux.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_pin_set_mux, %do.end12)) #8
          to label %if.then6 [label %do.end12], !srcloc !543

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_pin_set_mux.__UNIQUE_ID_ddebug224, ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef %pin, i32 noundef %op.addr.0) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %do.body1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %regmap = getelementptr inbounds %struct.lochnagar, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.lochnagar_pin, ptr %pin, i32 0, i32 2
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %op.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end12.cleanup_crit_edge, label %do.end19

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.29, ptr noundef %pin, i32 noundef %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %do.end19 ], [ 0, %do.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lochnagar2_get_gpio_chan(ptr nocapture noundef readonly %priv, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap1 = getelementptr inbounds %struct.lochnagar, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !545
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %if.end5.for.body_crit_edge ]
  %free.052 = phi i32 [ -1, %entry ], [ %free.1, %if.end5.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.053, 185
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 255
  store i32 %and, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %op)
  %cmp2 = icmp eq i32 %and, %op
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add4 = add nuw nsw i32 %i.053, 1
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.052)
  %cmp6 = icmp slt i32 %free.052, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp6, i1 %tobool7.not, i1 false
  %free.1 = select i1 %or.cond, i32 %i.053, i32 %free.052
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free.1)
  %cmp10 = icmp sgt i32 %free.1, -1
  br i1 %cmp10, label %if.then11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %for.end
  %add12 = add nuw i32 %free.1, 185
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add12, i32 noundef 255, i32 noundef %op, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %inc17 = add nuw i32 %free.1, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar2_get_gpio_chan.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar2_get_gpio_chan, %cleanup)) #8
          to label %if.then23 [label %cleanup], !srcloc !543

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar2_get_gpio_chan.__UNIQUE_ID_ddebug223, ptr noundef %8, ptr noundef nonnull @.str.32, i32 noundef %inc17, i32 noundef %op) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end16, %if.then11.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then3, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then3 ], [ %call.i, %if.then11.cleanup_crit_edge ], [ %inc17, %if.then23 ], [ -28, %for.end.cleanup_crit_edge ], [ %inc17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_conf_group_set(ptr noundef %pctldev, i32 noundef %group_idx, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp21.not = icmp eq i32 %num_configs, 0
  br i1 %cmp21.not, label %entry.cleanup8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %configs.addr.022 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %configs, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %configs.addr.022 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %configs.addr.022, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %trunc, label %for.body.cleanup8_crit_edge [
    i8 18, label %sw.bb
    i8 12, label %sw.bb3
  ]

for.body.cleanup8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

sw.bb:                                            ; preds = %for.body
  %call2 = tail call fastcc i32 @lochnagar_aif_set_master(ptr noundef %call, i32 noundef %group_idx, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup8_crit_edge

sw.bb.cleanup8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  %call4 = tail call fastcc i32 @lochnagar_aif_set_master(ptr noundef %call, i32 noundef %group_idx, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb3.for.inc_crit_edge, label %sw.bb3.cleanup8_crit_edge

sw.bb3.cleanup8_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

sw.bb3.for.inc_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %sw.bb3.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %incdec.ptr = getelementptr i32, ptr %configs.addr.022, i32 1
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup8

cleanup8:                                         ; preds = %for.inc.cleanup8_crit_edge, %sw.bb3.cleanup8_crit_edge, %sw.bb.cleanup8_crit_edge, %for.body.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup8_crit_edge ], [ -524, %for.body.cleanup8_crit_edge ], [ %call4, %sw.bb3.cleanup8_crit_edge ], [ %call2, %sw.bb.cleanup8_crit_edge ], [ 0, %for.inc.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lochnagar_aif_set_master(ptr nocapture noundef readonly %priv, i32 noundef %group_idx, i1 noundef zeroext %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap1 = getelementptr inbounds %struct.lochnagar, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %groups = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.lochnagar_group, ptr %5, i32 %group_idx
  %priv2 = getelementptr %struct.lochnagar_group, ptr %5, i32 %group_idx, i32 4
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  %type = getelementptr %struct.lochnagar_group, ptr %5, i32 %group_idx, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %master, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %master_mask = getelementptr inbounds %struct.lochnagar_aif, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %master_mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %master_mask, align 4
  %conv = zext i16 %11 to i32
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %val.0 = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %conv, %if.then3 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lochnagar_aif_set_master.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lochnagar_aif_set_master, %do.end)) #8
          to label %if.then10 [label %do.end], !srcloc !543

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cond = select i1 %master, ptr @.str.41, ptr @.str.42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lochnagar_aif_set_master.__UNIQUE_ID_ddebug229, ptr noundef %13, ptr noundef nonnull @.str.40, ptr noundef %15, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %ctrl_reg = getelementptr inbounds %struct.lochnagar_aif, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ctrl_reg, align 4
  %conv14 = zext i16 %17 to i32
  %master_mask15 = getelementptr inbounds %struct.lochnagar_aif, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %master_mask15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %master_mask15, align 4
  %conv16 = zext i16 %19 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %do.end22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.lochnagar_pin_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.43, ptr noundef %23, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end22 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 308)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 308)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !414, !415, !416, !418, !420, !421, !422, !423, !425, !427, !428, !429, !430, !432, !434, !435, !436, !437, !439, !441, !442, !443, !444, !446, !448, !449, !450, !451, !453, !455, !456, !457, !458, !460, !462, !463, !464, !465, !467, !469, !470, !471, !472, !474, !476, !477, !478, !479, !481, !483, !484, !485, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !507, !508, !509, !511, !512, !513, !514, !516, !517, !518, !519, !521, !522, !523, !524, !526, !527, !528, !529, !531}
!llvm.module.flags = !{!533, !534, !535, !536, !537, !538, !539, !540}
!llvm.ident = !{!541}

!0 = !{ptr @__initcall__kmod_pinctrl_lochnagar__231_1228_lochnagar_pin_driver_init6, !1, !"__initcall__kmod_pinctrl_lochnagar__231_1228_lochnagar_pin_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1228, i32 1}
!2 = !{ptr @__exitcall_lochnagar_pin_driver_exit, !1, !"__exitcall_lochnagar_pin_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1230, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1231, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1232, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1222, i32 11}
!12 = !{ptr @lochnagar_pin_driver, !13, !"lochnagar_pin_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1220, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1187, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lochnagar_pin_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lochnagar_pin_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1201, i32 3}
!24 = !{ptr @lochnagar_pin_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lochnagar_pin_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @lochnagar_pin_probe.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1205, i32 8}
!28 = !{ptr @lochnagar_pin_probe.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1207, i32 3}
!31 = !{ptr @lochnagar_pin_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lochnagar_pin_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @lochnagar_pin_desc, !34, !"lochnagar_pin_desc", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1049, i32 34}
!35 = !{ptr @lochnagar_pin_group_ops, !36, !"lochnagar_pin_group_ops", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 753, i32 33}
!37 = !{ptr @lochnagar_pin_mux_ops, !38, !"lochnagar_pin_mux_ops", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 973, i32 32}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 917, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lochnagar_set_mux.__UNIQUE_ID_ddebug226, !40, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 924, i32 3}
!46 = !{ptr @lochnagar_set_mux.__UNIQUE_ID_ddebug227, !45, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 873, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lochnagar_aif_set_mux._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @lochnagar_aif_set_mux._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 881, i32 3}
!54 = !{ptr @lochnagar_aif_set_mux._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lochnagar_aif_set_mux._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 892, i32 3}
!58 = !{ptr @lochnagar_aif_set_mux.__UNIQUE_ID_ddebug225, !57, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 898, i32 4}
!61 = !{ptr @lochnagar_aif_set_mux._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @lochnagar_aif_set_mux._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 843, i32 4}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lochnagar_pin_set_mux._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @lochnagar_pin_set_mux._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 852, i32 2}
!70 = !{ptr @lochnagar_pin_set_mux.__UNIQUE_ID_ddebug224, !69, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 856, i32 3}
!73 = !{ptr @lochnagar_pin_set_mux._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lochnagar_pin_set_mux._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 823, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @lochnagar2_get_gpio_chan.__UNIQUE_ID_ddebug223, !76, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 941, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @lochnagar_gpio_request.__UNIQUE_ID_ddebug228, !80, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 948, i32 3}
!85 = !{ptr @lochnagar_gpio_request._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @lochnagar_gpio_request._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 954, i32 3}
!89 = !{ptr @lochnagar_gpio_request._entry.36, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lochnagar_gpio_request._entry_ptr.38, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @lochnagar_pin_conf_ops, !92, !"lochnagar_pin_conf_ops", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1045, i32 33}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1000, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lochnagar_aif_set_master.__UNIQUE_ID_ddebug229, !94, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!97 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1005, i32 3}
!101 = !{ptr @lochnagar_aif_set_master._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lochnagar_aif_set_master._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1068, i32 2}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @lochnagar_gpio_set.__UNIQUE_ID_ddebug230, !104, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!107 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1090, i32 3}
!111 = !{ptr @lochnagar_gpio_set._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @lochnagar_gpio_set._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 474, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 475, i32 2}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 476, i32 2}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 477, i32 2}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 478, i32 2}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 479, i32 2}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 480, i32 2}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 481, i32 2}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 482, i32 2}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 483, i32 2}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 484, i32 2}
!135 = !{ptr @lochnagar1_funcs, !136, !"lochnagar1_funcs", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 473, i32 36}
!137 = !{ptr @lochnagar1_GF_GPIO2_pin, !138, !"lochnagar1_GF_GPIO2_pin", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 203, i32 1}
!139 = !{ptr @lochnagar1_GF_GPIO3_pin, !140, !"lochnagar1_GF_GPIO3_pin", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 204, i32 1}
!141 = !{ptr @lochnagar1_GF_GPIO7_pin, !142, !"lochnagar1_GF_GPIO7_pin", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 205, i32 1}
!143 = !{ptr @lochnagar1_SPDIF_AIF_aif, !144, !"lochnagar1_SPDIF_AIF_aif", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 415, i32 1}
!145 = !{ptr @lochnagar1_PSIA1_aif, !146, !"lochnagar1_PSIA1_aif", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 409, i32 1}
!147 = !{ptr @lochnagar1_PSIA2_aif, !148, !"lochnagar1_PSIA2_aif", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 410, i32 1}
!149 = !{ptr @lochnagar1_CDC_AIF1_aif, !150, !"lochnagar1_CDC_AIF1_aif", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 404, i32 1}
!151 = !{ptr @lochnagar1_CDC_AIF2_aif, !152, !"lochnagar1_CDC_AIF2_aif", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 405, i32 1}
!153 = !{ptr @lochnagar1_CDC_AIF3_aif, !154, !"lochnagar1_CDC_AIF3_aif", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 406, i32 1}
!155 = !{ptr @lochnagar1_DSP_AIF1_aif, !156, !"lochnagar1_DSP_AIF1_aif", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 407, i32 1}
!157 = !{ptr @lochnagar1_DSP_AIF2_aif, !158, !"lochnagar1_DSP_AIF2_aif", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 408, i32 1}
!159 = !{ptr @lochnagar1_GF_AIF3_aif, !160, !"lochnagar1_GF_AIF3_aif", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 413, i32 1}
!161 = !{ptr @lochnagar1_GF_AIF4_aif, !162, !"lochnagar1_GF_AIF4_aif", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 414, i32 1}
!163 = !{ptr @lochnagar1_GF_AIF1_aif, !164, !"lochnagar1_GF_AIF1_aif", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 411, i32 1}
!165 = !{ptr @lochnagar1_GF_AIF2_aif, !166, !"lochnagar1_GF_AIF2_aif", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 412, i32 1}
!167 = !{ptr @lochnagar1_pins, !168, !"lochnagar1_pins", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 305, i32 38}
!169 = !{ptr @lochnagar1_CDC_RESET_pin, !170, !"lochnagar1_CDC_RESET_pin", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 200, i32 1}
!171 = !{ptr @lochnagar1_DSP_RESET_pin, !172, !"lochnagar1_DSP_RESET_pin", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 201, i32 1}
!173 = !{ptr @lochnagar1_CDC_CIF1MODE_pin, !174, !"lochnagar1_CDC_CIF1MODE_pin", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 202, i32 1}
!175 = !{ptr @lochnagar1_LED1_pin, !176, !"lochnagar1_LED1_pin", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 206, i32 1}
!177 = !{ptr @lochnagar1_LED2_pin, !178, !"lochnagar1_LED2_pin", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 207, i32 1}
!179 = !{ptr @lochnagar1_CDC_AIF1_BCLK_pin, !180, !"lochnagar1_CDC_AIF1_BCLK_pin", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 208, i32 1}
!181 = !{ptr @lochnagar1_CDC_AIF1_LRCLK_pin, !180, !"lochnagar1_CDC_AIF1_LRCLK_pin", i1 false, i1 false}
!182 = !{ptr @lochnagar1_CDC_AIF1_RXDAT_pin, !180, !"lochnagar1_CDC_AIF1_RXDAT_pin", i1 false, i1 false}
!183 = !{ptr @lochnagar1_CDC_AIF1_TXDAT_pin, !180, !"lochnagar1_CDC_AIF1_TXDAT_pin", i1 false, i1 false}
!184 = !{ptr @lochnagar1_CDC_AIF2_BCLK_pin, !185, !"lochnagar1_CDC_AIF2_BCLK_pin", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 209, i32 1}
!186 = !{ptr @lochnagar1_CDC_AIF2_LRCLK_pin, !185, !"lochnagar1_CDC_AIF2_LRCLK_pin", i1 false, i1 false}
!187 = !{ptr @lochnagar1_CDC_AIF2_RXDAT_pin, !185, !"lochnagar1_CDC_AIF2_RXDAT_pin", i1 false, i1 false}
!188 = !{ptr @lochnagar1_CDC_AIF2_TXDAT_pin, !185, !"lochnagar1_CDC_AIF2_TXDAT_pin", i1 false, i1 false}
!189 = !{ptr @lochnagar1_CDC_AIF3_BCLK_pin, !190, !"lochnagar1_CDC_AIF3_BCLK_pin", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 210, i32 1}
!191 = !{ptr @lochnagar1_CDC_AIF3_LRCLK_pin, !190, !"lochnagar1_CDC_AIF3_LRCLK_pin", i1 false, i1 false}
!192 = !{ptr @lochnagar1_CDC_AIF3_RXDAT_pin, !190, !"lochnagar1_CDC_AIF3_RXDAT_pin", i1 false, i1 false}
!193 = !{ptr @lochnagar1_CDC_AIF3_TXDAT_pin, !190, !"lochnagar1_CDC_AIF3_TXDAT_pin", i1 false, i1 false}
!194 = !{ptr @lochnagar1_DSP_AIF1_BCLK_pin, !195, !"lochnagar1_DSP_AIF1_BCLK_pin", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 211, i32 1}
!196 = !{ptr @lochnagar1_DSP_AIF1_LRCLK_pin, !195, !"lochnagar1_DSP_AIF1_LRCLK_pin", i1 false, i1 false}
!197 = !{ptr @lochnagar1_DSP_AIF1_RXDAT_pin, !195, !"lochnagar1_DSP_AIF1_RXDAT_pin", i1 false, i1 false}
!198 = !{ptr @lochnagar1_DSP_AIF1_TXDAT_pin, !195, !"lochnagar1_DSP_AIF1_TXDAT_pin", i1 false, i1 false}
!199 = !{ptr @lochnagar1_DSP_AIF2_BCLK_pin, !200, !"lochnagar1_DSP_AIF2_BCLK_pin", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 212, i32 1}
!201 = !{ptr @lochnagar1_DSP_AIF2_LRCLK_pin, !200, !"lochnagar1_DSP_AIF2_LRCLK_pin", i1 false, i1 false}
!202 = !{ptr @lochnagar1_DSP_AIF2_RXDAT_pin, !200, !"lochnagar1_DSP_AIF2_RXDAT_pin", i1 false, i1 false}
!203 = !{ptr @lochnagar1_DSP_AIF2_TXDAT_pin, !200, !"lochnagar1_DSP_AIF2_TXDAT_pin", i1 false, i1 false}
!204 = !{ptr @lochnagar1_PSIA1_BCLK_pin, !205, !"lochnagar1_PSIA1_BCLK_pin", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 213, i32 1}
!206 = !{ptr @lochnagar1_PSIA1_LRCLK_pin, !205, !"lochnagar1_PSIA1_LRCLK_pin", i1 false, i1 false}
!207 = !{ptr @lochnagar1_PSIA1_RXDAT_pin, !205, !"lochnagar1_PSIA1_RXDAT_pin", i1 false, i1 false}
!208 = !{ptr @lochnagar1_PSIA1_TXDAT_pin, !205, !"lochnagar1_PSIA1_TXDAT_pin", i1 false, i1 false}
!209 = !{ptr @lochnagar1_PSIA2_BCLK_pin, !210, !"lochnagar1_PSIA2_BCLK_pin", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 214, i32 1}
!211 = !{ptr @lochnagar1_PSIA2_LRCLK_pin, !210, !"lochnagar1_PSIA2_LRCLK_pin", i1 false, i1 false}
!212 = !{ptr @lochnagar1_PSIA2_RXDAT_pin, !210, !"lochnagar1_PSIA2_RXDAT_pin", i1 false, i1 false}
!213 = !{ptr @lochnagar1_PSIA2_TXDAT_pin, !210, !"lochnagar1_PSIA2_TXDAT_pin", i1 false, i1 false}
!214 = !{ptr @lochnagar1_SPDIF_AIF_BCLK_pin, !215, !"lochnagar1_SPDIF_AIF_BCLK_pin", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 215, i32 1}
!216 = !{ptr @lochnagar1_SPDIF_AIF_LRCLK_pin, !215, !"lochnagar1_SPDIF_AIF_LRCLK_pin", i1 false, i1 false}
!217 = !{ptr @lochnagar1_SPDIF_AIF_RXDAT_pin, !215, !"lochnagar1_SPDIF_AIF_RXDAT_pin", i1 false, i1 false}
!218 = !{ptr @lochnagar1_SPDIF_AIF_TXDAT_pin, !215, !"lochnagar1_SPDIF_AIF_TXDAT_pin", i1 false, i1 false}
!219 = !{ptr @lochnagar1_GF_AIF3_BCLK_pin, !220, !"lochnagar1_GF_AIF3_BCLK_pin", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 218, i32 1}
!221 = !{ptr @lochnagar1_GF_AIF3_RXDAT_pin, !220, !"lochnagar1_GF_AIF3_RXDAT_pin", i1 false, i1 false}
!222 = !{ptr @lochnagar1_GF_AIF3_LRCLK_pin, !220, !"lochnagar1_GF_AIF3_LRCLK_pin", i1 false, i1 false}
!223 = !{ptr @lochnagar1_GF_AIF3_TXDAT_pin, !220, !"lochnagar1_GF_AIF3_TXDAT_pin", i1 false, i1 false}
!224 = !{ptr @lochnagar1_GF_AIF4_BCLK_pin, !225, !"lochnagar1_GF_AIF4_BCLK_pin", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 219, i32 1}
!226 = !{ptr @lochnagar1_GF_AIF4_RXDAT_pin, !225, !"lochnagar1_GF_AIF4_RXDAT_pin", i1 false, i1 false}
!227 = !{ptr @lochnagar1_GF_AIF4_LRCLK_pin, !225, !"lochnagar1_GF_AIF4_LRCLK_pin", i1 false, i1 false}
!228 = !{ptr @lochnagar1_GF_AIF4_TXDAT_pin, !225, !"lochnagar1_GF_AIF4_TXDAT_pin", i1 false, i1 false}
!229 = !{ptr @lochnagar1_GF_AIF1_BCLK_pin, !230, !"lochnagar1_GF_AIF1_BCLK_pin", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 216, i32 1}
!231 = !{ptr @lochnagar1_GF_AIF1_RXDAT_pin, !230, !"lochnagar1_GF_AIF1_RXDAT_pin", i1 false, i1 false}
!232 = !{ptr @lochnagar1_GF_AIF1_LRCLK_pin, !230, !"lochnagar1_GF_AIF1_LRCLK_pin", i1 false, i1 false}
!233 = !{ptr @lochnagar1_GF_AIF1_TXDAT_pin, !230, !"lochnagar1_GF_AIF1_TXDAT_pin", i1 false, i1 false}
!234 = !{ptr @lochnagar1_GF_AIF2_BCLK_pin, !235, !"lochnagar1_GF_AIF2_BCLK_pin", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 217, i32 1}
!236 = !{ptr @lochnagar1_GF_AIF2_RXDAT_pin, !235, !"lochnagar1_GF_AIF2_RXDAT_pin", i1 false, i1 false}
!237 = !{ptr @lochnagar1_GF_AIF2_LRCLK_pin, !235, !"lochnagar1_GF_AIF2_LRCLK_pin", i1 false, i1 false}
!238 = !{ptr @lochnagar1_GF_AIF2_TXDAT_pin, !235, !"lochnagar1_GF_AIF2_TXDAT_pin", i1 false, i1 false}
!239 = !{ptr @lochnagar1_groups, !240, !"lochnagar1_groups", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 643, i32 37}
!241 = !{ptr @.str.60, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 504, i32 2}
!243 = !{ptr @.str.61, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 531, i32 2}
!245 = !{ptr @.str.62, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 532, i32 2}
!247 = !{ptr @.str.63, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 533, i32 2}
!249 = !{ptr @.str.64, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 534, i32 2}
!251 = !{ptr @.str.65, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 535, i32 2}
!253 = !{ptr @.str.66, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 536, i32 2}
!255 = !{ptr @.str.67, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 537, i32 2}
!257 = !{ptr @.str.68, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 538, i32 2}
!259 = !{ptr @.str.69, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 539, i32 2}
!261 = !{ptr @.str.70, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 540, i32 2}
!263 = !{ptr @.str.71, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 541, i32 2}
!265 = !{ptr @.str.72, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 542, i32 2}
!267 = !{ptr @.str.73, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 543, i32 2}
!269 = !{ptr @.str.74, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 544, i32 2}
!271 = !{ptr @.str.75, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 550, i32 2}
!273 = !{ptr @.str.76, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 551, i32 2}
!275 = !{ptr @.str.77, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 554, i32 2}
!277 = !{ptr @.str.78, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 579, i32 2}
!279 = !{ptr @lochnagar2_funcs, !280, !"lochnagar2_funcs", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 503, i32 36}
!281 = !{ptr @lochnagar2_FPGA_GPIO1_pin, !282, !"lochnagar2_FPGA_GPIO1_pin", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 227, i32 1}
!283 = !{ptr @lochnagar2_FPGA_GPIO2_pin, !284, !"lochnagar2_FPGA_GPIO2_pin", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 228, i32 1}
!285 = !{ptr @lochnagar2_FPGA_GPIO3_pin, !286, !"lochnagar2_FPGA_GPIO3_pin", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 229, i32 1}
!287 = !{ptr @lochnagar2_FPGA_GPIO4_pin, !288, !"lochnagar2_FPGA_GPIO4_pin", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 230, i32 1}
!289 = !{ptr @lochnagar2_FPGA_GPIO5_pin, !290, !"lochnagar2_FPGA_GPIO5_pin", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 231, i32 1}
!291 = !{ptr @lochnagar2_FPGA_GPIO6_pin, !292, !"lochnagar2_FPGA_GPIO6_pin", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 232, i32 1}
!293 = !{ptr @lochnagar2_CDC_GPIO1_pin, !294, !"lochnagar2_CDC_GPIO1_pin", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 233, i32 1}
!295 = !{ptr @lochnagar2_CDC_GPIO2_pin, !296, !"lochnagar2_CDC_GPIO2_pin", i1 false, i1 false}
!296 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 234, i32 1}
!297 = !{ptr @lochnagar2_CDC_GPIO3_pin, !298, !"lochnagar2_CDC_GPIO3_pin", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 235, i32 1}
!299 = !{ptr @lochnagar2_CDC_GPIO4_pin, !300, !"lochnagar2_CDC_GPIO4_pin", i1 false, i1 false}
!300 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 236, i32 1}
!301 = !{ptr @lochnagar2_CDC_GPIO5_pin, !302, !"lochnagar2_CDC_GPIO5_pin", i1 false, i1 false}
!302 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 237, i32 1}
!303 = !{ptr @lochnagar2_CDC_GPIO6_pin, !304, !"lochnagar2_CDC_GPIO6_pin", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 238, i32 1}
!305 = !{ptr @lochnagar2_CDC_GPIO7_pin, !306, !"lochnagar2_CDC_GPIO7_pin", i1 false, i1 false}
!306 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 239, i32 1}
!307 = !{ptr @lochnagar2_CDC_GPIO8_pin, !308, !"lochnagar2_CDC_GPIO8_pin", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 240, i32 1}
!309 = !{ptr @lochnagar2_DSP_GPIO1_pin, !310, !"lochnagar2_DSP_GPIO1_pin", i1 false, i1 false}
!310 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 241, i32 1}
!311 = !{ptr @lochnagar2_DSP_GPIO2_pin, !312, !"lochnagar2_DSP_GPIO2_pin", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 242, i32 1}
!313 = !{ptr @lochnagar2_DSP_GPIO3_pin, !314, !"lochnagar2_DSP_GPIO3_pin", i1 false, i1 false}
!314 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 243, i32 1}
!315 = !{ptr @lochnagar2_DSP_GPIO4_pin, !316, !"lochnagar2_DSP_GPIO4_pin", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 244, i32 1}
!317 = !{ptr @lochnagar2_DSP_GPIO5_pin, !318, !"lochnagar2_DSP_GPIO5_pin", i1 false, i1 false}
!318 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 245, i32 1}
!319 = !{ptr @lochnagar2_DSP_GPIO6_pin, !320, !"lochnagar2_DSP_GPIO6_pin", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 246, i32 1}
!321 = !{ptr @lochnagar2_GF_GPIO2_pin, !322, !"lochnagar2_GF_GPIO2_pin", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 247, i32 1}
!323 = !{ptr @lochnagar2_GF_GPIO3_pin, !324, !"lochnagar2_GF_GPIO3_pin", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 248, i32 1}
!325 = !{ptr @lochnagar2_GF_GPIO7_pin, !326, !"lochnagar2_GF_GPIO7_pin", i1 false, i1 false}
!326 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 249, i32 1}
!327 = !{ptr @lochnagar2_GF_GPIO1_pin, !328, !"lochnagar2_GF_GPIO1_pin", i1 false, i1 false}
!328 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 285, i32 1}
!329 = !{ptr @lochnagar2_GF_GPIO5_pin, !330, !"lochnagar2_GF_GPIO5_pin", i1 false, i1 false}
!330 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 286, i32 1}
!331 = !{ptr @lochnagar2_DSP_GPIO20_pin, !332, !"lochnagar2_DSP_GPIO20_pin", i1 false, i1 false}
!332 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 287, i32 1}
!333 = !{ptr @lochnagar2_CDC_MCLK1_pin, !334, !"lochnagar2_CDC_MCLK1_pin", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 280, i32 1}
!335 = !{ptr @lochnagar2_CDC_MCLK2_pin, !336, !"lochnagar2_CDC_MCLK2_pin", i1 false, i1 false}
!336 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 281, i32 1}
!337 = !{ptr @lochnagar2_DSP_CLKIN_pin, !338, !"lochnagar2_DSP_CLKIN_pin", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 282, i32 1}
!339 = !{ptr @lochnagar2_PSIA1_MCLK_pin, !340, !"lochnagar2_PSIA1_MCLK_pin", i1 false, i1 false}
!340 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 283, i32 1}
!341 = !{ptr @lochnagar2_PSIA2_MCLK_pin, !342, !"lochnagar2_PSIA2_MCLK_pin", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 284, i32 1}
!343 = !{ptr @lochnagar2_CDC_RESET_pin, !344, !"lochnagar2_CDC_RESET_pin", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 221, i32 1}
!345 = !{ptr @lochnagar2_DSP_RESET_pin, !346, !"lochnagar2_DSP_RESET_pin", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 222, i32 1}
!347 = !{ptr @lochnagar2_DSP_STANDBY_pin, !348, !"lochnagar2_DSP_STANDBY_pin", i1 false, i1 false}
!348 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 279, i32 1}
!349 = !{ptr @lochnagar2_CDC_PDMCLK1_pin, !350, !"lochnagar2_CDC_PDMCLK1_pin", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 257, i32 1}
!351 = !{ptr @lochnagar2_CDC_PDMDAT1_pin, !352, !"lochnagar2_CDC_PDMDAT1_pin", i1 false, i1 false}
!352 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 258, i32 1}
!353 = !{ptr @lochnagar2_CDC_PDMCLK2_pin, !354, !"lochnagar2_CDC_PDMCLK2_pin", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 259, i32 1}
!355 = !{ptr @lochnagar2_CDC_PDMDAT2_pin, !356, !"lochnagar2_CDC_PDMDAT2_pin", i1 false, i1 false}
!356 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 260, i32 1}
!357 = !{ptr @lochnagar2_CDC_DMICCLK1_pin, !358, !"lochnagar2_CDC_DMICCLK1_pin", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 261, i32 1}
!359 = !{ptr @lochnagar2_CDC_DMICDAT1_pin, !360, !"lochnagar2_CDC_DMICDAT1_pin", i1 false, i1 false}
!360 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 262, i32 1}
!361 = !{ptr @lochnagar2_CDC_DMICCLK2_pin, !362, !"lochnagar2_CDC_DMICCLK2_pin", i1 false, i1 false}
!362 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 263, i32 1}
!363 = !{ptr @lochnagar2_CDC_DMICDAT2_pin, !364, !"lochnagar2_CDC_DMICDAT2_pin", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 264, i32 1}
!365 = !{ptr @lochnagar2_CDC_DMICCLK3_pin, !366, !"lochnagar2_CDC_DMICCLK3_pin", i1 false, i1 false}
!366 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 265, i32 1}
!367 = !{ptr @lochnagar2_CDC_DMICDAT3_pin, !368, !"lochnagar2_CDC_DMICDAT3_pin", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 266, i32 1}
!369 = !{ptr @lochnagar2_CDC_DMICCLK4_pin, !370, !"lochnagar2_CDC_DMICCLK4_pin", i1 false, i1 false}
!370 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 267, i32 1}
!371 = !{ptr @lochnagar2_CDC_DMICDAT4_pin, !372, !"lochnagar2_CDC_DMICDAT4_pin", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 268, i32 1}
!373 = !{ptr @lochnagar2_DSP_DMICCLK1_pin, !374, !"lochnagar2_DSP_DMICCLK1_pin", i1 false, i1 false}
!374 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 269, i32 1}
!375 = !{ptr @lochnagar2_DSP_DMICDAT1_pin, !376, !"lochnagar2_DSP_DMICDAT1_pin", i1 false, i1 false}
!376 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 270, i32 1}
!377 = !{ptr @lochnagar2_DSP_DMICCLK2_pin, !378, !"lochnagar2_DSP_DMICCLK2_pin", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 271, i32 1}
!379 = !{ptr @lochnagar2_DSP_DMICDAT2_pin, !380, !"lochnagar2_DSP_DMICDAT2_pin", i1 false, i1 false}
!380 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 272, i32 1}
!381 = !{ptr @lochnagar2_DSP_UART1_RX_pin, !382, !"lochnagar2_DSP_UART1_RX_pin", i1 false, i1 false}
!382 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 250, i32 1}
!383 = !{ptr @lochnagar2_DSP_UART1_TX_pin, !384, !"lochnagar2_DSP_UART1_TX_pin", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 251, i32 1}
!385 = !{ptr @lochnagar2_DSP_UART2_RX_pin, !386, !"lochnagar2_DSP_UART2_RX_pin", i1 false, i1 false}
!386 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 252, i32 1}
!387 = !{ptr @lochnagar2_DSP_UART2_TX_pin, !388, !"lochnagar2_DSP_UART2_TX_pin", i1 false, i1 false}
!388 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 253, i32 1}
!389 = !{ptr @lochnagar2_GF_UART2_RX_pin, !390, !"lochnagar2_GF_UART2_RX_pin", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 254, i32 1}
!391 = !{ptr @lochnagar2_GF_UART2_TX_pin, !392, !"lochnagar2_GF_UART2_TX_pin", i1 false, i1 false}
!392 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 255, i32 1}
!393 = !{ptr @lochnagar2_USB_UART_RX_pin, !394, !"lochnagar2_USB_UART_RX_pin", i1 false, i1 false}
!394 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 256, i32 1}
!395 = !{ptr @lochnagar2_I2C2_SCL_pin, !396, !"lochnagar2_I2C2_SCL_pin", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 273, i32 1}
!397 = !{ptr @lochnagar2_I2C2_SDA_pin, !398, !"lochnagar2_I2C2_SDA_pin", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 274, i32 1}
!399 = !{ptr @lochnagar2_I2C3_SCL_pin, !400, !"lochnagar2_I2C3_SCL_pin", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 275, i32 1}
!401 = !{ptr @lochnagar2_I2C3_SDA_pin, !402, !"lochnagar2_I2C3_SDA_pin", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 276, i32 1}
!403 = !{ptr @lochnagar2_I2C4_SCL_pin, !404, !"lochnagar2_I2C4_SCL_pin", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 277, i32 1}
!405 = !{ptr @lochnagar2_I2C4_SDA_pin, !406, !"lochnagar2_I2C4_SDA_pin", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 278, i32 1}
!407 = !{ptr @lochnagar2_SPDIF_AIF_aif, !408, !"lochnagar2_SPDIF_AIF_aif", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 428, i32 1}
!409 = !{ptr @lochnagar2_PSIA1_aif, !410, !"lochnagar2_PSIA1_aif", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 422, i32 1}
!411 = !{ptr @lochnagar2_PSIA1_BCLK_pin, !412, !"lochnagar2_PSIA1_BCLK_pin", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 293, i32 1}
!413 = !{ptr @lochnagar2_PSIA1_LRCLK_pin, !412, !"lochnagar2_PSIA1_LRCLK_pin", i1 false, i1 false}
!414 = !{ptr @lochnagar2_PSIA1_RXDAT_pin, !412, !"lochnagar2_PSIA1_RXDAT_pin", i1 false, i1 false}
!415 = !{ptr @lochnagar2_PSIA1_TXDAT_pin, !412, !"lochnagar2_PSIA1_TXDAT_pin", i1 false, i1 false}
!416 = !{ptr @lochnagar2_PSIA2_aif, !417, !"lochnagar2_PSIA2_aif", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 423, i32 1}
!418 = !{ptr @lochnagar2_PSIA2_BCLK_pin, !419, !"lochnagar2_PSIA2_BCLK_pin", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 294, i32 1}
!420 = !{ptr @lochnagar2_PSIA2_LRCLK_pin, !419, !"lochnagar2_PSIA2_LRCLK_pin", i1 false, i1 false}
!421 = !{ptr @lochnagar2_PSIA2_RXDAT_pin, !419, !"lochnagar2_PSIA2_RXDAT_pin", i1 false, i1 false}
!422 = !{ptr @lochnagar2_PSIA2_TXDAT_pin, !419, !"lochnagar2_PSIA2_TXDAT_pin", i1 false, i1 false}
!423 = !{ptr @lochnagar2_CDC_AIF1_aif, !424, !"lochnagar2_CDC_AIF1_aif", i1 false, i1 false}
!424 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 417, i32 1}
!425 = !{ptr @lochnagar2_CDC_AIF1_BCLK_pin, !426, !"lochnagar2_CDC_AIF1_BCLK_pin", i1 false, i1 false}
!426 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 288, i32 1}
!427 = !{ptr @lochnagar2_CDC_AIF1_LRCLK_pin, !426, !"lochnagar2_CDC_AIF1_LRCLK_pin", i1 false, i1 false}
!428 = !{ptr @lochnagar2_CDC_AIF1_RXDAT_pin, !426, !"lochnagar2_CDC_AIF1_RXDAT_pin", i1 false, i1 false}
!429 = !{ptr @lochnagar2_CDC_AIF1_TXDAT_pin, !426, !"lochnagar2_CDC_AIF1_TXDAT_pin", i1 false, i1 false}
!430 = !{ptr @lochnagar2_CDC_AIF2_aif, !431, !"lochnagar2_CDC_AIF2_aif", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 418, i32 1}
!432 = !{ptr @lochnagar2_CDC_AIF2_BCLK_pin, !433, !"lochnagar2_CDC_AIF2_BCLK_pin", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 289, i32 1}
!434 = !{ptr @lochnagar2_CDC_AIF2_LRCLK_pin, !433, !"lochnagar2_CDC_AIF2_LRCLK_pin", i1 false, i1 false}
!435 = !{ptr @lochnagar2_CDC_AIF2_RXDAT_pin, !433, !"lochnagar2_CDC_AIF2_RXDAT_pin", i1 false, i1 false}
!436 = !{ptr @lochnagar2_CDC_AIF2_TXDAT_pin, !433, !"lochnagar2_CDC_AIF2_TXDAT_pin", i1 false, i1 false}
!437 = !{ptr @lochnagar2_CDC_AIF3_aif, !438, !"lochnagar2_CDC_AIF3_aif", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 419, i32 1}
!439 = !{ptr @lochnagar2_CDC_AIF3_BCLK_pin, !440, !"lochnagar2_CDC_AIF3_BCLK_pin", i1 false, i1 false}
!440 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 290, i32 1}
!441 = !{ptr @lochnagar2_CDC_AIF3_LRCLK_pin, !440, !"lochnagar2_CDC_AIF3_LRCLK_pin", i1 false, i1 false}
!442 = !{ptr @lochnagar2_CDC_AIF3_RXDAT_pin, !440, !"lochnagar2_CDC_AIF3_RXDAT_pin", i1 false, i1 false}
!443 = !{ptr @lochnagar2_CDC_AIF3_TXDAT_pin, !440, !"lochnagar2_CDC_AIF3_TXDAT_pin", i1 false, i1 false}
!444 = !{ptr @lochnagar2_DSP_AIF1_aif, !445, !"lochnagar2_DSP_AIF1_aif", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 420, i32 1}
!446 = !{ptr @lochnagar2_DSP_AIF1_BCLK_pin, !447, !"lochnagar2_DSP_AIF1_BCLK_pin", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 291, i32 1}
!448 = !{ptr @lochnagar2_DSP_AIF1_LRCLK_pin, !447, !"lochnagar2_DSP_AIF1_LRCLK_pin", i1 false, i1 false}
!449 = !{ptr @lochnagar2_DSP_AIF1_RXDAT_pin, !447, !"lochnagar2_DSP_AIF1_RXDAT_pin", i1 false, i1 false}
!450 = !{ptr @lochnagar2_DSP_AIF1_TXDAT_pin, !447, !"lochnagar2_DSP_AIF1_TXDAT_pin", i1 false, i1 false}
!451 = !{ptr @lochnagar2_DSP_AIF2_aif, !452, !"lochnagar2_DSP_AIF2_aif", i1 false, i1 false}
!452 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 421, i32 1}
!453 = !{ptr @lochnagar2_DSP_AIF2_BCLK_pin, !454, !"lochnagar2_DSP_AIF2_BCLK_pin", i1 false, i1 false}
!454 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 292, i32 1}
!455 = !{ptr @lochnagar2_DSP_AIF2_LRCLK_pin, !454, !"lochnagar2_DSP_AIF2_LRCLK_pin", i1 false, i1 false}
!456 = !{ptr @lochnagar2_DSP_AIF2_RXDAT_pin, !454, !"lochnagar2_DSP_AIF2_RXDAT_pin", i1 false, i1 false}
!457 = !{ptr @lochnagar2_DSP_AIF2_TXDAT_pin, !454, !"lochnagar2_DSP_AIF2_TXDAT_pin", i1 false, i1 false}
!458 = !{ptr @lochnagar2_GF_AIF3_aif, !459, !"lochnagar2_GF_AIF3_aif", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 426, i32 1}
!460 = !{ptr @lochnagar2_GF_AIF3_BCLK_pin, !461, !"lochnagar2_GF_AIF3_BCLK_pin", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 297, i32 1}
!462 = !{ptr @lochnagar2_GF_AIF3_LRCLK_pin, !461, !"lochnagar2_GF_AIF3_LRCLK_pin", i1 false, i1 false}
!463 = !{ptr @lochnagar2_GF_AIF3_RXDAT_pin, !461, !"lochnagar2_GF_AIF3_RXDAT_pin", i1 false, i1 false}
!464 = !{ptr @lochnagar2_GF_AIF3_TXDAT_pin, !461, !"lochnagar2_GF_AIF3_TXDAT_pin", i1 false, i1 false}
!465 = !{ptr @lochnagar2_GF_AIF4_aif, !466, !"lochnagar2_GF_AIF4_aif", i1 false, i1 false}
!466 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 427, i32 1}
!467 = !{ptr @lochnagar2_GF_AIF4_BCLK_pin, !468, !"lochnagar2_GF_AIF4_BCLK_pin", i1 false, i1 false}
!468 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 298, i32 1}
!469 = !{ptr @lochnagar2_GF_AIF4_LRCLK_pin, !468, !"lochnagar2_GF_AIF4_LRCLK_pin", i1 false, i1 false}
!470 = !{ptr @lochnagar2_GF_AIF4_RXDAT_pin, !468, !"lochnagar2_GF_AIF4_RXDAT_pin", i1 false, i1 false}
!471 = !{ptr @lochnagar2_GF_AIF4_TXDAT_pin, !468, !"lochnagar2_GF_AIF4_TXDAT_pin", i1 false, i1 false}
!472 = !{ptr @lochnagar2_GF_AIF1_aif, !473, !"lochnagar2_GF_AIF1_aif", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 424, i32 1}
!474 = !{ptr @lochnagar2_GF_AIF1_BCLK_pin, !475, !"lochnagar2_GF_AIF1_BCLK_pin", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 295, i32 1}
!476 = !{ptr @lochnagar2_GF_AIF1_LRCLK_pin, !475, !"lochnagar2_GF_AIF1_LRCLK_pin", i1 false, i1 false}
!477 = !{ptr @lochnagar2_GF_AIF1_RXDAT_pin, !475, !"lochnagar2_GF_AIF1_RXDAT_pin", i1 false, i1 false}
!478 = !{ptr @lochnagar2_GF_AIF1_TXDAT_pin, !475, !"lochnagar2_GF_AIF1_TXDAT_pin", i1 false, i1 false}
!479 = !{ptr @lochnagar2_GF_AIF2_aif, !480, !"lochnagar2_GF_AIF2_aif", i1 false, i1 false}
!480 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 425, i32 1}
!481 = !{ptr @lochnagar2_GF_AIF2_BCLK_pin, !482, !"lochnagar2_GF_AIF2_BCLK_pin", i1 false, i1 false}
!482 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 296, i32 1}
!483 = !{ptr @lochnagar2_GF_AIF2_LRCLK_pin, !482, !"lochnagar2_GF_AIF2_LRCLK_pin", i1 false, i1 false}
!484 = !{ptr @lochnagar2_GF_AIF2_RXDAT_pin, !482, !"lochnagar2_GF_AIF2_RXDAT_pin", i1 false, i1 false}
!485 = !{ptr @lochnagar2_GF_AIF2_TXDAT_pin, !482, !"lochnagar2_GF_AIF2_TXDAT_pin", i1 false, i1 false}
!486 = !{ptr @lochnagar2_USB_AIF1_aif, !487, !"lochnagar2_USB_AIF1_aif", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 429, i32 1}
!488 = !{ptr @lochnagar2_USB_AIF2_aif, !489, !"lochnagar2_USB_AIF2_aif", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 430, i32 1}
!490 = !{ptr @lochnagar2_ADAT_AIF_aif, !491, !"lochnagar2_ADAT_AIF_aif", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 431, i32 1}
!492 = !{ptr @lochnagar2_SOUNDCARD_AIF_aif, !493, !"lochnagar2_SOUNDCARD_AIF_aif", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 432, i32 1}
!494 = !{ptr @lochnagar2_pins, !495, !"lochnagar2_pins", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 317, i32 38}
!496 = !{ptr @lochnagar2_CDC_CIF1MODE_pin, !497, !"lochnagar2_CDC_CIF1MODE_pin", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 223, i32 1}
!498 = !{ptr @lochnagar2_CDC_LDOENA_pin, !499, !"lochnagar2_CDC_LDOENA_pin", i1 false, i1 false}
!499 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 224, i32 1}
!500 = !{ptr @lochnagar2_SPDIF_HWMODE_pin, !501, !"lochnagar2_SPDIF_HWMODE_pin", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 225, i32 1}
!502 = !{ptr @lochnagar2_SPDIF_RESET_pin, !503, !"lochnagar2_SPDIF_RESET_pin", i1 false, i1 false}
!503 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 226, i32 1}
!504 = !{ptr @lochnagar2_SPDIF_AIF_BCLK_pin, !505, !"lochnagar2_SPDIF_AIF_BCLK_pin", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 299, i32 1}
!506 = !{ptr @lochnagar2_SPDIF_AIF_LRCLK_pin, !505, !"lochnagar2_SPDIF_AIF_LRCLK_pin", i1 false, i1 false}
!507 = !{ptr @lochnagar2_SPDIF_AIF_RXDAT_pin, !505, !"lochnagar2_SPDIF_AIF_RXDAT_pin", i1 false, i1 false}
!508 = !{ptr @lochnagar2_SPDIF_AIF_TXDAT_pin, !505, !"lochnagar2_SPDIF_AIF_TXDAT_pin", i1 false, i1 false}
!509 = !{ptr @lochnagar2_USB_AIF1_BCLK_pin, !510, !"lochnagar2_USB_AIF1_BCLK_pin", i1 false, i1 false}
!510 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 300, i32 1}
!511 = !{ptr @lochnagar2_USB_AIF1_LRCLK_pin, !510, !"lochnagar2_USB_AIF1_LRCLK_pin", i1 false, i1 false}
!512 = !{ptr @lochnagar2_USB_AIF1_RXDAT_pin, !510, !"lochnagar2_USB_AIF1_RXDAT_pin", i1 false, i1 false}
!513 = !{ptr @lochnagar2_USB_AIF1_TXDAT_pin, !510, !"lochnagar2_USB_AIF1_TXDAT_pin", i1 false, i1 false}
!514 = !{ptr @lochnagar2_USB_AIF2_BCLK_pin, !515, !"lochnagar2_USB_AIF2_BCLK_pin", i1 false, i1 false}
!515 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 301, i32 1}
!516 = !{ptr @lochnagar2_USB_AIF2_LRCLK_pin, !515, !"lochnagar2_USB_AIF2_LRCLK_pin", i1 false, i1 false}
!517 = !{ptr @lochnagar2_USB_AIF2_RXDAT_pin, !515, !"lochnagar2_USB_AIF2_RXDAT_pin", i1 false, i1 false}
!518 = !{ptr @lochnagar2_USB_AIF2_TXDAT_pin, !515, !"lochnagar2_USB_AIF2_TXDAT_pin", i1 false, i1 false}
!519 = !{ptr @lochnagar2_ADAT_AIF_BCLK_pin, !520, !"lochnagar2_ADAT_AIF_BCLK_pin", i1 false, i1 false}
!520 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 302, i32 1}
!521 = !{ptr @lochnagar2_ADAT_AIF_LRCLK_pin, !520, !"lochnagar2_ADAT_AIF_LRCLK_pin", i1 false, i1 false}
!522 = !{ptr @lochnagar2_ADAT_AIF_RXDAT_pin, !520, !"lochnagar2_ADAT_AIF_RXDAT_pin", i1 false, i1 false}
!523 = !{ptr @lochnagar2_ADAT_AIF_TXDAT_pin, !520, !"lochnagar2_ADAT_AIF_TXDAT_pin", i1 false, i1 false}
!524 = !{ptr @lochnagar2_SOUNDCARD_AIF_BCLK_pin, !525, !"lochnagar2_SOUNDCARD_AIF_BCLK_pin", i1 false, i1 false}
!525 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 303, i32 1}
!526 = !{ptr @lochnagar2_SOUNDCARD_AIF_LRCLK_pin, !525, !"lochnagar2_SOUNDCARD_AIF_LRCLK_pin", i1 false, i1 false}
!527 = !{ptr @lochnagar2_SOUNDCARD_AIF_RXDAT_pin, !525, !"lochnagar2_SOUNDCARD_AIF_RXDAT_pin", i1 false, i1 false}
!528 = !{ptr @lochnagar2_SOUNDCARD_AIF_TXDAT_pin, !525, !"lochnagar2_SOUNDCARD_AIF_TXDAT_pin", i1 false, i1 false}
!529 = !{ptr @lochnagar2_groups, !530, !"lochnagar2_groups", i1 false, i1 false}
!530 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 656, i32 37}
!531 = !{ptr @lochnagar_of_match, !532, !"lochnagar_of_match", i1 false, i1 false}
!532 = !{!"../drivers/pinctrl/cirrus/pinctrl-lochnagar.c", i32 1214, i32 34}
!533 = !{i32 1, !"wchar_size", i32 2}
!534 = !{i32 1, !"min_enum_size", i32 4}
!535 = !{i32 8, !"branch-target-enforcement", i32 0}
!536 = !{i32 8, !"sign-return-address", i32 0}
!537 = !{i32 8, !"sign-return-address-all", i32 0}
!538 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!539 = !{i32 7, !"uwtable", i32 1}
!540 = !{i32 7, !"frame-pointer", i32 2}
!541 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!542 = !{!"branch_weights", i32 1, i32 2000}
!543 = !{i64 2148348961, i64 2148348966, i64 2148348979, i64 2148349023, i64 2148349057, i64 2148349078}
!544 = !{i8 0, i8 2}
!545 = !{!"auto-init"}
