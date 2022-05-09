; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/samsung/pinctrl-samsung.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-samsung.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pin_config = type { ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.samsung_pinctrl_of_match_data = type { ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.samsung_pin_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.samsung_pin_bank_data = type { ptr, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.samsung_pin_bank = type { ptr, ptr, i32, i8, ptr, i8, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.raw_spinlock, [7 x i32] }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.samsung_retention_data = type { ptr, i32, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.samsung_pin_group = type { ptr, ptr, i8, i8 }
%struct.samsung_pmx_func = type { ptr, ptr, i8, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.samsung_retention_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_pinctrl_samsung__227_1311_samsung_pinctrl_drv_register2 = internal global ptr @samsung_pinctrl_drv_register, section ".initcall2.init", align 4
@samsung_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @samsung_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @samsung_pinctrl_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pinctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@samsung_pinctrl_dt_match = internal constant { [19 x %struct.of_device_id], [948 x i8] } { [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4x12-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4x12_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5410_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7885-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7885_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos850_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynosautov9-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynosautov9_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c64xx-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c64xx_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2412_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2416-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2416_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2450-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2450_of_data }, %struct.of_device_id zeroinitializer], [948 x i8] zeroinitializer }, align 32
@samsung_pinctrl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pinctrl_suspend, ptr @samsung_pinctrl_resume, ptr @samsung_pinctrl_suspend, ptr @samsung_pinctrl_resume, ptr @samsung_pinctrl_suspend, ptr @samsung_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@samsung_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver data not available\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung_pinctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pinctrl/samsung/pinctrl-samsung.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@samsung_pinctrl_probe._entry_ptr = internal global ptr @samsung_pinctrl_probe._entry, section ".printk_index", align 4
@samsung_pinctrl_get_soc_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1037, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get mem%d resource\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"samsung_pinctrl_get_soc_data\00", [35 x i8] zeroinitializer }, align 32
@samsung_pinctrl_get_soc_data._entry_ptr = internal global ptr @samsung_pinctrl_get_soc_data._entry, section ".printk_index", align 4
@samsung_pinctrl_get_soc_data._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 1043, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to ioremap %pR\0A\00", [41 x i8] zeroinitializer }, align 32
@samsung_pinctrl_get_soc_data._entry_ptr.10 = internal global ptr @samsung_pinctrl_get_soc_data._entry.8, section ".printk_index", align 4
@samsung_pinctrl_get_soc_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bank->slock\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@pin_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pinctrl\00", [24 x i8] zeroinitializer }, align 32
@samsung_pinctrl_get_soc_data_for_of_alias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 992, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get alias id\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"samsung_pinctrl_get_soc_data_for_of_alias\00", [54 x i8] zeroinitializer }, align 32
@samsung_pinctrl_get_soc_data_for_of_alias._entry_ptr = internal global ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry, section ".printk_index", align 4
@samsung_pinctrl_get_soc_data_for_of_alias._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid alias id %d\0A\00", [43 x i8] zeroinitializer }, align 32
@samsung_pinctrl_get_soc_data_for_of_alias._entry_ptr.18 = internal global ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry.16, section ".printk_index", align 4
@samsung_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @samsung_get_group_count, ptr @samsung_get_group_name, ptr @samsung_get_group_pins, ptr @samsung_pin_dbg_show, ptr @samsung_dt_node_to_map, ptr @samsung_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@samsung_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @samsung_get_functions_count, ptr @samsung_pinmux_get_fname, ptr @samsung_pinmux_get_groups, ptr @samsung_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@samsung_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @samsung_pinconf_get, ptr @samsung_pinconf_set, ptr @samsung_pinconf_group_get, ptr @samsung_pinconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@samsung_pinctrl_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_pinctrl_register\00", [39 x i8] zeroinitializer }, align 32
@samsung_pinctrl_register._entry_ptr = internal global ptr @samsung_pinctrl_register._entry, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %s(0x%lx)\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CON\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAT\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PUD\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DRV\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CON_PDN\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PUD_PDN\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"samsung,pin-function\00", [43 x i8] zeroinitializer }, align 32
@cfg_params = internal constant { [5 x %struct.pin_config], [56 x i8] } { [5 x %struct.pin_config] [%struct.pin_config { ptr @.str.36, i32 2 }, %struct.pin_config { ptr @.str.37, i32 3 }, %struct.pin_config { ptr @.str.38, i32 4 }, %struct.pin_config { ptr @.str.39, i32 5 }, %struct.pin_config { ptr @.str.40, i32 1 }], [56 x i8] zeroinitializer }, align 32
@samsung_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not parse property %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_dt_subnode_to_map\00", [38 x i8] zeroinitializer }, align 32
@samsung_dt_subnode_to_map._entry_ptr = internal global ptr @samsung_dt_subnode_to_map._entry, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"samsung,pins\00", [19 x i8] zeroinitializer }, align 32
@samsung_dt_subnode_to_map._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not parse property samsung,pins\0A\00", [57 x i8] zeroinitializer }, align 32
@samsung_dt_subnode_to_map._entry_ptr.35 = internal global ptr @samsung_dt_subnode_to_map._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung,pin-pud\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung,pin-drv\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,pin-con-pdn\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,pin-pud-pdn\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung,pin-val\00", [16 x i8] zeroinitializer }, align 32
@samsung_pinctrl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse pin groups\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_pinctrl_parse_dt\00", [39 x i8] zeroinitializer }, align 32
@samsung_pinctrl_parse_dt._entry_ptr = internal global ptr @samsung_pinctrl_parse_dt._entry, section ".printk_index", align 4
@samsung_pinctrl_parse_dt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to parse pin functions\0A\00", [33 x i8] zeroinitializer }, align 32
@samsung_pinctrl_parse_dt._entry_ptr.45 = internal global ptr @samsung_pinctrl_parse_dt._entry.43, section ".printk_index", align 4
@samsung_pinctrl_create_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid pin list in %pOFn node\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samsung_pinctrl_create_function\00", [32 x i8] zeroinitializer }, align 32
@samsung_pinctrl_create_function._entry_ptr = internal global ptr @samsung_pinctrl_create_function._entry, section ".printk_index", align 4
@samsung_pinctrl_create_function._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to read pin name %d from %pOFn node\0A\00", [52 x i8] zeroinitializer }, align 32
@samsung_pinctrl_create_function._entry_ptr.50 = internal global ptr @samsung_pinctrl_create_function._entry.48, section ".printk_index", align 4
@samsung_gpiolib_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @samsung_gpio_direction_input, ptr @samsung_gpio_direction_output, ptr @samsung_gpio_get, ptr null, ptr @samsung_gpio_set, ptr null, ptr null, ptr @samsung_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@samsung_gpiolib_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@samsung_gpiolib_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@samsung_gpiolib_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to register gpio_chip %s, error code: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_gpiolib_register\00", [39 x i8] zeroinitializer }, align 32
@samsung_gpiolib_register._entry_ptr = internal global ptr @samsung_gpiolib_register._entry, section ".printk_index", align 4
@exynos3250_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos4210_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos4x12_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5250_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5260_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5410_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5420_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s5pv210_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5433_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos7_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos7885_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos850_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynosautov9_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s3c64xx_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s3c2412_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s3c2416_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s3c2440_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s3c2450_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@samsung_pinctrl_suspend.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 1, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_samsung\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung_pinctrl_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Save %s @ %p (con %#010x %08x)\0A\00", [32 x i8] zeroinitializer }, align 32
@samsung_pinctrl_suspend.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.3, ptr @.str.56, i8 1, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Save %s @ %p (con %#010x)\0A\00", [37 x i8] zeroinitializer }, align 32
@samsung_pinctrl_resume.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 1, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung_pinctrl_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s @ %p (con %#010x %08x => %#010x %08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@samsung_pinctrl_resume.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 1, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s @ %p (con %#010x => %#010x)\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"samsung_pinctrl_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1297, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1300, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"samsung_pinctrl_dt_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1244, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"samsung_pinctrl_pm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1292, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1106, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1037, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1043, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1060, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1076, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"pin_base\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 48, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 990, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 992, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 998, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"samsung_pctrl_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 310, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"samsung_pinmux_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 423, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"samsung_pinconf_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 530, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 896, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 910, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 303, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 287, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 287, i32 49 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 287, i32 56 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 287, i32 63 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 287, i32 70 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 288, i32 7 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 190, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [11 x i8] c"cfg_params\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 40, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 203, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 213, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 215, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 41, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 42, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 43, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 44, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 45, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 835, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 841, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 709, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 725, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"samsung_gpiolib_chip\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 942, i32 31 }
@___asan_gen_.249 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 972, i32 9 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 974, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1173, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1178, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1220, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [45 x i8] c"../drivers/pinctrl/samsung/pinctrl-samsung.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1229, i32 4 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__initcall__kmod_pinctrl_samsung__227_1311_samsung_pinctrl_drv_register2, ptr @samsung_dt_subnode_to_map._entry, ptr @samsung_dt_subnode_to_map._entry.33, ptr @samsung_dt_subnode_to_map._entry_ptr, ptr @samsung_dt_subnode_to_map._entry_ptr.35, ptr @samsung_gpiolib_register._entry, ptr @samsung_gpiolib_register._entry_ptr, ptr @samsung_pinctrl_create_function._entry, ptr @samsung_pinctrl_create_function._entry.48, ptr @samsung_pinctrl_create_function._entry_ptr, ptr @samsung_pinctrl_create_function._entry_ptr.50, ptr @samsung_pinctrl_get_soc_data._entry, ptr @samsung_pinctrl_get_soc_data._entry.8, ptr @samsung_pinctrl_get_soc_data._entry_ptr, ptr @samsung_pinctrl_get_soc_data._entry_ptr.10, ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry, ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry.16, ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry_ptr, ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry_ptr.18, ptr @samsung_pinctrl_parse_dt._entry, ptr @samsung_pinctrl_parse_dt._entry.43, ptr @samsung_pinctrl_parse_dt._entry_ptr, ptr @samsung_pinctrl_parse_dt._entry_ptr.45, ptr @samsung_pinctrl_probe._entry, ptr @samsung_pinctrl_probe._entry_ptr, ptr @samsung_pinctrl_register._entry, ptr @samsung_pinctrl_register._entry_ptr, ptr @samsung_pinctrl_driver, ptr @.str, ptr @samsung_pinctrl_dt_match, ptr @samsung_pinctrl_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @samsung_pinctrl_get_soc_data.__key, ptr @.str.11, ptr @.str.12, ptr @pin_base, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @samsung_pctrl_ops, ptr @samsung_pinmux_ops, ptr @samsung_pinconf_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @cfg_params, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @samsung_gpiolib_chip, ptr @samsung_gpiolib_register.lock_key, ptr @samsung_gpiolib_register.request_key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_dt_match to i32), i32 3724, i32 4672, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_get_soc_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_get_soc_data._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_get_soc_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_dt_subnode_to_map._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_parse_dt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_create_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pinctrl_create_function._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_drv_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %virt_base.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %virt_base.i) #8
  %2 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %virt_base.i, align 4, !annotation !151
  %3 = getelementptr inbounds [2 x ptr], ptr %virt_base.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !151
  %call.i.i = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %samsung_pinctrl_get_soc_data.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %call3.i.i = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %num_ctrl.i.i = getelementptr inbounds %struct.samsung_pinctrl_of_match_data, ptr %call3.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %num_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ctrl.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %6)
  %cmp4.not.i.i = icmp ult i32 %call.i.i, %6
  br i1 %cmp4.not.i.i, label %samsung_pinctrl_get_soc_data_for_of_alias.exit.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i.i) #11
  br label %samsung_pinctrl_get_soc_data.exit.thread

samsung_pinctrl_get_soc_data_for_of_alias.exit.i: ; preds = %if.end.i.i
  %7 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call3.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %samsung_pinctrl_get_soc_data_for_of_alias.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge, label %if.end.i

samsung_pinctrl_get_soc_data_for_of_alias.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge: ; preds = %samsung_pinctrl_get_soc_data_for_of_alias.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_get_soc_data.exit.thread

if.end.i:                                         ; preds = %samsung_pinctrl_get_soc_data_for_of_alias.exit.i
  %suspend.i = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 6
  %9 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %suspend.i, align 4
  %suspend2.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 15
  %11 = ptrtoint ptr %suspend2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %suspend2.i, align 4
  %resume.i = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 7
  %12 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume.i, align 4
  %resume3.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %resume3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %resume3.i, align 4
  %nr_banks.i = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 1
  %15 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_banks.i, align 4
  %nr_banks4.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %nr_banks4.i, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 520) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !152

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pin_banks177.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %pin_banks177.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pin_banks177.i, align 4
  br label %samsung_pinctrl_get_soc_data.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %21 = extractvalue { i32, i1 } %18, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %21, i32 noundef 3520) #8
  %pin_banks.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i.i, ptr %pin_banks.i, align 4
  %tobool9.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool9.not.i, label %devm_kcalloc.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge, label %if.end12.i

devm_kcalloc.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_get_soc_data.exit.thread

if.end12.i:                                       ; preds = %devm_kcalloc.exit.i
  %nr_ext_resources.i = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 2
  %23 = ptrtoint ptr %nr_ext_resources.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_ext_resources.i, align 4
  %25 = add i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %25)
  %cmp.i = icmp ult i32 %25, -3
  br i1 %cmp.i, label %if.end12.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge, label %for.cond.preheader.i

if.end12.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_get_soc_data.exit.thread

for.cond.preheader.i:                             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp18184.not.i = icmp eq i32 %24, -1
  br i1 %cmp18184.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0185.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call19.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %i.0185.i) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %do.end.i, label %if.end24.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %i.0185.i) #11
  br label %samsung_pinctrl_get_soc_data.exit.thread

if.end24.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %call19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call19.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call19.i, i32 0, i32 1
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %27
  %add.i.i = add i32 %sub.i.i, %29
  %call27.i = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %27, i32 noundef %add.i.i) #8
  %arrayidx.i = getelementptr [2 x ptr], ptr %virt_base.i, i32 0, i32 %i.0185.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call27.i, ptr %arrayidx.i, align 4
  %tobool29.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool29.not.i, label %do.end33.i, label %for.inc.i

do.end33.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %call19.i) #11
  br label %samsung_pinctrl_get_soc_data.exit.thread

for.inc.i:                                        ; preds = %if.end24.i
  %inc.i = add nuw i32 %i.0185.i, 1
  %31 = ptrtoint ptr %nr_ext_resources.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_ext_resources.i, align 4
  %add17.i = add i32 %32, 1
  %cmp18.i = icmp ult i32 %inc.i, %add17.i
  br i1 %cmp18.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %33 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp41186.not.i = icmp eq i32 %34, 0
  br i1 %cmp41186.not.i, label %for.end.i.for.end63.i_crit_edge, label %for.body42.lr.ph.i

for.end.i.for.end63.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end63.i

for.body42.lr.ph.i:                               ; preds = %for.end.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %37 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pin_banks.i, align 4
  %nr_pins54.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 13
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %i.1189.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc61.i, %for.body42.i.for.body42.i_crit_edge ]
  %bank.0188.i = phi ptr [ %38, %for.body42.lr.ph.i ], [ %incdec.ptr62.i, %for.body42.i.for.body42.i_crit_edge ]
  %bdata.0187.i = phi ptr [ %36, %for.body42.lr.ph.i ], [ %incdec.ptr.i, %for.body42.i.for.body42.i_crit_edge ]
  %39 = ptrtoint ptr %bdata.0187.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdata.0187.i, align 4
  %41 = ptrtoint ptr %bank.0188.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %bank.0188.i, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 1
  %42 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pctl_offset.i, align 4
  %pctl_offset44.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 2
  %44 = ptrtoint ptr %pctl_offset44.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %pctl_offset44.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 3
  %45 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr_pins.i, align 1
  %nr_pins45.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 3
  %47 = ptrtoint ptr %nr_pins45.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %nr_pins45.i, align 4
  %eint_func.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 4
  %48 = ptrtoint ptr %eint_func.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %eint_func.i, align 2
  %eint_func46.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 5
  %50 = ptrtoint ptr %eint_func46.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %eint_func46.i, align 4
  %eint_type.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 5
  %51 = ptrtoint ptr %eint_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eint_type.i, align 4
  %eint_type47.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 6
  %53 = ptrtoint ptr %eint_type47.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %eint_type47.i, align 4
  %eint_mask.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 6
  %54 = ptrtoint ptr %eint_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %eint_mask.i, align 4
  %eint_mask48.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 7
  %56 = ptrtoint ptr %eint_mask48.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %eint_mask48.i, align 4
  %eint_offset.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 7
  %57 = ptrtoint ptr %eint_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %eint_offset.i, align 4
  %eint_offset49.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 8
  %59 = ptrtoint ptr %eint_offset49.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %eint_offset49.i, align 4
  %name.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 8
  %60 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name.i, align 4
  %name50.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 9
  %62 = ptrtoint ptr %name50.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %name50.i, align 4
  %slock.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %slock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @samsung_pinctrl_get_soc_data.__key, i16 noundef signext 2) #8
  %drvdata.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 13
  %63 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %drvdata.i, align 4
  %64 = ptrtoint ptr %nr_pins54.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_pins54.i, align 4
  %pin_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 10
  %66 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %pin_base.i, align 4
  %67 = ptrtoint ptr %nr_pins45.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_pins45.i, align 4
  %conv.i = zext i8 %68 to i32
  %69 = load i32, ptr %nr_pins54.i, align 4
  %add57.i = add i32 %69, %conv.i
  store i32 %add57.i, ptr %nr_pins54.i, align 4
  %70 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %virt_base.i, align 4
  %eint_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 4
  %72 = ptrtoint ptr %eint_base.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %eint_base.i, align 4
  %pctl_res_idx.i = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 0, i32 2
  %73 = ptrtoint ptr %pctl_res_idx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pctl_res_idx.i, align 4
  %idxprom.i = zext i8 %74 to i32
  %arrayidx59.i = getelementptr [2 x ptr], ptr %virt_base.i, i32 0, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx59.i, align 4
  %pctl_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0188.i, i32 0, i32 1
  %77 = ptrtoint ptr %pctl_base.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %pctl_base.i, align 4
  %inc61.i = add nuw i32 %i.1189.i, 1
  %incdec.ptr.i = getelementptr %struct.samsung_pin_bank_data, ptr %bdata.0187.i, i32 1
  %incdec.ptr62.i = getelementptr %struct.samsung_pin_bank, ptr %bank.0188.i, i32 1
  %78 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_banks.i, align 4
  %cmp41.i = icmp ult i32 %inc61.i, %79
  br i1 %cmp41.i, label %for.body42.i.for.body42.i_crit_edge, label %for.body42.i.for.end63.i_crit_edge

for.body42.i.for.end63.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end63.i

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i

for.end63.i:                                      ; preds = %for.body42.i.for.end63.i_crit_edge, %for.end.i.for.end63.i_crit_edge
  %80 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %virt_base.i, align 4
  %virt_base65.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 1
  %82 = ptrtoint ptr %virt_base65.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %virt_base65.i, align 4
  %call66.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp68.not193.i = icmp eq ptr %call66.i, null
  br i1 %cmp68.not193.i, label %for.end63.i.samsung_pinctrl_get_soc_data.exit_crit_edge, label %for.end63.i.for.body70.i_crit_edge

for.end63.i.for.body70.i_crit_edge:               ; preds = %for.end63.i
  br label %for.body70.i

for.end63.i.samsung_pinctrl_get_soc_data.exit_crit_edge: ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_get_soc_data.exit

for.body70.i:                                     ; preds = %for.inc90.i.for.body70.i_crit_edge, %for.end63.i.for.body70.i_crit_edge
  %np.0194.i = phi ptr [ %call91.i, %for.inc90.i.for.body70.i_crit_edge ], [ %call66.i, %for.end63.i.for.body70.i_crit_edge ]
  %call71.i = tail call ptr @of_find_property(ptr noundef nonnull %np.0194.i, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool72.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool72.not.i, label %for.body70.i.for.inc90.i_crit_edge, label %if.end74.i

for.body70.i.for.inc90.i_crit_edge:               ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90.i

if.end74.i:                                       ; preds = %for.body70.i
  %83 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_banks4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp78190.not.i = icmp eq i32 %84, 0
  br i1 %cmp78190.not.i, label %if.end74.i.for.inc90.i_crit_edge, label %for.body80.preheader.i

if.end74.i.for.inc90.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90.i

for.body80.preheader.i:                           ; preds = %if.end74.i
  %85 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pin_banks.i, align 4
  br label %for.body80.i

for.body80.i:                                     ; preds = %for.inc86.i.for.body80.i_crit_edge, %for.body80.preheader.i
  %i.2192.i = phi i32 [ %inc87.i, %for.inc86.i.for.body80.i_crit_edge ], [ 0, %for.body80.preheader.i ]
  %bank.1191.i = phi ptr [ %incdec.ptr88.i, %for.inc86.i.for.body80.i_crit_edge ], [ %86, %for.body80.preheader.i ]
  %name81.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.1191.i, i32 0, i32 9
  %87 = ptrtoint ptr %name81.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name81.i, align 4
  %call82.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %np.0194.i, ptr noundef %88) #8
  br i1 %call82.i, label %if.then83.i, label %for.inc86.i

if.then83.i:                                      ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  %of_node84.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.1191.i, i32 0, i32 12
  %89 = ptrtoint ptr %of_node84.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %np.0194.i, ptr %of_node84.i, align 4
  br label %for.inc90.i

for.inc86.i:                                      ; preds = %for.body80.i
  %inc87.i = add nuw i32 %i.2192.i, 1
  %incdec.ptr88.i = getelementptr %struct.samsung_pin_bank, ptr %bank.1191.i, i32 1
  %90 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr_banks4.i, align 4
  %cmp78.i = icmp ult i32 %inc87.i, %91
  br i1 %cmp78.i, label %for.inc86.i.for.body80.i_crit_edge, label %for.inc86.i.for.inc90.i_crit_edge

for.inc86.i.for.inc90.i_crit_edge:                ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90.i

for.inc86.i.for.body80.i_crit_edge:               ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80.i

for.inc90.i:                                      ; preds = %for.inc86.i.for.inc90.i_crit_edge, %if.then83.i, %if.end74.i.for.inc90.i_crit_edge, %for.body70.i.for.inc90.i_crit_edge
  %call91.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %np.0194.i) #8
  %cmp68.not.i = icmp eq ptr %call91.i, null
  br i1 %cmp68.not.i, label %for.inc90.i.samsung_pinctrl_get_soc_data.exit_crit_edge, label %for.inc90.i.for.body70.i_crit_edge

for.inc90.i.for.body70.i_crit_edge:               ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body70.i

for.inc90.i.samsung_pinctrl_get_soc_data.exit_crit_edge: ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_get_soc_data.exit

samsung_pinctrl_get_soc_data.exit.thread:         ; preds = %do.end33.i, %do.end.i, %if.end12.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge, %devm_kcalloc.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %samsung_pinctrl_get_soc_data_for_of_alias.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge, %do.end8.i.i, %do.end.i.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -2 to ptr), %do.end8.i.i ], [ inttoptr (i32 -2 to ptr), %do.end.i.i ], [ inttoptr (i32 -22 to ptr), %if.end12.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -2 to ptr), %samsung_pinctrl_get_soc_data_for_of_alias.exit.i.samsung_pinctrl_get_soc_data.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -5 to ptr), %do.end33.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %virt_base.i) #8
  br label %do.end

samsung_pinctrl_get_soc_data.exit:                ; preds = %for.inc90.i.samsung_pinctrl_get_soc_data.exit_crit_edge, %for.end63.i.samsung_pinctrl_get_soc_data.exit_crit_edge
  %92 = load i32, ptr @pin_base, align 4
  %pin_base93.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 12
  %93 = ptrtoint ptr %pin_base93.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %pin_base93.i, align 4
  %nr_pins94.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 13
  %94 = ptrtoint ptr %nr_pins94.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nr_pins94.i, align 4
  %add95.i = add i32 %95, %92
  store i32 %add95.i, ptr @pin_base, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %virt_base.i) #8
  %cmp.i89 = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %samsung_pinctrl_get_soc_data.exit.do.end_crit_edge, label %if.end7

samsung_pinctrl_get_soc_data.exit.do.end_crit_edge: ; preds = %samsung_pinctrl_get_soc_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %samsung_pinctrl_get_soc_data.exit.do.end_crit_edge, %samsung_pinctrl_get_soc_data.exit.thread
  %retval.0.i143 = phi ptr [ %retval.0.i.ph, %samsung_pinctrl_get_soc_data.exit.thread ], [ %arrayidx.i.i, %samsung_pinctrl_get_soc_data.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  %96 = ptrtoint ptr %retval.0.i143 to i32
  br label %cleanup

if.end7:                                          ; preds = %samsung_pinctrl_get_soc_data.exit
  %dev8 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 2
  %97 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp = icmp sgt i32 %call9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, -6
  %or.cond = or i1 %cmp, %cmp10.not
  br i1 %or.cond, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13 = icmp sgt i32 %call9, 0
  br i1 %cmp13, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 3
  %98 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call9, ptr %irq, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %retention_data = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 3
  %99 = ptrtoint ptr %retention_data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %retention_data, align 4
  %tobool16.not = icmp eq ptr %100, null
  br i1 %tobool16.not, label %if.end15.if.end27_crit_edge, label %if.then17

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then17:                                        ; preds = %if.end15
  %init = getelementptr inbounds %struct.samsung_retention_data, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init, align 4
  %call20 = tail call ptr %102(ptr noundef nonnull %call.i, ptr noundef nonnull %100) #8
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 14
  %103 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call20, ptr %retention_ctrl, align 4
  %cmp.i90 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then23, label %if.then17.if.end27_crit_edge

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.then17.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %pctl.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4
  %105 = ptrtoint ptr %pctl.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str, ptr %pctl.i, align 4
  %owner.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4, i32 6
  %106 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %owner.i, align 4
  %pctlops.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4, i32 3
  %107 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @samsung_pctrl_ops, ptr %pctlops.i, align 4
  %pmxops.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4, i32 4
  %108 = ptrtoint ptr %pmxops.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @samsung_pinmux_ops, ptr %pmxops.i, align 4
  %confops.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4, i32 5
  %109 = ptrtoint ptr %confops.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @samsung_pinconf_ops, ptr %confops.i, align 4
  %110 = ptrtoint ptr %nr_pins94.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_pins94.i, align 4
  %112 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %111, i32 12) #8
  %113 = extractvalue { i32, i1 } %112, 1
  br i1 %113, label %if.end27.cleanup_crit_edge, label %devm_kcalloc.exit.i95, !prof !152

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit.i95:                            ; preds = %if.end27
  %114 = extractvalue { i32, i1 } %112, 0
  %call5.i.i.i93 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %114, i32 noundef 3520) #8
  %tobool.not.i94 = icmp eq ptr %call5.i.i.i93, null
  br i1 %tobool.not.i94, label %devm_kcalloc.exit.i95.cleanup_crit_edge, label %if.end.i96

devm_kcalloc.exit.i95.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i96:                                       ; preds = %devm_kcalloc.exit.i95
  %pins.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call5.i.i.i93, ptr %pins.i, align 4
  %116 = ptrtoint ptr %nr_pins94.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr_pins94.i, align 4
  %npins.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 4, i32 2
  %118 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp150.not.i = icmp eq i32 %117, 0
  br i1 %cmp150.not.i, label %if.end.i96.for.end.i102_crit_edge, label %for.body.lr.ph.i

if.end.i96.for.end.i102_crit_edge:                ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i102

for.body.lr.ph.i:                                 ; preds = %if.end.i96
  %119 = ptrtoint ptr %pin_base93.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pin_base93.i, align 4
  br label %for.body.i100

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %for.body.lr.ph.i
  %pin.0152.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i98, %for.body.i100.for.body.i100_crit_edge ]
  %pdesc.0151.i = phi ptr [ %call5.i.i.i93, %for.body.lr.ph.i ], [ %incdec.ptr.i99, %for.body.i100.for.body.i100_crit_edge ]
  %add.i = add i32 %pin.0152.i, %120
  %121 = ptrtoint ptr %pdesc.0151.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add.i, ptr %pdesc.0151.i, align 4
  %inc.i98 = add nuw i32 %pin.0152.i, 1
  %incdec.ptr.i99 = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0151.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i98, %117
  br i1 %exitcond.not.i, label %for.body.i100.for.end.i102_crit_edge, label %for.body.i100.for.body.i100_crit_edge

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i100

for.body.i100.for.end.i102_crit_edge:             ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i102

for.end.i102:                                     ; preds = %for.body.i100.for.end.i102_crit_edge, %if.end.i96.for.end.i102_crit_edge
  %122 = ptrtoint ptr %nr_pins94.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nr_pins94.i, align 4
  %124 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %123, i32 10) #8
  %125 = extractvalue { i32, i1 } %124, 1
  %126 = extractvalue { i32, i1 } %124, 0
  %spec.select.i.i = select i1 %125, i32 -1, i32 %126
  %call.i.i101 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i.i, i32 noundef 3520) #8
  %tobool7.not.i = icmp eq ptr %call.i.i101, null
  br i1 %tobool7.not.i, label %for.end.i102.cleanup_crit_edge, label %for.cond10.preheader.i

for.end.i102.cleanup_crit_edge:                   ; preds = %for.end.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond10.preheader.i:                           ; preds = %for.end.i102
  %127 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nr_banks4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp11157.not.i = icmp eq i32 %128, 0
  br i1 %cmp11157.not.i, label %for.cond10.preheader.i.for.end29.i_crit_edge, label %for.cond10.preheader.i.for.body12.i_crit_edge

for.cond10.preheader.i.for.body12.i_crit_edge:    ; preds = %for.cond10.preheader.i
  br label %for.body12.i

for.cond10.preheader.i.for.end29.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.i

for.body12.i:                                     ; preds = %for.inc27.i.for.body12.i_crit_edge, %for.cond10.preheader.i.for.body12.i_crit_edge
  %bank.0159.i = phi i32 [ %inc28.i, %for.inc27.i.for.body12.i_crit_edge ], [ 0, %for.cond10.preheader.i.for.body12.i_crit_edge ]
  %pin_names.0158.i = phi ptr [ %pin_names.1.lcssa.i, %for.inc27.i.for.body12.i_crit_edge ], [ %call.i.i101, %for.cond10.preheader.i.for.body12.i_crit_edge ]
  %129 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pin_banks.i, align 4
  %nr_pins14.i = getelementptr %struct.samsung_pin_bank, ptr %130, i32 %bank.0159.i, i32 3
  %131 = ptrtoint ptr %nr_pins14.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nr_pins14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp15154.not.i = icmp eq i8 %132, 0
  br i1 %cmp15154.not.i, label %for.body12.i.for.inc27.i_crit_edge, label %for.body17.lr.ph.i

for.body12.i.for.inc27.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc27.i

for.body17.lr.ph.i:                               ; preds = %for.body12.i
  %name18.i = getelementptr %struct.samsung_pin_bank, ptr %130, i32 %bank.0159.i, i32 9
  %pin_base20.i = getelementptr %struct.samsung_pin_bank, ptr %130, i32 %bank.0159.i, i32 10
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %pin.1156.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc25.i, %for.body17.i.for.body17.i_crit_edge ]
  %pin_names.1155.i = phi ptr [ %pin_names.0158.i, %for.body17.lr.ph.i ], [ %add.ptr23.i, %for.body17.i.for.body17.i_crit_edge ]
  %133 = ptrtoint ptr %name18.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name18.i, align 4
  %call19.i105 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pin_names.1155.i, ptr noundef nonnull @.str.19, ptr noundef %134, i32 noundef %pin.1156.i) #8
  %135 = ptrtoint ptr %pin_base20.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pin_base20.i, align 4
  %add.ptr.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i93, i32 %136
  %add.ptr21.i = getelementptr %struct.pinctrl_pin_desc, ptr %add.ptr.i, i32 %pin.1156.i
  %name22.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %add.ptr21.i, i32 0, i32 1
  %137 = ptrtoint ptr %name22.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %pin_names.1155.i, ptr %name22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %pin_names.1155.i, i32 10
  %inc25.i = add nuw nsw i32 %pin.1156.i, 1
  %138 = ptrtoint ptr %nr_pins14.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_pins14.i, align 4
  %conv.i106 = zext i8 %139 to i32
  %cmp15.i = icmp ult i32 %inc25.i, %conv.i106
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.for.inc27.i_crit_edge

for.body17.i.for.inc27.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc27.i

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i

for.inc27.i:                                      ; preds = %for.body17.i.for.inc27.i_crit_edge, %for.body12.i.for.inc27.i_crit_edge
  %pin_names.1.lcssa.i = phi ptr [ %pin_names.0158.i, %for.body12.i.for.inc27.i_crit_edge ], [ %add.ptr23.i, %for.body17.i.for.inc27.i_crit_edge ]
  %inc28.i = add nuw i32 %bank.0159.i, 1
  %140 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nr_banks4.i, align 4
  %cmp11.i = icmp ult i32 %inc28.i, %141
  br i1 %cmp11.i, label %for.inc27.i.for.body12.i_crit_edge, label %for.inc27.i.for.end29.i_crit_edge

for.inc27.i.for.end29.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.i

for.inc27.i.for.body12.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.end29.i:                                      ; preds = %for.inc27.i.for.end29.i_crit_edge, %for.cond10.preheader.i.for.end29.i_crit_edge
  %142 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %npins.i, align 4
  %144 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %143, i32 12) #8
  %145 = extractvalue { i32, i1 } %144, 1
  br i1 %145, label %for.end29.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, label %devm_kcalloc.exit.i.i.i, !prof !152

for.end29.i.samsung_pinctrl_parse_dt.exit.i_crit_edge: ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_parse_dt.exit.i

devm_kcalloc.exit.i.i.i:                          ; preds = %for.end29.i
  %146 = extractvalue { i32, i1 } %144, 0
  %call5.i.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %146, i32 noundef 3520) #8
  %tobool.not.i.i.i = icmp eq ptr %call5.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %devm_kcalloc.exit.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, label %if.end.i.i140.i

devm_kcalloc.exit.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_parse_dt.exit.i

if.end.i.i140.i:                                  ; preds = %devm_kcalloc.exit.i.i.i
  %147 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp24.not.i.i.i = icmp eq i32 %148, 0
  br i1 %cmp24.not.i.i.i, label %if.end.i.i140.i.samsung_pinctrl_create_groups.exit.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i140.i.samsung_pinctrl_create_groups.exit.i.i_crit_edge: ; preds = %if.end.i.i140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_create_groups.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i140.i
  %149 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pins.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.027.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %pdesc.026.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %150, %for.body.preheader.i.i.i ]
  %grp.025.i.i.i = phi ptr [ %incdec.ptr5.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call5.i.i.i.i.i, %for.body.preheader.i.i.i ]
  %name.i.i.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pdesc.026.i.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name.i.i.i, align 4
  %153 = ptrtoint ptr %grp.025.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %grp.025.i.i.i, align 4
  %pins4.i.i.i = getelementptr inbounds %struct.samsung_pin_group, ptr %grp.025.i.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %pins4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %pdesc.026.i.i.i, ptr %pins4.i.i.i, align 4
  %num_pins.i.i.i = getelementptr inbounds %struct.samsung_pin_group, ptr %grp.025.i.i.i, i32 0, i32 2
  %155 = ptrtoint ptr %num_pins.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %num_pins.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.027.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.026.i.i.i, i32 1
  %incdec.ptr5.i.i.i = getelementptr %struct.samsung_pin_group, ptr %grp.025.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %148
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.samsung_pinctrl_create_groups.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.samsung_pinctrl_create_groups.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_create_groups.exit.i.i

samsung_pinctrl_create_groups.exit.i.i:           ; preds = %for.body.i.i.i.samsung_pinctrl_create_groups.exit.i.i_crit_edge, %if.end.i.i140.i.samsung_pinctrl_create_groups.exit.i.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %call5.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %samsung_pinctrl_create_groups.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, label %if.end.i.i107

samsung_pinctrl_create_groups.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge: ; preds = %samsung_pinctrl_create_groups.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_parse_dt.exit.i

if.end.i.i107:                                    ; preds = %samsung_pinctrl_create_groups.exit.i.i
  %156 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = tail call ptr @of_get_next_child(ptr noundef %157, ptr noundef null) #8
  %cmp.not34.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.not34.i.i.i, label %if.end.i.i107.for.end18.i.i.i_crit_edge, label %if.end.i.i107.for.body.i28.i.i_crit_edge

if.end.i.i107.for.body.i28.i.i_crit_edge:         ; preds = %if.end.i.i107
  br label %for.body.i28.i.i

if.end.i.i107.for.end18.i.i.i_crit_edge:          ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18.i.i.i

for.body.i28.i.i:                                 ; preds = %cleanup.i.i.i.for.body.i28.i.i_crit_edge, %if.end.i.i107.for.body.i28.i.i_crit_edge
  %func_cnt.039.i.i.i = phi i32 [ %func_cnt.3.i.i.i, %cleanup.i.i.i.for.body.i28.i.i_crit_edge ], [ 0, %if.end.i.i107.for.body.i28.i.i_crit_edge ]
  %cfg_np.035.i.i.i = phi ptr [ %call17.i.i.i, %cleanup.i.i.i.for.body.i28.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.i107.for.body.i28.i.i_crit_edge ]
  %call.i.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.035.i.i.i, ptr noundef null) #8
  %cmp.not5.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %cmp.not5.i.i.i.i, label %for.body.i28.i.i.if.then.i.i.i_crit_edge, label %for.body.i28.i.i.for.body.i.i.i.i_crit_edge

for.body.i28.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i28.i.i
  br label %for.body.i.i.i.i

for.body.i28.i.i.if.then.i.i.i_crit_edge:         ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i28.i.i.for.body.i.i.i.i_crit_edge
  %num.07.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.i28.i.i.for.body.i.i.i.i_crit_edge ]
  %child.06.i.i.i.i = phi ptr [ %call1.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %call.i.i.i.i, %for.body.i28.i.i.for.body.i.i.i.i_crit_edge ]
  %inc.i.i.i.i = add i32 %num.07.i.i.i.i, 1
  %call1.i.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.035.i.i.i, ptr noundef nonnull %child.06.i.i.i.i) #8
  %cmp.not.i.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp.not.i.i.i.i, label %of_get_child_count.exit.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

of_get_child_count.exit.i.i.i:                    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i.i.i)
  %tobool.not.i29.i.i = icmp eq i32 %inc.i.i.i.i, 0
  br i1 %tobool.not.i29.i.i, label %of_get_child_count.exit.i.i.i.if.then.i.i.i_crit_edge, label %if.end5.i.i.i

of_get_child_count.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %of_get_child_count.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %of_get_child_count.exit.i.i.i.if.then.i.i.i_crit_edge, %for.body.i28.i.i.if.then.i.i.i_crit_edge
  %call2.i.i.i = tail call ptr @of_find_property(ptr noundef nonnull %cfg_np.035.i.i.i, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %tobool3.not.i.i.i = icmp ne ptr %call2.i.i.i, null
  %inc.i30.i.i = zext i1 %tobool3.not.i.i.i to i32
  %spec.select1.i.i.i = add i32 %func_cnt.039.i.i.i, %inc.i30.i.i
  br label %cleanup.i.i.i

if.end5.i.i.i:                                    ; preds = %of_get_child_count.exit.i.i.i
  %call6.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.035.i.i.i, ptr noundef null) #8
  %cmp8.not31.i.i.i = icmp eq ptr %call6.i.i.i, null
  br i1 %cmp8.not31.i.i.i, label %if.end5.i.i.i.cleanup.i.i.i_crit_edge, label %if.end5.i.i.i.for.body9.i.i.i_crit_edge

if.end5.i.i.i.for.body9.i.i.i_crit_edge:          ; preds = %if.end5.i.i.i
  br label %for.body9.i.i.i

if.end5.i.i.i.cleanup.i.i.i_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

for.body9.i.i.i:                                  ; preds = %for.body9.i.i.i.for.body9.i.i.i_crit_edge, %if.end5.i.i.i.for.body9.i.i.i_crit_edge
  %func_np.033.i.i.i = phi ptr [ %call15.i.i.i, %for.body9.i.i.i.for.body9.i.i.i_crit_edge ], [ %call6.i.i.i, %if.end5.i.i.i.for.body9.i.i.i_crit_edge ]
  %func_cnt.132.i.i.i = phi i32 [ %spec.select.i.i.i, %for.body9.i.i.i.for.body9.i.i.i_crit_edge ], [ %func_cnt.039.i.i.i, %if.end5.i.i.i.for.body9.i.i.i_crit_edge ]
  %call10.i.i.i = tail call ptr @of_find_property(ptr noundef nonnull %func_np.033.i.i.i, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %tobool11.not.i.i.i = icmp ne ptr %call10.i.i.i, null
  %inc14.i.i.i = zext i1 %tobool11.not.i.i.i to i32
  %spec.select.i.i.i = add i32 %func_cnt.132.i.i.i, %inc14.i.i.i
  %call15.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.035.i.i.i, ptr noundef nonnull %func_np.033.i.i.i) #8
  %cmp8.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %cmp8.not.i.i.i, label %for.body9.i.i.i.cleanup.i.i.i_crit_edge, label %for.body9.i.i.i.for.body9.i.i.i_crit_edge

for.body9.i.i.i.for.body9.i.i.i_crit_edge:        ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i.i.i

for.body9.i.i.i.cleanup.i.i.i_crit_edge:          ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %for.body9.i.i.i.cleanup.i.i.i_crit_edge, %if.end5.i.i.i.cleanup.i.i.i_crit_edge, %if.then.i.i.i
  %func_cnt.3.i.i.i = phi i32 [ %spec.select1.i.i.i, %if.then.i.i.i ], [ %func_cnt.039.i.i.i, %if.end5.i.i.i.cleanup.i.i.i_crit_edge ], [ %spec.select.i.i.i, %for.body9.i.i.i.cleanup.i.i.i_crit_edge ]
  %call17.i.i.i = tail call ptr @of_get_next_child(ptr noundef %157, ptr noundef nonnull %cfg_np.035.i.i.i) #8
  %cmp.not.i.i.i = icmp eq ptr %call17.i.i.i, null
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.for.end18.i.i.i_crit_edge, label %cleanup.i.i.i.for.body.i28.i.i_crit_edge

cleanup.i.i.i.for.body.i28.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i

cleanup.i.i.i.for.end18.i.i.i_crit_edge:          ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18.i.i.i

for.end18.i.i.i:                                  ; preds = %cleanup.i.i.i.for.end18.i.i.i_crit_edge, %if.end.i.i107.for.end18.i.i.i_crit_edge
  %func_cnt.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i107.for.end18.i.i.i_crit_edge ], [ %func_cnt.3.i.i.i, %cleanup.i.i.i.for.end18.i.i.i_crit_edge ]
  %158 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %func_cnt.0.lcssa.i.i.i, i32 16) #8
  %159 = extractvalue { i32, i1 } %158, 1
  br i1 %159, label %for.end18.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, label %devm_kcalloc.exit.i32.i.i, !prof !152

for.end18.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge: ; preds = %for.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_parse_dt.exit.i

devm_kcalloc.exit.i32.i.i:                        ; preds = %for.end18.i.i.i
  %160 = extractvalue { i32, i1 } %158, 0
  %call5.i.i.i31.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %160, i32 noundef 3520) #8
  %tobool20.not.i.i.i = icmp eq ptr %call5.i.i.i31.i.i, null
  br i1 %tobool20.not.i.i.i, label %devm_kcalloc.exit.i32.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, label %if.end23.i.i.i

devm_kcalloc.exit.i32.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge: ; preds = %devm_kcalloc.exit.i32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_parse_dt.exit.i

if.end23.i.i.i:                                   ; preds = %devm_kcalloc.exit.i32.i.i
  %call24.i.i.i = tail call ptr @of_get_next_child(ptr noundef %157, ptr noundef null) #8
  %cmp26.not48.i.i.i = icmp eq ptr %call24.i.i.i, null
  br i1 %cmp26.not48.i.i.i, label %if.end23.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge, label %if.end23.i.i.i.for.body27.i.i.i_crit_edge

if.end23.i.i.i.for.body27.i.i.i_crit_edge:        ; preds = %if.end23.i.i.i
  br label %for.body27.i.i.i

if.end23.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_create_functions.exit.i.i

for.body27.i.i.i:                                 ; preds = %for.inc62.i.i.i.for.body27.i.i.i_crit_edge, %if.end23.i.i.i.for.body27.i.i.i_crit_edge
  %func_cnt.454.i.i.i = phi i32 [ %func_cnt.8.i.i.i, %for.inc62.i.i.i.for.body27.i.i.i_crit_edge ], [ 0, %if.end23.i.i.i.for.body27.i.i.i_crit_edge ]
  %cfg_np.151.i.i.i = phi ptr [ %call63.i.i.i, %for.inc62.i.i.i.for.body27.i.i.i_crit_edge ], [ %call24.i.i.i, %if.end23.i.i.i.for.body27.i.i.i_crit_edge ]
  %func.049.i.i.i = phi ptr [ %func.4.i.i.i, %for.inc62.i.i.i.for.body27.i.i.i_crit_edge ], [ %call5.i.i.i31.i.i, %if.end23.i.i.i.for.body27.i.i.i_crit_edge ]
  %call.i2.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.151.i.i.i, ptr noundef null) #8
  %cmp.not5.i3.i.i.i = icmp eq ptr %call.i2.i.i.i, null
  br i1 %cmp.not5.i3.i.i.i, label %for.body27.i.i.i.if.then31.i.i.i_crit_edge, label %for.body27.i.i.i.for.body.i9.i.i.i_crit_edge

for.body27.i.i.i.for.body.i9.i.i.i_crit_edge:     ; preds = %for.body27.i.i.i
  br label %for.body.i9.i.i.i

for.body27.i.i.i.if.then31.i.i.i_crit_edge:       ; preds = %for.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i.i

for.body.i9.i.i.i:                                ; preds = %for.body.i9.i.i.i.for.body.i9.i.i.i_crit_edge, %for.body27.i.i.i.for.body.i9.i.i.i_crit_edge
  %num.07.i4.i.i.i = phi i32 [ %inc.i6.i.i.i, %for.body.i9.i.i.i.for.body.i9.i.i.i_crit_edge ], [ 0, %for.body27.i.i.i.for.body.i9.i.i.i_crit_edge ]
  %child.06.i5.i.i.i = phi ptr [ %call1.i7.i.i.i, %for.body.i9.i.i.i.for.body.i9.i.i.i_crit_edge ], [ %call.i2.i.i.i, %for.body27.i.i.i.for.body.i9.i.i.i_crit_edge ]
  %inc.i6.i.i.i = add i32 %num.07.i4.i.i.i, 1
  %call1.i7.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.151.i.i.i, ptr noundef nonnull %child.06.i5.i.i.i) #8
  %cmp.not.i8.i.i.i = icmp eq ptr %call1.i7.i.i.i, null
  br i1 %cmp.not.i8.i.i.i, label %of_get_child_count.exit11.i.i.i, label %for.body.i9.i.i.i.for.body.i9.i.i.i_crit_edge

for.body.i9.i.i.i.for.body.i9.i.i.i_crit_edge:    ; preds = %for.body.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i9.i.i.i

of_get_child_count.exit11.i.i.i:                  ; preds = %for.body.i9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i6.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %inc.i6.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %of_get_child_count.exit11.i.i.i.if.then31.i.i.i_crit_edge, label %if.end41.i.i.i

of_get_child_count.exit11.i.i.i.if.then31.i.i.i_crit_edge: ; preds = %of_get_child_count.exit11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i.i

if.then31.i.i.i:                                  ; preds = %of_get_child_count.exit11.i.i.i.if.then31.i.i.i_crit_edge, %for.body27.i.i.i.if.then31.i.i.i_crit_edge
  %call32.i.i.i = tail call fastcc i32 @samsung_pinctrl_create_function(ptr noundef %dev1, ptr noundef nonnull %cfg_np.151.i.i.i, ptr noundef %func.049.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %cmp33.i.i.i = icmp slt i32 %call32.i.i.i, 0
  br i1 %cmp33.i.i.i, label %if.then31.i.i.i.samsung_pinctrl_create_functions.exit.sink.split.i.i_crit_edge, label %if.end36.i.i.i

if.then31.i.i.i.samsung_pinctrl_create_functions.exit.sink.split.i.i_crit_edge: ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_create_functions.exit.sink.split.i.i

if.end36.i.i.i:                                   ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %cmp37.not.i.i.i = icmp ne i32 %call32.i.i.i, 0
  %func.1.idx.i.i.i = zext i1 %cmp37.not.i.i.i to i32
  %func.1.i.i.i = getelementptr %struct.samsung_pmx_func, ptr %func.049.i.i.i, i32 %func.1.idx.i.i.i
  %func_cnt.5.i.i.i = add i32 %func_cnt.454.i.i.i, %func.1.idx.i.i.i
  br label %for.inc62.i.i.i

if.end41.i.i.i:                                   ; preds = %of_get_child_count.exit11.i.i.i
  %call42.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.151.i.i.i, ptr noundef null) #8
  %cmp44.not42.i.i.i = icmp eq ptr %call42.i.i.i, null
  br i1 %cmp44.not42.i.i.i, label %if.end41.i.i.i.for.inc62.i.i.i_crit_edge, label %if.end41.i.i.i.for.body45.i.i.i_crit_edge

if.end41.i.i.i.for.body45.i.i.i_crit_edge:        ; preds = %if.end41.i.i.i
  br label %for.body45.i.i.i

if.end41.i.i.i.for.inc62.i.i.i_crit_edge:         ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i.i.i

for.body45.i.i.i:                                 ; preds = %if.end50.i.i.i.for.body45.i.i.i_crit_edge, %if.end41.i.i.i.for.body45.i.i.i_crit_edge
  %func_np28.045.i.i.i = phi ptr [ %call57.i.i.i, %if.end50.i.i.i.for.body45.i.i.i_crit_edge ], [ %call42.i.i.i, %if.end41.i.i.i.for.body45.i.i.i_crit_edge ]
  %func_cnt.644.i.i.i = phi i32 [ %func_cnt.7.i.i.i, %if.end50.i.i.i.for.body45.i.i.i_crit_edge ], [ %func_cnt.454.i.i.i, %if.end41.i.i.i.for.body45.i.i.i_crit_edge ]
  %func.243.i.i.i = phi ptr [ %func.3.i.i.i, %if.end50.i.i.i.for.body45.i.i.i_crit_edge ], [ %func.049.i.i.i, %if.end41.i.i.i.for.body45.i.i.i_crit_edge ]
  %call46.i.i.i = tail call fastcc i32 @samsung_pinctrl_create_function(ptr noundef %dev1, ptr noundef nonnull %func_np28.045.i.i.i, ptr noundef %func.243.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i)
  %cmp47.i.i.i = icmp slt i32 %call46.i.i.i, 0
  br i1 %cmp47.i.i.i, label %if.then48.i.i.i, label %if.end50.i.i.i

if.then48.i.i.i:                                  ; preds = %for.body45.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %func_np28.045.i.i.i) #8
  br label %samsung_pinctrl_create_functions.exit.sink.split.i.i

if.end50.i.i.i:                                   ; preds = %for.body45.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i)
  %cmp51.not.i.i.i = icmp ne i32 %call46.i.i.i, 0
  %func.3.idx.i.i.i = zext i1 %cmp51.not.i.i.i to i32
  %func.3.i.i.i = getelementptr %struct.samsung_pmx_func, ptr %func.243.i.i.i, i32 %func.3.idx.i.i.i
  %func_cnt.7.i.i.i = add i32 %func_cnt.644.i.i.i, %func.3.idx.i.i.i
  %call57.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %cfg_np.151.i.i.i, ptr noundef nonnull %func_np28.045.i.i.i) #8
  %cmp44.not.i.i.i = icmp eq ptr %call57.i.i.i, null
  br i1 %cmp44.not.i.i.i, label %if.end50.i.i.i.for.inc62.i.i.i_crit_edge, label %if.end50.i.i.i.for.body45.i.i.i_crit_edge

if.end50.i.i.i.for.body45.i.i.i_crit_edge:        ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45.i.i.i

if.end50.i.i.i.for.inc62.i.i.i_crit_edge:         ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i.i.i

for.inc62.i.i.i:                                  ; preds = %if.end50.i.i.i.for.inc62.i.i.i_crit_edge, %if.end41.i.i.i.for.inc62.i.i.i_crit_edge, %if.end36.i.i.i
  %func.4.i.i.i = phi ptr [ %func.1.i.i.i, %if.end36.i.i.i ], [ %func.049.i.i.i, %if.end41.i.i.i.for.inc62.i.i.i_crit_edge ], [ %func.3.i.i.i, %if.end50.i.i.i.for.inc62.i.i.i_crit_edge ]
  %func_cnt.8.i.i.i = phi i32 [ %func_cnt.5.i.i.i, %if.end36.i.i.i ], [ %func_cnt.454.i.i.i, %if.end41.i.i.i.for.inc62.i.i.i_crit_edge ], [ %func_cnt.7.i.i.i, %if.end50.i.i.i.for.inc62.i.i.i_crit_edge ]
  %call63.i.i.i = tail call ptr @of_get_next_child(ptr noundef %157, ptr noundef nonnull %cfg_np.151.i.i.i) #8
  %cmp26.not.i.i.i = icmp eq ptr %call63.i.i.i, null
  br i1 %cmp26.not.i.i.i, label %for.inc62.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge, label %for.inc62.i.i.i.for.body27.i.i.i_crit_edge

for.inc62.i.i.i.for.body27.i.i.i_crit_edge:       ; preds = %for.inc62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27.i.i.i

for.inc62.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge: ; preds = %for.inc62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_create_functions.exit.i.i

samsung_pinctrl_create_functions.exit.sink.split.i.i: ; preds = %if.then48.i.i.i, %if.then31.i.i.i.samsung_pinctrl_create_functions.exit.sink.split.i.i_crit_edge
  %call32.i.lcssa.sink.i.i = phi i32 [ %call46.i.i.i, %if.then48.i.i.i ], [ %call32.i.i.i, %if.then31.i.i.i.samsung_pinctrl_create_functions.exit.sink.split.i.i_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %cfg_np.151.i.i.i) #8
  %161 = inttoptr i32 %call32.i.lcssa.sink.i.i to ptr
  br label %samsung_pinctrl_create_functions.exit.i.i

samsung_pinctrl_create_functions.exit.i.i:        ; preds = %samsung_pinctrl_create_functions.exit.sink.split.i.i, %for.inc62.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge, %if.end23.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge
  %func_cnt.0.i.i = phi i32 [ 0, %if.end23.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge ], [ 0, %samsung_pinctrl_create_functions.exit.sink.split.i.i ], [ %func_cnt.8.i.i.i, %for.inc62.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge ]
  %retval.2.i.i.i = phi ptr [ %call5.i.i.i31.i.i, %if.end23.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge ], [ %161, %samsung_pinctrl_create_functions.exit.sink.split.i.i ], [ %call5.i.i.i31.i.i, %for.inc62.i.i.i.samsung_pinctrl_create_functions.exit.i.i_crit_edge ]
  %cmp.i33.i.i = icmp ugt ptr %retval.2.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33.i.i, label %samsung_pinctrl_create_functions.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, label %if.end33.i

samsung_pinctrl_create_functions.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge: ; preds = %samsung_pinctrl_create_functions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinctrl_parse_dt.exit.i

samsung_pinctrl_parse_dt.exit.i:                  ; preds = %samsung_pinctrl_create_functions.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, %devm_kcalloc.exit.i32.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, %for.end18.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, %samsung_pinctrl_create_groups.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, %devm_kcalloc.exit.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge, %for.end29.i.samsung_pinctrl_parse_dt.exit.i_crit_edge
  %.str.41.sink.i = phi ptr [ @.str.41, %samsung_pinctrl_create_groups.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ @.str.41, %devm_kcalloc.exit.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ @.str.41, %for.end29.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ @.str.44, %samsung_pinctrl_create_functions.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ @.str.44, %devm_kcalloc.exit.i32.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ @.str.44, %for.end18.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ]
  %retval.0.i.in.i = phi ptr [ %call5.i.i.i.i.i, %samsung_pinctrl_create_groups.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %devm_kcalloc.exit.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.end29.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ %retval.2.i.i.i, %samsung_pinctrl_create_functions.exit.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i32.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end18.i.i.i.samsung_pinctrl_parse_dt.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.41.sink.i) #11
  br label %samsung_pinctrl_register.exit

if.end33.i:                                       ; preds = %samsung_pinctrl_create_functions.exit.i.i
  %pin_groups.i.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 6
  %162 = ptrtoint ptr %pin_groups.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call5.i.i.i.i.i, ptr %pin_groups.i.i, align 4
  %nr_groups.i.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 7
  %163 = ptrtoint ptr %nr_groups.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %148, ptr %nr_groups.i.i, align 4
  %pmx_functions.i.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 8
  %164 = ptrtoint ptr %pmx_functions.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %retval.2.i.i.i, ptr %pmx_functions.i.i, align 4
  %nr_functions.i.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 9
  %165 = ptrtoint ptr %nr_functions.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %func_cnt.0.i.i, ptr %nr_functions.i.i, align 4
  %call35.i = tail call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %pctl.i, ptr noundef %call.i) #8
  %pctl_dev.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 5
  %166 = ptrtoint ptr %pctl_dev.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call35.i, ptr %pctl_dev.i, align 4
  %cmp.i.i108 = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i108, label %do.end.i109, label %for.cond43.preheader.i

for.cond43.preheader.i:                           ; preds = %if.end33.i
  %167 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %nr_banks4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp45161.not.i = icmp eq i32 %168, 0
  br i1 %cmp45161.not.i, label %for.cond43.preheader.i.if.end36_crit_edge, label %for.cond43.preheader.i.for.body47.i_crit_edge

for.cond43.preheader.i.for.body47.i_crit_edge:    ; preds = %for.cond43.preheader.i
  br label %for.body47.i

for.cond43.preheader.i.if.end36_crit_edge:        ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end.i109:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #11
  %169 = ptrtoint ptr %pctl_dev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pctl_dev.i, align 4
  br label %samsung_pinctrl_register.exit

for.body47.i:                                     ; preds = %for.body47.i.for.body47.i_crit_edge, %for.cond43.preheader.i.for.body47.i_crit_edge
  %bank.1162.i = phi i32 [ %inc69.i, %for.body47.i.for.body47.i_crit_edge ], [ 0, %for.cond43.preheader.i.for.body47.i_crit_edge ]
  %171 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pin_banks.i, align 4
  %name50.i110 = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 9
  %173 = ptrtoint ptr %name50.i110 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name50.i110, align 4
  %grange.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16
  %name51.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16, i32 1
  %175 = ptrtoint ptr %name51.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %name51.i, align 4
  %id.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16, i32 2
  %176 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %bank.1162.i, ptr %id.i, align 4
  %177 = ptrtoint ptr %pin_base93.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pin_base93.i, align 4
  %pin_base54.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 10
  %179 = ptrtoint ptr %pin_base54.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %pin_base54.i, align 4
  %add55.i = add i32 %180, %178
  %pin_base57.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16, i32 4
  %181 = ptrtoint ptr %pin_base57.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add55.i, ptr %pin_base57.i, align 4
  %base.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16, i32 3
  %182 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %add55.i, ptr %base.i, align 4
  %nr_pins61.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 3
  %183 = ptrtoint ptr %nr_pins61.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %nr_pins61.i, align 4
  %conv62.i = zext i8 %184 to i32
  %npins64.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16, i32 5
  %185 = ptrtoint ptr %npins64.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv62.i, ptr %npins64.i, align 4
  %gpio_chip.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 15
  %gc.i = getelementptr %struct.samsung_pin_bank, ptr %172, i32 %bank.1162.i, i32 16, i32 7
  %186 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %gpio_chip.i, ptr %gc.i, align 4
  %187 = ptrtoint ptr %pctl_dev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pctl_dev.i, align 4
  tail call void @pinctrl_add_gpio_range(ptr noundef %188, ptr noundef %grange.i) #8
  %inc69.i = add nuw i32 %bank.1162.i, 1
  %189 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %nr_banks4.i, align 4
  %cmp45.i = icmp ult i32 %inc69.i, %190
  br i1 %cmp45.i, label %for.body47.i.for.body47.i_crit_edge, label %for.body47.i.if.end31_crit_edge

for.body47.i.if.end31_crit_edge:                  ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

for.body47.i.for.body47.i_crit_edge:              ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body47.i

samsung_pinctrl_register.exit:                    ; preds = %do.end.i109, %samsung_pinctrl_parse_dt.exit.i
  %retval.0.i111.in = phi ptr [ %170, %do.end.i109 ], [ %retval.0.i.in.i, %samsung_pinctrl_parse_dt.exit.i ]
  %retval.0.i111 = ptrtoint ptr %retval.0.i111.in to i32
  %tobool29.not = icmp eq ptr %retval.0.i111.in, null
  br i1 %tobool29.not, label %if.end31thread-pre-split, label %samsung_pinctrl_register.exit.cleanup_crit_edge

samsung_pinctrl_register.exit.cleanup_crit_edge:  ; preds = %samsung_pinctrl_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31thread-pre-split:                         ; preds = %samsung_pinctrl_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr = load i32, ptr %nr_banks4.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31thread-pre-split, %for.body47.i.if.end31_crit_edge
  %192 = phi i32 [ %.pr, %if.end31thread-pre-split ], [ %190, %for.body47.i.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp29.not.i = icmp eq i32 %192, 0
  br i1 %cmp29.not.i, label %if.end31.if.end36_crit_edge, label %for.body.lr.ph.i115

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body.lr.ph.i115:                              ; preds = %if.end31
  %193 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pin_banks.i, align 4
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i129.for.body.i124_crit_edge, %for.body.lr.ph.i115
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i115 ], [ %inc.i126, %for.inc.i129.for.body.i124_crit_edge ]
  %bank.030.i = phi ptr [ %194, %for.body.lr.ph.i115 ], [ %incdec.ptr.i127, %for.inc.i129.for.body.i124_crit_edge ]
  %gpio_chip.i116 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 15
  %195 = call ptr @memcpy(ptr %gpio_chip.i116, ptr @samsung_gpiolib_chip, i32 348)
  %base.i117 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 16, i32 3
  %196 = ptrtoint ptr %base.i117 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %base.i117, align 4
  %base2.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 15, i32 19
  %198 = ptrtoint ptr %base2.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %base2.i, align 4
  %nr_pins.i118 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 3
  %199 = ptrtoint ptr %nr_pins.i118 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %nr_pins.i118, align 4
  %conv.i119 = zext i8 %200 to i16
  %ngpio.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 15, i32 20
  %201 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv.i119, ptr %ngpio.i, align 4
  %parent.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 15, i32 2
  %202 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %dev1, ptr %parent.i, align 4
  %of_node.i120 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 12
  %203 = ptrtoint ptr %of_node.i120 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %of_node.i120, align 4
  %of_node3.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 15, i32 39
  %205 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %of_node3.i, align 4
  %name.i121 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.030.i, i32 0, i32 9
  %206 = ptrtoint ptr %name.i121 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %name.i121, align 4
  %208 = ptrtoint ptr %gpio_chip.i116 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %gpio_chip.i116, align 4
  %call.i122 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio_chip.i116, ptr noundef %bank.030.i, ptr noundef nonnull @samsung_gpiolib_register.lock_key, ptr noundef nonnull @samsung_gpiolib_register.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i123 = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i123, label %for.inc.i129, label %if.then34

for.inc.i129:                                     ; preds = %for.body.i124
  %inc.i126 = add nuw i32 %i.031.i, 1
  %incdec.ptr.i127 = getelementptr %struct.samsung_pin_bank, ptr %bank.030.i, i32 1
  %209 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %nr_banks4.i, align 4
  %cmp.i128 = icmp ult i32 %inc.i126, %210
  br i1 %cmp.i128, label %for.inc.i129.for.body.i124_crit_edge, label %for.inc.i129.if.end36_crit_edge

for.inc.i129.if.end36_crit_edge:                  ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.inc.i129.for.body.i124_crit_edge:             ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i124

if.then34:                                        ; preds = %for.body.i124
  %211 = ptrtoint ptr %gpio_chip.i116 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %gpio_chip.i116, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, ptr noundef %212, i32 noundef %call.i122) #11
  %213 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nr_banks4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp1.not.i = icmp eq i32 %214, 0
  br i1 %cmp1.not.i, label %if.then34.cleanup_crit_edge, label %for.body.lr.ph.i134

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i134:                              ; preds = %if.then34
  %215 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pin_banks.i, align 4
  %pctl_dev.i133 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 5
  br label %for.body.i139

for.body.i139:                                    ; preds = %for.body.i139.for.body.i139_crit_edge, %for.body.lr.ph.i134
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i134 ], [ %inc.i136, %for.body.i139.for.body.i139_crit_edge ]
  %bank.02.i = phi ptr [ %216, %for.body.lr.ph.i134 ], [ %incdec.ptr.i137, %for.body.i139.for.body.i139_crit_edge ]
  %217 = ptrtoint ptr %pctl_dev.i133 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pctl_dev.i133, align 4
  %grange.i135 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.02.i, i32 0, i32 16
  tail call void @pinctrl_remove_gpio_range(ptr noundef %218, ptr noundef %grange.i135) #8
  %inc.i136 = add nuw i32 %i.03.i, 1
  %incdec.ptr.i137 = getelementptr %struct.samsung_pin_bank, ptr %bank.02.i, i32 1
  %219 = ptrtoint ptr %nr_banks4.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %nr_banks4.i, align 4
  %cmp.i138 = icmp ult i32 %inc.i136, %220
  br i1 %cmp.i138, label %for.body.i139.for.body.i139_crit_edge, label %for.body.i139.cleanup_crit_edge

for.body.i139.cleanup_crit_edge:                  ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i139.for.body.i139_crit_edge:            ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i139

if.end36:                                         ; preds = %for.inc.i129.if.end36_crit_edge, %if.end31.if.end36_crit_edge, %for.cond43.preheader.i.if.end36_crit_edge
  %eint_gpio_init = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 4
  %221 = ptrtoint ptr %eint_gpio_init to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %eint_gpio_init, align 4
  %tobool37.not = icmp eq ptr %222, null
  br i1 %tobool37.not, label %if.end36.if.end41_crit_edge, label %if.then38

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 %222(ptr noundef nonnull %call.i) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end36.if.end41_crit_edge
  %eint_wkup_init = getelementptr %struct.samsung_pin_ctrl, ptr %8, i32 %call.i.i, i32 5
  %223 = ptrtoint ptr %eint_wkup_init to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %eint_wkup_init, align 4
  %tobool42.not = icmp eq ptr %224, null
  br i1 %tobool42.not, label %if.end41.if.end46_crit_edge, label %if.then43

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 %224(ptr noundef nonnull %call.i) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end41.if.end46_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %225 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %for.body.i139.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %samsung_pinctrl_register.exit.cleanup_crit_edge, %for.end.i102.cleanup_crit_edge, %devm_kcalloc.exit.i95.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then23, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %96, %do.end ], [ %104, %if.then23 ], [ 0, %if.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %retval.0.i111, %samsung_pinctrl_register.exit.cleanup_crit_edge ], [ %call.i122, %if.then34.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i95.cleanup_crit_edge ], [ -12, %for.end.i102.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ %call.i122, %for.body.i139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_get_group_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nr_groups = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @samsung_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pin_groups = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %arrayidx = getelementptr %struct.samsung_pin_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pin_groups = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %pins1 = getelementptr %struct.samsung_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %pin_groups, align 4
  %num_pins4 = getelementptr %struct.samsung_pin_group, ptr %5, i32 %group, i32 2
  %6 = ptrtoint ptr %num_pins4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_pins4, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %config, align 4
  %call.i = call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %config, align 4
  %and = lshr i32 %2, 8
  %shr = and i32 %and, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %shr) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %config, align 4
  %call.i.1 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp1.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 4
  %and.1 = lshr i32 %5, 8
  %shr.1 = and i32 %and.1, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef %shr.1) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %config, align 4
  %call.i.2 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp1.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %and.2 = lshr i32 %8, 8
  %shr.2 = and i32 %and.2, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i32 noundef %shr.2) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %config, align 4
  %call.i.3 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp1.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %and.3 = lshr i32 %11, 8
  %shr.3 = and i32 %and.3, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26, i32 noundef %shr.3) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %config, align 4
  %call.i.4 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp1.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp1.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config, align 4
  %and.4 = lshr i32 %14, 8
  %shr.4 = and i32 %and.4, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, i32 noundef %shr.4) #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %config, align 4
  %call.i.5 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp1.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp1.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config, align 4
  %and.5 = lshr i32 %17, 8
  %shr.5 = and i32 %and.5, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.28, i32 noundef %shr.5) #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr nocapture noundef %map, ptr nocapture noundef %num_maps) #2 align 64 {
entry:
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #8
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved_maps, align 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %map, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_maps, align 4
  %call.i = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_child_count.exit.if.then_crit_edge, label %if.end

of_get_child_count.exit.if.then_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %of_get_child_count.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call2 = call fastcc i32 @samsung_dt_subnode_to_map(ptr noundef %4, ptr noundef %np_config, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps)
  br label %cleanup

if.end:                                           ; preds = %of_get_child_count.exit
  %call3 = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #8
  %cmp.not35 = icmp eq ptr %call3, null
  br i1 %cmp.not35, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.036 = phi ptr [ %call3, %for.body.lr.ph ], [ %call9, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %call5 = call fastcc i32 @samsung_dt_subnode_to_map(ptr noundef %6, ptr noundef nonnull %np.036, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %9 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.not.i = icmp eq i32 %10, 0
  br i1 %cmp8.not.i, label %if.then7.samsung_dt_free_map.exit_crit_edge, label %if.then7.for.body.i30_crit_edge

if.then7.for.body.i30_crit_edge:                  ; preds = %if.then7
  br label %for.body.i30

if.then7.samsung_dt_free_map.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_dt_free_map.exit

for.body.i30:                                     ; preds = %for.inc.i.for.body.i30_crit_edge, %if.then7.for.body.i30_crit_edge
  %i.09.i = phi i32 [ %inc.i31, %for.inc.i.for.body.i30_crit_edge ], [ 0, %if.then7.for.body.i30_crit_edge ]
  %type.i = getelementptr %struct.pinctrl_map, ptr %8, i32 %i.09.i, i32 2
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp1.i = icmp eq i32 %12, 4
  br i1 %cmp1.i, label %if.then.i, label %for.body.i30.for.inc.i_crit_edge

for.body.i30.for.inc.i_crit_edge:                 ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  %configs.i = getelementptr %struct.pinctrl_map, ptr %8, i32 %i.09.i, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %configs.i, align 4
  tail call void @kfree(ptr noundef %14) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i30.for.inc.i_crit_edge
  %inc.i31 = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i31, %10
  br i1 %exitcond.not.i, label %for.inc.i.samsung_dt_free_map.exit_crit_edge, label %for.inc.i.for.body.i30_crit_edge

for.inc.i.for.body.i30_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i30

for.inc.i.samsung_dt_free_map.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_dt_free_map.exit

samsung_dt_free_map.exit:                         ; preds = %for.inc.i.samsung_dt_free_map.exit_crit_edge, %if.then7.samsung_dt_free_map.exit_crit_edge
  tail call void @kfree(ptr noundef %8) #8
  tail call void @of_node_put(ptr noundef nonnull %np.036) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call9 = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.036) #8
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %samsung_dt_free_map.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %samsung_dt_free_map.exit ], [ %call2, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_maps)
  %cmp8.not = icmp eq i32 %num_maps, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.09, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %configs = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.09, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  tail call void @kfree(ptr noundef %3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %config, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and = and i32 %1, 255
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pin_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin_base, align 4
  %sub = sub i32 %pin, %3
  %pin_banks.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_banks.i, align 4
  %pin_base17.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pin_base17.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_base17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp.not18.i = icmp ugt i32 %7, %sub
  br i1 %cmp.not18.i, label %entry.pin_to_reg_bank.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.pin_to_reg_bank.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pin_to_reg_bank.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %8 = phi i32 [ %12, %while.body.i.land.rhs.i_crit_edge ], [ %7, %entry.land.rhs.i_crit_edge ]
  %b.019.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %5, %entry.land.rhs.i_crit_edge ]
  %nr_pins.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.019.i, i32 0, i32 3
  %9 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_pins.i, align 4
  %conv.i = zext i8 %10 to i32
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp2.i = icmp ult i32 %sub.i, %sub
  br i1 %cmp2.i, label %while.body.i, label %land.rhs.i.pin_to_reg_bank.exit_crit_edge

land.rhs.i.pin_to_reg_bank.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pin_to_reg_bank.exit

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr %struct.samsung_pin_bank, ptr %b.019.i, i32 1
  %pin_base.i = getelementptr %struct.samsung_pin_bank, ptr %b.019.i, i32 1, i32 10
  %11 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pin_base.i, align 4
  %cmp.not.i = icmp ugt i32 %12, %sub
  br i1 %cmp.not.i, label %while.body.i.pin_to_reg_bank.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.pin_to_reg_bank.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pin_to_reg_bank.exit

pin_to_reg_bank.exit:                             ; preds = %while.body.i.pin_to_reg_bank.exit_crit_edge, %land.rhs.i.pin_to_reg_bank.exit_crit_edge, %entry.pin_to_reg_bank.exit_crit_edge
  %b.0.lcssa16.i = phi ptr [ %5, %entry.pin_to_reg_bank.exit_crit_edge ], [ %b.019.i, %land.rhs.i.pin_to_reg_bank.exit_crit_edge ], [ %incdec.ptr.i, %while.body.i.pin_to_reg_bank.exit_crit_edge ]
  %pin_base.le.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i, i32 0, i32 10
  %pctl_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i, i32 0, i32 1
  %13 = ptrtoint ptr %pctl_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctl_base.i, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i, i32 0, i32 2
  %15 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %pin_base.le.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pin_base.le.i, align 4
  %sub5.i = sub i32 %sub, %18
  %19 = ptrtoint ptr %b.0.lcssa16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b.0.lcssa16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp ugt i32 %and, 5
  br i1 %cmp, label %pin_to_reg_bank.exit.cleanup_crit_edge, label %lor.lhs.false

pin_to_reg_bank.exit.cleanup_crit_edge:           ; preds = %pin_to_reg_bank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %pin_to_reg_bank.exit
  %arrayidx = getelementptr [6 x i8], ptr %20, i32 0, i32 %and
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %22 to i32
  %arrayidx4 = getelementptr %struct.samsung_pin_bank_type, ptr %20, i32 0, i32 1, i32 %and
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %24 to i32
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i, i32 0, i32 18
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %notmask = shl nsw i32 -1, %conv
  %sub9 = xor i32 %notmask, -1
  %mul = mul i32 %sub5.i, %conv
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv5
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  br i1 %set, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config, align 4
  %and15 = lshr i32 %28, 8
  %shr = and i32 %and15, 255
  %shl16 = shl i32 %sub9, %mul
  %neg = xor i32 %shl16, -1
  %and17 = and i32 %26, %neg
  %shl18 = shl i32 %shr, %mul
  %or = or i32 %shl18, %and17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #8, !srcloc !156
  br label %do.body28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shr23 = lshr i32 %26, %mul
  %and24 = and i32 %shr23, %sub9
  %shl25 = shl i32 %and24, 8
  %or26 = or i32 %shl25, %and
  %30 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or26, ptr %config, align 4
  br label %do.body28

do.body28:                                        ; preds = %if.else, %if.then14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %lor.lhs.false.cleanup_crit_edge, %pin_to_reg_bank.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body28 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %pin_to_reg_bank.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_dt_subnode_to_map(ptr noundef %dev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef %reserved_maps, ptr nocapture noundef %num_maps) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.29, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %num_configs.038 = phi i32 [ 0, %entry ], [ %num_configs.2, %for.inc.for.body_crit_edge ]
  %configs.037 = phi ptr [ null, %entry ], [ %configs.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.pin_config], ptr @cfg_params, i32 0, i32 %i.039
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call.i.i1 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %2, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i1, i32 0) #8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %if.then3
    i32 -22, label %for.body.for.inc_crit_edge
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %param = getelementptr [5 x %struct.pin_config], ptr @cfg_params, i32 0, i32 %i.039, i32 1
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param, align 4
  %add.i = add i32 %num_configs.038, 1
  %mul.i = shl i32 %add.i, 2
  %call.i = call noalias ptr @krealloc(ptr noundef %configs.037, i32 noundef %mul.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then3.exit_crit_edge, label %add_config.exit

if.then3.exit_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

add_config.exit:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %6, 8
  %or = or i32 %shl, %8
  %arrayidx.i = getelementptr i32, ptr %call.i, i32 %num_configs.038
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %arrayidx.i, align 4
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %2) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %add_config.exit, %for.body.for.inc_crit_edge
  %configs.2 = phi ptr [ %configs.037, %do.end ], [ %configs.037, %for.body.for.inc_crit_edge ], [ %call.i, %add_config.exit ]
  %num_configs.2 = phi i32 [ %num_configs.038, %do.end ], [ %num_configs.038, %for.body.for.inc_crit_edge ], [ %add.i, %add_config.exit ]
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs.2)
  %tobool19.not = icmp eq i32 %num_configs.2, 0
  %call.i2 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp24 = icmp slt i32 %call.i2, 0
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  br label %exit

if.end29:                                         ; preds = %for.end
  %10 = xor i32 %call.i.i, -1
  %call.i.i.lobit.not = lshr i32 %10, 31
  %not.tobool19.not = xor i1 %tobool19.not, true
  %inc21 = zext i1 %not.tobool19.not to i32
  %reserve.1 = add nuw nsw i32 %call.i.i.lobit.not, %inc21
  %mul = mul nuw i32 %call.i2, %reserve.1
  %11 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reserved_maps, align 4
  %13 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_maps, align 4
  %add.i3 = add i32 %14, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i3, i32 %12)
  %cmp.not.i = icmp ugt i32 %add.i3, %12
  br i1 %cmp.not.i, label %if.end.i7, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end.i7:                                        ; preds = %if.end29
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %mul.i4 = mul i32 %add.i3, 28
  %call.i5 = call noalias ptr @krealloc(ptr noundef %16, i32 noundef %mul.i4, i32 noundef 3264) #12
  %tobool.not.i6 = icmp eq ptr %call.i5, null
  br i1 %tobool.not.i6, label %if.end.i7.exit_crit_edge, label %if.end2.i

if.end.i7.exit_crit_edge:                         ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end2.i:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr %struct.pinctrl_map, ptr %call.i5, i32 %12
  %sub.i = sub i32 %add.i3, %12
  %mul3.i = mul i32 %sub.i, 28
  %17 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %mul3.i)
  %18 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i5, ptr %map, align 4
  %19 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i3, ptr %reserved_maps, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end2.i, %if.end29.if.end33_crit_edge
  %call34 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %call35 = call ptr @of_prop_next_string(ptr noundef %call34, ptr noundef null) #8
  %tobool37.not41 = icmp eq ptr %call35, null
  br i1 %tobool37.not41, label %if.end33.exit_crit_edge, label %for.body38.lr.ph

if.end33.exit_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body38.lr.ph:                                 ; preds = %if.end33
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %mul.i12 = shl i32 %num_configs.2, 2
  br label %for.body38

for.body38:                                       ; preds = %for.inc53.for.body38_crit_edge, %for.body38.lr.ph
  %group.042 = phi ptr [ %call35, %for.body38.lr.ph ], [ %call54, %for.inc53.for.body38_crit_edge ]
  br i1 %tobool.not, label %if.then40, label %for.body38.if.end45_crit_edge

for.body38.if.end45_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then40:                                        ; preds = %for.body38
  %20 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_maps, align 4
  %22 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp eq i32 %21, %23
  br i1 %cmp.i, label %add_map_mux.exit.thread, label %add_map_mux.exit, !prof !152

add_map_mux.exit.thread:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 105, i32 noundef 9, ptr noundef null) #8
  br label %exit

add_map_mux.exit:                                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %full_name, align 4
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %type.i = getelementptr %struct.pinctrl_map, ptr %27, i32 %21, i32 2
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %type.i, align 4
  %29 = load ptr, ptr %map, align 4
  %30 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_maps, align 4
  %data.i = getelementptr %struct.pinctrl_map, ptr %29, i32 %31, i32 4
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %group.042, ptr %data.i, align 4
  %33 = load ptr, ptr %map, align 4
  %34 = load i32, ptr %num_maps, align 4
  %function26.i = getelementptr %struct.pinctrl_map, ptr %33, i32 %34, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %function26.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %25, ptr %function26.i, align 4
  %36 = load i32, ptr %num_maps, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %num_maps, align 4
  br label %if.end45

if.end45:                                         ; preds = %add_map_mux.exit, %for.body38.if.end45_crit_edge
  br i1 %tobool19.not, label %if.end45.for.inc53_crit_edge, label %if.then47

if.end45.for.inc53_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.then47:                                        ; preds = %if.end45
  %37 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_maps, align 4
  %39 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i10 = icmp eq i32 %38, %40
  br i1 %cmp.i10, label %do.end.i11, label %if.end21.i14, !prof !152

do.end.i11:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 123, i32 noundef 9, ptr noundef null) #8
  br label %exit

if.end21.i14:                                     ; preds = %if.then47
  %call.i13 = call ptr @kmemdup(ptr noundef %configs.2, i32 noundef %mul.i12, i32 noundef 3264) #8
  %tobool22.not.i = icmp eq ptr %call.i13, null
  br i1 %tobool22.not.i, label %if.end21.i14.exit_crit_edge, label %add_map_configs.exit

if.end21.i14.exit_crit_edge:                      ; preds = %if.end21.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

add_map_configs.exit:                             ; preds = %if.end21.i14
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %43 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_maps, align 4
  %type.i15 = getelementptr %struct.pinctrl_map, ptr %42, i32 %44, i32 2
  %45 = ptrtoint ptr %type.i15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %type.i15, align 4
  %46 = load ptr, ptr %map, align 4
  %47 = load i32, ptr %num_maps, align 4
  %data.i16 = getelementptr %struct.pinctrl_map, ptr %46, i32 %47, i32 4
  %48 = ptrtoint ptr %data.i16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %group.042, ptr %data.i16, align 4
  %49 = load ptr, ptr %map, align 4
  %50 = load i32, ptr %num_maps, align 4
  %configs28.i = getelementptr %struct.pinctrl_map, ptr %49, i32 %50, i32 4, i32 0, i32 1
  %51 = ptrtoint ptr %configs28.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i13, ptr %configs28.i, align 4
  %52 = load ptr, ptr %map, align 4
  %53 = load i32, ptr %num_maps, align 4
  %num_configs31.i = getelementptr %struct.pinctrl_map, ptr %52, i32 %53, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %num_configs31.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %num_configs.2, ptr %num_configs31.i, align 4
  %55 = load i32, ptr %num_maps, align 4
  %inc.i17 = add i32 %55, 1
  store i32 %inc.i17, ptr %num_maps, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %add_map_configs.exit, %if.end45.for.inc53_crit_edge
  %call54 = call ptr @of_prop_next_string(ptr noundef %call34, ptr noundef nonnull %group.042) #8
  %tobool37.not = icmp eq ptr %call54, null
  br i1 %tobool37.not, label %for.inc53.exit_crit_edge, label %for.inc53.for.body38_crit_edge

for.inc53.for.body38_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.inc53.exit_crit_edge:                         ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %for.inc53.exit_crit_edge, %if.end21.i14.exit_crit_edge, %do.end.i11, %add_map_mux.exit.thread, %if.end33.exit_crit_edge, %if.end.i7.exit_crit_edge, %do.end28, %if.then3.exit_crit_edge
  %configs.036 = phi ptr [ %configs.2, %do.end28 ], [ %configs.2, %if.end.i7.exit_crit_edge ], [ %configs.2, %add_map_mux.exit.thread ], [ %configs.2, %do.end.i11 ], [ %configs.2, %if.end33.exit_crit_edge ], [ %configs.2, %if.end21.i14.exit_crit_edge ], [ %configs.2, %for.inc53.exit_crit_edge ], [ %configs.037, %if.then3.exit_crit_edge ]
  %ret.0 = phi i32 [ %call.i2, %do.end28 ], [ -12, %if.end.i7.exit_crit_edge ], [ -28, %add_map_mux.exit.thread ], [ -28, %do.end.i11 ], [ 0, %if.end33.exit_crit_edge ], [ 0, %for.inc53.exit_crit_edge ], [ -12, %if.end21.i14.exit_crit_edge ], [ -12, %if.then3.exit_crit_edge ]
  call void @kfree(ptr noundef %configs.036) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_get_functions_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nr_functions = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %nr_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @samsung_pinmux_get_fname(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pmx_functions = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %pmx_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmx_functions, align 4
  %arrayidx = getelementptr %struct.samsung_pmx_func, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinmux_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pmx_functions = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %pmx_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmx_functions, align 4
  %groups1 = getelementptr %struct.samsung_pmx_func, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %pmx_functions, align 4
  %num_groups4 = getelementptr %struct.samsung_pmx_func, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_groups4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_groups4, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pmx_functions.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %pmx_functions.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmx_functions.i, align 4
  %pin_groups.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_groups.i, align 4
  %pins.i = getelementptr %struct.samsung_pin_group, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %pin_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %7, %9
  %pin_banks.i.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %pin_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pin_banks.i.i, align 4
  %pin_base17.i.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %pin_base17.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin_base17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub.i)
  %cmp.not18.i.i = icmp ugt i32 %13, %sub.i
  br i1 %cmp.not18.i.i, label %entry.samsung_pinmux_setup.exit_crit_edge, label %entry.land.rhs.i.i_crit_edge

entry.land.rhs.i.i_crit_edge:                     ; preds = %entry
  br label %land.rhs.i.i

entry.samsung_pinmux_setup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinmux_setup.exit

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %entry.land.rhs.i.i_crit_edge
  %14 = phi i32 [ %18, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %13, %entry.land.rhs.i.i_crit_edge ]
  %b.019.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %11, %entry.land.rhs.i.i_crit_edge ]
  %nr_pins.i.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.019.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %nr_pins.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_pins.i.i, align 4
  %conv.i.i = zext i8 %16 to i32
  %add.i.i = add i32 %14, -1
  %sub.i.i = add i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub.i)
  %cmp2.i.i = icmp ult i32 %sub.i.i, %sub.i
  br i1 %cmp2.i.i, label %while.body.i.i, label %land.rhs.i.i.samsung_pinmux_setup.exit_crit_edge

land.rhs.i.i.samsung_pinmux_setup.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinmux_setup.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr %struct.samsung_pin_bank, ptr %b.019.i.i, i32 1
  %pin_base.i.i = getelementptr %struct.samsung_pin_bank, ptr %b.019.i.i, i32 1, i32 10
  %17 = ptrtoint ptr %pin_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pin_base.i.i, align 4
  %cmp.not.i.i = icmp ugt i32 %18, %sub.i
  br i1 %cmp.not.i.i, label %while.body.i.i.samsung_pinmux_setup.exit_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.samsung_pinmux_setup.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinmux_setup.exit

samsung_pinmux_setup.exit:                        ; preds = %while.body.i.i.samsung_pinmux_setup.exit_crit_edge, %land.rhs.i.i.samsung_pinmux_setup.exit_crit_edge, %entry.samsung_pinmux_setup.exit_crit_edge
  %b.0.lcssa16.i.i = phi ptr [ %11, %entry.samsung_pinmux_setup.exit_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.samsung_pinmux_setup.exit_crit_edge ], [ %b.019.i.i, %land.rhs.i.i.samsung_pinmux_setup.exit_crit_edge ]
  %pin_base.le.i.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i.i, i32 0, i32 10
  %pctl_base.i.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %pctl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pctl_base.i.i, align 4
  %pctl_offset.i.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %pctl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pctl_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %22
  %23 = ptrtoint ptr %pin_base.le.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pin_base.le.i.i, align 4
  %sub5.i.i = sub i32 %sub.i, %24
  %25 = ptrtoint ptr %b.0.lcssa16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b.0.lcssa16.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv.i = zext i8 %28 to i32
  %mul.i = mul i32 %sub5.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 31
  %sub10.i = add i32 %mul.i, -32
  %reg.0.idx.i = select i1 %cmp.i, i32 4, i32 0
  %reg.0.i = getelementptr i8, ptr %add.ptr.i.i, i32 %reg.0.idx.i
  %shift.0.i = select i1 %cmp.i, i32 %sub10.i, i32 %mul.i
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub5.i = xor i32 %notmask.i, -1
  %slock.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %b.0.lcssa16.i.i, i32 0, i32 18
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  %reg_offset.i = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg_offset.i, align 1
  %conv15.i = zext i8 %30 to i32
  %add.ptr16.i = getelementptr i8, ptr %reg.0.i, i32 %conv15.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !153
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %shl20.i = shl i32 %sub5.i, %shift.0.i
  %neg.i = xor i32 %shl20.i, -1
  %and.i = and i32 %32, %neg.i
  %val.i = getelementptr %struct.samsung_pmx_func, ptr %1, i32 %selector, i32 3
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %shl21.i = shl i32 %34, %shift.0.i
  %or.i = or i32 %and.i, %shl21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %36 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg_offset.i, align 1
  %conv27.i = zext i8 %37 to i32
  %add.ptr28.i = getelementptr i8, ptr %reg.0.i, i32 %conv27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %35) #8, !srcloc !156
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call13.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp6.not = icmp eq i32 %num_configs, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.07
  %call = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %arrayidx, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pin_groups = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %pins1 = getelementptr %struct.samsung_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call.i = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %5, ptr noundef %config, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pin_groups = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %pins1 = getelementptr %struct.samsung_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %num_pins12 = getelementptr %struct.samsung_pin_group, ptr %1, i32 %group, i32 2
  %4 = ptrtoint ptr %num_pins12 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_pins12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14.not = icmp eq i8 %5, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp6.not.i = icmp eq i32 %num_configs, 0
  br label %for.body

for.body:                                         ; preds = %samsung_pinconf_set.exit.for.body_crit_edge, %for.body.lr.ph
  %cnt.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %samsung_pinconf_set.exit.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %3, i32 %cnt.015
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  br i1 %cmp6.not.i, label %for.body.samsung_pinconf_set.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.samsung_pinconf_set.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinconf_set.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %configs, i32 %i.07.i
  %call.i = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %pctldev, i32 noundef %7, ptr noundef %arrayidx.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  %inc.i = add nuw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %num_configs)
  %exitcond.not.i = icmp eq i32 %inc.i, %num_configs
  %or.cond = select i1 %cmp1.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.samsung_pinconf_set.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.samsung_pinconf_set.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %samsung_pinconf_set.exit

samsung_pinconf_set.exit:                         ; preds = %for.body.i.samsung_pinconf_set.exit_crit_edge, %for.body.samsung_pinconf_set.exit_crit_edge
  %inc = add nuw nsw i32 %cnt.015, 1
  %8 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_groups, align 4
  %num_pins = getelementptr %struct.samsung_pin_group, ptr %9, i32 %group, i32 2
  %10 = ptrtoint ptr %num_pins to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_pins, align 4
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %samsung_pinconf_set.exit.for.body_crit_edge, label %samsung_pinconf_set.exit.for.end_crit_edge

samsung_pinconf_set.exit.for.end_crit_edge:       ; preds = %samsung_pinconf_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

samsung_pinconf_set.exit.for.body_crit_edge:      ; preds = %samsung_pinconf_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %samsung_pinconf_set.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pinctrl_create_function(ptr noundef %dev, ptr noundef %func_np, ptr noundef %func) unnamed_addr #2 align 64 {
entry:
  %gname = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.samsung_pmx_func, ptr %func, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %func_np, ptr noundef nonnull @.str.29, ptr noundef %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %func_np, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %func_np) #11
  br label %cleanup18

if.end3:                                          ; preds = %if.end
  %full_name = getelementptr inbounds %struct.device_node, ptr %func_np, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  %2 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %func, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !152

devm_kcalloc.exit.thread:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %groups3 = getelementptr inbounds %struct.samsung_pmx_func, ptr %func, i32 0, i32 1
  %5 = ptrtoint ptr %groups3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %groups3, align 4
  br label %cleanup18

devm_kcalloc.exit:                                ; preds = %if.end3
  %6 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #8
  %groups = getelementptr inbounds %struct.samsung_pmx_func, ptr %func, i32 0, i32 1
  %7 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %groups, align 4
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %devm_kcalloc.exit.cleanup18_crit_edge, label %devm_kcalloc.exit.for.body_crit_edge

devm_kcalloc.exit.for.body_crit_edge:             ; preds = %devm_kcalloc.exit
  br label %for.body

devm_kcalloc.exit.cleanup18_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %devm_kcalloc.exit.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %devm_kcalloc.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gname) #8
  %8 = ptrtoint ptr %gname to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %gname, align 4, !annotation !151
  %call.i1 = call i32 @of_property_read_string_helper(ptr noundef %func_np, ptr noundef nonnull @.str.32, ptr noundef nonnull %gname, i32 noundef 1, i32 noundef %i.09) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %tobool11.not = icmp sgt i32 %call.i1, -1
  br i1 %tobool11.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %i.09, ptr noundef %func_np) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gname) #8
  br label %cleanup18

for.inc:                                          ; preds = %for.body
  %9 = ptrtoint ptr %gname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gname, align 4
  %11 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.09
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gname) #8
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %call.i to i8
  %num_groups = getelementptr inbounds %struct.samsung_pmx_func, ptr %func, i32 0, i32 2
  %14 = ptrtoint ptr %num_groups to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %num_groups, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %for.end, %cleanup, %devm_kcalloc.exit.cleanup18_crit_edge, %devm_kcalloc.exit.thread, %do.end, %entry.cleanup18_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ %call.i1, %cleanup ], [ 1, %for.end ], [ 0, %entry.cleanup18_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup18_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %call, i32 0, i32 18
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %pctl_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pctl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl_base.i, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %reg_offset.i = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_offset.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv4.i = zext i8 %9 to i32
  %notmask.i = shl nsw i32 -1, %conv4.i
  %sub.i = xor i32 %notmask.i, -1
  %mul.i = mul i32 %conv4.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 31
  %sub9.i = add i32 %mul.i, -32
  %shift.0.i = select i1 %cmp.i, i32 %sub9.i, i32 %mul.i
  %reg.0.idx.i = select i1 %cmp.i, i32 4, i32 0
  %reg.0.i = getelementptr i8, ptr %add.ptr2.i, i32 %reg.0.idx.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #8, !srcloc !153
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %shl13.i = shl i32 %sub.i, %shift.0.i
  %neg.i = xor i32 %shl13.i, -1
  %and.i = and i32 %11, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %12) #8, !srcloc !156
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %call, i32 0, i32 18
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %pctl_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pctl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl_base.i, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %arrayidx.i = getelementptr %struct.samsung_pin_bank_type, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !153
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %shl.i = shl nuw i32 1, %offset
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %or.i = or i32 %9, %shl.i
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %12 to i32
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %conv8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %10) #8, !srcloc !156
  %call.i16 = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %13 = ptrtoint ptr %call.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i16, align 4
  %pctl_base.i17 = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i16, i32 0, i32 1
  %15 = ptrtoint ptr %pctl_base.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pctl_base.i17, align 4
  %pctl_offset.i18 = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i16, i32 0, i32 2
  %17 = ptrtoint ptr %pctl_offset.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pctl_offset.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %16, i32 %18
  %reg_offset.i = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg_offset.i, align 1
  %conv.i20 = zext i8 %20 to i32
  %add.ptr2.i21 = getelementptr i8, ptr %add.ptr.i19, i32 %conv.i20
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %14, align 1
  %conv4.i = zext i8 %22 to i32
  %notmask.i = shl nsw i32 -1, %conv4.i
  %sub.i = xor i32 %notmask.i, -1
  %mul.i = mul i32 %conv4.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 31
  %sub9.i = add i32 %mul.i, -32
  %shift.0.i = select i1 %cmp.i, i32 %sub9.i, i32 %mul.i
  %reg.0.idx.i = select i1 %cmp.i, i32 4, i32 0
  %reg.0.i = getelementptr i8, ptr %add.ptr2.i21, i32 %reg.0.idx.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #8, !srcloc !153
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %shl13.i = shl i32 %sub.i, %shift.0.i
  %neg.i22 = xor i32 %shl13.i, -1
  %and.i23 = and i32 %24, %neg.i22
  %shl15.i = shl nuw i32 1, %shift.0.i
  %data.0.i = or i32 %and.i23, %shl15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %25) #8, !srcloc !156
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %pctl_base = getelementptr inbounds %struct.samsung_pin_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl_base, align 4
  %pctl_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %pctl_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pctl_offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %arrayidx = getelementptr %struct.samsung_pin_bank_type, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !153
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %shr = lshr i32 %9, %offset
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %slock = getelementptr inbounds %struct.samsung_pin_bank, ptr %call, i32 0, i32 18
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %pctl_base.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pctl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl_base.i, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %arrayidx.i = getelementptr %struct.samsung_pin_bank_type, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !153
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %shl.i = shl nuw i32 1, %offset
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %or.i = or i32 %9, %shl.i
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %12 to i32
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %conv8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %10) #8, !srcloc !156
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %1, i32 noundef %offset, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool3.not, i32 -6, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_remove_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp128.not = icmp eq i32 %3, 0
  br i1 %cmp128.not, label %entry.for.end74_crit_edge, label %for.body.lr.ph

entry.for.end74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

for.body.lr.ph:                                   ; preds = %entry
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc73, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_banks, align 4
  %arrayidx = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129
  %pctl_base = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 1
  %6 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pctl_base, align 4
  %pctl_offset = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 2
  %8 = ptrtoint ptr %pctl_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pctl_offset, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %reg_offset = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %11, i32 0, i32 1
  %arrayidx4 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body7.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body7.preheader:                              ; preds = %for.body
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %for.body7.preheader.for.inc_crit_edge, label %if.then10

for.body7.preheader.for.inc_crit_edge:            ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_offset, align 1
  %conv = zext i8 %17 to i32
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %conv
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !153
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %arrayidx15 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 0
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body7.preheader.for.inc_crit_edge
  %arrayidx8.1 = getelementptr i8, ptr %11, i32 1
  %21 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not.1 = icmp eq i8 %22, 0
  br i1 %tobool9.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.1 = getelementptr %struct.samsung_pin_bank_type, ptr %11, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx11.1, align 1
  %conv.1 = zext i8 %24 to i32
  %add.ptr12.1 = getelementptr i8, ptr %add.ptr, i32 %conv.1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.1) #8, !srcloc !153
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %arrayidx15.1 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 1
  %27 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx15.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.inc.for.inc.1_crit_edge
  %arrayidx8.2 = getelementptr i8, ptr %11, i32 2
  %28 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx8.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool9.not.2 = icmp eq i8 %29, 0
  br i1 %tobool9.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then10.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then10.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.2 = getelementptr %struct.samsung_pin_bank_type, ptr %11, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx11.2, align 1
  %conv.2 = zext i8 %31 to i32
  %add.ptr12.2 = getelementptr i8, ptr %add.ptr, i32 %conv.2
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.2) #8, !srcloc !153
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %arrayidx15.2 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 2
  %34 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx15.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx8.3 = getelementptr i8, ptr %11, i32 3
  %35 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx8.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not.3 = icmp eq i8 %36, 0
  br i1 %tobool9.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then10.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then10.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.3 = getelementptr %struct.samsung_pin_bank_type, ptr %11, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx11.3, align 1
  %conv.3 = zext i8 %38 to i32
  %add.ptr12.3 = getelementptr i8, ptr %add.ptr, i32 %conv.3
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.3) #8, !srcloc !153
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %arrayidx15.3 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 3
  %41 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx15.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then10.3, %for.inc.2.for.inc.3_crit_edge
  %42 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool9.not.4 = icmp eq i8 %43, 0
  br i1 %tobool9.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then10.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then10.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.4 = getelementptr %struct.samsung_pin_bank_type, ptr %11, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx11.4, align 1
  %conv.4 = zext i8 %45 to i32
  %add.ptr12.4 = getelementptr i8, ptr %add.ptr, i32 %conv.4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.4) #8, !srcloc !153
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %arrayidx15.4 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 4
  %48 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx15.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then10.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx8.5 = getelementptr i8, ptr %11, i32 5
  %49 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx8.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool9.not.5 = icmp eq i8 %50, 0
  br i1 %tobool9.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then10.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then10.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.5 = getelementptr %struct.samsung_pin_bank_type, ptr %11, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx11.5, align 1
  %conv.5 = zext i8 %52 to i32
  %add.ptr12.5 = getelementptr i8, ptr %add.ptr, i32 %conv.5
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.5) #8, !srcloc !153
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %arrayidx15.5 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 5
  %55 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx15.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then10.5, %for.inc.4.for.inc.5_crit_edge
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %11, align 1
  %conv18 = zext i8 %57 to i32
  %nr_pins = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 3
  %58 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nr_pins, align 4
  %conv19 = zext i8 %59 to i32
  %mul = mul nuw nsw i32 %conv19, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp20 = icmp ugt i32 %mul, 32
  br i1 %cmp20, label %if.then22, label %do.body46

if.then22:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg_offset, align 1
  %conv26 = zext i8 %61 to i32
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 4
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %conv26
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !153
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %arrayidx33 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19, i32 6
  %64 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx33, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pinctrl_suspend.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@samsung_pinctrl_suspend, %cleanup)) #8
          to label %if.then40 [label %cleanup], !srcloc !166

if.then40:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %pm_save32 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19
  %name = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 9
  %65 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name, align 4
  %67 = ptrtoint ptr %pm_save32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pm_save32, align 4
  %69 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pinctrl_suspend.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.55, ptr noundef %66, ptr noundef %add.ptr, i32 noundef %68, i32 noundef %70) #8
  br label %cleanup

do.body46:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pinctrl_suspend.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@samsung_pinctrl_suspend, %cleanup)) #8
          to label %if.then60 [label %cleanup], !srcloc !166

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %name61 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 9
  %71 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name61, align 4
  %pm_save62 = getelementptr %struct.samsung_pin_bank, ptr %5, i32 %i.0129, i32 19
  %73 = ptrtoint ptr %pm_save62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pm_save62, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pinctrl_suspend.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.56, ptr noundef %72, ptr noundef %add.ptr, i32 noundef %74) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body46, %if.then40, %if.then22, %for.body.cleanup_crit_edge
  %inc73 = add nuw i32 %i.0129, 1
  %75 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc73, %76
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end74_crit_edge

cleanup.for.end74_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end74:                                        ; preds = %cleanup.for.end74_crit_edge, %entry.for.end74_crit_edge
  %suspend = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 15
  %77 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %suspend, align 4
  %tobool75.not = icmp eq ptr %78, null
  br i1 %tobool75.not, label %for.end74.if.end78_crit_edge, label %if.then76

for.end74.if.end78_crit_edge:                     ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then76:                                        ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %78(ptr noundef %1) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.end74.if.end78_crit_edge
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 14
  %79 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %retention_ctrl, align 4
  %tobool79.not = icmp eq ptr %80, null
  br i1 %tobool79.not, label %if.end78.if.end85_crit_edge, label %land.lhs.true

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end78
  %enable = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %enable, align 4
  %tobool81.not = icmp eq ptr %82, null
  br i1 %tobool81.not, label %land.lhs.true.if.end85_crit_edge, label %if.then82

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then82:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %82(ptr noundef %1) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %land.lhs.true.if.end85_crit_edge, %if.end78.if.end85_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %resume = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp156.not = icmp eq i32 %5, 0
  br i1 %cmp156.not, label %if.end.for.end100_crit_edge, label %for.body.lr.ph

if.end.for.end100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end100

for.body.lr.ph:                                   ; preds = %if.end
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc99, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin_banks, align 4
  %arrayidx = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157
  %pctl_base = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 1
  %8 = ptrtoint ptr %pctl_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl_base, align 4
  %pctl_offset = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 2
  %10 = ptrtoint ptr %pctl_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pctl_offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %reg_offset = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %13, i32 0, i32 1
  %arrayidx5 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %13, align 1
  %conv = zext i8 %17 to i32
  %nr_pins = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 3
  %18 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_pins, align 4
  %conv10 = zext i8 %19 to i32
  %mul = mul nuw nsw i32 %conv10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp11 = icmp ugt i32 %mul, 32
  br i1 %cmp11, label %do.body, label %do.body48

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pinctrl_resume.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@samsung_pinctrl_resume, %do.body39)) #8
          to label %if.then19 [label %do.body39], !srcloc !166

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 9
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %22 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_offset, align 1
  %conv21 = zext i8 %23 to i32
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 %conv21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !153
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %26 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_offset, align 1
  %conv29 = zext i8 %27 to i32
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 4
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i32 %conv29
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !153
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %pm_save = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19
  %30 = ptrtoint ptr %pm_save to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pm_save, align 4
  %arrayidx37 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 6
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx37, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pinctrl_resume.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.58, ptr noundef %21, ptr noundef %add.ptr, i32 noundef %25, i32 noundef %29, i32 noundef %31, i32 noundef %33) #8
  br label %do.body39

do.body39:                                        ; preds = %if.then19, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %arrayidx43 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 6
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx43, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reg_offset, align 1
  %conv45 = zext i8 %38 to i32
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 4
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 %conv45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %36) #8, !srcloc !156
  br label %if.end77

do.body48:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pinctrl_resume.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@samsung_pinctrl_resume, %if.end77)) #8
          to label %if.then62 [label %if.end77], !srcloc !166

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %name63 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 9
  %39 = ptrtoint ptr %name63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name63, align 4
  %41 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg_offset, align 1
  %conv67 = zext i8 %42 to i32
  %add.ptr68 = getelementptr i8, ptr %add.ptr, i32 %conv67
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #8, !srcloc !153
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %pm_save72 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19
  %45 = ptrtoint ptr %pm_save72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pm_save72, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pinctrl_resume.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.59, ptr noundef %40, ptr noundef %add.ptr, i32 noundef %44, i32 noundef %46) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then62, %do.body48, %do.body39
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool83.not = icmp eq i8 %48, 0
  br i1 %tobool83.not, label %if.end77.for.inc_crit_edge, label %do.body85

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %arrayidx89 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 0
  %49 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx89, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg_offset, align 1
  %conv91 = zext i8 %53 to i32
  %add.ptr92 = getelementptr i8, ptr %add.ptr, i32 %conv91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %51) #8, !srcloc !156
  br label %for.inc

for.inc:                                          ; preds = %do.body85, %if.end77.for.inc_crit_edge
  %arrayidx82.1 = getelementptr i8, ptr %13, i32 1
  %54 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx82.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool83.not.1 = icmp eq i8 %55, 0
  br i1 %tobool83.not.1, label %for.inc.for.inc.1_crit_edge, label %do.body85.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

do.body85.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %arrayidx89.1 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 1
  %56 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx89.1, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %arrayidx90.1 = getelementptr %struct.samsung_pin_bank_type, ptr %13, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx90.1, align 1
  %conv91.1 = zext i8 %60 to i32
  %add.ptr92.1 = getelementptr i8, ptr %add.ptr, i32 %conv91.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.1, i32 %58) #8, !srcloc !156
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.body85.1, %for.inc.for.inc.1_crit_edge
  %arrayidx82.2 = getelementptr i8, ptr %13, i32 2
  %61 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx82.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool83.not.2 = icmp eq i8 %62, 0
  br i1 %tobool83.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.body85.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

do.body85.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %arrayidx89.2 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 2
  %63 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx89.2, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %arrayidx90.2 = getelementptr %struct.samsung_pin_bank_type, ptr %13, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx90.2, align 1
  %conv91.2 = zext i8 %67 to i32
  %add.ptr92.2 = getelementptr i8, ptr %add.ptr, i32 %conv91.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.2, i32 %65) #8, !srcloc !156
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.body85.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx82.3 = getelementptr i8, ptr %13, i32 3
  %68 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx82.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool83.not.3 = icmp eq i8 %69, 0
  br i1 %tobool83.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.body85.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

do.body85.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %arrayidx89.3 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 3
  %70 = ptrtoint ptr %arrayidx89.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx89.3, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %arrayidx90.3 = getelementptr %struct.samsung_pin_bank_type, ptr %13, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx90.3, align 1
  %conv91.3 = zext i8 %74 to i32
  %add.ptr92.3 = getelementptr i8, ptr %add.ptr, i32 %conv91.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.3, i32 %72) #8, !srcloc !156
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.body85.3, %for.inc.2.for.inc.3_crit_edge
  %75 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool83.not.4 = icmp eq i8 %76, 0
  br i1 %tobool83.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.body85.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

do.body85.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %arrayidx89.4 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 4
  %77 = ptrtoint ptr %arrayidx89.4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx89.4, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %arrayidx90.4 = getelementptr %struct.samsung_pin_bank_type, ptr %13, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx90.4, align 1
  %conv91.4 = zext i8 %81 to i32
  %add.ptr92.4 = getelementptr i8, ptr %add.ptr, i32 %conv91.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.4, i32 %79) #8, !srcloc !156
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.body85.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx82.5 = getelementptr i8, ptr %13, i32 5
  %82 = ptrtoint ptr %arrayidx82.5 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx82.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool83.not.5 = icmp eq i8 %83, 0
  br i1 %tobool83.not.5, label %for.inc.4.cleanup_crit_edge, label %do.body85.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body85.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %arrayidx89.5 = getelementptr %struct.samsung_pin_bank, ptr %7, i32 %i.0157, i32 19, i32 5
  %84 = ptrtoint ptr %arrayidx89.5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx89.5, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %arrayidx90.5 = getelementptr %struct.samsung_pin_bank_type, ptr %13, i32 0, i32 1, i32 5
  %87 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx90.5, align 1
  %conv91.5 = zext i8 %88 to i32
  %add.ptr92.5 = getelementptr i8, ptr %add.ptr, i32 %conv91.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.5, i32 %86) #8, !srcloc !156
  br label %cleanup

cleanup:                                          ; preds = %do.body85.5, %for.inc.4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc99 = add nuw i32 %i.0157, 1
  %89 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc99, %90
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end100_crit_edge

cleanup.for.end100_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end100

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end100:                                       ; preds = %cleanup.for.end100_crit_edge, %if.end.for.end100_crit_edge
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 14
  %91 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %retention_ctrl, align 4
  %tobool101.not = icmp eq ptr %92, null
  br i1 %tobool101.not, label %for.end100.if.end107_crit_edge, label %land.lhs.true

for.end100.if.end107_crit_edge:                   ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.lhs.true:                                    ; preds = %for.end100
  %disable = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %disable, align 4
  %tobool103.not = icmp eq ptr %94, null
  br i1 %tobool103.not, label %land.lhs.true.if.end107_crit_edge, label %if.then104

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then104:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %94(ptr noundef %1) #8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %land.lhs.true.if.end107_crit_edge, %for.end100.if.end107_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_pinctrl_samsung__227_1311_samsung_pinctrl_drv_register2, !1, !"__initcall__kmod_pinctrl_samsung__227_1311_samsung_pinctrl_drv_register2", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1311, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1300, i32 11}
!4 = !{ptr @samsung_pinctrl_driver, !5, !"samsung_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1297, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1106, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @samsung_pinctrl_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @samsung_pinctrl_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1037, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @samsung_pinctrl_get_soc_data._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @samsung_pinctrl_get_soc_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1043, i32 4}
!21 = !{ptr @samsung_pinctrl_get_soc_data._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @samsung_pinctrl_get_soc_data._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @samsung_pinctrl_get_soc_data.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1060, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1076, i32 29}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 990, i32 29}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 992, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 998, i32 3}
!37 = !{ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @samsung_pinctrl_get_soc_data_for_of_alias._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @pin_base, !40, !"pin_base", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 48, i32 21}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 896, i32 23}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 910, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @samsung_pinctrl_register._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @samsung_pinctrl_register._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @samsung_pctrl_ops, !49, !"samsung_pctrl_ops", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 310, i32 33}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 303, i32 17}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 287, i32 42}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 287, i32 49}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 287, i32 56}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 287, i32 63}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 287, i32 70}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 288, i32 7}
!64 = distinct !{null, !65, !"reg_names", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 287, i32 27}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 190, i32 33}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 203, i32 4}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @samsung_dt_subnode_to_map._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @samsung_dt_subnode_to_map._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 213, i32 38}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 215, i32 3}
!77 = !{ptr @samsung_dt_subnode_to_map._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @samsung_dt_subnode_to_map._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 41, i32 4}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 42, i32 4}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 43, i32 4}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 44, i32 4}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 45, i32 4}
!89 = !{ptr @cfg_params, !90, !"cfg_params", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 40, i32 3}
!91 = !{ptr @samsung_pinmux_ops, !92, !"samsung_pinmux_ops", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 423, i32 32}
!93 = !{ptr @samsung_pinconf_ops, !94, !"samsung_pinconf_ops", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 530, i32 33}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 835, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @samsung_pinctrl_parse_dt._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @samsung_pinctrl_parse_dt._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 841, i32 3}
!102 = !{ptr @samsung_pinctrl_parse_dt._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @samsung_pinctrl_parse_dt._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 709, i32 3}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @samsung_pinctrl_create_function._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @samsung_pinctrl_create_function._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 725, i32 4}
!111 = !{ptr @samsung_pinctrl_create_function._entry.48, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @samsung_pinctrl_create_function._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @samsung_gpiolib_register.lock_key, !114, !"lock_key", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 972, i32 9}
!115 = !{ptr @samsung_gpiolib_register.request_key, !114, !"request_key", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 974, i32 4}
!118 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @samsung_gpiolib_register._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @samsung_gpiolib_register._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @samsung_gpiolib_chip, !122, !"samsung_gpiolib_chip", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 942, i32 31}
!123 = !{ptr @samsung_pinctrl_dt_match, !124, !"samsung_pinctrl_dt_match", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1244, i32 34}
!125 = !{ptr @samsung_pinctrl_pm_ops, !126, !"samsung_pinctrl_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1292, i32 32}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1173, i32 4}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @samsung_pinctrl_suspend.__UNIQUE_ID_ddebug223, !128, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1178, i32 4}
!134 = !{ptr @samsung_pinctrl_suspend.__UNIQUE_ID_ddebug224, !133, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1220, i32 4}
!137 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @samsung_pinctrl_resume.__UNIQUE_ID_ddebug225, !136, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/samsung/pinctrl-samsung.c", i32 1229, i32 4}
!141 = !{ptr @samsung_pinctrl_resume.__UNIQUE_ID_ddebug226, !140, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"auto-init"}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 4818219}
!154 = !{i64 2153898709}
!155 = !{i64 2153899026}
!156 = !{i64 4817801}
!157 = !{i64 2153897259}
!158 = !{i64 2153897497}
!159 = !{i64 2153901997}
!160 = !{i64 2153902200}
!161 = !{i64 2153900078}
!162 = !{i64 2153900315}
!163 = !{i64 2153901567}
!164 = !{i64 2153924947}
!165 = !{i64 2153925493}
!166 = !{i64 2148323442, i64 2148323447, i64 2148323460, i64 2148323504, i64 2148323538, i64 2148323559}
!167 = !{i64 2153934379}
!168 = !{i64 2153934925}
!169 = !{i64 2153935181}
!170 = !{i64 2153938695}
!171 = !{i64 2153938924}
