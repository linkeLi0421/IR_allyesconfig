; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-rockchip.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rockchip_pin_ctrl = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.rockchip_pin_bank = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i8, [4 x %struct.rockchip_iomux], [4 x %struct.rockchip_drv], [4 x i32], i8, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, %struct.raw_spinlock, ptr, i32, i32, i32, i32, %struct.list_head, %struct.mutex }
%struct.rockchip_iomux = type { i32, i32 }
%struct.rockchip_drv = type { i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rockchip_mux_route_data = type { i8, i8, i8, i32, i32, i32 }
%struct.rockchip_mux_recalced_data = type { i8, i8, i32, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_pinctrl = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.rockchip_pin_group = type { ptr, i32, ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.rockchip_pin_config = type { i32, ptr, i32 }
%struct.rockchip_pmx_func = type { ptr, ptr, i8 }
%struct.rockchip_pin_output_deferred = type { %struct.list_head, i32, i32 }

@__initcall__kmod_pinctrl_rockchip__234_3241_rockchip_pinctrl_drv_register2 = internal global ptr @rockchip_pinctrl_drv_register, section ".initcall2.init", align 4
@rockchip_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pinctrl_probe, ptr @rockchip_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pinctrl_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pinctrl_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_pinctrl_drv_unregister = internal global ptr @rockchip_pinctrl_drv_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [60 x i8] c"pinctrl_rockchip.description=ROCKCHIP Pin Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [55 x i8] c"pinctrl_rockchip.file=drivers/pinctrl/pinctrl-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [29 x i8] c"pinctrl_rockchip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [49 x i8] c"pinctrl_rockchip.alias=platform:pinctrl-rockchip\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-pinctrl\00", [47 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_dt_match = internal constant { [16 x %struct.of_device_id], [768 x i8] } { [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk2928_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066a_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066b-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066b_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3308_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_pin_ctrl }, %struct.of_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_pinctrl_suspend, ptr @rockchip_pinctrl_resume, ptr @rockchip_pinctrl_suspend, ptr @rockchip_pinctrl_resume, ptr @rockchip_pinctrl_suspend, ptr @rockchip_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree node not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver data not available\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@rockchip_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip,pinctrl\00", [47 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pinctrl_rockchip:2706:(&rockchip_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,pinctrl-pull\00", [42 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_probe._key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pinctrl_rockchip:2720:(&rockchip_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,pmu\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register gpio device\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_get_soc_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bank->slock\00", [19 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_get_soc_data.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, i8 2, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinctrl_rockchip\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_pinctrl_get_soc_data\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pinctrl/pinctrl-rockchip.c\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bank %d, iomux %d has iom_offset 0x%x drv_offset 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @rockchip_get_groups_count, ptr @rockchip_get_group_name, ptr @rockchip_get_group_pins, ptr null, ptr @rockchip_dt_node_to_map, ptr @rockchip_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@rockchip_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @rockchip_pmx_get_funcs_count, ptr @rockchip_pmx_get_func_name, ptr @rockchip_pmx_get_groups, ptr @rockchip_pmx_set, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rockchip_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @rockchip_pinconf_get, ptr @rockchip_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pin_bank->deferred_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.14, i32 302, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to find group for node %pOFn\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_dt_node_to_map\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_dt_node_to_map._entry_ptr = internal global ptr @rockchip_dt_node_to_map._entry, section ".printk_index", align 4
@rockchip_dt_node_to_map.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.14, ptr @.str.22, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"maps: function %s group %s num %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rockchip_pmx_set.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.23, ptr @.str.14, ptr @.str.24, i8 1, i8 -3, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip_pmx_set\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable function %s group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_set_mux.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.14, ptr @.str.26, i8 0, i8 -24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip_set_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting mux of GPIO%d-%d to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_verify_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.14, i32 884, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pin %d is unrouted\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_verify_mux\00", [44 x i8] zeroinitializer }, align 32
@rockchip_verify_mux._entry_ptr = internal global ptr @rockchip_verify_mux._entry, section ".printk_index", align 4
@rockchip_verify_mux._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.14, i32 890, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pin %d only supports a gpio mux\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_verify_mux._entry_ptr.31 = internal global ptr @rockchip_verify_mux._entry.29, section ".printk_index", align 4
@rockchip_pull_list = internal constant { [2 x [4 x i32]], [32 x i8] } { [2 x [4 x i32]] [[4 x i32] [i32 1, i32 5, i32 3, i32 0], [4 x i32] [i32 1, i32 3, i32 1, i32 5]], [32 x i8] zeroinitializer }, align 32
@rockchip_get_pull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.14, i32 1805, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported pinctrl type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_get_pull\00", [46 x i8] zeroinitializer }, align 32
@rockchip_get_pull._entry_ptr = internal global ptr @rockchip_get_pull._entry, section ".printk_index", align 4
@rockchip_get_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.34, ptr @.str.14, i32 835, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip_get_mux\00", [47 x i8] zeroinitializer }, align 32
@rockchip_get_mux._entry_ptr = internal global ptr @rockchip_get_mux._entry, section ".printk_index", align 4
@rockchip_perpin_drv_list = internal constant { [5 x [8 x i32]], [32 x i8] } { [5 x [8 x i32]] [[8 x i32] [i32 2, i32 4, i32 8, i32 12, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 3, i32 6, i32 9, i32 12, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 5, i32 10, i32 15, i32 20, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18], [8 x i32] [i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 26]], [32 x i8] zeroinitializer }, align 32
@rockchip_get_drive_perpin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.14, i32 1627, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unsupported bit: %d for pinctrl drive type: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_get_drive_perpin\00", [38 x i8] zeroinitializer }, align 32
@rockchip_get_drive_perpin._entry_ptr = internal global ptr @rockchip_get_drive_perpin._entry, section ".printk_index", align 4
@rockchip_get_drive_perpin._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.14, i32 1638, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported pinctrl drive type: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_get_drive_perpin._entry_ptr.39 = internal global ptr @rockchip_get_drive_perpin._entry.37, section ".printk_index", align 4
@rockchip_set_pull.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.40, ptr @.str.14, ptr @.str.41, i8 1, i8 -57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_set_pull\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting pull of GPIO%d-%d to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_set_pull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.14, i32 1864, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported pull setting %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_set_pull._entry_ptr = internal global ptr @rockchip_set_pull._entry, section ".printk_index", align 4
@rockchip_set_pull._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.40, ptr @.str.14, i32 1876, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@rockchip_set_pull._entry_ptr.44 = internal global ptr @rockchip_set_pull._entry.43, section ".printk_index", align 4
@rockchip_set_drive_perpin.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.45, ptr @.str.14, ptr @.str.46, i8 1, i8 -96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_set_drive_perpin\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting drive of GPIO%d-%d to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_set_drive_perpin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.14, i32 1686, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported driver strength %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_set_drive_perpin._entry_ptr = internal global ptr @rockchip_set_drive_perpin._entry, section ".printk_index", align 4
@rockchip_set_drive_perpin._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.45, ptr @.str.14, i32 1726, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@rockchip_set_drive_perpin._entry_ptr.49 = internal global ptr @rockchip_set_drive_perpin._entry.48, section ".printk_index", align 4
@rockchip_set_drive_perpin._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.45, ptr @.str.14, i32 1736, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@rockchip_set_drive_perpin._entry_ptr.51 = internal global ptr @rockchip_set_drive_perpin._entry.50, section ".printk_index", align 4
@rockchip_set_schmitt.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.52, ptr @.str.14, ptr @.str.53, i8 1, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rockchip_set_schmitt\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"setting input schmitt of GPIO%d-%d to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.54, ptr @.str.14, ptr @.str.55, i8 2, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_pinctrl_parse_dt\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfunctions = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.54, ptr @.str.14, ptr @.str.56, i8 2, i8 93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ngroups = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@rockchip_bank_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,gpio-bank\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-gpio-bank0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.14, i32 2441, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to parse function\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_parse_dt._entry_ptr = internal global ptr @rockchip_pinctrl_parse_dt._entry, section ".printk_index", align 4
@rockchip_pinctrl_parse_functions.grp_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rockchip_pinctrl_parse_functions.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.58, ptr @.str.14, ptr @.str.59, i8 2, i8 84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_pinctrl_parse_functions\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parse function(%d): %pOFn\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_pinctrl_parse_groups.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.60, ptr @.str.14, ptr @.str.61, i8 2, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_pinctrl_parse_groups\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"group(%d): %pOFn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip,pins\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"wrong pins number or pins and configs should be by 4\0A\00", [42 x i8] zeroinitializer }, align 32
@px30_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @px30_pin_banks, i32 4, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @px30_mux_route_data, i32 8, ptr @px30_calc_pull_reg_and_bit, ptr @px30_calc_drv_reg_and_bit, ptr @px30_calc_schmitt_reg_and_bit }, [32 x i8] zeroinitializer }, align 32
@rv1108_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rv1108_pin_banks, i32 4, i32 0, ptr @.str.69, i32 1, i32 16, i32 0, i32 0, i32 0, ptr @rv1108_mux_recalced_data, i32 10, ptr null, i32 0, ptr @rv1108_calc_pull_reg_and_bit, ptr @rv1108_calc_drv_reg_and_bit, ptr @rv1108_calc_schmitt_reg_and_bit }, [32 x i8] zeroinitializer }, align 32
@rk2928_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk2928_pin_banks, i32 4, i32 0, ptr @.str.70, i32 2, i32 168, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk2928_calc_pull_reg_and_bit, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3036_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3036_pin_banks, i32 3, i32 0, ptr @.str.71, i32 2, i32 168, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk2928_calc_pull_reg_and_bit, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3066a_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3066a_pin_banks, i32 6, i32 0, ptr @.str.72, i32 2, i32 168, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk2928_calc_pull_reg_and_bit, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3066b_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3066b_pin_banks, i32 4, i32 0, ptr @.str.75, i32 3, i32 96, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3128_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3128_pin_banks, i32 4, i32 0, ptr @.str.76, i32 4, i32 168, i32 0, i32 0, i32 0, ptr @rk3128_mux_recalced_data, i32 5, ptr @rk3128_mux_route_data, i32 7, ptr @rk3128_calc_pull_reg_and_bit, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3188_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3188_pin_banks, i32 4, i32 0, ptr @.str.77, i32 5, i32 96, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @rk3188_mux_route_data, i32 2, ptr @rk3188_calc_pull_reg_and_bit, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3228_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3228_pin_banks, i32 4, i32 0, ptr @.str.78, i32 6, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @rk3228_mux_route_data, i32 18, ptr @rk3228_calc_pull_reg_and_bit, ptr @rk3228_calc_drv_reg_and_bit, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3288_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3288_pin_banks, i32 9, i32 0, ptr @.str.79, i32 6, i32 0, i32 132, i32 0, i32 0, ptr null, i32 0, ptr @rk3288_mux_route_data, i32 2, ptr @rk3288_calc_pull_reg_and_bit, ptr @rk3288_calc_drv_reg_and_bit, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3308_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3308_pin_banks, i32 5, i32 0, ptr @.str.83, i32 7, i32 0, i32 0, i32 0, i32 0, ptr @rk3308_mux_recalced_data, i32 15, ptr @rk3308_mux_route_data, i32 26, ptr @rk3308_calc_pull_reg_and_bit, ptr @rk3308_calc_drv_reg_and_bit, ptr @rk3308_calc_schmitt_reg_and_bit }, [32 x i8] zeroinitializer }, align 32
@rk3328_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3328_pin_banks, i32 4, i32 0, ptr @.str.84, i32 6, i32 0, i32 0, i32 0, i32 0, ptr @rk3328_mux_recalced_data, i32 3, ptr @rk3328_mux_route_data, i32 12, ptr @rk3228_calc_pull_reg_and_bit, ptr @rk3228_calc_drv_reg_and_bit, ptr @rk3328_calc_schmitt_reg_and_bit }, [32 x i8] zeroinitializer }, align 32
@rk3368_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3368_pin_banks, i32 4, i32 0, ptr @.str.85, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk3368_calc_pull_reg_and_bit, ptr @rk3368_calc_drv_reg_and_bit, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3399_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3399_pin_banks, i32 5, i32 0, ptr @.str.86, i32 9, i32 57344, i32 0, i32 57600, i32 128, ptr null, i32 0, ptr @rk3399_mux_route_data, i32 5, ptr @rk3399_calc_pull_reg_and_bit, ptr @rk3399_calc_drv_reg_and_bit, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk3568_pin_ctrl = internal global { %struct.rockchip_pin_ctrl, [32 x i8] } { %struct.rockchip_pin_ctrl { ptr @rk3568_pin_banks, i32 5, i32 0, ptr @.str.87, i32 10, i32 0, i32 0, i32 512, i32 112, ptr null, i32 0, ptr @rk3568_mux_route_data, i32 93, ptr @rk3568_calc_pull_reg_and_bit, ptr @rk3568_calc_drv_reg_and_bit, ptr @rk3568_calc_schmitt_reg_and_bit }, [32 x i8] zeroinitializer }, align 32
@px30_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PX30-GPIO\00", [22 x i8] zeroinitializer }, align 32
@px30_mux_route_data = internal global { [8 x %struct.rockchip_mux_route_data], [32 x i8] } { [8 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 2, i8 0, i8 1, i32 0, i32 388, i32 8388608 }, %struct.rockchip_mux_route_data { i8 3, i8 3, i8 3, i32 0, i32 388, i32 8388736 }, %struct.rockchip_mux_route_data { i8 3, i8 22, i8 2, i32 0, i32 388, i32 16777216 }, %struct.rockchip_mux_route_data { i8 2, i8 22, i8 1, i32 0, i32 388, i32 16777472 }, %struct.rockchip_mux_route_data { i8 1, i8 27, i8 2, i32 0, i32 388, i32 67108864 }, %struct.rockchip_mux_route_data { i8 2, i8 14, i8 2, i32 0, i32 388, i32 67109888 }, %struct.rockchip_mux_route_data { i8 0, i8 17, i8 2, i32 0, i32 388, i32 33554432 }, %struct.rockchip_mux_route_data { i8 1, i8 15, i8 2, i32 0, i32 388, i32 33554944 }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@rv1108_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RV1108-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rv1108_mux_recalced_data = internal global { [10 x %struct.rockchip_mux_recalced_data], [40 x i8] } { [10 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 1, i8 0, i32 1048, i8 0, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 1, i32 1048, i8 2, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 2, i32 1048, i8 4, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 3, i32 1048, i8 6, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 4, i32 1048, i8 8, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 5, i32 1048, i8 10, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 6, i32 1048, i8 12, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 7, i32 1048, i8 14, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 8, i32 1052, i8 0, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 9, i32 1052, i8 2, i8 3 }], [40 x i8] zeroinitializer }, align 32
@rk2928_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK2928-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3036_pin_banks = internal global { [3 x %struct.rockchip_pin_bank], [528 x i8] } { [3 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [528 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3036-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3066a_pin_banks = internal global { [6 x %struct.rockchip_pin_bank], [1024 x i8] } { [6 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.73, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 16, ptr @.str.74, i8 6, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [1024 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RK3066a-GPIO\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@rk3066b_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RK3066b-GPIO\00", [19 x i8] zeroinitializer }, align 32
@rk3128_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3128-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3128_mux_recalced_data = internal global { [5 x %struct.rockchip_mux_recalced_data], [36 x i8] } { [5 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 2, i8 20, i32 232, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 21, i32 232, i8 4, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 22, i32 232, i8 8, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 23, i32 232, i8 12, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 24, i32 212, i8 12, i8 7 }], [36 x i8] zeroinitializer }, align 32
@rk3128_mux_route_data = internal global { [7 x %struct.rockchip_mux_route_data], [48 x i8] } { [7 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 1, i8 10, i8 1, i32 0, i32 324, i32 1572864 }, %struct.rockchip_mux_route_data { i8 1, i8 27, i8 3, i32 0, i32 324, i32 1572872 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 2, i32 0, i32 324, i32 1572880 }, %struct.rockchip_mux_route_data { i8 1, i8 5, i8 1, i32 0, i32 324, i32 2097152 }, %struct.rockchip_mux_route_data { i8 0, i8 14, i8 1, i32 0, i32 324, i32 2097184 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 2, i32 0, i32 324, i32 4194304 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 2, i32 0, i32 324, i32 4194368 }], [48 x i8] zeroinitializer }, align 32
@rk3188_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 1, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3188-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3188_mux_route_data = internal global { [2 x %struct.rockchip_mux_route_data], [32 x i8] } { [2 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 24, i8 1, i32 0, i32 160, i32 134217728 }, %struct.rockchip_mux_route_data { i8 0, i8 24, i8 2, i32 0, i32 160, i32 134219776 }], [32 x i8] zeroinitializer }, align 32
@rk3228_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3228-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3228_mux_route_data = internal global { [18 x %struct.rockchip_mux_route_data], [64 x i8] } { [18 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 26, i8 1, i32 0, i32 80, i32 65536 }, %struct.rockchip_mux_route_data { i8 3, i8 21, i8 1, i32 0, i32 80, i32 65537 }, %struct.rockchip_mux_route_data { i8 0, i8 27, i8 1, i32 0, i32 80, i32 131072 }, %struct.rockchip_mux_route_data { i8 0, i8 30, i8 2, i32 0, i32 80, i32 131074 }, %struct.rockchip_mux_route_data { i8 0, i8 28, i8 1, i32 0, i32 80, i32 262144 }, %struct.rockchip_mux_route_data { i8 1, i8 12, i8 2, i32 0, i32 80, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 26, i8 1, i32 0, i32 80, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 11, i8 2, i32 0, i32 80, i32 524296 }, %struct.rockchip_mux_route_data { i8 1, i8 1, i8 1, i32 0, i32 80, i32 1048576 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 1, i32 0, i32 80, i32 1048592 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 2, i32 0, i32 80, i32 2097152 }, %struct.rockchip_mux_route_data { i8 2, i8 0, i8 2, i32 0, i32 80, i32 2097184 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 2, i32 0, i32 80, i32 8388608 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 2, i32 0, i32 80, i32 8388736 }, %struct.rockchip_mux_route_data { i8 1, i8 19, i8 2, i32 0, i32 80, i32 16777216 }, %struct.rockchip_mux_route_data { i8 1, i8 10, i8 2, i32 0, i32 80, i32 16777472 }, %struct.rockchip_mux_route_data { i8 1, i8 10, i8 1, i32 0, i32 80, i32 134217728 }, %struct.rockchip_mux_route_data { i8 3, i8 13, i8 1, i32 0, i32 80, i32 134219776 }], [64 x i8] zeroinitializer }, align 32
@rk3288_pin_banks = internal global { [9 x %struct.rockchip_pin_bank], [1552 x i8] } { [9 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 24, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.73, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.80, i8 5, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.74, i8 6, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.81, i8 7, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 16, ptr @.str.82, i8 8, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [1552 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3288-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3288_mux_route_data = internal global { [2 x %struct.rockchip_mux_route_data], [32 x i8] } { [2 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 7, i8 16, i8 2, i32 0, i32 612, i32 268439552 }, %struct.rockchip_mux_route_data { i8 7, i8 23, i8 4, i32 0, i32 612, i32 268435456 }], [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@rk3308_pin_banks = internal global { [5 x %struct.rockchip_pin_bank], [848 x i8] } { [5 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.73, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [848 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3308-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3308_mux_recalced_data = internal global { [15 x %struct.rockchip_mux_recalced_data], [44 x i8] } { [15 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 1, i8 14, i32 40, i8 12, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 15, i32 44, i8 0, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 18, i32 48, i8 4, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 19, i32 48, i8 8, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 20, i32 48, i8 12, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 21, i32 52, i8 0, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 22, i32 52, i8 4, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 23, i32 52, i8 8, i8 15 }, %struct.rockchip_mux_recalced_data { i8 3, i8 12, i32 104, i8 8, i8 15 }, %struct.rockchip_mux_recalced_data { i8 3, i8 13, i32 104, i8 12, i8 15 }, %struct.rockchip_mux_recalced_data { i8 2, i8 2, i32 1544, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 3, i32 1544, i8 4, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 16, i32 1552, i8 8, i8 7 }, %struct.rockchip_mux_recalced_data { i8 3, i8 10, i32 1552, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 3, i8 11, i32 1552, i8 4, i8 7 }], [44 x i8] zeroinitializer }, align 32
@rk3308_mux_route_data = internal global { [26 x %struct.rockchip_mux_route_data], [96 x i8] } { [26 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 19, i8 1, i32 0, i32 788, i32 65537 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 2, i32 0, i32 788, i32 786432 }, %struct.rockchip_mux_route_data { i8 4, i8 26, i8 2, i32 0, i32 788, i32 786436 }, %struct.rockchip_mux_route_data { i8 0, i8 15, i8 2, i32 0, i32 1544, i32 50331648 }, %struct.rockchip_mux_route_data { i8 3, i8 12, i8 2, i32 0, i32 1544, i32 50331904 }, %struct.rockchip_mux_route_data { i8 2, i8 0, i8 3, i32 0, i32 1544, i32 50332160 }, %struct.rockchip_mux_route_data { i8 1, i8 3, i8 2, i32 0, i32 776, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 4, i8 2, i32 0, i32 776, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 13, i8 2, i32 0, i32 776, i32 524296 }, %struct.rockchip_mux_route_data { i8 1, i8 14, i8 2, i32 0, i32 776, i32 524296 }, %struct.rockchip_mux_route_data { i8 1, i8 4, i8 3, i32 0, i32 776, i32 805306368 }, %struct.rockchip_mux_route_data { i8 1, i8 14, i8 4, i32 0, i32 776, i32 805310464 }, %struct.rockchip_mux_route_data { i8 2, i8 6, i8 2, i32 0, i32 776, i32 805314560 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 3, i32 0, i32 1536, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 10, i8 3, i32 0, i32 788, i32 33554432 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 2, i32 0, i32 788, i32 33554944 }, %struct.rockchip_mux_route_data { i8 0, i8 11, i8 3, i32 0, i32 788, i32 201326592 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 7, i32 0, i32 788, i32 201327616 }, %struct.rockchip_mux_route_data { i8 2, i8 2, i8 5, i32 0, i32 788, i32 201328640 }, %struct.rockchip_mux_route_data { i8 0, i8 11, i8 2, i32 0, i32 788, i32 805306368 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 5, i32 0, i32 788, i32 805310464 }, %struct.rockchip_mux_route_data { i8 2, i8 2, i8 4, i32 0, i32 788, i32 805314560 }, %struct.rockchip_mux_route_data { i8 1, i8 20, i8 3, i32 0, i32 788, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 2, i8 2, i32 0, i32 788, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 3, i8 12, i8 4, i32 0, i32 788, i32 -2147483648 }, %struct.rockchip_mux_route_data { i8 0, i8 17, i8 3, i32 0, i32 788, i32 -2147450880 }], [96 x i8] zeroinitializer }, align 32
@rk3328_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3328-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3328_mux_recalced_data = internal global { [3 x %struct.rockchip_mux_recalced_data], [60 x i8] } { [3 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 2, i8 12, i32 36, i8 8, i8 3 }, %struct.rockchip_mux_recalced_data { i8 2, i8 15, i32 40, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 23, i32 48, i8 14, i8 3 }], [60 x i8] zeroinitializer }, align 32
@rk3328_mux_route_data = internal global { [12 x %struct.rockchip_mux_route_data], [32 x i8] } { [12 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 1, i8 1, i8 2, i32 0, i32 80, i32 196608 }, %struct.rockchip_mux_route_data { i8 2, i8 1, i8 1, i32 0, i32 80, i32 196609 }, %struct.rockchip_mux_route_data { i8 1, i8 11, i8 2, i32 0, i32 80, i32 262148 }, %struct.rockchip_mux_route_data { i8 1, i8 14, i8 2, i32 0, i32 80, i32 67109888 }, %struct.rockchip_mux_route_data { i8 2, i8 19, i8 2, i32 0, i32 80, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 23, i8 3, i32 0, i32 80, i32 524296 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 4, i32 0, i32 80, i32 3145760 }, %struct.rockchip_mux_route_data { i8 1, i8 24, i8 1, i32 0, i32 80, i32 4194304 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 6, i32 0, i32 80, i32 4194368 }, %struct.rockchip_mux_route_data { i8 2, i8 22, i8 3, i32 0, i32 80, i32 8388736 }, %struct.rockchip_mux_route_data { i8 2, i8 16, i8 3, i32 0, i32 80, i32 16777472 }, %struct.rockchip_mux_route_data { i8 2, i8 16, i8 4, i32 0, i32 80, i32 33554944 }], [32 x i8] zeroinitializer }, align 32
@rk3368_pin_banks = internal global { [4 x %struct.rockchip_pin_bank], [672 x i8] } { [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [672 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3368-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3399_pin_banks = internal global { [5 x %struct.rockchip_pin_bank], [848 x i8] } { [5 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 2, i32 128 }, %struct.rockchip_drv { i32 2, i32 136 }, %struct.rockchip_drv { i32 0, i32 -1 }, %struct.rockchip_drv { i32 0, i32 -1 }], [4 x i32] [i32 1, i32 1, i32 0, i32 0], i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 1, i32 160 }, %struct.rockchip_drv { i32 1, i32 168 }, %struct.rockchip_drv { i32 1, i32 176 }, %struct.rockchip_drv { i32 1, i32 184 }], [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 2, i32 -1 }, %struct.rockchip_drv { i32 2, i32 -1 }], [4 x i32] [i32 0, i32 0, i32 1, i32 1], i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 4, i32 -1 }, %struct.rockchip_drv { i32 4, i32 -1 }, %struct.rockchip_drv { i32 4, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }], [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.73, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 3, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }], [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [848 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3399-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3399_mux_route_data = internal global { [5 x %struct.rockchip_mux_route_data], [48 x i8] } { [5 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 4, i8 8, i8 2, i32 0, i32 57884, i32 201326592 }, %struct.rockchip_mux_route_data { i8 4, i8 16, i8 2, i32 0, i32 57884, i32 201327616 }, %struct.rockchip_mux_route_data { i8 4, i8 19, i8 1, i32 0, i32 57884, i32 201328640 }, %struct.rockchip_mux_route_data { i8 2, i8 26, i8 2, i32 0, i32 57884, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 24, i8 1, i32 0, i32 57884, i32 1073758208 }], [48 x i8] zeroinitializer }, align 32
@rk3568_pin_banks = internal global { [5 x %struct.rockchip_pin_bank], [848 x i8] } { [5 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.65, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 6, i32 -1 }, %struct.rockchip_iomux { i32 6, i32 -1 }, %struct.rockchip_iomux { i32 6, i32 -1 }, %struct.rockchip_iomux { i32 6, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.66, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.67, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.68, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.73, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], [848 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3568-GPIO\00", [20 x i8] zeroinitializer }, align 32
@rk3568_mux_route_data = internal global { [93 x %struct.rockchip_mux_route_data], [368 x i8] } { [93 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 15, i8 1, i32 1, i32 272, i32 196608 }, %struct.rockchip_mux_route_data { i8 0, i8 23, i8 2, i32 1, i32 272, i32 196609 }, %struct.rockchip_mux_route_data { i8 0, i8 16, i8 1, i32 1, i32 272, i32 786432 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 4, i32 1, i32 272, i32 786436 }, %struct.rockchip_mux_route_data { i8 0, i8 17, i8 1, i32 1, i32 272, i32 3145728 }, %struct.rockchip_mux_route_data { i8 0, i8 14, i8 4, i32 1, i32 272, i32 3145744 }, %struct.rockchip_mux_route_data { i8 0, i8 11, i8 2, i32 1, i32 768, i32 65536 }, %struct.rockchip_mux_route_data { i8 2, i8 1, i8 4, i32 2, i32 768, i32 65537 }, %struct.rockchip_mux_route_data { i8 1, i8 1, i8 3, i32 2, i32 768, i32 262144 }, %struct.rockchip_mux_route_data { i8 4, i8 19, i8 3, i32 2, i32 768, i32 262148 }, %struct.rockchip_mux_route_data { i8 4, i8 13, i8 3, i32 2, i32 768, i32 1048576 }, %struct.rockchip_mux_route_data { i8 2, i8 10, i8 4, i32 2, i32 768, i32 1048592 }, %struct.rockchip_mux_route_data { i8 4, i8 20, i8 1, i32 2, i32 768, i32 4194304 }, %struct.rockchip_mux_route_data { i8 0, i8 18, i8 2, i32 1, i32 768, i32 4194368 }, %struct.rockchip_mux_route_data { i8 3, i8 9, i8 3, i32 2, i32 768, i32 16777216 }, %struct.rockchip_mux_route_data { i8 4, i8 7, i8 3, i32 2, i32 768, i32 16777472 }, %struct.rockchip_mux_route_data { i8 4, i8 25, i8 1, i32 2, i32 768, i32 67108864 }, %struct.rockchip_mux_route_data { i8 0, i8 23, i8 1, i32 1, i32 768, i32 67109888 }, %struct.rockchip_mux_route_data { i8 0, i8 14, i8 1, i32 1, i32 768, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 12, i8 1, i32 2, i32 768, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 1, i8 0, i8 1, i32 2, i32 772, i32 65536 }, %struct.rockchip_mux_route_data { i8 3, i8 14, i8 4, i32 2, i32 772, i32 65537 }, %struct.rockchip_mux_route_data { i8 4, i8 10, i8 1, i32 2, i32 772, i32 262144 }, %struct.rockchip_mux_route_data { i8 2, i8 9, i8 2, i32 2, i32 772, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 12, i8 4, i32 2, i32 772, i32 1048576 }, %struct.rockchip_mux_route_data { i8 4, i8 24, i8 2, i32 2, i32 772, i32 1048592 }, %struct.rockchip_mux_route_data { i8 3, i8 9, i8 5, i32 2, i32 772, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 1, i8 29, i8 4, i32 2, i32 772, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 3, i8 10, i8 5, i32 2, i32 776, i32 65536 }, %struct.rockchip_mux_route_data { i8 1, i8 30, i8 4, i32 2, i32 776, i32 65537 }, %struct.rockchip_mux_route_data { i8 3, i8 13, i8 5, i32 2, i32 776, i32 262144 }, %struct.rockchip_mux_route_data { i8 2, i8 1, i8 2, i32 2, i32 776, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 14, i8 5, i32 2, i32 776, i32 1048576 }, %struct.rockchip_mux_route_data { i8 4, i8 16, i8 3, i32 2, i32 776, i32 1048592 }, %struct.rockchip_mux_route_data { i8 3, i8 15, i8 2, i32 2, i32 776, i32 4194304 }, %struct.rockchip_mux_route_data { i8 4, i8 21, i8 1, i32 2, i32 776, i32 4194368 }, %struct.rockchip_mux_route_data { i8 3, i8 16, i8 2, i32 2, i32 776, i32 16777216 }, %struct.rockchip_mux_route_data { i8 4, i8 22, i8 1, i32 2, i32 776, i32 16777472 }, %struct.rockchip_mux_route_data { i8 3, i8 20, i8 1, i32 2, i32 776, i32 67108864 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 1, i32 2, i32 776, i32 67109888 }, %struct.rockchip_mux_route_data { i8 3, i8 21, i8 1, i32 2, i32 776, i32 268435456 }, %struct.rockchip_mux_route_data { i8 4, i8 19, i8 1, i32 2, i32 776, i32 268439552 }, %struct.rockchip_mux_route_data { i8 3, i8 26, i8 3, i32 2, i32 776, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 3, i8 5, i8 5, i32 2, i32 776, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 2, i32 1, i32 780, i32 65536 }, %struct.rockchip_mux_route_data { i8 2, i8 27, i8 3, i32 2, i32 780, i32 65537 }, %struct.rockchip_mux_route_data { i8 2, i8 13, i8 3, i32 2, i32 780, i32 262144 }, %struct.rockchip_mux_route_data { i8 3, i8 19, i8 3, i32 2, i32 780, i32 262148 }, %struct.rockchip_mux_route_data { i8 2, i8 17, i8 4, i32 2, i32 780, i32 1048576 }, %struct.rockchip_mux_route_data { i8 3, i8 0, i8 3, i32 2, i32 780, i32 1048592 }, %struct.rockchip_mux_route_data { i8 4, i8 11, i8 4, i32 2, i32 780, i32 4194304 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 2, i32 2, i32 780, i32 4194368 }, %struct.rockchip_mux_route_data { i8 2, i8 12, i8 2, i32 2, i32 780, i32 16777216 }, %struct.rockchip_mux_route_data { i8 0, i8 25, i8 1, i32 1, i32 780, i32 16777472 }, %struct.rockchip_mux_route_data { i8 0, i8 25, i8 1, i32 1, i32 780, i32 67108864 }, %struct.rockchip_mux_route_data { i8 1, i8 29, i8 2, i32 2, i32 780, i32 67109888 }, %struct.rockchip_mux_route_data { i8 1, i8 1, i8 2, i32 2, i32 780, i32 268435456 }, %struct.rockchip_mux_route_data { i8 3, i8 15, i8 4, i32 2, i32 780, i32 268439552 }, %struct.rockchip_mux_route_data { i8 1, i8 6, i8 2, i32 2, i32 780, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 3, i8 10, i8 4, i32 2, i32 780, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 2, i8 2, i8 3, i32 2, i32 784, i32 65536 }, %struct.rockchip_mux_route_data { i8 3, i8 18, i8 4, i32 2, i32 784, i32 65537 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 3, i32 2, i32 784, i32 262144 }, %struct.rockchip_mux_route_data { i8 1, i8 29, i8 3, i32 2, i32 784, i32 262148 }, %struct.rockchip_mux_route_data { i8 2, i8 6, i8 3, i32 2, i32 784, i32 3145728 }, %struct.rockchip_mux_route_data { i8 3, i8 20, i8 4, i32 2, i32 784, i32 3145744 }, %struct.rockchip_mux_route_data { i8 4, i8 2, i8 4, i32 2, i32 784, i32 3145760 }, %struct.rockchip_mux_route_data { i8 2, i8 21, i8 3, i32 2, i32 784, i32 4194304 }, %struct.rockchip_mux_route_data { i8 2, i8 31, i8 4, i32 2, i32 784, i32 4194368 }, %struct.rockchip_mux_route_data { i8 2, i8 8, i8 3, i32 2, i32 784, i32 50331648 }, %struct.rockchip_mux_route_data { i8 4, i8 21, i8 4, i32 2, i32 784, i32 50331904 }, %struct.rockchip_mux_route_data { i8 4, i8 4, i8 4, i32 2, i32 784, i32 50332160 }, %struct.rockchip_mux_route_data { i8 1, i8 2, i8 1, i32 2, i32 784, i32 201326592 }, %struct.rockchip_mux_route_data { i8 3, i8 22, i8 4, i32 2, i32 784, i32 201327616 }, %struct.rockchip_mux_route_data { i8 2, i8 24, i8 5, i32 2, i32 784, i32 201328640 }, %struct.rockchip_mux_route_data { i8 2, i8 17, i8 1, i32 2, i32 784, i32 268435456 }, %struct.rockchip_mux_route_data { i8 4, i8 14, i8 5, i32 2, i32 784, i32 268439552 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 4, i32 2, i32 784, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 5, i32 2, i32 784, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 1, i8 4, i8 3, i32 2, i32 788, i32 196608 }, %struct.rockchip_mux_route_data { i8 1, i8 6, i8 3, i32 2, i32 788, i32 196608 }, %struct.rockchip_mux_route_data { i8 3, i8 30, i8 5, i32 2, i32 788, i32 196609 }, %struct.rockchip_mux_route_data { i8 4, i8 0, i8 4, i32 2, i32 788, i32 196609 }, %struct.rockchip_mux_route_data { i8 3, i8 20, i8 5, i32 2, i32 788, i32 196610 }, %struct.rockchip_mux_route_data { i8 0, i8 5, i8 3, i32 1, i32 788, i32 786432 }, %struct.rockchip_mux_route_data { i8 2, i8 24, i8 4, i32 2, i32 788, i32 786436 }, %struct.rockchip_mux_route_data { i8 1, i8 8, i8 4, i32 2, i32 788, i32 786440 }, %struct.rockchip_mux_route_data { i8 0, i8 4, i8 3, i32 1, i32 788, i32 3145728 }, %struct.rockchip_mux_route_data { i8 2, i8 26, i8 4, i32 2, i32 788, i32 3145744 }, %struct.rockchip_mux_route_data { i8 1, i8 5, i8 4, i32 2, i32 788, i32 3145760 }, %struct.rockchip_mux_route_data { i8 0, i8 6, i8 2, i32 1, i32 788, i32 12582912 }, %struct.rockchip_mux_route_data { i8 2, i8 28, i8 4, i32 2, i32 788, i32 12582976 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 4, i32 2, i32 788, i32 12583040 }], [368 x i8] zeroinitializer }, align 32
@rk3288_grf_gpio6c_iomux = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 9, i64 14, i64 17]
@__sancov_gen_cov_switch_values.89 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [20 x i64] [i64 18, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 15, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.93 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 9, i64 14, i64 17]
@__sancov_gen_cov_switch_values.94 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.97 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [20 x i64] [i64 18, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 15, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"rockchip_pinctrl_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3227, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3231, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"rockchip_pinctrl_dt_match\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3193, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"rockchip_pinctrl_dev_pm_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2666, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2680, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2690, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2693, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"rockchip_regmap_config\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 200, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2704, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2706, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2718, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2720, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2725, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2740, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2528, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2564, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [19 x i8] c"rockchip_pctrl_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 348, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"rockchip_pmx_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2063, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"rockchip_pinconf_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2285, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2489, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2498, i32 54 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 302, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 336, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2037, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 928, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 884, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 890, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"rockchip_pull_list\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1751, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1805, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 835, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [25 x i8] c"rockchip_perpin_drv_list\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1567, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1626, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1638, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1821, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1864, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1876, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1664, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1686, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1725, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1736, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1973, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2422, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2423, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"rockchip_bank_match\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2291, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2441, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant [10 x i8] c"grp_index\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2381, i32 13 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2384, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2324, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2333, i32 29 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2337, i32 38 }
@___asan_gen_.343 = private unnamed_addr constant [14 x i8] c"px30_pin_ctrl\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2793, i32 33 }
@___asan_gen_.346 = private unnamed_addr constant [16 x i8] c"rv1108_pin_ctrl\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2817, i32 33 }
@___asan_gen_.349 = private unnamed_addr constant [16 x i8] c"rk2928_pin_ctrl\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2838, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant [16 x i8] c"rk3036_pin_ctrl\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2853, i32 33 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"rk3066a_pin_ctrl\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2871, i32 33 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"rk3066b_pin_ctrl\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2887, i32 33 }
@___asan_gen_.361 = private unnamed_addr constant [16 x i8] c"rk3128_pin_ctrl\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2902, i32 33 }
@___asan_gen_.364 = private unnamed_addr constant [16 x i8] c"rk3188_pin_ctrl\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2922, i32 33 }
@___asan_gen_.367 = private unnamed_addr constant [16 x i8] c"rk3228_pin_ctrl\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2940, i32 33 }
@___asan_gen_.370 = private unnamed_addr constant [16 x i8] c"rk3288_pin_ctrl\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2984, i32 33 }
@___asan_gen_.373 = private unnamed_addr constant [16 x i8] c"rk3308_pin_ctrl\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3020, i32 33 }
@___asan_gen_.376 = private unnamed_addr constant [16 x i8] c"rk3328_pin_ctrl\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3049, i32 33 }
@___asan_gen_.379 = private unnamed_addr constant [16 x i8] c"rk3368_pin_ctrl\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3075, i32 33 }
@___asan_gen_.382 = private unnamed_addr constant [16 x i8] c"rk3399_pin_ctrl\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3139, i32 33 }
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"rk3568_pin_ctrl\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3177, i32 33 }
@___asan_gen_.388 = private unnamed_addr constant [15 x i8] c"px30_pin_banks\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2770, i32 33 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2796, i32 14 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c"px30_mux_route_data\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 597, i32 39 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2771, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2776, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2781, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2786, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"rv1108_pin_banks\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2807, i32 33 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2820, i32 13 }
@___asan_gen_.415 = private unnamed_addr constant [25 x i8] c"rv1108_mux_recalced_data\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 360, i32 42 }
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"rk2928_pin_banks\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2831, i32 33 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2841, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"rk3036_pin_banks\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2847, i32 33 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2856, i32 14 }
@___asan_gen_.430 = private unnamed_addr constant [18 x i8] c"rk3066a_pin_banks\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2862, i32 33 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2874, i32 14 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2867, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2868, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [18 x i8] c"rk3066b_pin_banks\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2880, i32 33 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2890, i32 13 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"rk3128_pin_banks\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2895, i32 33 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2905, i32 14 }
@___asan_gen_.454 = private unnamed_addr constant [25 x i8] c"rk3128_mux_recalced_data\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 424, i32 43 }
@___asan_gen_.457 = private unnamed_addr constant [22 x i8] c"rk3128_mux_route_data\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 608, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"rk3188_pin_banks\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2915, i32 33 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2925, i32 14 }
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"rk3188_mux_route_data\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 618, i32 39 }
@___asan_gen_.469 = private unnamed_addr constant [17 x i8] c"rk3228_pin_banks\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2933, i32 33 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2943, i32 14 }
@___asan_gen_.475 = private unnamed_addr constant [22 x i8] c"rk3228_mux_route_data\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 623, i32 39 }
@___asan_gen_.478 = private unnamed_addr constant [17 x i8] c"rk3288_pin_banks\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2952, i32 33 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2987, i32 14 }
@___asan_gen_.484 = private unnamed_addr constant [22 x i8] c"rk3288_mux_route_data\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 644, i32 39 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2970, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2976, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2981, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [17 x i8] c"rk3308_pin_banks\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2997, i32 33 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3023, i32 14 }
@___asan_gen_.502 = private unnamed_addr constant [25 x i8] c"rk3308_mux_recalced_data\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 458, i32 42 }
@___asan_gen_.505 = private unnamed_addr constant [22 x i8] c"rk3308_mux_route_data\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 649, i32 39 }
@___asan_gen_.508 = private unnamed_addr constant [17 x i8] c"rk3328_pin_banks\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3035, i32 33 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3052, i32 14 }
@___asan_gen_.514 = private unnamed_addr constant [25 x i8] c"rk3328_mux_recalced_data\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 552, i32 42 }
@___asan_gen_.517 = private unnamed_addr constant [22 x i8] c"rk3328_mux_route_data\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 678, i32 39 }
@___asan_gen_.520 = private unnamed_addr constant [17 x i8] c"rk3368_pin_banks\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3064, i32 33 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3078, i32 14 }
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"rk3399_pin_banks\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3086, i32 33 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3142, i32 14 }
@___asan_gen_.532 = private unnamed_addr constant [22 x i8] c"rk3399_mux_route_data\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 693, i32 39 }
@___asan_gen_.535 = private unnamed_addr constant [17 x i8] c"rk3568_pin_banks\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3154, i32 33 }
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 3180, i32 13 }
@___asan_gen_.541 = private unnamed_addr constant [22 x i8] c"rk3568_mux_route_data\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 701, i32 39 }
@___asan_gen_.544 = private unnamed_addr constant [24 x i8] c"rk3288_grf_gpio6c_iomux\00", align 1
@___asan_gen_.545 = private constant [38 x i8] c"../drivers/pinctrl/pinctrl-rockchip.c\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 2624, i32 12 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_rockchip_pinctrl_drv_unregister, ptr @__initcall__kmod_pinctrl_rockchip__234_3241_rockchip_pinctrl_drv_register2, ptr @rockchip_dt_node_to_map._entry, ptr @rockchip_dt_node_to_map._entry_ptr, ptr @rockchip_get_drive_perpin._entry, ptr @rockchip_get_drive_perpin._entry.37, ptr @rockchip_get_drive_perpin._entry_ptr, ptr @rockchip_get_drive_perpin._entry_ptr.39, ptr @rockchip_get_mux._entry, ptr @rockchip_get_mux._entry_ptr, ptr @rockchip_get_pull._entry, ptr @rockchip_get_pull._entry_ptr, ptr @rockchip_pinctrl_drv_unregister, ptr @rockchip_pinctrl_parse_dt._entry, ptr @rockchip_pinctrl_parse_dt._entry_ptr, ptr @rockchip_set_drive_perpin._entry, ptr @rockchip_set_drive_perpin._entry.48, ptr @rockchip_set_drive_perpin._entry.50, ptr @rockchip_set_drive_perpin._entry_ptr, ptr @rockchip_set_drive_perpin._entry_ptr.49, ptr @rockchip_set_drive_perpin._entry_ptr.51, ptr @rockchip_set_pull._entry, ptr @rockchip_set_pull._entry.43, ptr @rockchip_set_pull._entry_ptr, ptr @rockchip_set_pull._entry_ptr.44, ptr @rockchip_verify_mux._entry, ptr @rockchip_verify_mux._entry.29, ptr @rockchip_verify_mux._entry_ptr, ptr @rockchip_verify_mux._entry_ptr.31, ptr @rockchip_pinctrl_driver, ptr @.str, ptr @rockchip_pinctrl_dt_match, ptr @rockchip_pinctrl_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rockchip_regmap_config, ptr @.str.4, ptr @rockchip_pinctrl_probe._key, ptr @.str.5, ptr @.str.6, ptr @rockchip_pinctrl_probe._key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rockchip_pinctrl_get_soc_data.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rockchip_pctrl_ops, ptr @rockchip_pmx_ops, ptr @rockchip_pinconf_ops, ptr @rockchip_pinctrl_register.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @rockchip_pull_list, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rockchip_perpin_drv_list, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @rockchip_bank_match, ptr @.str.57, ptr @rockchip_pinctrl_parse_functions.grp_index, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @px30_pin_ctrl, ptr @rv1108_pin_ctrl, ptr @rk2928_pin_ctrl, ptr @rk3036_pin_ctrl, ptr @rk3066a_pin_ctrl, ptr @rk3066b_pin_ctrl, ptr @rk3128_pin_ctrl, ptr @rk3188_pin_ctrl, ptr @rk3228_pin_ctrl, ptr @rk3288_pin_ctrl, ptr @rk3308_pin_ctrl, ptr @rk3328_pin_ctrl, ptr @rk3368_pin_ctrl, ptr @rk3399_pin_ctrl, ptr @rk3568_pin_ctrl, ptr @px30_pin_banks, ptr @.str.64, ptr @px30_mux_route_data, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @rv1108_pin_banks, ptr @.str.69, ptr @rv1108_mux_recalced_data, ptr @rk2928_pin_banks, ptr @.str.70, ptr @rk3036_pin_banks, ptr @.str.71, ptr @rk3066a_pin_banks, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @rk3066b_pin_banks, ptr @.str.75, ptr @rk3128_pin_banks, ptr @.str.76, ptr @rk3128_mux_recalced_data, ptr @rk3128_mux_route_data, ptr @rk3188_pin_banks, ptr @.str.77, ptr @rk3188_mux_route_data, ptr @rk3228_pin_banks, ptr @.str.78, ptr @rk3228_mux_route_data, ptr @rk3288_pin_banks, ptr @.str.79, ptr @rk3288_mux_route_data, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @rk3308_pin_banks, ptr @.str.83, ptr @rk3308_mux_recalced_data, ptr @rk3308_mux_route_data, ptr @rk3328_pin_banks, ptr @.str.84, ptr @rk3328_mux_recalced_data, ptr @rk3328_mux_route_data, ptr @rk3368_pin_banks, ptr @.str.85, ptr @rk3399_pin_banks, ptr @.str.86, ptr @rk3399_mux_route_data, ptr @rk3568_pin_banks, ptr @.str.87, ptr @rk3568_mux_route_data, ptr @rk3288_grf_gpio6c_iomux], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_dt_match to i32), i32 3136, i32 3904, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_probe._key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_get_soc_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_verify_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_verify_mux._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pull_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_get_pull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_get_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_perpin_drv_list to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_get_drive_perpin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_get_drive_perpin._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_set_pull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_set_pull._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_set_drive_perpin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_set_drive_perpin._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_set_drive_perpin._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_bank_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pinctrl_parse_functions.grp_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk2928_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066a_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066b_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_pin_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_mux_route_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_mux_recalced_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk2928_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_pin_banks to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066a_pin_banks to i32), i32 4128, i32 5152, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066b_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_mux_recalced_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_mux_route_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_mux_route_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_mux_route_data to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_pin_banks to i32), i32 6192, i32 7744, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_mux_route_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_pin_banks to i32), i32 3440, i32 4288, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_mux_recalced_data to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_mux_route_data to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_mux_recalced_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_mux_route_data to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_pin_banks to i32), i32 2752, i32 3424, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_pin_banks to i32), i32 3440, i32 4288, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_mux_route_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_pin_banks to i32), i32 3440, i32 4288, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_mux_route_data to i32), i32 1488, i32 1856, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_grf_gpio6c_iomux to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_drv_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pinctrl_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pinctrl_drv_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pinctrl_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i128 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !311
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -19, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 88, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev7, align 4
  %call8 = tail call fastcc ptr @rockchip_pinctrl_get_soc_data(ptr noundef nonnull %call.i, ptr noundef %pdev)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -22, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %ctrl13 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %ctrl13, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i119 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end12
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then16

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then16:                                        ; preds = %of_parse_phandle.exit
  %call17 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.then16.if.end46_crit_edge

if.then16.if.end46_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %call24 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %cmp.i120 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.else
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %14, -3
  %sub = sub i32 %add.i, %16
  store i32 %sub, ptr getelementptr inbounds (%struct.regmap_config, ptr @rockchip_regmap_config, i32 0, i32 19), align 4
  store ptr @.str.4, ptr @rockchip_regmap_config, align 4
  %call30 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call24, ptr noundef nonnull @rockchip_regmap_config, ptr noundef nonnull @rockchip_pinctrl_probe._key, ptr noundef nonnull @.str.5) #10
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call30, ptr %call.i, align 4
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res, align 4
  %end.i121 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %end.i121 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i121, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %sub.i122 = add i32 %21, 1
  %add.i123 = sub i32 %sub.i122, %23
  %reg_size = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %reg_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i123, ptr %reg_size, align 4
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %call8, i32 0, i32 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp = icmp eq i32 %26, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i123)
  %cmp34 = icmp slt i32 %add.i123, 512
  %or.cond = select i1 %cmp, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then35, label %if.end28.if.end46_crit_edge

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then35:                                        ; preds = %if.end28
  %call36 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull %res) #10
  %cmp.i124 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res, align 4
  %end.i125 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %end.i125 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i125, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %add.i127 = add i32 %31, -3
  %sub42 = sub i32 %add.i127, %33
  store i32 %sub42, ptr getelementptr inbounds (%struct.regmap_config, ptr @rockchip_regmap_config, i32 0, i32 19), align 4
  store ptr @.str.6, ptr @rockchip_regmap_config, align 4
  %call44 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call36, ptr noundef nonnull @rockchip_regmap_config, ptr noundef nonnull @rockchip_pinctrl_probe._key.7, ptr noundef nonnull @.str.8) #10
  %regmap_pull = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %regmap_pull to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call44, ptr %regmap_pull, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.end28.if.end46_crit_edge, %if.then16.if.end46_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i128) #10
  %35 = call ptr @memset(ptr %args.i128, i32 255, i32 72)
  %call.i129 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %of_parse_phandle.exit133, label %of_parse_phandle.exit133.thread

of_parse_phandle.exit133.thread:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i128) #10
  br label %if.end57

of_parse_phandle.exit133:                         ; preds = %if.end46
  %36 = ptrtoint ptr %args.i128 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %args.i128, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i128) #10
  %tobool48.not = icmp eq ptr %37, null
  br i1 %tobool48.not, label %of_parse_phandle.exit133.if.end57_crit_edge, label %if.then49

of_parse_phandle.exit133.if.end57_crit_edge:      ; preds = %of_parse_phandle.exit133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then49:                                        ; preds = %of_parse_phandle.exit133
  %call50 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %37) #10
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call50, ptr %regmap_pmu, align 4
  %cmp.i134 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then53, label %if.then49.if.end57_crit_edge

if.then49.if.end57_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.then49.if.end57_crit_edge, %of_parse_phandle.exit133.if.end57_crit_edge, %of_parse_phandle.exit133.thread
  %pctl.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %pctl.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str, ptr %pctl.i, align 4
  %owner.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6, i32 6
  %41 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %owner.i, align 4
  %pctlops.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6, i32 3
  %42 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @rockchip_pctrl_ops, ptr %pctlops.i, align 4
  %pmxops.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6, i32 4
  %43 = ptrtoint ptr %pmxops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @rockchip_pmx_ops, ptr %pmxops.i, align 4
  %confops.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6, i32 5
  %44 = ptrtoint ptr %confops.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rockchip_pinconf_ops, ptr %confops.i, align 4
  %45 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl13, align 4
  %nr_pins.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_pins.i, align 4
  %49 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 12) #10
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end57.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !312

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end57
  %51 = extractvalue { i32, i1 } %49, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %51, i32 noundef 3520) #10
  %tobool.not.i135 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i135, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end.i136

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i136:                                      ; preds = %devm_kcalloc.exit.i
  %pins.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i.i, ptr %pins.i, align 4
  %53 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl13, align 4
  %nr_pins3.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %nr_pins3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_pins3.i, align 4
  %npins.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 6, i32 2
  %57 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %npins.i, align 4
  %nr_banks91.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %54, i32 0, i32 1
  %58 = ptrtoint ptr %nr_banks91.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_banks91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp92.not.i = icmp eq i32 %59, 0
  br i1 %cmp92.not.i, label %if.end.i136.for.end24.i_crit_edge, label %if.end.i136.for.body.i_crit_edge

if.end.i136.for.body.i_crit_edge:                 ; preds = %if.end.i136
  br label %for.body.i

if.end.i136.for.end24.i_crit_edge:                ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end24.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end.i136.for.body.i_crit_edge
  %60 = phi ptr [ %79, %for.end.i.for.body.i_crit_edge ], [ %54, %if.end.i136.for.body.i_crit_edge ]
  %k.095.i = phi i32 [ %k.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end.i136.for.body.i_crit_edge ]
  %bank.094.i = phi i32 [ %inc23.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end.i136.for.body.i_crit_edge ]
  %pdesc.093.i = phi ptr [ %pdesc.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ %call5.i.i.i, %if.end.i136.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %name6.i = getelementptr %struct.rockchip_pin_bank, ptr %62, i32 %bank.094.i, i32 9
  %63 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name6.i, align 4
  %nr_pins7.i = getelementptr %struct.rockchip_pin_bank, ptr %62, i32 %bank.094.i, i32 8
  %65 = ptrtoint ptr %nr_pins7.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_pins7.i, align 4
  %conv.i = zext i8 %66 to i32
  %call8.i = call ptr @devm_kasprintf_strarray(ptr noundef %dev1, ptr noundef %64, i32 noundef %conv.i) #10
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.body.i
  %67 = ptrtoint ptr %nr_pins7.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_pins7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp1686.not.i = icmp eq i8 %68, 0
  br i1 %cmp1686.not.i, label %for.cond13.preheader.i.for.end.i_crit_edge, label %for.cond13.preheader.i.for.body18.i_crit_edge

for.cond13.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body18.i

for.cond13.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %call8.i to i32
  br label %rockchip_pinctrl_register.exit

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.cond13.preheader.i.for.body18.i_crit_edge
  %k.189.i = phi i32 [ %inc21.i, %for.body18.i.for.body18.i_crit_edge ], [ %k.095.i, %for.cond13.preheader.i.for.body18.i_crit_edge ]
  %pin.088.i = phi i32 [ %inc.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body18.i_crit_edge ]
  %pdesc.187.i = phi ptr [ %incdec.ptr.i, %for.body18.i.for.body18.i_crit_edge ], [ %pdesc.093.i, %for.cond13.preheader.i.for.body18.i_crit_edge ]
  %70 = ptrtoint ptr %pdesc.187.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %k.189.i, ptr %pdesc.187.i, align 4
  %arrayidx19.i = getelementptr ptr, ptr %call8.i, i32 %pin.088.i
  %71 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx19.i, align 4
  %name20.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pdesc.187.i, i32 0, i32 1
  %73 = ptrtoint ptr %name20.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %name20.i, align 4
  %incdec.ptr.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.187.i, i32 1
  %inc.i = add nuw nsw i32 %pin.088.i, 1
  %inc21.i = add i32 %k.189.i, 1
  %74 = ptrtoint ptr %nr_pins7.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nr_pins7.i, align 4
  %conv15.i = zext i8 %75 to i32
  %cmp16.i = icmp ult i32 %inc.i, %conv15.i
  br i1 %cmp16.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.for.end.i_crit_edge

for.body18.i.for.end.i_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i

for.end.i:                                        ; preds = %for.body18.i.for.end.i_crit_edge, %for.cond13.preheader.i.for.end.i_crit_edge
  %pdesc.1.lcssa.i = phi ptr [ %pdesc.093.i, %for.cond13.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body18.i.for.end.i_crit_edge ]
  %k.1.lcssa.i = phi i32 [ %k.095.i, %for.cond13.preheader.i.for.end.i_crit_edge ], [ %inc21.i, %for.body18.i.for.end.i_crit_edge ]
  %deferred_output.i = getelementptr %struct.rockchip_pin_bank, ptr %62, i32 %bank.094.i, i32 26
  %76 = ptrtoint ptr %deferred_output.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %deferred_output.i, ptr %deferred_output.i, align 4
  %prev.i.i = getelementptr %struct.rockchip_pin_bank, ptr %62, i32 %bank.094.i, i32 26, i32 1
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %deferred_output.i, ptr %prev.i.i, align 4
  %deferred_lock.i = getelementptr %struct.rockchip_pin_bank, ptr %62, i32 %bank.094.i, i32 27
  call void @__mutex_init(ptr noundef %deferred_lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @rockchip_pinctrl_register.__key) #10
  %inc23.i = add nuw i32 %bank.094.i, 1
  %78 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl13, align 4
  %nr_banks.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_banks.i, align 4
  %cmp.i137 = icmp ult i32 %inc23.i, %81
  br i1 %cmp.i137, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end24.i_crit_edge

for.end.i.for.end24.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end24.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end24.i:                                      ; preds = %for.end.i.for.end24.i_crit_edge, %if.end.i136.for.end24.i_crit_edge
  %call25.i = call fastcc i32 @rockchip_pinctrl_parse_dt(ptr noundef %pdev, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.end24.i.cleanup_crit_edge

for.end24.i.cleanup_crit_edge:                    ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.i:                                       ; preds = %for.end24.i
  %call29.i = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %pctl.i, ptr noundef nonnull %call.i) #10
  %pctl_dev.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 7
  %82 = ptrtoint ptr %pctl_dev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call29.i, ptr %pctl_dev.i, align 4
  %cmp.i82.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.i, label %if.then32.i, label %if.end28.i.if.end61_crit_edge

if.end28.i.if.end61_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call29.i to i32
  %call35.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %83, ptr noundef nonnull @.str.17) #10
  br label %rockchip_pinctrl_register.exit

rockchip_pinctrl_register.exit:                   ; preds = %if.then32.i, %if.then10.i
  %retval.0.i138 = phi i32 [ %69, %if.then10.i ], [ %call35.i, %if.then32.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i138)
  %tobool59.not = icmp eq i32 %retval.0.i138, 0
  br i1 %tobool59.not, label %rockchip_pinctrl_register.exit.if.end61_crit_edge, label %rockchip_pinctrl_register.exit.cleanup_crit_edge

rockchip_pinctrl_register.exit.cleanup_crit_edge: ; preds = %rockchip_pinctrl_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rockchip_pinctrl_register.exit.if.end61_crit_edge: ; preds = %rockchip_pinctrl_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end61:                                         ; preds = %rockchip_pinctrl_register.exit.if.end61_crit_edge, %if.end28.i.if.end61_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call63 = call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end61.cleanup_crit_edge, label %if.then65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call63, ptr noundef nonnull @.str.10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end61.cleanup_crit_edge, %rockchip_pinctrl_register.exit.cleanup_crit_edge, %for.end24.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then53, %if.then38, %if.then26, %if.then20, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then20 ], [ %39, %if.then53 ], [ %call66, %if.then65 ], [ %10, %if.then26 ], [ %27, %if.then38 ], [ %call11, %if.then10 ], [ %call, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i138, %rockchip_pinctrl_register.exit.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ], [ -12, %if.end57.cleanup_crit_edge ], [ %call25.i, %for.end24.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #10
  %ctrl = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %nr_banks14 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr_banks14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_banks14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not = icmp eq i32 %5, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %23, %while.end.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %deferred_lock = getelementptr %struct.rockchip_pin_bank, ptr %8, i32 %i.016, i32 27
  tail call void @mutex_lock_nested(ptr noundef %deferred_lock, i32 noundef 0) #10
  %deferred_output = getelementptr %struct.rockchip_pin_bank, ptr %8, i32 %i.016, i32 26
  %9 = ptrtoint ptr %deferred_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %deferred_output, align 4
  %cmp.i.not13 = icmp eq ptr %10, %deferred_output
  br i1 %cmp.i.not13, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %11 = phi ptr [ %21, %list_del.exit.while.body_crit_edge ], [ %10, %for.body.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %20 = ptrtoint ptr %deferred_output to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %deferred_output, align 4
  %cmp.i.not = icmp eq ptr %21, %deferred_output
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %for.body.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %deferred_lock) #10
  %inc = add nuw i32 %i.016, 1
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %nr_banks = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rockchip_pinctrl_get_soc_data(ptr noundef %d, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_pinctrl_dt_match, ptr noundef %1) #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %nr_banks = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp241.not = icmp eq i32 %5, 0
  br i1 %cmp241.not, label %entry.for.end136_crit_edge, label %for.body.lr.ph

entry.for.end136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end136

for.body.lr.ph:                                   ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %grf_drv_offset = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %grf_drv_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %grf_drv_offset, align 4
  %pmu_drv_offset = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %pmu_drv_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pmu_drv_offset, align 4
  %pmu_mux_offset = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %pmu_mux_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmu_mux_offset, align 4
  %grf_mux_offset = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %grf_mux_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %grf_mux_offset, align 4
  %nr_pins = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 2
  %niomux_recalced = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 10
  %iomux_recalced = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 9
  %niomux_routes = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 12
  %iomux_routes = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.end133.for.body_crit_edge, %for.body.lr.ph
  %i.0248 = phi i32 [ 0, %for.body.lr.ph ], [ %inc135, %for.end133.for.body_crit_edge ]
  %drv_pmu_offs.0247 = phi i32 [ %11, %for.body.lr.ph ], [ %drv_pmu_offs.1.lcssa, %for.end133.for.body_crit_edge ]
  %drv_grf_offs.0246 = phi i32 [ %9, %for.body.lr.ph ], [ %drv_grf_offs.1.lcssa, %for.end133.for.body_crit_edge ]
  %pmu_offs.0245 = phi i32 [ %13, %for.body.lr.ph ], [ %pmu_offs.1.lcssa, %for.end133.for.body_crit_edge ]
  %grf_offs.0244 = phi i32 [ %15, %for.body.lr.ph ], [ %grf_offs.1.lcssa, %for.end133.for.body_crit_edge ]
  %bank.0242 = phi ptr [ %7, %for.body.lr.ph ], [ %incdec.ptr, %for.end133.for.body_crit_edge ]
  %slock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.11, ptr noundef nonnull @rockchip_pinctrl_get_soc_data.__key, i16 noundef signext 2) #10
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 16
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %d, ptr %drvdata, align 4
  %17 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pins, align 4
  %pin_base = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 7
  %19 = ptrtoint ptr %pin_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pin_base, align 4
  %nr_pins2 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 8
  %20 = ptrtoint ptr %nr_pins2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_pins2, align 4
  %conv = zext i8 %21 to i32
  %22 = load i32, ptr %nr_pins, align 4
  %add = add i32 %22, %conv
  store i32 %add, ptr %nr_pins, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body
  %bank_pins.0234 = phi i32 [ 0, %for.body ], [ %add89, %for.inc.for.body7_crit_edge ]
  %j.0233 = phi i32 [ 0, %for.body ], [ %inc92, %for.inc.for.body7_crit_edge ]
  %drv_pmu_offs.1232 = phi i32 [ %drv_pmu_offs.0247, %for.body ], [ %drv_pmu_offs.3, %for.inc.for.body7_crit_edge ]
  %drv_grf_offs.1231 = phi i32 [ %drv_grf_offs.0246, %for.body ], [ %drv_grf_offs.3, %for.inc.for.body7_crit_edge ]
  %pmu_offs.1230 = phi i32 [ %pmu_offs.0245, %for.body ], [ %pmu_offs.3, %for.inc.for.body7_crit_edge ]
  %grf_offs.1229 = phi i32 [ %grf_offs.0244, %for.body ], [ %grf_offs.3, %for.inc.for.body7_crit_edge ]
  %arrayidx = getelementptr %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 11, i32 %j.0233
  %arrayidx9 = getelementptr %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 12, i32 %j.0233
  %23 = ptrtoint ptr %nr_pins2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_pins2, align 4
  %conv11 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bank_pins.0234, i32 %conv11)
  %cmp12.not = icmp ult i32 %bank_pins.0234, %conv11
  br i1 %cmp12.not, label %if.end, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body7
  %offset = getelementptr %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 11, i32 %j.0233, i32 1
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp14 = icmp sgt i32 %26, -1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then16, label %if.else21

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %.grf_offs.1 = select i1 %tobool.not, i32 %26, i32 %grf_offs.1229
  %pmu_offs.1. = select i1 %tobool.not, i32 %pmu_offs.1230, i32 %26
  br label %if.end26

if.else21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %grf_offs.1.pmu_offs.1 = select i1 %tobool.not, i32 %grf_offs.1229, i32 %pmu_offs.1230
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %grf_offs.1.pmu_offs.1, ptr %offset, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then16
  %grf_offs.2 = phi i32 [ %grf_offs.1229, %if.else21 ], [ %.grf_offs.1, %if.then16 ]
  %pmu_offs.2 = phi i32 [ %pmu_offs.1230, %if.else21 ], [ %pmu_offs.1., %if.then16 ]
  %offset27 = getelementptr %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 12, i32 %j.0233, i32 1
  %30 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp28 = icmp sgt i32 %31, -1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %and32 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %cmp28, label %if.then30, label %if.else39

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %.drv_grf_offs.1 = select i1 %tobool33.not, i32 %31, i32 %drv_grf_offs.1231
  %drv_pmu_offs.1. = select i1 %tobool33.not, i32 %drv_pmu_offs.1232, i32 %31
  br label %do.body49

if.else39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %drv_grf_offs.1.drv_pmu_offs.1 = select i1 %tobool33.not, i32 %drv_grf_offs.1231, i32 %drv_pmu_offs.1232
  %34 = ptrtoint ptr %offset27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %drv_grf_offs.1.drv_pmu_offs.1, ptr %offset27, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.else39, %if.then30
  %drv_grf_offs.2 = phi i32 [ %drv_grf_offs.1231, %if.else39 ], [ %.drv_grf_offs.1, %if.then30 ]
  %drv_pmu_offs.2 = phi i32 [ %drv_pmu_offs.1232, %if.else39 ], [ %drv_pmu_offs.1., %if.then30 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pinctrl_get_soc_data.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pinctrl_get_soc_data, %for.inc)) #10
          to label %if.then55 [label %for.inc], !srcloc !313

if.then55:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %37 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pinctrl_get_soc_data.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %i.0248, i32 noundef %j.0233, i32 noundef %36, i32 noundef %38) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %do.body49
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %and62 = and i32 %40, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, i32 4, i32 8
  %and66 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %add71 = select i1 %tobool67.not, i32 %cond64, i32 0
  %grf_offs.3 = add i32 %add71, %grf_offs.2
  %add69 = select i1 %tobool67.not, i32 0, i32 %cond64
  %pmu_offs.3 = add i32 %add69, %pmu_offs.2
  %41 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9, align 4
  %.off = add i32 %42, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch215 = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch215, i32 8, i32 4
  %add87 = select i1 %tobool67.not, i32 %spec.select, i32 0
  %drv_grf_offs.3 = add i32 %add87, %drv_grf_offs.2
  %add85 = select i1 %tobool67.not, i32 0, i32 %spec.select
  %drv_pmu_offs.3 = add i32 %add85, %drv_pmu_offs.2
  %add89 = add nuw nsw i32 %bank_pins.0234, 8
  %inc92 = add nuw nsw i32 %j.0233, 1
  %exitcond.not = icmp eq i32 %inc92, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body7.for.end_crit_edge
  %grf_offs.1.lcssa = phi i32 [ %grf_offs.1229, %for.body7.for.end_crit_edge ], [ %grf_offs.3, %for.inc.for.end_crit_edge ]
  %pmu_offs.1.lcssa = phi i32 [ %pmu_offs.1230, %for.body7.for.end_crit_edge ], [ %pmu_offs.3, %for.inc.for.end_crit_edge ]
  %drv_grf_offs.1.lcssa = phi i32 [ %drv_grf_offs.1231, %for.body7.for.end_crit_edge ], [ %drv_grf_offs.3, %for.inc.for.end_crit_edge ]
  %drv_pmu_offs.1.lcssa = phi i32 [ %drv_pmu_offs.1232, %for.body7.for.end_crit_edge ], [ %drv_pmu_offs.3, %for.inc.for.end_crit_edge ]
  %43 = ptrtoint ptr %niomux_recalced to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %niomux_recalced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp94235.not = icmp eq i32 %44, 0
  br i1 %cmp94235.not, label %for.end.for.cond111.preheader_crit_edge, label %for.body96.lr.ph

for.end.for.cond111.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond111.preheader

for.body96.lr.ph:                                 ; preds = %for.end
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 10
  %recalced_mask = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 24
  br label %for.body96

for.cond111.preheader:                            ; preds = %if.end107.for.cond111.preheader_crit_edge, %for.end.for.cond111.preheader_crit_edge
  %45 = ptrtoint ptr %niomux_routes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %niomux_routes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp112238.not = icmp eq i32 %46, 0
  br i1 %cmp112238.not, label %for.cond111.preheader.for.end133_crit_edge, label %for.body114.lr.ph

for.cond111.preheader.for.end133_crit_edge:       ; preds = %for.cond111.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end133

for.body114.lr.ph:                                ; preds = %for.cond111.preheader
  %bank_num119 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 10
  %route_mask = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.0242, i32 0, i32 25
  br label %for.body114

for.body96:                                       ; preds = %if.end107.for.body96_crit_edge, %for.body96.lr.ph
  %j.1236 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc109, %if.end107.for.body96_crit_edge ]
  %47 = ptrtoint ptr %iomux_recalced to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iomux_recalced, align 4
  %arrayidx97 = getelementptr %struct.rockchip_mux_recalced_data, ptr %48, i32 %j.1236
  %49 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx97, align 4
  %51 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp100 = icmp eq i8 %50, %52
  br i1 %cmp100, label %if.then102, label %for.body96.if.end107_crit_edge

for.body96.if.end107_crit_edge:                   ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then102:                                       ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  %pin105 = getelementptr %struct.rockchip_mux_recalced_data, ptr %48, i32 %j.1236, i32 1
  %53 = ptrtoint ptr %pin105 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pin105, align 1
  %conv106 = zext i8 %54 to i32
  %shl = shl nuw i32 1, %conv106
  %55 = ptrtoint ptr %recalced_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %recalced_mask, align 4
  %or = or i32 %shl, %56
  store i32 %or, ptr %recalced_mask, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %for.body96.if.end107_crit_edge
  %inc109 = add nuw i32 %j.1236, 1
  %57 = ptrtoint ptr %niomux_recalced to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %niomux_recalced, align 4
  %cmp94 = icmp ult i32 %inc109, %58
  br i1 %cmp94, label %if.end107.for.body96_crit_edge, label %if.end107.for.cond111.preheader_crit_edge

if.end107.for.cond111.preheader_crit_edge:        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond111.preheader

if.end107.for.body96_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body96

for.body114:                                      ; preds = %if.end130.for.body114_crit_edge, %for.body114.lr.ph
  %j.2239 = phi i32 [ 0, %for.body114.lr.ph ], [ %inc132, %if.end130.for.body114_crit_edge ]
  %59 = ptrtoint ptr %iomux_routes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iomux_routes, align 4
  %arrayidx116 = getelementptr %struct.rockchip_mux_route_data, ptr %60, i32 %j.2239
  %61 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx116, align 4
  %63 = ptrtoint ptr %bank_num119 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bank_num119, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp121 = icmp eq i8 %62, %64
  br i1 %cmp121, label %if.then123, label %for.body114.if.end130_crit_edge

for.body114.if.end130_crit_edge:                  ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then123:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #12
  %pin126 = getelementptr %struct.rockchip_mux_route_data, ptr %60, i32 %j.2239, i32 1
  %65 = ptrtoint ptr %pin126 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pin126, align 1
  %conv127 = zext i8 %66 to i32
  %shl128 = shl nuw i32 1, %conv127
  %67 = ptrtoint ptr %route_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %route_mask, align 4
  %or129 = or i32 %shl128, %68
  store i32 %or129, ptr %route_mask, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then123, %for.body114.if.end130_crit_edge
  %inc132 = add nuw i32 %j.2239, 1
  %69 = ptrtoint ptr %niomux_routes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %niomux_routes, align 4
  %cmp112 = icmp ult i32 %inc132, %70
  br i1 %cmp112, label %if.end130.for.body114_crit_edge, label %if.end130.for.end133_crit_edge

if.end130.for.end133_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end133

if.end130.for.body114_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body114

for.end133:                                       ; preds = %if.end130.for.end133_crit_edge, %for.cond111.preheader.for.end133_crit_edge
  %inc135 = add nuw i32 %i.0248, 1
  %incdec.ptr = getelementptr %struct.rockchip_pin_bank, ptr %bank.0242, i32 1
  %71 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc135, %72
  br i1 %cmp, label %for.end133.for.body_crit_edge, label %for.end133.for.end136_crit_edge

for.end133.for.end136_crit_edge:                  ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end136

for.end133.for.body_crit_edge:                    ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end136:                                       ; preds = %for.end133.for.end136_crit_edge, %entry.for.end136_crit_edge
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kasprintf_strarray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pinctrl_parse_dt(ptr noundef %pdev, ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %cmp.not9.i = icmp eq ptr %call.i, null
  br i1 %cmp.not9.i, label %entry.rockchip_pinctrl_child_count.exit_crit_edge, label %for.body.lr.ph.i

entry.rockchip_pinctrl_child_count.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinctrl_child_count.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %nfunctions.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 11
  %ngroups.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.010.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call3.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_bank_match, ptr noundef nonnull %child.010.i) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %2 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %nfunctions.i, align 4
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.010.i, ptr noundef null) #10
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end.i.of_get_child_count.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.of_get_child_count.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.010.i, ptr noundef nonnull %child.06.i.i) #10
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %4 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ngroups.i, align 4
  %add.i = add i32 %5, %num.0.lcssa.i.i
  store i32 %add.i, ptr %ngroups.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %of_get_child_count.exit.i, %for.body.i.for.inc.i_crit_edge
  %call3.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.010.i) #10
  %cmp.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not.i, label %for.inc.i.rockchip_pinctrl_child_count.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.rockchip_pinctrl_child_count.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinctrl_child_count.exit

rockchip_pinctrl_child_count.exit:                ; preds = %for.inc.i.rockchip_pinctrl_child_count.exit_crit_edge, %entry.rockchip_pinctrl_child_count.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pinctrl_parse_dt, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !313

if.then:                                          ; preds = %rockchip_pinctrl_child_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nfunctions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 11
  %6 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfunctions, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug231, ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %7) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %rockchip_pinctrl_child_count.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pinctrl_parse_dt, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !313

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %ngroups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 9
  %8 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ngroups, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug232, ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef %9) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %nfunctions23 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 11
  %10 = ptrtoint ptr %nfunctions23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nfunctions23, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 12) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !312

devm_kcalloc.exit.thread:                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  %functions83 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 10
  %14 = ptrtoint ptr %functions83 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %functions83, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end22
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %15, i32 noundef 3520) #10
  %functions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 10
  %16 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %functions, align 4
  %tobool26.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool26.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end28

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %devm_kcalloc.exit
  %ngroups29 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 9
  %17 = ptrtoint ptr %ngroups29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ngroups29, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 16) #10
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %devm_kcalloc.exit79.thread, label %devm_kcalloc.exit79, !prof !312

devm_kcalloc.exit79.thread:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %groups86 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 8
  %21 = ptrtoint ptr %groups86 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %groups86, align 4
  br label %cleanup

devm_kcalloc.exit79:                              ; preds = %if.end28
  %22 = extractvalue { i32, i1 } %19, 0
  %call5.i.i76 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %22, i32 noundef 3520) #10
  %groups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 8
  %23 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i76, ptr %groups, align 4
  %tobool32.not = icmp eq ptr %call5.i.i76, null
  br i1 %tobool32.not, label %devm_kcalloc.exit79.cleanup_crit_edge, label %if.end34

devm_kcalloc.exit79.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %devm_kcalloc.exit79
  %call35 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %cmp.not89 = icmp eq ptr %call35, null
  br i1 %cmp.not89, label %if.end34.cleanup_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34.for.body_crit_edge
  %child.091 = phi ptr [ %call47, %for.inc.for.body_crit_edge ], [ %call35, %if.end34.for.body_crit_edge ]
  %i.090 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %call36 = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_bank_match, ptr noundef nonnull %child.091) #10
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %inc = add i32 %i.090, 1
  %call40 = tail call fastcc i32 @rockchip_pinctrl_parse_functions(ptr noundef nonnull %child.091, ptr noundef %info, i32 noundef %i.090)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.for.inc_crit_edge, label %do.end45

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57) #13
  tail call void @of_node_put(ptr noundef nonnull %child.091) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end39.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.090, %for.body.for.inc_crit_edge ], [ %inc, %if.end39.for.inc_crit_edge ]
  %call47 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.091) #10
  %cmp.not = icmp eq ptr %call47, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end45, %if.end34.cleanup_crit_edge, %devm_kcalloc.exit79.cleanup_crit_edge, %devm_kcalloc.exit79.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ %call40, %do.end45 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit79.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit79.thread ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %ngroups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rockchip_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %groups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.rockchip_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %ngroups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %selector)
  %cmp.not = icmp ugt i32 %1, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %groups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.rockchip_pin_group, ptr %3, i32 %selector, i32 2
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %groups, align 4
  %npins4 = getelementptr %struct.rockchip_pin_group, ptr %7, i32 %selector, i32 1
  %8 = ptrtoint ptr %npins4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins4, align 4
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %npins, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %dev1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %ngroups.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not.i = icmp eq i32 %5, 0
  br i1 %cmp9.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %groups.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pin_group, ptr %7, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %pinctrl_name_to_group.exit, label %for.cond.i

pinctrl_name_to_group.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %pinctrl_name_to_group.exit.do.end_crit_edge, label %if.end

pinctrl_name_to_group.exit.do.end_crit_edge:      ; preds = %pinctrl_name_to_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %pinctrl_name_to_group.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %np) #13
  br label %cleanup

if.end:                                           ; preds = %pinctrl_name_to_group.exit
  %npins = getelementptr %struct.rockchip_pin_group, ptr %7, i32 %i.010.i, i32 1
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  %add = add i32 %11, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 28) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !312

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #15
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end6

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %map, align 4
  %16 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %num_maps, align 4
  %call7 = tail call ptr @of_get_parent(ptr noundef %np) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %call8.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %type, align 8
  %18 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %call8.i.i, i32 0, i32 4
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %call8.i.i, i32 0, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %function, align 4
  %21 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %np, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %data, align 16
  tail call void @of_node_put(ptr noundef nonnull %call7) #10
  %incdec.ptr = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 1
  %24 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp100.not = icmp eq i32 %25, 0
  br i1 %cmp100.not, label %if.end10.do.body32_crit_edge, label %for.body.lr.ph

if.end10.do.body32_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

for.body.lr.ph:                                   ; preds = %if.end10
  %pins = getelementptr %struct.rockchip_pin_group, ptr %7, i32 %i.010.i, i32 2
  %data23 = getelementptr %struct.rockchip_pin_group, ptr %7, i32 %i.010.i, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.pinctrl_map, ptr %incdec.ptr, i32 %i.0101
  %type18 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx17, i32 0, i32 2
  %26 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %type18, align 4
  %27 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pins, align 4
  %arrayidx19 = getelementptr i32, ptr %28, i32 %i.0101
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %30) #10
  %data22 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx17, i32 0, i32 4
  %31 = ptrtoint ptr %data22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20, ptr %data22, align 4
  %32 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data23, align 4
  %configs = getelementptr %struct.rockchip_pin_config, ptr %33, i32 %i.0101, i32 1
  %34 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %configs, align 4
  %configs27 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data22, i32 0, i32 1
  %36 = ptrtoint ptr %configs27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %configs27, align 4
  %37 = load ptr, ptr %data23, align 4
  %nconfigs = getelementptr %struct.rockchip_pin_config, ptr %37, i32 %i.0101, i32 2
  %38 = ptrtoint ptr %nconfigs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nconfigs, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data22, i32 0, i32 2
  %40 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %num_configs, align 4
  %inc = add nuw i32 %i.0101, 1
  %41 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body32_crit_edge

for.body.do.body32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body32:                                        ; preds = %for.body.do.body32_crit_edge, %if.end10.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_dt_node_to_map.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_dt_node_to_map, %cleanup)) #10
          to label %if.then38 [label %cleanup], !srcloc !313

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map, align 4
  %data39 = getelementptr inbounds %struct.pinctrl_map, ptr %44, i32 0, i32 4
  %function40 = getelementptr inbounds %struct.pinctrl_map, ptr %44, i32 0, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %function40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %function40, align 4
  %47 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_dt_node_to_map.__UNIQUE_ID_ddebug223, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %46, ptr noundef %48, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body32, %if.then9, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.then38 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %map) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pmx_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %nfunctions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rockchip_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %functions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.rockchip_pmx_func, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pmx_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %functions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.rockchip_pmx_func, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.rockchip_pmx_func, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ngroups, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pmx_set(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %groups = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.rockchip_pin_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %data4 = getelementptr %struct.rockchip_pin_group, ptr %1, i32 %group, i32 3
  %4 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data4, align 4
  %dev5 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pmx_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pmx_set, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %functions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions, align 4
  %arrayidx10 = getelementptr %struct.rockchip_pmx_func, ptr %9, i32 %selector
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %12 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups, align 4
  %arrayidx12 = getelementptr %struct.rockchip_pin_group, ptr %13, i32 %group
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pmx_set.__UNIQUE_ID_ddebug228, ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef %11, ptr noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %16 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %groups, align 4
  %npins73 = getelementptr %struct.rockchip_pin_group, ptr %17, i32 %group, i32 1
  %18 = ptrtoint ptr %npins73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp74.not = icmp eq i32 %19, 0
  br i1 %cmp74.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %ctrl.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cnt.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx16 = getelementptr i32, ptr %3, i32 %cnt.075
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %22 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %b.0.i = phi ptr [ %25, %for.body ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %pin_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 7
  %26 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pin_base.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 8
  %28 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_pins.i, align 4
  %conv.i = zext i8 %29 to i32
  %add.i = add i32 %27, %conv.i
  %cmp.not.i = icmp ugt i32 %add.i, %21
  %incdec.ptr.i = getelementptr %struct.rockchip_pin_bank, ptr %b.0.i, i32 1
  br i1 %cmp.not.i, label %pin_to_bank.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

pin_to_bank.exit:                                 ; preds = %while.cond.i
  %sub = sub i32 %21, %27
  %arrayidx19 = getelementptr %struct.rockchip_pin_config, ptr %5, i32 %cnt.075
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call fastcc i32 @rockchip_set_mux(ptr noundef %b.0.i, i32 noundef %sub, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %pin_to_bank.exit
  %pin_base.i.le.le = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 7
  %cnt.176 = add i32 %cnt.075, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cnt.176)
  %cmp2777 = icmp sgt i32 %cnt.176, -1
  br i1 %cmp2777, label %for.cond26.preheader.for.body28_crit_edge, label %for.cond26.preheader.cleanup_crit_edge

for.cond26.preheader.cleanup_crit_edge:           ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond26.preheader.for.body28_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body28

for.inc:                                          ; preds = %pin_to_bank.exit
  %inc = add nuw i32 %cnt.075, 1
  %32 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.rockchip_pin_group, ptr %33, i32 %group, i32 1
  %34 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond26.preheader.for.body28_crit_edge
  %cnt.178 = phi i32 [ %cnt.1, %for.body28.for.body28_crit_edge ], [ %cnt.176, %for.cond26.preheader.for.body28_crit_edge ]
  %arrayidx29 = getelementptr i32, ptr %3, i32 %cnt.178
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx29, align 4
  %38 = ptrtoint ptr %pin_base.i.le.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pin_base.i.le.le, align 4
  %sub31 = sub i32 %37, %39
  %call32 = tail call fastcc i32 @rockchip_set_mux(ptr noundef %b.0.i, i32 noundef %sub31, i32 noundef 0)
  %cnt.1 = add nsw i32 %cnt.178, -1
  %cmp27 = icmp sgt i32 %cnt.178, 0
  br i1 %cmp27, label %for.body28.for.body28_crit_edge, label %for.body28.cleanup_crit_edge

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

cleanup:                                          ; preds = %for.body28.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond26.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %for.cond26.preheader.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call20, %for.body28.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_set_mux(ptr nocapture noundef readonly %bank, i32 noundef %pin, i32 noundef %mux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %dev1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %pin)
  %cmp.i = icmp sgt i32 %pin, 31
  br i1 %cmp.i, label %entry.cleanup76_crit_edge, label %if.end.i

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup76

if.end.i:                                         ; preds = %entry
  %div.i = sdiv i32 %pin, 8
  %arrayidx.i = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 11, i32 %div.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mux)
  %cmp10.not.i = icmp eq i32 %mux, 0
  %or.cond.i = or i1 %cmp10.not.i, %tobool8.not.i
  br i1 %or.cond.i, label %if.end, label %if.end3.i.cleanup.sink.split.i_crit_edge

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end3.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.27, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %if.end3.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.end.i.cleanup.sink.split.i_crit_edge ], [ -524, %if.end3.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.30.sink.i, i32 noundef %pin) #13
  br label %cleanup76

if.end:                                           ; preds = %if.end3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end.cleanup76_crit_edge

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup76

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_set_mux.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_set_mux, %do.end)) #10
          to label %if.then9 [label %do.end], !srcloc !313

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %8 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_set_mux.__UNIQUE_ID_ddebug224, ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %pin, i32 noundef %mux) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %and14 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %cond.in = select i1 %tobool15.not, ptr %1, ptr %regmap_pmu
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load ptr, ptr %cond.in, align 4
  %offset = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 11, i32 %div.i, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %and21 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %rem = srem i32 %pin, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem)
  %cmp24 = icmp sgt i32 %rem, 3
  %add = add i32 %14, 4
  %spec.select = select i1 %cmp24, i32 %add, i32 %14
  %rem28 = srem i32 %pin, 4
  %rem28.tr = trunc i32 %rem28 to i8
  %conv29 = shl nsw i8 %rem28.tr, 2
  br label %if.end48

if.else:                                          ; preds = %do.end
  %and30 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %15 = mul i32 %div.i, 8
  %rem44.decomposed = sub i32 %pin, %15
  br i1 %tobool31.not, label %if.else43, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem44.decomposed)
  %cmp34 = icmp sgt i32 %rem44.decomposed, 4
  %add37 = add i32 %14, 4
  %spec.select160 = select i1 %cmp34, i32 %add37, i32 %14
  %rem40.lhs.trunc = trunc i32 %rem44.decomposed to i8
  %rem40159 = srem i8 %rem40.lhs.trunc, 5
  %conv42 = mul nsw i8 %rem40159, 3
  br label %if.end48

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rem44.tr = trunc i32 %rem44.decomposed to i8
  %conv46 = shl nsw i8 %rem44.tr, 1
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %if.then32, %if.then23
  %reg.2 = phi i32 [ %14, %if.else43 ], [ %spec.select160, %if.then32 ], [ %spec.select, %if.then23 ]
  %mask.0 = phi i32 [ 3, %if.else43 ], [ 7, %if.then32 ], [ 15, %if.then23 ]
  %bit.0 = phi i8 [ %conv46, %if.else43 ], [ %conv42, %if.then32 ], [ %conv29, %if.then23 ]
  %recalced_mask = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 24
  %16 = ptrtoint ptr %recalced_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recalced_mask, align 4
  %shl = shl nuw i32 1, %pin
  %and49 = and i32 %17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %ctrl1.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl1.i, align 4
  %niomux_recalced.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %niomux_recalced.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %niomux_recalced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34.not.i = icmp eq i32 %23, 0
  br i1 %cmp34.not.i, label %if.then51.if.end52_crit_edge, label %for.body.lr.ph.i

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

for.body.lr.ph.i:                                 ; preds = %if.then51
  %iomux_recalced.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %21, i32 0, i32 9
  %24 = ptrtoint ptr %iomux_recalced.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomux_recalced.i, align 4
  %bank_num.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %26 = ptrtoint ptr %bank_num.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank_num.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i133 = getelementptr %struct.rockchip_mux_recalced_data, ptr %25, i32 %i.035.i
  %28 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i133, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %27)
  %cmp3.i = icmp eq i8 %29, %27
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pin5.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %25, i32 %i.035.i, i32 1
  %30 = ptrtoint ptr %pin5.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pin5.i, align 1
  %conv6.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %pin)
  %cmp7.i = icmp eq i32 %conv6.i, %pin
  br i1 %cmp7.i, label %if.end13.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %for.inc.i.if.end52_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end52_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end13.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg14.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %25, i32 %i.035.i, i32 2
  %32 = ptrtoint ptr %reg14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg14.i, align 4
  %mask15.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %25, i32 %i.035.i, i32 4
  %34 = ptrtoint ptr %mask15.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mask15.i, align 1
  %conv16.i = zext i8 %35 to i32
  %bit17.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %25, i32 %i.035.i, i32 3
  %36 = ptrtoint ptr %bit17.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bit17.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end13.i, %for.inc.i.if.end52_crit_edge, %if.then51.if.end52_crit_edge, %if.end48.if.end52_crit_edge
  %reg.4 = phi i32 [ %reg.2, %if.end48.if.end52_crit_edge ], [ %reg.2, %if.then51.if.end52_crit_edge ], [ %33, %if.end13.i ], [ %reg.2, %for.inc.i.if.end52_crit_edge ]
  %mask.2 = phi i32 [ %mask.0, %if.end48.if.end52_crit_edge ], [ %mask.0, %if.then51.if.end52_crit_edge ], [ %conv16.i, %if.end13.i ], [ %mask.0, %for.inc.i.if.end52_crit_edge ]
  %bit.2 = phi i8 [ %bit.0, %if.end48.if.end52_crit_edge ], [ %bit.0, %if.then51.if.end52_crit_edge ], [ %37, %if.end13.i ], [ %bit.0, %for.inc.i.if.end52_crit_edge ]
  %route_mask = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 25
  %38 = ptrtoint ptr %route_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %route_mask, align 4
  %and54 = and i32 %39, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end67_crit_edge, label %if.then56

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then56:                                        ; preds = %if.end52
  %40 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %drvdata, align 4
  %ctrl1.i135 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %ctrl1.i135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctrl1.i135, align 4
  %niomux_routes.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %niomux_routes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %niomux_routes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp38.not.i = icmp eq i32 %45, 0
  br i1 %cmp38.not.i, label %if.then56.if.end67_crit_edge, label %for.body.lr.ph.i136

if.then56.if.end67_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

for.body.lr.ph.i136:                              ; preds = %if.then56
  %iomux_routes.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %43, i32 0, i32 11
  %46 = ptrtoint ptr %iomux_routes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iomux_routes.i, align 4
  %bank_num2.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %48 = ptrtoint ptr %bank_num2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bank_num2.i, align 4
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.inc.i143.for.body.i138_crit_edge, %for.body.lr.ph.i136
  %cmp41.i = phi i1 [ true, %for.body.lr.ph.i136 ], [ %cmp.i141, %for.inc.i143.for.body.i138_crit_edge ]
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i136 ], [ %inc.i140, %for.inc.i143.for.body.i138_crit_edge ]
  %arrayidx.i137 = getelementptr %struct.rockchip_mux_route_data, ptr %47, i32 %i.039.i
  %50 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i137, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %49)
  %cmp4.i = icmp eq i8 %51, %49
  br i1 %cmp4.i, label %land.lhs.true.i139, label %for.body.i138.for.inc.i143_crit_edge

for.body.i138.for.inc.i143_crit_edge:             ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

land.lhs.true.i139:                               ; preds = %for.body.i138
  %pin6.i = getelementptr %struct.rockchip_mux_route_data, ptr %47, i32 %i.039.i, i32 1
  %52 = ptrtoint ptr %pin6.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pin6.i, align 1
  %conv7.i = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %pin)
  %cmp8.i = icmp eq i32 %conv7.i, %pin
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i139.for.inc.i143_crit_edge

land.lhs.true.i139.for.inc.i143_crit_edge:        ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

land.lhs.true10.i:                                ; preds = %land.lhs.true.i139
  %func.i = getelementptr %struct.rockchip_mux_route_data, ptr %47, i32 %i.039.i, i32 2
  %54 = ptrtoint ptr %func.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %func.i, align 2
  %conv11.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %mux)
  %cmp12.i = icmp eq i32 %conv11.i, %mux
  br i1 %cmp12.i, label %if.end18.i, label %land.lhs.true10.i.for.inc.i143_crit_edge

land.lhs.true10.i.for.inc.i143_crit_edge:         ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i143

for.inc.i143:                                     ; preds = %land.lhs.true10.i.for.inc.i143_crit_edge, %land.lhs.true.i139.for.inc.i143_crit_edge, %for.body.i138.for.inc.i143_crit_edge
  %inc.i140 = add nuw i32 %i.039.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i140, i32 %45)
  %cmp.i141 = icmp ult i32 %inc.i140, %45
  %exitcond.not.i142 = icmp eq i32 %inc.i140, %45
  br i1 %exitcond.not.i142, label %for.inc.i143.if.end67_crit_edge, label %for.inc.i143.for.body.i138_crit_edge

for.inc.i143.for.body.i138_crit_edge:             ; preds = %for.inc.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i138

for.inc.i143.if.end67_crit_edge:                  ; preds = %for.inc.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end18.i:                                       ; preds = %land.lhs.true10.i
  %route_offset.i = getelementptr %struct.rockchip_mux_route_data, ptr %47, i32 %i.039.i, i32 4
  %56 = ptrtoint ptr %route_offset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %route_offset.i, align 4
  %route_val.i = getelementptr %struct.rockchip_mux_route_data, ptr %47, i32 %i.039.i, i32 5
  %58 = ptrtoint ptr %route_val.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %route_val.i, align 4
  br i1 %cmp41.i, label %if.then58, label %if.end18.i.if.end67_crit_edge

if.end18.i.if.end67_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then58:                                        ; preds = %if.end18.i
  %route_location.i = getelementptr %struct.rockchip_mux_route_data, ptr %47, i32 %i.039.i, i32 3
  %60 = ptrtoint ptr %route_location.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %route_location.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %if.then58.sw.epilog_crit_edge [
    i32 1, label %if.then58.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb60
  ]

if.then58.sw.epilog.sink.split_crit_edge:         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.then58.sw.epilog_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb60, %if.then58.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %1, %sw.bb60 ], [ %regmap_pmu, %if.then58.sw.epilog.sink.split_crit_edge ]
  %63 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then58.sw.epilog_crit_edge
  %route_regmap.0 = phi ptr [ %cond, %if.then58.sw.epilog_crit_edge ], [ %64, %sw.epilog.sink.split ]
  %call62 = tail call i32 @regmap_write(ptr noundef %route_regmap.0, i32 noundef %57, i32 noundef %59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %sw.epilog.if.end67_crit_edge, label %sw.epilog.cleanup76_crit_edge

sw.epilog.cleanup76_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup76

sw.epilog.if.end67_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67:                                         ; preds = %sw.epilog.if.end67_crit_edge, %if.end18.i.if.end67_crit_edge, %for.inc.i143.if.end67_crit_edge, %if.then56.if.end67_crit_edge, %if.end52.if.end67_crit_edge
  %conv68 = zext i8 %bit.2 to i32
  %add69 = add nuw nsw i32 %conv68, 16
  %shl70 = shl i32 %mask.2, %add69
  %shr = lshr i32 %shl70, 16
  %or = or i32 %shr, %shl70
  %and71 = and i32 %mask.2, %mux
  %shl73 = shl i32 %and71, %conv68
  %or74 = or i32 %shl70, %shl73
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %cond, i32 noundef %reg.4, i32 noundef %or, i32 noundef %or74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup76

cleanup76:                                        ; preds = %if.end67, %sw.epilog.cleanup76_crit_edge, %if.end.cleanup76_crit_edge, %cleanup.sink.split.i, %entry.cleanup76_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.end67 ], [ %call62, %sw.epilog.cleanup76_crit_edge ], [ 0, %if.end.cleanup76_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %entry.cleanup76_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %regmap.i125 = alloca ptr, align 4
  %reg.i126 = alloca i32, align 4
  %bit.i127 = alloca i8, align 1
  %data.i128 = alloca i32, align 4
  %regmap.i = alloca ptr, align 4
  %reg.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  %temp.i = alloca i32, align 4
  %bit.i = alloca i8, align 1
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %ctrl.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %b.0.i = phi ptr [ %3, %entry ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %pin_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 7
  %4 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_base.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 8
  %6 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_pins.i, align 4
  %conv.i = zext i8 %7 to i32
  %add.i = add i32 %5, %conv.i
  %cmp.not.i = icmp ugt i32 %add.i, %pin
  %incdec.ptr.i = getelementptr %struct.rockchip_pin_bank, ptr %b.0.i, i32 1
  br i1 %cmp.not.i, label %pin_to_bank.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

pin_to_bank.exit:                                 ; preds = %while.cond.i
  %pin_base.i.le = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 7
  %gpio_chip = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 18
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  %and.i = and i32 %9, 255
  %trunc = trunc i32 %9 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %trunc, label %pin_to_bank.exit.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %pin_to_bank.exit.sw.bb4_crit_edge
    i8 3, label %pin_to_bank.exit.sw.bb4_crit_edge163
    i8 4, label %pin_to_bank.exit.sw.bb4_crit_edge164
    i8 0, label %pin_to_bank.exit.sw.bb4_crit_edge165
    i8 17, label %sw.bb14
    i8 9, label %sw.bb32
    i8 14, label %sw.bb45
  ]

pin_to_bank.exit.sw.bb4_crit_edge165:             ; preds = %pin_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

pin_to_bank.exit.sw.bb4_crit_edge164:             ; preds = %pin_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

pin_to_bank.exit.sw.bb4_crit_edge163:             ; preds = %pin_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

pin_to_bank.exit.sw.bb4_crit_edge:                ; preds = %pin_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

pin_to_bank.exit.cleanup_crit_edge:               ; preds = %pin_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %pin_to_bank.exit
  %sub = sub i32 %pin, %5
  %call3 = tail call fastcc i32 @rockchip_get_pull(ptr noundef %b.0.i, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %pin_to_bank.exit.sw.bb4_crit_edge, %pin_to_bank.exit.sw.bb4_crit_edge163, %pin_to_bank.exit.sw.bb4_crit_edge164, %pin_to_bank.exit.sw.bb4_crit_edge165
  %type.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %12, label %sw.bb4.cleanup_crit_edge [
    i32 2, label %sw.bb4.rockchip_pinconf_pull_valid.exit_crit_edge
    i32 4, label %sw.bb4.rockchip_pinconf_pull_valid.exit_crit_edge166
    i32 3, label %sw.bb2.i
    i32 0, label %sw.bb4.sw.bb4.i_crit_edge
    i32 1, label %sw.bb4.sw.bb4.i_crit_edge167
    i32 5, label %sw.bb4.sw.bb4.i_crit_edge168
    i32 6, label %sw.bb4.sw.bb4.i_crit_edge169
    i32 7, label %sw.bb4.sw.bb4.i_crit_edge170
    i32 8, label %sw.bb4.sw.bb4.i_crit_edge171
    i32 9, label %sw.bb4.sw.bb4.i_crit_edge172
    i32 10, label %sw.bb4.sw.bb4.i_crit_edge173
  ]

sw.bb4.sw.bb4.i_crit_edge173:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge172:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge171:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge170:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge169:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge168:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge167:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.sw.bb4.i_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb4.rockchip_pinconf_pull_valid.exit_crit_edge166: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinconf_pull_valid.exit

sw.bb4.rockchip_pinconf_pull_valid.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinconf_pull_valid.exit

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.if.end7_crit_edge, label %sw.bb2.i.cleanup_crit_edge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i.if.end7_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

sw.bb4.i:                                         ; preds = %sw.bb4.sw.bb4.i_crit_edge, %sw.bb4.sw.bb4.i_crit_edge167, %sw.bb4.sw.bb4.i_crit_edge168, %sw.bb4.sw.bb4.i_crit_edge169, %sw.bb4.sw.bb4.i_crit_edge170, %sw.bb4.sw.bb4.i_crit_edge171, %sw.bb4.sw.bb4.i_crit_edge172, %sw.bb4.sw.bb4.i_crit_edge173
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 4
  br i1 %cmp5.i.not, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i.if.end7_crit_edge

sw.bb4.i.if.end7_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rockchip_pinconf_pull_valid.exit:                 ; preds = %sw.bb4.rockchip_pinconf_pull_valid.exit_crit_edge, %sw.bb4.rockchip_pinconf_pull_valid.exit_crit_edge166
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %trunc, label %rockchip_pinconf_pull_valid.exit.cleanup_crit_edge [
    i8 4, label %rockchip_pinconf_pull_valid.exit.if.end7_crit_edge
    i8 1, label %rockchip_pinconf_pull_valid.exit.if.end7_crit_edge174
  ]

rockchip_pinconf_pull_valid.exit.if.end7_crit_edge174: ; preds = %rockchip_pinconf_pull_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

rockchip_pinconf_pull_valid.exit.if.end7_crit_edge: ; preds = %rockchip_pinconf_pull_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

rockchip_pinconf_pull_valid.exit.cleanup_crit_edge: ; preds = %rockchip_pinconf_pull_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %rockchip_pinconf_pull_valid.exit.if.end7_crit_edge, %rockchip_pinconf_pull_valid.exit.if.end7_crit_edge174, %sw.bb4.i.if.end7_crit_edge, %sw.bb2.i.if.end7_crit_edge
  %sub9 = sub i32 %pin, %5
  %call10 = tail call fastcc i32 @rockchip_get_pull(ptr noundef %b.0.i, i32 noundef %sub9)
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %and.i)
  %cmp11.not = icmp eq i32 %call10, %and.i
  br i1 %cmp11.not, label %if.end7.sw.epilog_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb14:                                          ; preds = %pin_to_bank.exit
  %sub16 = sub i32 %pin, %5
  %drvdata.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 16
  %15 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i, align 4, !annotation !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub16)
  %cmp.i102 = icmp sgt i32 %sub16, 31
  br i1 %cmp.i102, label %sw.bb14.rockchip_get_mux.exit.thread_crit_edge, label %if.end.i

sw.bb14.rockchip_get_mux.exit.thread_crit_edge:   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_mux.exit.thread

if.end.i:                                         ; preds = %sw.bb14
  %sub16.frozen = freeze i32 %sub16
  %div.i = sdiv i32 %sub16.frozen, 8
  %arrayidx.i = getelementptr %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 11, i32 %div.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %and.i103 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %if.end2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %sub16) #13
  br label %rockchip_get_mux.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %rockchip_get_mux.exit.thread147

rockchip_get_mux.exit.thread147:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %if.end20

if.end9.i:                                        ; preds = %if.end2.i
  %and13.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %regmap_pmu.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %16, i32 0, i32 3
  %cond.in.i = select i1 %tobool14.not.i, ptr %16, ptr %regmap_pmu.i
  %22 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %offset.i = getelementptr %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 11, i32 %div.i, i32 1
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i, align 4
  %and20.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i = srem i32 %sub16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i)
  %cmp23.i = icmp sgt i32 %rem.i, 3
  %add.i105 = add i32 %24, 4
  %spec.select.i106 = select i1 %cmp23.i, i32 %add.i105, i32 %24
  %rem26.i = srem i32 %sub16, 4
  %rem26.tr.i = trunc i32 %rem26.i to i8
  %conv.i107 = shl nsw i8 %rem26.tr.i, 2
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end9.i
  %and27.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %25 = mul i32 %div.i, 8
  %rem41.i.decomposed = sub i32 %sub16.frozen, %25
  br i1 %tobool28.not.i, label %if.else40.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem41.i.decomposed)
  %cmp31.i = icmp sgt i32 %rem41.i.decomposed, 4
  %add34.i = add i32 %24, 4
  %spec.select88.i = select i1 %cmp31.i, i32 %add34.i, i32 %24
  %rem37.lhs.trunc.i = trunc i32 %rem41.i.decomposed to i8
  %rem3787.i = srem i8 %rem37.lhs.trunc.i, 5
  %conv39.i = mul nsw i8 %rem3787.i, 3
  br label %if.end45.i

if.else40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem41.tr.i = trunc i32 %rem41.i.decomposed to i8
  %conv43.i = shl nsw i8 %rem41.tr.i, 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else40.i, %if.then29.i, %if.then22.i
  %reg.2.i = phi i32 [ %24, %if.else40.i ], [ %spec.select88.i, %if.then29.i ], [ %spec.select.i106, %if.then22.i ]
  %mask.0.i = phi i32 [ 3, %if.else40.i ], [ 7, %if.then29.i ], [ 15, %if.then22.i ]
  %bit.0.i = phi i8 [ %conv43.i, %if.else40.i ], [ %conv39.i, %if.then29.i ], [ %conv.i107, %if.then22.i ]
  %recalced_mask.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 24
  %26 = ptrtoint ptr %recalced_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %recalced_mask.i, align 4
  %shl.i = shl nuw i32 1, %sub16
  %and46.i = and i32 %27, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end49.i_crit_edge, label %if.then48.i

if.end45.i.if.end49.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end45.i
  %ctrl1.i.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %16, i32 0, i32 5
  %28 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl1.i.i, align 4
  %niomux_recalced.i.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %niomux_recalced.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %niomux_recalced.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp34.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp34.not.i.i, label %if.then48.i.if.end49.i_crit_edge, label %for.body.lr.ph.i.i

if.then48.i.if.end49.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

for.body.lr.ph.i.i:                               ; preds = %if.then48.i
  %iomux_recalced.i.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %29, i32 0, i32 9
  %32 = ptrtoint ptr %iomux_recalced.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomux_recalced.i.i, align 4
  %bank_num.i.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 10
  %34 = ptrtoint ptr %bank_num.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bank_num.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.035.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %33, i32 %i.035.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %35)
  %cmp3.i.i = icmp eq i8 %37, %35
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pin5.i.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %33, i32 %i.035.i.i, i32 1
  %38 = ptrtoint ptr %pin5.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pin5.i.i, align 1
  %conv6.i.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub16, i32 %conv6.i.i)
  %cmp7.i.i = icmp eq i32 %sub16, %conv6.i.i
  br i1 %cmp7.i.i, label %if.end13.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end49.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end49.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

if.end13.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg14.i.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %33, i32 %i.035.i.i, i32 2
  %40 = ptrtoint ptr %reg14.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg14.i.i, align 4
  %mask15.i.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %33, i32 %i.035.i.i, i32 4
  %42 = ptrtoint ptr %mask15.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mask15.i.i, align 1
  %conv16.i.i = zext i8 %43 to i32
  %bit17.i.i = getelementptr %struct.rockchip_mux_recalced_data, ptr %33, i32 %i.035.i.i, i32 3
  %44 = ptrtoint ptr %bit17.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bit17.i.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end13.i.i, %for.inc.i.i.if.end49.i_crit_edge, %if.then48.i.if.end49.i_crit_edge, %if.end45.i.if.end49.i_crit_edge
  %reg.4.i = phi i32 [ %reg.2.i, %if.end45.i.if.end49.i_crit_edge ], [ %reg.2.i, %if.then48.i.if.end49.i_crit_edge ], [ %41, %if.end13.i.i ], [ %reg.2.i, %for.inc.i.i.if.end49.i_crit_edge ]
  %mask.2.i = phi i32 [ %mask.0.i, %if.end45.i.if.end49.i_crit_edge ], [ %mask.0.i, %if.then48.i.if.end49.i_crit_edge ], [ %conv16.i.i, %if.end13.i.i ], [ %mask.0.i, %for.inc.i.i.if.end49.i_crit_edge ]
  %bit.2.i = phi i8 [ %bit.0.i, %if.end45.i.if.end49.i_crit_edge ], [ %bit.0.i, %if.then48.i.if.end49.i_crit_edge ], [ %45, %if.end13.i.i ], [ %bit.0.i, %for.inc.i.i.if.end49.i_crit_edge ]
  %call.i = call i32 @regmap_read(ptr noundef %cond.i, i32 noundef %reg.4.i, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool50.not.i, label %rockchip_get_mux.exit, label %if.end49.i.rockchip_get_mux.exit.thread_crit_edge

if.end49.i.rockchip_get_mux.exit.thread_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_mux.exit.thread

rockchip_get_mux.exit.thread:                     ; preds = %if.end49.i.rockchip_get_mux.exit.thread_crit_edge, %do.end.i, %sw.bb14.rockchip_get_mux.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup

rockchip_get_mux.exit:                            ; preds = %if.end49.i
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  %conv53.i = zext i8 %bit.2.i to i32
  %shr.i = lshr i32 %47, %conv53.i
  %and54.i = and i32 %shr.i, %mask.2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %cmp18.not = icmp eq i32 %and54.i, 0
  br i1 %cmp18.not, label %rockchip_get_mux.exit.if.end20_crit_edge, label %rockchip_get_mux.exit.cleanup_crit_edge

rockchip_get_mux.exit.cleanup_crit_edge:          ; preds = %rockchip_get_mux.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rockchip_get_mux.exit.if.end20_crit_edge:         ; preds = %rockchip_get_mux.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %rockchip_get_mux.exit.if.end20_crit_edge, %rockchip_get_mux.exit.thread147
  %tobool.not = icmp eq ptr %gpio_chip, null
  br i1 %tobool.not, label %if.end20.sw.epilog_crit_edge, label %lor.lhs.false

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end20
  %get = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 18, i32 10
  %48 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get, align 4
  %tobool21.not = icmp eq ptr %49, null
  br i1 %tobool21.not, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end23

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end23:                                         ; preds = %lor.lhs.false
  %50 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pin_base.i.le, align 4
  %sub26 = sub i32 %pin, %51
  %call27 = call i32 %49(ptr noundef nonnull %gpio_chip, i32 noundef %sub26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool31.not = icmp ne i32 %call27, 0
  %cond = zext i1 %tobool31.not to i32
  br label %sw.epilog

sw.bb32:                                          ; preds = %pin_to_bank.exit
  %drv_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %1, i32 0, i32 14
  %52 = ptrtoint ptr %drv_calc_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %drv_calc_reg, align 4
  %tobool34.not = icmp eq ptr %53, null
  br i1 %tobool34.not, label %sw.bb32.cleanup_crit_edge, label %if.end36

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %sw.bb32
  %sub38 = sub i32 %pin, %5
  %drvdata.i109 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 16
  %54 = ptrtoint ptr %drvdata.i109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %drvdata.i109, align 4
  %ctrl1.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrl1.i, align 4
  %dev2.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %55, i32 0, i32 4
  %58 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regmap.i) #10
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %regmap.i, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #10
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %reg.i, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %data.i, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #10
  %63 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %temp.i, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit.i) #10
  %64 = ptrtoint ptr %bit.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %bit.i, align 1, !annotation !311
  %div.i110 = sdiv i32 %sub38, 8
  %arrayidx.i111 = getelementptr %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 12, i32 %div.i110
  %65 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i111, align 4
  %drv_calc_reg.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %57, i32 0, i32 14
  %67 = ptrtoint ptr %drv_calc_reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drv_calc_reg.i, align 4
  call void %68(ptr noundef %b.0.i, i32 noundef %sub38, ptr noundef nonnull %regmap.i, ptr noundef nonnull %reg.i, ptr noundef nonnull %bit.i) #10
  %69 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %66, label %do.end21.i [
    i32 3, label %if.end36.sw.bb.i112_crit_edge
    i32 4, label %if.end36.sw.bb.i112_crit_edge175
    i32 0, label %if.end36.sw.epilog22.i_crit_edge
    i32 1, label %if.end36.sw.epilog22.i_crit_edge176
    i32 2, label %if.end36.sw.epilog22.i_crit_edge177
  ]

if.end36.sw.epilog22.i_crit_edge177:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

if.end36.sw.epilog22.i_crit_edge176:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

if.end36.sw.epilog22.i_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

if.end36.sw.bb.i112_crit_edge175:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i112

if.end36.sw.bb.i112_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i112

sw.bb.i112:                                       ; preds = %if.end36.sw.bb.i112_crit_edge, %if.end36.sw.bb.i112_crit_edge175
  %70 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bit.i, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %71, label %do.end.i123 [
    i8 0, label %sw.bb.i112.sw.epilog22.i_crit_edge
    i8 1, label %sw.bb.i112.sw.epilog22.i_crit_edge178
    i8 2, label %sw.bb.i112.sw.epilog22.i_crit_edge179
    i8 3, label %sw.bb.i112.sw.epilog22.i_crit_edge180
    i8 4, label %sw.bb.i112.sw.epilog22.i_crit_edge181
    i8 5, label %sw.bb.i112.sw.epilog22.i_crit_edge182
    i8 6, label %sw.bb.i112.sw.epilog22.i_crit_edge183
    i8 7, label %sw.bb.i112.sw.epilog22.i_crit_edge184
    i8 8, label %sw.bb.i112.sw.epilog22.i_crit_edge185
    i8 9, label %sw.bb.i112.sw.epilog22.i_crit_edge186
    i8 10, label %sw.bb.i112.sw.epilog22.i_crit_edge187
    i8 11, label %sw.bb.i112.sw.epilog22.i_crit_edge188
    i8 12, label %sw.bb.i112.sw.epilog22.i_crit_edge189
    i8 15, label %sw.bb5.i
    i8 18, label %sw.bb.i112.sw.bb12.i_crit_edge
    i8 19, label %sw.bb.i112.sw.bb12.i_crit_edge190
    i8 20, label %sw.bb.i112.sw.bb12.i_crit_edge191
    i8 21, label %sw.bb.i112.sw.bb12.i_crit_edge192
  ]

sw.bb.i112.sw.bb12.i_crit_edge192:                ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.bb.i112.sw.bb12.i_crit_edge191:                ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.bb.i112.sw.bb12.i_crit_edge190:                ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.bb.i112.sw.bb12.i_crit_edge:                   ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

sw.bb.i112.sw.epilog22.i_crit_edge189:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge188:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge187:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge186:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge185:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge184:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge183:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge182:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge181:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge180:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge179:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge178:            ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb.i112.sw.epilog22.i_crit_edge:               ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog22.i

sw.bb5.i:                                         ; preds = %sw.bb.i112
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg.i, align 4
  %call.i113 = call i32 @regmap_read(ptr noundef %74, i32 noundef %76, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end.i117, label %sw.bb5.i.rockchip_get_drive_perpin.exit_crit_edge

sw.bb5.i.rockchip_get_drive_perpin.exit_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_drive_perpin.exit

if.end.i117:                                      ; preds = %sw.bb5.i
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %79 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg.i, align 4
  %add.i115 = add i32 %80, 4
  %call6.i = call i32 @regmap_read(ptr noundef %78, i32 noundef %add.i115, ptr noundef nonnull %temp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i116 = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i116, label %if.end9.i121, label %if.end.i117.rockchip_get_drive_perpin.exit_crit_edge

if.end.i117.rockchip_get_drive_perpin.exit_crit_edge: ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_drive_perpin.exit

if.end9.i121:                                     ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data.i, align 4
  %shr.i118 = lshr i32 %82, 15
  %83 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %temp.i, align 4
  %and.i119 = shl i32 %84, 1
  %shl.i120 = and i32 %and.i119, 6
  %or.i = or i32 %shl.i120, %shr.i118
  br label %rockchip_get_drive_perpin.exit.sink.split

sw.bb12.i:                                        ; preds = %sw.bb.i112.sw.bb12.i_crit_edge, %sw.bb.i112.sw.bb12.i_crit_edge190, %sw.bb.i112.sw.bb12.i_crit_edge191, %sw.bb.i112.sw.bb12.i_crit_edge192
  %85 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reg.i, align 4
  %add13.i = add i32 %86, 4
  store i32 %add13.i, ptr %reg.i, align 4
  %sub.i = add nsw i8 %71, -16
  %87 = ptrtoint ptr %bit.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %sub.i, ptr %bit.i, align 1
  br label %sw.epilog22.i

do.end.i123:                                      ; preds = %sw.bb.i112
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i122 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.35, i32 noundef %conv.i122, i32 noundef %66) #13
  br label %rockchip_get_drive_perpin.exit.thread

do.end21.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.38, i32 noundef %66) #13
  br label %rockchip_get_drive_perpin.exit.thread

sw.epilog22.i:                                    ; preds = %sw.bb12.i, %sw.bb.i112.sw.epilog22.i_crit_edge, %sw.bb.i112.sw.epilog22.i_crit_edge178, %sw.bb.i112.sw.epilog22.i_crit_edge179, %sw.bb.i112.sw.epilog22.i_crit_edge180, %sw.bb.i112.sw.epilog22.i_crit_edge181, %sw.bb.i112.sw.epilog22.i_crit_edge182, %sw.bb.i112.sw.epilog22.i_crit_edge183, %sw.bb.i112.sw.epilog22.i_crit_edge184, %sw.bb.i112.sw.epilog22.i_crit_edge185, %sw.bb.i112.sw.epilog22.i_crit_edge186, %sw.bb.i112.sw.epilog22.i_crit_edge187, %sw.bb.i112.sw.epilog22.i_crit_edge188, %sw.bb.i112.sw.epilog22.i_crit_edge189, %if.end36.sw.epilog22.i_crit_edge, %if.end36.sw.epilog22.i_crit_edge176, %if.end36.sw.epilog22.i_crit_edge177
  %rmask_bits.0.i = phi i32 [ 3, %sw.bb12.i ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge178 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge179 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge180 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge181 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge182 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge183 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge184 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge185 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge186 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge187 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge188 ], [ 3, %sw.bb.i112.sw.epilog22.i_crit_edge189 ], [ 2, %if.end36.sw.epilog22.i_crit_edge ], [ 2, %if.end36.sw.epilog22.i_crit_edge176 ], [ 2, %if.end36.sw.epilog22.i_crit_edge177 ]
  %88 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i, align 4
  %90 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reg.i, align 4
  %call23.i = call i32 @regmap_read(ptr noundef %89, i32 noundef %91, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %sw.epilog22.i.rockchip_get_drive_perpin.exit_crit_edge

sw.epilog22.i.rockchip_get_drive_perpin.exit_crit_edge: ; preds = %sw.epilog22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_drive_perpin.exit

if.end26.i:                                       ; preds = %sw.epilog22.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bit.i, align 1
  %conv27.i = zext i8 %93 to i32
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data.i, align 4
  %shr28.i = lshr i32 %95, %conv27.i
  %notmask.i = shl nsw i32 -1, %rmask_bits.0.i
  %sub30.i = xor i32 %notmask.i, -1
  %and31.i = and i32 %shr28.i, %sub30.i
  br label %rockchip_get_drive_perpin.exit.sink.split

rockchip_get_drive_perpin.exit.thread:            ; preds = %do.end21.i, %do.end.i123
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap.i) #10
  br label %cleanup

rockchip_get_drive_perpin.exit.sink.split:        ; preds = %if.end26.i, %if.end9.i121
  %or.i.sink = phi i32 [ %or.i, %if.end9.i121 ], [ %and31.i, %if.end26.i ]
  %arrayidx11.i = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %66, i32 %or.i.sink
  %96 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx11.i, align 4
  br label %rockchip_get_drive_perpin.exit

rockchip_get_drive_perpin.exit:                   ; preds = %rockchip_get_drive_perpin.exit.sink.split, %sw.epilog22.i.rockchip_get_drive_perpin.exit_crit_edge, %if.end.i117.rockchip_get_drive_perpin.exit_crit_edge, %sw.bb5.i.rockchip_get_drive_perpin.exit_crit_edge
  %retval.0.i124 = phi i32 [ %call.i113, %sw.bb5.i.rockchip_get_drive_perpin.exit_crit_edge ], [ %call6.i, %if.end.i117.rockchip_get_drive_perpin.exit_crit_edge ], [ %call23.i, %sw.epilog22.i.rockchip_get_drive_perpin.exit_crit_edge ], [ %97, %rockchip_get_drive_perpin.exit.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i124)
  %cmp40 = icmp slt i32 %retval.0.i124, 0
  br i1 %cmp40, label %rockchip_get_drive_perpin.exit.cleanup_crit_edge, label %rockchip_get_drive_perpin.exit.sw.epilog_crit_edge

rockchip_get_drive_perpin.exit.sw.epilog_crit_edge: ; preds = %rockchip_get_drive_perpin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

rockchip_get_drive_perpin.exit.cleanup_crit_edge: ; preds = %rockchip_get_drive_perpin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb45:                                          ; preds = %pin_to_bank.exit
  %schmitt_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %1, i32 0, i32 15
  %98 = ptrtoint ptr %schmitt_calc_reg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %schmitt_calc_reg, align 4
  %tobool47.not = icmp eq ptr %99, null
  br i1 %tobool47.not, label %sw.bb45.cleanup_crit_edge, label %if.end49

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %sw.bb45
  %sub51 = sub i32 %pin, %5
  %drvdata.i129 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 16
  %100 = ptrtoint ptr %drvdata.i129 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %drvdata.i129, align 4
  %ctrl1.i130 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %ctrl1.i130 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctrl1.i130, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regmap.i125) #10
  %104 = ptrtoint ptr %regmap.i125 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 -1 to ptr), ptr %regmap.i125, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i126) #10
  %105 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %reg.i126, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit.i127) #10
  %106 = ptrtoint ptr %bit.i127 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %bit.i127, align 1, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i128) #10
  %107 = ptrtoint ptr %data.i128 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %data.i128, align 4, !annotation !311
  %schmitt_calc_reg.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %103, i32 0, i32 15
  %108 = ptrtoint ptr %schmitt_calc_reg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %schmitt_calc_reg.i, align 4
  %call.i131 = call i32 %109(ptr noundef %b.0.i, i32 noundef %sub51, ptr noundef nonnull %regmap.i125, ptr noundef nonnull %reg.i126, ptr noundef nonnull %bit.i127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.end.i133, label %if.end49.rockchip_get_schmitt.exit_crit_edge

if.end49.rockchip_get_schmitt.exit_crit_edge:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_schmitt.exit

if.end.i133:                                      ; preds = %if.end49
  %110 = ptrtoint ptr %regmap.i125 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap.i125, align 4
  %112 = ptrtoint ptr %reg.i126 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg.i126, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %111, i32 noundef %113, ptr noundef nonnull %data.i128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i133.rockchip_get_schmitt.exit_crit_edge

if.end.i133.rockchip_get_schmitt.exit_crit_edge:  ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_get_schmitt.exit

if.end5.i:                                        ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %bit.i127 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bit.i127, align 1
  %conv.i134 = zext i8 %115 to i32
  %116 = ptrtoint ptr %data.i128 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data.i128, align 4
  %shr.i135 = lshr i32 %117, %conv.i134
  %type.i136 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %103, i32 0, i32 4
  %118 = ptrtoint ptr %type.i136 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %119)
  %cond.i137 = icmp eq i32 %119, 10
  %retval.0.i141.ph.v = select i1 %cond.i137, i32 3, i32 1
  %retval.0.i141.ph = and i32 %retval.0.i141.ph.v, %shr.i135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i128) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit.i127) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i126) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap.i125) #10
  br label %sw.epilog

rockchip_get_schmitt.exit:                        ; preds = %if.end.i133.rockchip_get_schmitt.exit_crit_edge, %if.end49.rockchip_get_schmitt.exit_crit_edge
  %retval.0.i141 = phi i32 [ %call.i131, %if.end49.rockchip_get_schmitt.exit_crit_edge ], [ %call2.i, %if.end.i133.rockchip_get_schmitt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i128) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit.i127) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i126) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap.i125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i141)
  %cmp53 = icmp slt i32 %retval.0.i141, 0
  br i1 %cmp53, label %rockchip_get_schmitt.exit.cleanup_crit_edge, label %rockchip_get_schmitt.exit.sw.epilog_crit_edge

rockchip_get_schmitt.exit.sw.epilog_crit_edge:    ; preds = %rockchip_get_schmitt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

rockchip_get_schmitt.exit.cleanup_crit_edge:      ; preds = %rockchip_get_schmitt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %rockchip_get_schmitt.exit.sw.epilog_crit_edge, %if.end5.i, %rockchip_get_drive_perpin.exit.sw.epilog_crit_edge, %if.end30, %lor.lhs.false.sw.epilog_crit_edge, %if.end20.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arg.0 = phi i32 [ %cond, %if.end30 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 1, %if.end7.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 0, %if.end20.sw.epilog_crit_edge ], [ %retval.0.i124, %rockchip_get_drive_perpin.exit.sw.epilog_crit_edge ], [ %retval.0.i141, %rockchip_get_schmitt.exit.sw.epilog_crit_edge ], [ %retval.0.i141.ph, %if.end5.i ]
  %conv58 = shl i32 %arg.0, 8
  %shl.i142 = and i32 %conv58, 16776960
  %or.i143 = or i32 %shl.i142, %and.i
  %120 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i143, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %rockchip_get_schmitt.exit.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %rockchip_get_drive_perpin.exit.cleanup_crit_edge, %rockchip_get_drive_perpin.exit.thread, %sw.bb32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %rockchip_get_mux.exit.cleanup_crit_edge, %rockchip_get_mux.exit.thread, %if.end7.cleanup_crit_edge, %rockchip_pinconf_pull_valid.exit.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %pin_to_bank.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -524, %rockchip_pinconf_pull_valid.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %rockchip_get_mux.exit.cleanup_crit_edge ], [ %call27, %if.end23.cleanup_crit_edge ], [ -524, %sw.bb32.cleanup_crit_edge ], [ %retval.0.i124, %rockchip_get_drive_perpin.exit.cleanup_crit_edge ], [ -524, %sw.bb45.cleanup_crit_edge ], [ %retval.0.i141, %rockchip_get_schmitt.exit.cleanup_crit_edge ], [ -524, %pin_to_bank.exit.cleanup_crit_edge ], [ -524, %sw.bb4.i.cleanup_crit_edge ], [ -524, %sw.bb2.i.cleanup_crit_edge ], [ -22, %rockchip_get_mux.exit.thread ], [ -22, %rockchip_get_drive_perpin.exit.thread ], [ -524, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %ctrl.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %b.0.i = phi ptr [ %3, %entry ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %pin_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 7
  %4 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_base.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 8
  %6 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_pins.i, align 4
  %conv.i = zext i8 %7 to i32
  %add.i = add i32 %5, %conv.i
  %cmp.not.i = icmp ugt i32 %add.i, %pin
  %incdec.ptr.i = getelementptr %struct.rockchip_pin_bank, ptr %b.0.i, i32 1
  br i1 %cmp.not.i, label %pin_to_bank.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

pin_to_bank.exit:                                 ; preds = %while.cond.i
  %pin_base.i.le = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 7
  %gpio_chip = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp132.not = icmp eq i32 %num_configs, 0
  br i1 %cmp132.not, label %pin_to_bank.exit.cleanup_crit_edge, label %for.body.lr.ph

pin_to_bank.exit.cleanup_crit_edge:               ; preds = %pin_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %pin_to_bank.exit
  %deferred_lock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 27
  %tobool26.not = icmp eq ptr %gpio_chip, null
  %direction_output = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 18, i32 9
  %deferred_output.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 26
  %prev.i.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.0.i, i32 0, i32 26, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0133
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %9, 255
  %shr.i = lshr i32 %9, 8
  %trunc = trunc i32 %9 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %for.body.sw.bb6_crit_edge
    i8 3, label %for.body.sw.bb6_crit_edge149
    i8 4, label %for.body.sw.bb6_crit_edge150
    i8 0, label %for.body.sw.bb6_crit_edge151
    i8 17, label %sw.bb19
    i8 9, label %sw.bb45
    i8 14, label %sw.bb56
  ]

for.body.sw.bb6_crit_edge151:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

for.body.sw.bb6_crit_edge150:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

for.body.sw.bb6_crit_edge149:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

for.body.sw.bb6_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %11 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pin_base.i.le, align 4
  %sub = sub i32 %pin, %12
  %call5 = tail call fastcc i32 @rockchip_set_pull(ptr noundef %b.0.i, i32 noundef %sub, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb6:                                           ; preds = %for.body.sw.bb6_crit_edge, %for.body.sw.bb6_crit_edge149, %for.body.sw.bb6_crit_edge150, %for.body.sw.bb6_crit_edge151
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl.i, align 4
  %type.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %16, label %sw.bb6.cleanup_crit_edge [
    i32 2, label %sw.bb6.rockchip_pinconf_pull_valid.exit_crit_edge
    i32 4, label %sw.bb6.rockchip_pinconf_pull_valid.exit_crit_edge152
    i32 3, label %sw.bb2.i
    i32 0, label %sw.bb6.sw.bb4.i_crit_edge
    i32 1, label %sw.bb6.sw.bb4.i_crit_edge153
    i32 5, label %sw.bb6.sw.bb4.i_crit_edge154
    i32 6, label %sw.bb6.sw.bb4.i_crit_edge155
    i32 7, label %sw.bb6.sw.bb4.i_crit_edge156
    i32 8, label %sw.bb6.sw.bb4.i_crit_edge157
    i32 9, label %sw.bb6.sw.bb4.i_crit_edge158
    i32 10, label %sw.bb6.sw.bb4.i_crit_edge159
  ]

sw.bb6.sw.bb4.i_crit_edge159:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge158:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge157:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge156:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge155:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge154:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge153:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.sw.bb4.i_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb6.rockchip_pinconf_pull_valid.exit_crit_edge152: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinconf_pull_valid.exit

sw.bb6.rockchip_pinconf_pull_valid.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinconf_pull_valid.exit

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.if.end9_crit_edge, label %sw.bb2.i.cleanup_crit_edge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i.if.end9_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb4.i:                                         ; preds = %sw.bb6.sw.bb4.i_crit_edge, %sw.bb6.sw.bb4.i_crit_edge153, %sw.bb6.sw.bb4.i_crit_edge154, %sw.bb6.sw.bb4.i_crit_edge155, %sw.bb6.sw.bb4.i_crit_edge156, %sw.bb6.sw.bb4.i_crit_edge157, %sw.bb6.sw.bb4.i_crit_edge158, %sw.bb6.sw.bb4.i_crit_edge159
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp5.i.not = icmp eq i32 %and.i, 4
  br i1 %cmp5.i.not, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i.if.end9_crit_edge

sw.bb4.i.if.end9_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rockchip_pinconf_pull_valid.exit:                 ; preds = %sw.bb6.rockchip_pinconf_pull_valid.exit_crit_edge, %sw.bb6.rockchip_pinconf_pull_valid.exit_crit_edge152
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %trunc, label %rockchip_pinconf_pull_valid.exit.cleanup_crit_edge [
    i8 4, label %rockchip_pinconf_pull_valid.exit.if.end9_crit_edge
    i8 1, label %rockchip_pinconf_pull_valid.exit.if.end9_crit_edge160
  ]

rockchip_pinconf_pull_valid.exit.if.end9_crit_edge160: ; preds = %rockchip_pinconf_pull_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

rockchip_pinconf_pull_valid.exit.if.end9_crit_edge: ; preds = %rockchip_pinconf_pull_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

rockchip_pinconf_pull_valid.exit.cleanup_crit_edge: ; preds = %rockchip_pinconf_pull_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %rockchip_pinconf_pull_valid.exit.if.end9_crit_edge, %rockchip_pinconf_pull_valid.exit.if.end9_crit_edge160, %sw.bb4.i.if.end9_crit_edge, %sw.bb2.i.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %tobool10.not = icmp ult i32 %9, 256
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin_base.i.le, align 4
  %sub14 = sub i32 %pin, %20
  %call15 = tail call fastcc i32 @rockchip_set_pull(ptr noundef %b.0.i, i32 noundef %sub14, i32 noundef %and.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end12.for.inc_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb19:                                          ; preds = %for.body
  %21 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pin_base.i.le, align 4
  %sub21 = sub i32 %pin, %22
  %call22 = tail call fastcc i32 @rockchip_set_mux(ptr noundef %b.0.i, i32 noundef %sub21, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end25, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %sw.bb19
  tail call void @mutex_lock_nested(ptr noundef %deferred_lock, i32 noundef 0) #10
  br i1 %tobool26.not, label %if.end25.if.then28_crit_edge, label %lor.lhs.false

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end25
  %23 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %direction_output, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %lor.lhs.false.if.then28_crit_edge, label %if.end36

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  %25 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_base.i.le, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not.i125 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i125, label %rockchip_pinconf_defer_output.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then28
  %sub30 = sub i32 %pin, %26
  %pin1.i = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %pin1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub30, ptr %pin1.i, align 8
  %arg2.i = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i, ptr %arg2.i, align 4
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %31, ptr noundef %deferred_output.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.rockchip_pinconf_defer_output.exit.thread_crit_edge

if.end.i.rockchip_pinconf_defer_output.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_pinconf_defer_output.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %deferred_output.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i.i, ptr %31, align 4
  br label %rockchip_pinconf_defer_output.exit.thread

rockchip_pinconf_defer_output.exit.thread:        ; preds = %if.end.i.i.i, %if.end.i.rockchip_pinconf_defer_output.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %deferred_lock) #10
  br label %for.inc

rockchip_pinconf_defer_output.exit:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %deferred_lock) #10
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  tail call void @mutex_unlock(ptr noundef %deferred_lock) #10
  %36 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %direction_output, align 4
  %38 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pin_base.i.le, align 4
  %sub40 = sub i32 %pin, %39
  %call41 = tail call i32 %37(ptr noundef nonnull %gpio_chip, i32 noundef %sub40, i32 noundef %shr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end36.for.inc_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb45:                                          ; preds = %for.body
  %40 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl.i, align 4
  %drv_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %drv_calc_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv_calc_reg, align 4
  %tobool47.not = icmp eq ptr %43, null
  br i1 %tobool47.not, label %sw.bb45.cleanup_crit_edge, label %if.end49

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %sw.bb45
  %44 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pin_base.i.le, align 4
  %sub51 = sub i32 %pin, %45
  %call52 = tail call fastcc i32 @rockchip_set_drive_perpin(ptr noundef %b.0.i, i32 noundef %sub51, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end49.cleanup_crit_edge, label %if.end49.for.inc_crit_edge

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb56:                                          ; preds = %for.body
  %46 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl.i, align 4
  %schmitt_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %schmitt_calc_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %schmitt_calc_reg, align 4
  %tobool58.not = icmp eq ptr %49, null
  br i1 %tobool58.not, label %sw.bb56.cleanup_crit_edge, label %if.end60

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %sw.bb56
  %50 = ptrtoint ptr %pin_base.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pin_base.i.le, align 4
  %sub62 = sub i32 %pin, %51
  %call63 = tail call fastcc i32 @rockchip_set_schmitt(ptr noundef %b.0.i, i32 noundef %sub62, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end60.cleanup_crit_edge, label %if.end60.for.inc_crit_edge

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end60.for.inc_crit_edge, %if.end49.for.inc_crit_edge, %if.end36.for.inc_crit_edge, %rockchip_pinconf_defer_output.exit.thread, %if.end12.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %inc = add nuw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %rockchip_pinconf_defer_output.exit, %sw.bb19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %rockchip_pinconf_pull_valid.exit.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.body.cleanup_crit_edge, %pin_to_bank.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %rockchip_pinconf_defer_output.exit ], [ 0, %pin_to_bank.exit.cleanup_crit_edge ], [ %call5, %sw.bb.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ %call41, %if.end36.cleanup_crit_edge ], [ -524, %sw.bb45.cleanup_crit_edge ], [ %call52, %if.end49.cleanup_crit_edge ], [ -524, %sw.bb56.cleanup_crit_edge ], [ %call63, %if.end60.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -524, %sw.bb4.i.cleanup_crit_edge ], [ -524, %sw.bb2.i.cleanup_crit_edge ], [ -524, %sw.bb6.cleanup_crit_edge ], [ -524, %rockchip_pinconf_pull_valid.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_get_pull(ptr noundef %bank, i32 noundef %pin_num) unnamed_addr #2 align 64 {
entry:
  %regmap = alloca ptr, align 4
  %reg = alloca i32, align 4
  %bit = alloca i8, align 1
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %ctrl1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 4
  %dev2 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regmap) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %regmap, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #10
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bit, align 1, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %data, align 4, !annotation !311
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pull_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %pull_calc_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pull_calc_reg, align 4
  call void %13(ptr noundef %bank, i32 noundef %pin_num, ptr noundef nonnull %regmap, ptr noundef nonnull %reg, ptr noundef nonnull %bit) #10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %19, label %do.end [
    i32 2, label %if.end4.sw.bb_crit_edge
    i32 4, label %if.end4.sw.bb_crit_edge28
    i32 0, label %if.end4.sw.bb7_crit_edge
    i32 1, label %if.end4.sw.bb7_crit_edge29
    i32 5, label %if.end4.sw.bb7_crit_edge30
    i32 6, label %if.end4.sw.bb7_crit_edge31
    i32 7, label %if.end4.sw.bb7_crit_edge32
    i32 8, label %if.end4.sw.bb7_crit_edge33
    i32 9, label %if.end4.sw.bb7_crit_edge34
  ]

if.end4.sw.bb7_crit_edge34:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb7_crit_edge33:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb7_crit_edge32:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb7_crit_edge31:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb7_crit_edge30:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb7_crit_edge29:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb7_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end4.sw.bb_crit_edge28:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge28
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %23 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bit, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, i32 4, i32 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.end4.sw.bb7_crit_edge, %if.end4.sw.bb7_crit_edge29, %if.end4.sw.bb7_crit_edge30, %if.end4.sw.bb7_crit_edge31, %if.end4.sw.bb7_crit_edge32, %if.end4.sw.bb7_crit_edge33, %if.end4.sw.bb7_crit_edge34
  %div = sdiv i32 %pin_num, 8
  %arrayidx = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 13, i32 %div
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bit, align 1
  %conv9 = zext i8 %28 to i32
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %shr = lshr i32 %30, %conv9
  %and10 = and i32 %shr, 3
  %arrayidx12 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %26, i32 %and10
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx12, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %32, %sw.bb7 ], [ %cond, %sw.bb ], [ 1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_set_pull(ptr noundef %bank, i32 noundef %pin_num, i32 noundef %pull) unnamed_addr #2 align 64 {
entry:
  %regmap = alloca ptr, align 4
  %reg = alloca i32, align 4
  %bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %ctrl1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 4
  %dev2 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regmap) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %regmap, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #10
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bit, align 1, !annotation !311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_set_pull.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_set_pull, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %9 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_set_pull.__UNIQUE_ID_ddebug226, ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %pin_num, i32 noundef %pull) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp = icmp eq i32 %12, 3
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pull)
  %tobool8.not = icmp eq i32 %pull, 0
  %cond = select i1 %tobool8.not, i32 0, i32 -22
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %pull_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %pull_calc_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pull_calc_reg, align 4
  call void %14(ptr noundef %bank, i32 noundef %pin_num, ptr noundef nonnull %regmap, ptr noundef nonnull %reg, ptr noundef nonnull %bit) #10
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %16, label %do.end65 [
    i32 2, label %if.end9.sw.bb_crit_edge
    i32 4, label %if.end9.sw.bb_crit_edge115
    i32 0, label %if.end9.sw.bb19_crit_edge
    i32 1, label %if.end9.sw.bb19_crit_edge116
    i32 5, label %if.end9.sw.bb19_crit_edge117
    i32 6, label %if.end9.sw.bb19_crit_edge118
    i32 7, label %if.end9.sw.bb19_crit_edge119
    i32 8, label %if.end9.sw.bb19_crit_edge120
    i32 9, label %if.end9.sw.bb19_crit_edge121
    i32 10, label %if.end9.sw.bb19_crit_edge122
  ]

if.end9.sw.bb19_crit_edge122:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge121:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge120:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge119:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge118:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge117:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge116:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb19_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end9.sw.bb_crit_edge115:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge115
  %18 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bit, align 1
  %conv11 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pull)
  %cmp12 = icmp eq i32 %pull, 1
  %spec.select = select i1 %cmp12, i32 65537, i32 65536
  %data.0 = shl i32 %spec.select, %conv11
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %call18 = call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %data.0) #10
  br label %cleanup

sw.bb19:                                          ; preds = %if.end9.sw.bb19_crit_edge, %if.end9.sw.bb19_crit_edge116, %if.end9.sw.bb19_crit_edge117, %if.end9.sw.bb19_crit_edge118, %if.end9.sw.bb19_crit_edge119, %if.end9.sw.bb19_crit_edge120, %if.end9.sw.bb19_crit_edge121, %if.end9.sw.bb19_crit_edge122
  %div = sdiv i32 %pin_num, 8
  %arrayidx = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 13, i32 %div
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %arrayidx24 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %25, i32 0
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %pull)
  %cmp25 = icmp eq i32 %27, %pull
  br i1 %cmp25, label %sw.bb19.for.end_crit_edge, label %for.inc

sw.bb19.for.end_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %sw.bb19
  %arrayidx24.1 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %25, i32 1
  %28 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %pull)
  %cmp25.1 = icmp eq i32 %29, %pull
  br i1 %cmp25.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx24.2 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %25, i32 2
  %30 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %pull)
  %cmp25.2 = icmp eq i32 %31, %pull
  br i1 %cmp25.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.3 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %25, i32 3
  %32 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx24.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %pull)
  %cmp25.3 = icmp eq i32 %33, %pull
  %not.cmp25.3 = xor i1 %cmp25.3, true
  %spec.select114 = select i1 %cmp25.3, i32 3, i32 -22
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %sw.bb19.for.end_crit_edge
  %cmp48 = phi i1 [ false, %for.inc.1.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ], [ false, %sw.bb19.for.end_crit_edge ], [ %not.cmp25.3, %for.inc.2 ]
  %cmp43 = phi i1 [ false, %for.inc.1.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ], [ false, %sw.bb19.for.end_crit_edge ], [ false, %for.inc.2 ]
  %ret.0 = phi i32 [ 2, %for.inc.1.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 0, %sw.bb19.for.end_crit_edge ], [ %spec.select114, %for.inc.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp30 = icmp eq i32 %16, 10
  br i1 %cmp30, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %for.end
  %bank_num32 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %34 = ptrtoint ptr %bank_num32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bank_num32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp34 = icmp eq i8 %35, 0
  %36 = add i32 %pin_num, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %37 = icmp ult i32 %36, 4
  %38 = and i1 %37, %cmp34
  %or.cond111 = and i1 %38, %cmp43
  %cmp48.not = xor i1 %cmp48, true
  %brmerge = select i1 %or.cond111, i1 true, i1 %cmp48.not
  %.mux = select i1 %or.cond111, i32 3, i32 %ret.0
  br i1 %brmerge, label %land.lhs.true.if.end54_crit_edge, label %land.lhs.true.do.end53_crit_edge

land.lhs.true.do.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end47:                                         ; preds = %for.end
  br i1 %cmp48, label %if.end47.do.end53_crit_edge, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end47.do.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

do.end53:                                         ; preds = %if.end47.do.end53_crit_edge, %land.lhs.true.do.end53_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.42, i32 noundef %pull) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end47.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge
  %ret.1110 = phi i32 [ %ret.0, %if.end47.if.end54_crit_edge ], [ %.mux, %land.lhs.true.if.end54_crit_edge ]
  %39 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bit, align 1
  %conv55 = zext i8 %40 to i32
  %shl57 = shl i32 196608, %conv55
  %shr = lshr exact i32 %shl57, 16
  %or58 = or i32 %shr, %shl57
  %shl60 = shl i32 %ret.1110, %conv55
  %or61 = or i32 %shl57, %shl60
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %44, i32 noundef %or58, i32 noundef %or61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

do.end65:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.end54, %do.end53, %sw.bb, %if.then7
  %retval.0 = phi i32 [ %cond, %if.then7 ], [ -22, %do.end65 ], [ %ret.0, %do.end53 ], [ %call.i, %if.end54 ], [ %call18, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_set_drive_perpin(ptr noundef %bank, i32 noundef %pin_num, i32 noundef %strength) unnamed_addr #2 align 64 {
entry:
  %regmap = alloca ptr, align 4
  %reg = alloca i32, align 4
  %bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %ctrl1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 4
  %dev2 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regmap) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %regmap, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #10
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bit, align 1, !annotation !311
  %div = sdiv i32 %pin_num, 8
  %arrayidx = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 12, i32 %div
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_set_drive_perpin.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_set_drive_perpin, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_set_drive_perpin.__UNIQUE_ID_ddebug225, ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %pin_num, i32 noundef %strength) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %drv_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %drv_calc_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_calc_reg, align 4
  call void %14(ptr noundef %bank, i32 noundef %pin_num, ptr noundef nonnull %regmap, ptr noundef nonnull %reg, ptr noundef nonnull %bit) #10
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp = icmp eq i32 %16, 10
  br i1 %cmp, label %if.then8, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end
  %arrayidx13 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 0
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %strength)
  %cmp14 = icmp eq i32 %18, %strength
  br i1 %cmp14, label %for.body.preheader.if.end32_crit_edge, label %for.inc

for.body.preheader.if.end32_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %strength, 1
  %notmask122 = shl nsw i32 -1, %add
  %sub = xor i32 %notmask122, -1
  br label %config

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx13.1 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 1
  %19 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %strength)
  %cmp14.1 = icmp eq i32 %20, %strength
  br i1 %cmp14.1, label %for.inc.if.end32_crit_edge, label %for.inc.1

for.inc.if.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.inc.1:                                        ; preds = %for.inc
  %arrayidx13.2 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 2
  %21 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %strength)
  %cmp14.2 = icmp eq i32 %22, %strength
  br i1 %cmp14.2, label %for.inc.1.if.end32_crit_edge, label %for.inc.2

for.inc.1.if.end32_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx13.3 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 3
  %23 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %strength)
  %cmp14.3 = icmp eq i32 %24, %strength
  br i1 %cmp14.3, label %for.inc.2.if.end32_crit_edge, label %for.inc.3

for.inc.2.if.end32_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx13.4 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 4
  %25 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx13.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %strength)
  %cmp14.4 = icmp eq i32 %26, %strength
  br i1 %cmp14.4, label %for.inc.3.if.end32_crit_edge, label %if.else.4

for.inc.3.if.end32_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else.4:                                        ; preds = %for.inc.3
  %27 = and i32 %10, 134217727
  %28 = add nsw i32 %27, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %29 = icmp ult i32 %28, -2
  br i1 %29, label %if.else.4.do.end31_crit_edge, label %for.inc.4

if.else.4.do.end31_crit_edge:                     ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

for.inc.4:                                        ; preds = %if.else.4
  %arrayidx13.5 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 5
  %30 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx13.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %strength)
  %cmp14.5 = icmp eq i32 %31, %strength
  br i1 %cmp14.5, label %for.inc.4.if.end32_crit_edge, label %if.else.5

for.inc.4.if.end32_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else.5:                                        ; preds = %for.inc.4
  %32 = and i32 %10, 134217727
  %33 = add nsw i32 %32, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %33)
  %34 = icmp ult i32 %33, -2
  br i1 %34, label %if.else.5.do.end31_crit_edge, label %for.inc.5

if.else.5.do.end31_crit_edge:                     ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

for.inc.5:                                        ; preds = %if.else.5
  %arrayidx13.6 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 6
  %35 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx13.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %strength)
  %cmp14.6 = icmp eq i32 %36, %strength
  br i1 %cmp14.6, label %for.inc.5.if.end32_crit_edge, label %if.else.6

for.inc.5.if.end32_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else.6:                                        ; preds = %for.inc.5
  %37 = and i32 %10, 134217727
  %38 = add nsw i32 %37, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %38)
  %39 = icmp ult i32 %38, -2
  br i1 %39, label %if.else.6.do.end31_crit_edge, label %for.inc.6

if.else.6.do.end31_crit_edge:                     ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

for.inc.6:                                        ; preds = %if.else.6
  %arrayidx13.7 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %10, i32 7
  %40 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx13.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %strength)
  %cmp14.7 = icmp eq i32 %41, %strength
  br i1 %cmp14.7, label %for.inc.6.if.end32_crit_edge, label %if.else.7

for.inc.6.if.end32_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %42 = and i32 %10, 134217727
  %43 = add nsw i32 %42, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %43)
  %44 = icmp ult i32 %43, -2
  %spec.select = select i1 %44, i32 %41, i32 -22
  br label %do.end31

do.end31:                                         ; preds = %if.else.7, %if.else.6.do.end31_crit_edge, %if.else.5.do.end31_crit_edge, %if.else.4.do.end31_crit_edge
  %ret.0.ph = phi i32 [ %26, %if.else.4.do.end31_crit_edge ], [ %31, %if.else.5.do.end31_crit_edge ], [ %36, %if.else.6.do.end31_crit_edge ], [ %spec.select, %if.else.7 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.47, i32 noundef %strength) #13
  br label %cleanup

if.end32:                                         ; preds = %for.inc.6.if.end32_crit_edge, %for.inc.5.if.end32_crit_edge, %for.inc.4.if.end32_crit_edge, %for.inc.3.if.end32_crit_edge, %for.inc.2.if.end32_crit_edge, %for.inc.1.if.end32_crit_edge, %for.inc.if.end32_crit_edge, %for.body.preheader.if.end32_crit_edge
  %i.0130.lcssa = phi i32 [ 0, %for.body.preheader.if.end32_crit_edge ], [ 1, %for.inc.if.end32_crit_edge ], [ 2, %for.inc.1.if.end32_crit_edge ], [ 3, %for.inc.2.if.end32_crit_edge ], [ 4, %for.inc.3.if.end32_crit_edge ], [ 5, %for.inc.4.if.end32_crit_edge ], [ 6, %for.inc.5.if.end32_crit_edge ], [ 7, %for.inc.6.if.end32_crit_edge ]
  %45 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %10, label %do.end58 [
    i32 3, label %if.end32.sw.bb_crit_edge
    i32 4, label %if.end32.sw.bb_crit_edge132
    i32 0, label %if.end32.config_crit_edge
    i32 1, label %if.end32.config_crit_edge133
    i32 2, label %if.end32.config_crit_edge134
  ]

if.end32.config_crit_edge134:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

if.end32.config_crit_edge133:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

if.end32.config_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

if.end32.sw.bb_crit_edge132:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge132
  %46 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bit, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %47, label %do.end52 [
    i8 0, label %sw.bb.config_crit_edge
    i8 1, label %sw.bb.config_crit_edge135
    i8 2, label %sw.bb.config_crit_edge136
    i8 3, label %sw.bb.config_crit_edge137
    i8 4, label %sw.bb.config_crit_edge138
    i8 5, label %sw.bb.config_crit_edge139
    i8 6, label %sw.bb.config_crit_edge140
    i8 7, label %sw.bb.config_crit_edge141
    i8 8, label %sw.bb.config_crit_edge142
    i8 9, label %sw.bb.config_crit_edge143
    i8 10, label %sw.bb.config_crit_edge144
    i8 11, label %sw.bb.config_crit_edge145
    i8 12, label %sw.bb.config_crit_edge146
    i8 15, label %sw.bb35
    i8 18, label %sw.bb.sw.bb45_crit_edge
    i8 19, label %sw.bb.sw.bb45_crit_edge147
    i8 20, label %sw.bb.sw.bb45_crit_edge148
    i8 21, label %sw.bb.sw.bb45_crit_edge149
  ]

sw.bb.sw.bb45_crit_edge149:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.sw.bb45_crit_edge148:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.sw.bb45_crit_edge147:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.sw.bb45_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.config_crit_edge146:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge145:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge144:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge143:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge142:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge141:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge140:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge139:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge138:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge137:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge136:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge135:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb.config_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

sw.bb35:                                          ; preds = %sw.bb
  %and = shl nuw nsw i32 %i.0130.lcssa, 15
  %shl36 = and i32 %and, 32768
  %or = or i32 %shl36, -2147483648
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %52, i32 noundef -2147450880, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %53 = lshr i32 %i.0130.lcssa, 1
  %or42 = or i32 %53, 196608
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg, align 4
  %add43 = add i32 %55, 4
  store i32 %add43, ptr %reg, align 4
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i123 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %add43, i32 noundef 196611, i32 noundef %or42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb45:                                          ; preds = %sw.bb.sw.bb45_crit_edge, %sw.bb.sw.bb45_crit_edge147, %sw.bb.sw.bb45_crit_edge148, %sw.bb.sw.bb45_crit_edge149
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg, align 4
  %add46 = add i32 %59, 4
  store i32 %add46, ptr %reg, align 4
  %sub48 = add nsw i8 %47, -16
  %60 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %sub48, ptr %bit, align 1
  br label %config

do.end52:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv33 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, i32 noundef %conv33, i32 noundef %10) #13
  br label %cleanup

do.end58:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %10) #13
  br label %cleanup

config:                                           ; preds = %sw.bb45, %sw.bb.config_crit_edge, %sw.bb.config_crit_edge135, %sw.bb.config_crit_edge136, %sw.bb.config_crit_edge137, %sw.bb.config_crit_edge138, %sw.bb.config_crit_edge139, %sw.bb.config_crit_edge140, %sw.bb.config_crit_edge141, %sw.bb.config_crit_edge142, %sw.bb.config_crit_edge143, %sw.bb.config_crit_edge144, %sw.bb.config_crit_edge145, %sw.bb.config_crit_edge146, %if.end32.config_crit_edge, %if.end32.config_crit_edge133, %if.end32.config_crit_edge134, %if.then8
  %ret.1 = phi i32 [ %sub, %if.then8 ], [ %i.0130.lcssa, %sw.bb45 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge ], [ %i.0130.lcssa, %sw.bb.config_crit_edge135 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge136 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge137 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge138 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge139 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge140 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge141 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge142 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge143 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge144 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge145 ], [ %i.0130.lcssa, %sw.bb.config_crit_edge146 ], [ %i.0130.lcssa, %if.end32.config_crit_edge ], [ %i.0130.lcssa, %if.end32.config_crit_edge133 ], [ %i.0130.lcssa, %if.end32.config_crit_edge134 ]
  %rmask_bits.0 = phi i32 [ 8, %if.then8 ], [ 3, %sw.bb45 ], [ 3, %sw.bb.config_crit_edge ], [ 3, %sw.bb.config_crit_edge135 ], [ 3, %sw.bb.config_crit_edge136 ], [ 3, %sw.bb.config_crit_edge137 ], [ 3, %sw.bb.config_crit_edge138 ], [ 3, %sw.bb.config_crit_edge139 ], [ 3, %sw.bb.config_crit_edge140 ], [ 3, %sw.bb.config_crit_edge141 ], [ 3, %sw.bb.config_crit_edge142 ], [ 3, %sw.bb.config_crit_edge143 ], [ 3, %sw.bb.config_crit_edge144 ], [ 3, %sw.bb.config_crit_edge145 ], [ 3, %sw.bb.config_crit_edge146 ], [ 2, %if.end32.config_crit_edge ], [ 2, %if.end32.config_crit_edge133 ], [ 2, %if.end32.config_crit_edge134 ]
  %notmask = shl nsw i32 -1, %rmask_bits.0
  %sub61 = xor i32 %notmask, -1
  %61 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bit, align 1
  %conv62 = zext i8 %62 to i32
  %add63 = add nuw nsw i32 %conv62, 16
  %shl64 = shl i32 %sub61, %add63
  %shr65 = lshr i32 %shl64, 16
  %or66 = or i32 %shr65, %shl64
  %shl68 = shl i32 %ret.1, %conv62
  %or69 = or i32 %shl64, %shl68
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %65 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg, align 4
  %call.i124 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef %66, i32 noundef %or66, i32 noundef %or69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %config, %do.end58, %do.end52, %if.end41, %sw.bb35.cleanup_crit_edge, %do.end31
  %retval.0 = phi i32 [ %call.i124, %config ], [ %ret.0.ph, %do.end31 ], [ -22, %do.end58 ], [ -22, %do.end52 ], [ %call.i123, %if.end41 ], [ %call.i, %sw.bb35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_set_schmitt(ptr noundef %bank, i32 noundef %pin_num, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  %regmap = alloca ptr, align 4
  %reg = alloca i32, align 4
  %bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %ctrl1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 4
  %dev2 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regmap) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %regmap, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #10
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bit, align 1, !annotation !311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_set_schmitt.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_set_schmitt, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %9 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_set_schmitt.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %pin_num, i32 noundef %enable) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %schmitt_calc_reg = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %schmitt_calc_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %schmitt_calc_reg, align 4
  %call6 = call i32 %12(ptr noundef %bank, i32 noundef %pin_num, ptr noundef nonnull %regmap, ptr noundef nonnull %reg, ptr noundef nonnull %bit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cond36 = icmp eq i32 %14, 10
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bit, align 1
  %conv10 = zext i8 %16 to i32
  br i1 %cond36, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 196608, %conv10
  %shr = lshr exact i32 %shl, 16
  %or = or i32 %shr, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool11.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool11.not, i32 1, i32 2
  %shl13 = shl i32 %cond, %conv10
  %or14 = or i32 %shl, %shl13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %shl1748 = or i32 %enable, 65536
  %or20 = shl i32 %shl1748, %conv10
  %or26 = shl i32 65537, %conv10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %data.0 = phi i32 [ %or14, %sw.bb ], [ %or20, %sw.default ]
  %rmask.0 = phi i32 [ %or, %sw.bb ], [ %or26, %sw.default ]
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef %rmask.0, i32 noundef %data.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ %call6, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regmap) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pinctrl_parse_functions(ptr noundef %np, ptr nocapture noundef readonly %info, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pinctrl_parse_functions.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pinctrl_parse_functions, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pinctrl_parse_functions.__UNIQUE_ID_ddebug230, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %index, ptr noundef %np) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %functions = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 10
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.rockchip_pmx_func, ptr %3, i32 %index
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx, align 4
  %call.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #10
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %ngroups62 = getelementptr %struct.rockchip_pmx_func, ptr %3, i32 %index, i32 2
  %7 = ptrtoint ptr %ngroups62 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ngroups62, align 4
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %do.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #10
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  %conv = trunc i32 %inc.i to i8
  %ngroups = getelementptr %struct.rockchip_pmx_func, ptr %3, i32 %index, i32 2
  %8 = ptrtoint ptr %ngroups to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %ngroups, align 4
  %conv8 = and i32 %inc.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp = icmp eq i32 %conv8, 0
  br i1 %cmp, label %of_get_child_count.exit.cleanup_crit_edge, label %devm_kcalloc.exit

of_get_child_count.exit.cleanup_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %9 = shl nuw nsw i32 %conv8, 2
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %9, i32 noundef 3520) #10
  %groups = getelementptr %struct.rockchip_pmx_func, ptr %3, i32 %index, i32 1
  %10 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %groups, align 4
  %tobool16.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool16.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end18

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %devm_kcalloc.exit
  %call19 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #10
  %cmp20.not69 = icmp eq ptr %call19, null
  br i1 %cmp20.not69, label %if.end18.cleanup_crit_edge, label %for.body.lr.ph

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end18
  %groups25 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.inc.for.body_crit_edge ]
  %child.070 = phi ptr [ %call19, %for.body.lr.ph ], [ %call32, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %child.070 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %child.070, align 4
  %13 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %groups, align 4
  %arrayidx24 = getelementptr ptr, ptr %14, i32 %i.071
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %arrayidx24, align 4
  %16 = ptrtoint ptr %groups25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %groups25, align 4
  %18 = load i32, ptr @rockchip_pinctrl_parse_functions.grp_index, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr @rockchip_pinctrl_parse_functions.grp_index, align 4
  %arrayidx26 = getelementptr %struct.rockchip_pin_group, ptr %17, i32 %18
  %call28 = tail call fastcc i32 @rockchip_pinctrl_parse_groups(ptr noundef nonnull %child.070, ptr noundef %arrayidx26, ptr noundef %info, i32 noundef %i.071)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.inc, label %if.then30

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_node_put(ptr noundef nonnull %child.070) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc27 = add i32 %i.071, 1
  %call32 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.070) #10
  %cmp20.not = icmp eq ptr %call32, null
  br i1 %cmp20.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then30, %if.end18.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %of_get_child_count.exit.cleanup_crit_edge, %of_get_child_count.exit.thread
  %retval.0 = phi i32 [ %call28, %if.then30 ], [ 0, %of_get_child_count.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %of_get_child_count.exit.thread ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pinctrl_parse_groups(ptr noundef %np, ptr nocapture noundef %grp, ptr nocapture noundef readonly %info, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #10
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pinctrl_parse_groups.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_pinctrl_parse_groups, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pinctrl_parse_groups.__UNIQUE_ID_ddebug229, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %index, ptr noundef %np) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %5 = ptrtoint ptr %grp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %grp, align 4
  %call6 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.62, ptr noundef nonnull %size) #10
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %div87 = lshr i32 %7, 2
  store i32 %div87, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %tobool7.not = icmp ugt i32 %7, 3
  %8 = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  %or.cond = and i1 %tobool7.not, %tobool8.not
  br i1 %or.cond, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %1, i32 noundef -22, ptr noundef nonnull @.str.63) #10
  br label %cleanup50

if.end11:                                         ; preds = %do.end
  %div1288 = lshr i32 %7, 4
  %npins = getelementptr inbounds %struct.rockchip_pin_group, ptr %grp, i32 0, i32 1
  %9 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div1288, ptr %npins, align 4
  %10 = shl nuw nsw i32 %div1288, 2
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %10, i32 noundef 3520) #10
  %pins = getelementptr inbounds %struct.rockchip_pin_group, ptr %grp, i32 0, i32 2
  %11 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %pins, align 4
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins, align 4
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 12) #10
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit93.thread, label %devm_kcalloc.exit93, !prof !312

devm_kcalloc.exit93.thread:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %data97 = getelementptr inbounds %struct.rockchip_pin_group, ptr %grp, i32 0, i32 3
  %16 = ptrtoint ptr %data97 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %data97, align 4
  br label %cleanup50

devm_kcalloc.exit93:                              ; preds = %if.end11
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i90 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %17, i32 noundef 3520) #10
  %data = getelementptr inbounds %struct.rockchip_pin_group, ptr %grp, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i90, ptr %data, align 4
  %19 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pins, align 4
  %tobool18.not = icmp eq ptr %20, null
  %tobool21.not = icmp eq ptr %call5.i.i90, null
  %or.cond89 = select i1 %tobool18.not, i1 true, i1 %tobool21.not
  br i1 %or.cond89, label %devm_kcalloc.exit93.cleanup50_crit_edge, label %for.cond.preheader

devm_kcalloc.exit93.cleanup50_crit_edge:          ; preds = %devm_kcalloc.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond.preheader:                               ; preds = %devm_kcalloc.exit93
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp109 = icmp sgt i32 %22, 0
  br i1 %cmp109, label %for.body.lr.ph, label %for.cond.preheader.cleanup50_crit_edge

for.cond.preheader.cleanup50_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctrl.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %info, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %add49, %for.inc.for.body_crit_edge ]
  %list.0110 = phi ptr [ %call6, %for.body.lr.ph ], [ %incdec.ptr34, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %list.0110, i32 1
  %23 = ptrtoint ptr %list.0110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %list.0110, align 4
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl.i, align 4
  %nr_banks.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.not.i = icmp eq i32 %28, 0
  br i1 %cmp9.not.i, label %for.body.if.then26_crit_edge, label %for.body.preheader.i

for.body.if.then26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

for.body.preheader.i:                             ; preds = %for.body
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %b.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %30, %for.body.preheader.i ]
  %bank_num.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.010.i, i32 0, i32 10
  %31 = ptrtoint ptr %bank_num.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bank_num.i, align 4
  %conv.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp2.i = icmp eq i32 %24, %conv.i
  br i1 %cmp2.i, label %bank_num_to_bank.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %incdec.ptr.i = getelementptr %struct.rockchip_pin_bank, ptr %b.010.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.inc.i.if.then26_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then26_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

bank_num_to_bank.exit:                            ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %b.010.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bank_num_to_bank.exit.if.then26_crit_edge, label %if.end28

bank_num_to_bank.exit.if.then26_crit_edge:        ; preds = %bank_num_to_bank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %bank_num_to_bank.exit.if.then26_crit_edge, %for.inc.i.if.then26_crit_edge, %for.body.if.then26_crit_edge
  %retval.0.i94103 = phi ptr [ inttoptr (i32 -22 to ptr), %for.inc.i.if.then26_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.if.then26_crit_edge ], [ %b.010.i, %bank_num_to_bank.exit.if.then26_crit_edge ]
  %33 = ptrtoint ptr %retval.0.i94103 to i32
  br label %cleanup50

if.end28:                                         ; preds = %bank_num_to_bank.exit
  %pin_base = getelementptr inbounds %struct.rockchip_pin_bank, ptr %b.010.i, i32 0, i32 7
  %34 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pin_base, align 4
  %incdec.ptr29 = getelementptr i32, ptr %list.0110, i32 2
  %36 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr, align 4
  %add = add i32 %37, %35
  %38 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %39, i32 %j.0112
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %arrayidx, align 4
  %incdec.ptr31 = getelementptr i32, ptr %list.0110, i32 3
  %41 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr29, align 4
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %arrayidx33 = getelementptr %struct.rockchip_pin_config, ptr %44, i32 %j.0112
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %arrayidx33, align 4
  %incdec.ptr34 = getelementptr i32, ptr %list.0110, i32 4
  %tobool35.not = icmp eq ptr %incdec.ptr31, null
  br i1 %tobool35.not, label %if.end28.cleanup50_crit_edge, label %cleanup

if.end28.cleanup50_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

cleanup:                                          ; preds = %if.end28
  %46 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr31, align 4
  %call39 = call ptr @of_find_node_by_phandle(i32 noundef %47) #10
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %configs = getelementptr %struct.rockchip_pin_config, ptr %49, i32 %j.0112, i32 1
  %nconfigs = getelementptr %struct.rockchip_pin_config, ptr %49, i32 %j.0112, i32 2
  %call44 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %call39, ptr noundef null, ptr noundef %configs, ptr noundef %nconfigs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.inc, label %cleanup.cleanup50_crit_edge

cleanup.cleanup50_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.inc:                                          ; preds = %cleanup
  %add49 = add i32 %i.0111, 4
  %inc = add i32 %j.0112, 1
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %add49, %51
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup50_crit_edge

for.inc.cleanup50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup50:                                        ; preds = %for.inc.cleanup50_crit_edge, %cleanup.cleanup50_crit_edge, %if.end28.cleanup50_crit_edge, %if.then26, %for.cond.preheader.cleanup50_crit_edge, %devm_kcalloc.exit93.cleanup50_crit_edge, %devm_kcalloc.exit93.thread, %if.then9
  %retval.2 = phi i32 [ %call10, %if.then9 ], [ -12, %devm_kcalloc.exit93.cleanup50_crit_edge ], [ -12, %devm_kcalloc.exit93.thread ], [ %33, %if.then26 ], [ 0, %for.cond.preheader.cleanup50_crit_edge ], [ %call44, %cleanup.cleanup50_crit_edge ], [ 0, %for.inc.cleanup50_crit_edge ], [ -22, %if.end28.cleanup50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #10
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @px30_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 80, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv3, 4
  %add = add nuw nsw i32 %mul, 80
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 16, %if.then ]
  %div = sdiv i32 %pin_num, 8
  %mul4 = shl nsw i32 %div, 2
  %add5 = add nsw i32 %storemerge, %mul4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5, ptr %reg, align 4
  %14 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %14
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv9 = shl nsw i8 %rem.tr, 1
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @px30_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 224, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv3, 4
  %add = add nuw nsw i32 %mul, 224
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 32, %if.then ]
  %div = sdiv i32 %pin_num, 8
  %mul4 = shl nsw i32 %div, 2
  %add5 = add nsw i32 %storemerge, %mul4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5, ptr %reg, align 4
  %14 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %14
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv9 = shl nsw i8 %rem.tr, 1
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @px30_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 192, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %12 to i32
  %sub = shl nuw nsw i32 %conv3, 4
  %add = add nuw nsw i32 %sub, 176
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 56, %if.then ]
  %pins_per_reg.0 = phi i32 [ 8, %if.else ], [ 16, %if.then ]
  %div = sdiv i32 %pin_num, %pins_per_reg.0
  %mul4 = shl nsw i32 %div, 2
  %add5 = add i32 %mul4, %storemerge
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5, ptr %reg, align 4
  %14 = mul i32 %div, %pins_per_reg.0
  %rem.decomposed = sub i32 %pin_num, %14
  %conv6 = trunc i32 %rem.decomposed to i8
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %bit, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rv1108_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 272, ptr %reg, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regmap, align 4
  %11 = load i32, ptr %reg, align 4
  %sub = add i32 %11, -16
  store i32 %sub, ptr %reg, align 4
  %12 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %13 to i32
  %mul = shl nuw nsw i32 %conv3, 4
  %add = add i32 %mul, %sub
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 16, %if.then ]
  %div = sdiv i32 %pin_num, 8
  %mul4 = shl nsw i32 %div, 2
  %add5 = add i32 %storemerge, %mul4
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add5, ptr %reg, align 4
  %15 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %15
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv9 = shl nsw i8 %rem.tr, 1
  %16 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rv1108_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv3, 4
  %add = add nuw nsw i32 %mul, 512
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 32, %if.then ]
  %div = sdiv i32 %pin_num, 8
  %mul4 = shl nsw i32 %div, 2
  %add5 = add nsw i32 %storemerge, %mul4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5, ptr %reg, align 4
  %14 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %14
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv9 = shl nsw i8 %rem.tr, 1
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rv1108_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 904, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %12 to i32
  %sub = shl nuw nsw i32 %conv3, 3
  %add = add nuw nsw i32 %sub, 896
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 48, %if.then ]
  %pins_per_reg.0 = phi i32 [ 16, %if.else ], [ 8, %if.then ]
  %div = sdiv i32 %pin_num, %pins_per_reg.0
  %mul4 = shl nsw i32 %div, 2
  %add5 = add i32 %mul4, %storemerge
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5, ptr %reg, align 4
  %14 = mul i32 %div, %pins_per_reg.0
  %rem.decomposed = sub i32 %pin_num, %14
  %conv6 = trunc i32 %rem.decomposed to i8
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %bit, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk2928_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 280, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %div = sdiv i32 %pin_num, 16
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 280
  %add2 = add nsw i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 16
  %rem.decomposed = sub i32 %pin_num, %8
  %conv3 = trunc i32 %rem.decomposed to i8
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3128_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 280, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %div = sdiv i32 %pin_num, 16
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 280
  %add2 = add nsw i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 16
  %rem.decomposed = sub i32 %pin_num, %8
  %conv3 = trunc i32 %rem.decomposed to i8
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3188_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %pin_num)
  %cmp2 = icmp slt i32 %pin_num, 12
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pull = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_pull to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_pull, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.false ], [ %5, %if.then.cond.end_crit_edge ]
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %regmap, align 4
  %9 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_pmu, align 4
  %tobool6.not = icmp eq ptr %10, null
  %cond7 = select i1 %tobool6.not, i32 0, i32 100
  %div = sdiv i32 %pin_num, 8
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %cond7, %mul
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %reg, align 4
  %rem = srem i32 %pin_num, 8
  %rem.tr = trunc i32 %rem to i8
  %conv11 = shl nsw i8 %rem.tr, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %regmap_pull12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regmap_pull12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_pull12, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %cond.false16, label %if.else.cond.end17_crit_edge

if.else.cond.end17_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17

cond.false16:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %if.else.cond.end17_crit_edge
  %cond18 = phi ptr [ %15, %cond.false16 ], [ %13, %if.else.cond.end17_crit_edge ]
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond18, ptr %regmap, align 4
  %17 = ptrtoint ptr %regmap_pull12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap_pull12, align 4
  %tobool20.not = icmp eq ptr %18, null
  %sub = select i1 %tobool20.not, i32 352, i32 -4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %reg, align 4
  %20 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bank_num, align 4
  %conv23 = zext i8 %21 to i32
  %mul24 = shl nuw nsw i32 %conv23, 4
  %div26 = sdiv i32 %pin_num, 8
  %mul27 = shl nsw i32 %div26, 2
  %add25 = add nsw i32 %sub, %mul27
  %add28 = add i32 %add25, %mul24
  store i32 %add28, ptr %reg, align 4
  %22 = mul i32 %div26, 8
  %rem29.decomposed = sub i32 %pin_num, %22
  %23 = trunc i32 %rem29.decomposed to i8
  %24 = mul nsw i8 %23, -2
  %conv34 = add nsw i8 %24, 14
  br label %if.end

if.end:                                           ; preds = %cond.end17, %cond.end
  %storemerge = phi i8 [ %conv34, %cond.end17 ], [ %conv11, %cond.end ]
  %25 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3228_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %div = sdiv i32 %pin_num, 8
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 256
  %add2 = add i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %8
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv6 = shl nsw i8 %rem.tr, 1
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3228_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %div = sdiv i32 %pin_num, 8
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 512
  %add2 = add i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %8
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv6 = shl nsw i8 %rem.tr, 1
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3288_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %div = sdiv i32 %pin_num, 8
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 100
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 304, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv7 = zext i8 %12 to i32
  %mul8 = shl nuw nsw i32 %conv7, 4
  %div10 = sdiv i32 %pin_num, 8
  %mul11 = shl nsw i32 %div10, 2
  %add9 = add nsw i32 %mul11, 304
  %add12 = add i32 %add9, %mul8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge33 = phi i32 [ %add, %if.then ], [ %add12, %if.else ]
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge33, ptr %reg, align 4
  %storemerge.in.in = srem i32 %pin_num, 8
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = shl nsw i8 %storemerge.in, 1
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3288_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %div = sdiv i32 %pin_num, 8
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 112
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 432, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv7 = zext i8 %12 to i32
  %mul8 = shl nuw nsw i32 %conv7, 4
  %div10 = sdiv i32 %pin_num, 8
  %mul11 = shl nsw i32 %div10, 2
  %add9 = add nsw i32 %mul11, 432
  %add12 = add i32 %add9, %mul8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge33 = phi i32 [ %add, %if.then ], [ %add12, %if.else ]
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge33, ptr %reg, align 4
  %storemerge.in.in = srem i32 %pin_num, 8
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = shl nsw i8 %storemerge.in, 1
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3308_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 160, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %div = sdiv i32 %pin_num, 8
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 160
  %add2 = add i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %8
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv6 = shl nsw i8 %rem.tr, 1
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3308_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %div = sdiv i32 %pin_num, 8
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 256
  %add2 = add i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %8
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv6 = shl nsw i8 %rem.tr, 1
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3308_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 416, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %div = sdiv i32 %pin_num, 8
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 416
  %add2 = add i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %8
  %conv3 = trunc i32 %rem.decomposed to i8
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %bit, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3328_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 896, ptr %reg, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %6 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_num, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %div = sdiv i32 %pin_num, 16
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 896
  %add2 = add nsw i32 %add, %mul
  store i32 %add2, ptr %reg, align 4
  %8 = mul i32 %div, 16
  %rem.decomposed = sub i32 %pin_num, %8
  %conv3 = trunc i32 %rem.decomposed to i8
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %bit, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3368_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %div = sdiv i32 %pin_num, 8
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 240, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv7 = zext i8 %12 to i32
  %mul8 = shl nuw nsw i32 %conv7, 4
  %div10 = sdiv i32 %pin_num, 8
  %mul11 = shl nsw i32 %div10, 2
  %add9 = add nsw i32 %mul11, 240
  %add12 = add i32 %add9, %mul8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge33 = phi i32 [ %add, %if.then ], [ %add12, %if.else ]
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge33, ptr %reg, align 4
  %storemerge.in.in = srem i32 %pin_num, 8
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = shl nsw i8 %storemerge.in, 1
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3368_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %div = sdiv i32 %pin_num, 8
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 496, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv7 = zext i8 %12 to i32
  %mul8 = shl nuw nsw i32 %conv7, 4
  %div10 = sdiv i32 %pin_num, 8
  %mul11 = shl nsw i32 %div10, 2
  %add9 = add nsw i32 %mul11, 496
  %add12 = add i32 %add9, %mul8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge33 = phi i32 [ %add, %if.then ], [ %add12, %if.else ]
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge33, ptr %reg, align 4
  %storemerge.in.in = srem i32 %pin_num, 8
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = shl nsw i8 %storemerge.in, 1
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3399_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch = icmp ult i8 %3, 2
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %.sink48 = select i1 %switch, ptr %regmap_pmu, ptr %1
  %.sink46 = select i1 %switch, i32 64, i32 57376
  %4 = ptrtoint ptr %.sink48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.sink48, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink46, ptr %reg, align 4
  %8 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank_num, align 4
  %conv15 = zext i8 %9 to i32
  %mul16 = shl nuw nsw i32 %conv15, 4
  %div18 = sdiv i32 %pin_num, 8
  %mul19 = shl nsw i32 %div18, 2
  %add17 = add nsw i32 %mul19, %.sink46
  %add20 = add i32 %add17, %mul16
  store i32 %add20, ptr %reg, align 4
  %10 = mul i32 %div18, 8
  %storemerge.in.in.decomposed = sub i32 %pin_num, %10
  %storemerge.in = trunc i32 %storemerge.in.in.decomposed to i8
  %storemerge = shl nsw i8 %storemerge.in, 1
  %11 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3399_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %div = sdiv i32 %pin_num, 8
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch = icmp ult i8 %3, 2
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %spec.select = select i1 %switch, ptr %regmap_pmu, ptr %1
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge = load ptr, ptr %spec.select, align 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %storemerge, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 12, i32 %div
  %offset = getelementptr %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 12, i32 %div, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %10, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch36 = icmp ult i32 %.off, 2
  %11 = mul i32 %div, 8
  %rem19.decomposed = sub i32 %pin_num, %11
  %rem19.tr = trunc i32 %rem19.decomposed to i8
  %conv21 = shl nsw i8 %rem19.tr, 1
  %conv17 = mul nsw i8 %rem19.tr, 3
  %storemerge35 = select i1 %switch36, i8 %conv17, i8 %conv21
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %storemerge35, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3568_calc_pull_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %.sink42 = select i1 %cmp, ptr %regmap_pmu, ptr %1
  %.sink40 = select i1 %cmp, i32 32, i32 128
  %.sink = select i1 %cmp, i32 32, i32 112
  %4 = ptrtoint ptr %.sink42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.sink42, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink40, ptr %reg, align 4
  %8 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank_num, align 4
  %conv11 = zext i8 %9 to i32
  %sub = shl nuw nsw i32 %conv11, 4
  %div14 = sdiv i32 %pin_num, 8
  %mul15 = shl nsw i32 %div14, 2
  %add13 = add nsw i32 %mul15, %.sink
  %add16 = add i32 %add13, %sub
  store i32 %add16, ptr %reg, align 4
  %10 = mul i32 %div14, 8
  %storemerge.in.in.decomposed = sub i32 %pin_num, %10
  %storemerge.in = trunc i32 %storemerge.in.in.decomposed to i8
  %storemerge = shl nsw i8 %storemerge.in, 1
  %11 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3568_calc_drv_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  %div = sdiv i32 %pin_num, 2
  %mul = shl i32 %div, 2
  %add = add i32 %mul, 112
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv7 = zext i8 %12 to i32
  %sub = shl nuw nsw i32 %conv7, 6
  %div10 = sdiv i32 %pin_num, 2
  %mul11 = shl i32 %div10, 2
  %add9 = add i32 %mul11, 448
  %add12 = add i32 %add9, %sub
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge32 = phi i32 [ %add, %if.then ], [ %add12, %if.else ]
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge32, ptr %reg, align 4
  %storemerge.in.in = srem i32 %pin_num, 2
  %storemerge.in = trunc i32 %storemerge.in.in to i8
  %storemerge = shl nsw i8 %storemerge.in, 3
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %bit, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3568_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %bank, i32 noundef %pin_num, ptr nocapture noundef writeonly %regmap, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %bit) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 16
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %bank_num = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank, i32 0, i32 10
  %2 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap_pmu = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_pmu, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 192, ptr %reg, align 4
  %11 = ptrtoint ptr %bank_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank_num, align 4
  %conv3 = zext i8 %12 to i32
  %sub = shl nuw nsw i32 %conv3, 4
  %add = add nuw nsw i32 %sub, 176
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ 48, %if.then ]
  %div = sdiv i32 %pin_num, 8
  %mul4 = shl nsw i32 %div, 2
  %add5 = add nsw i32 %storemerge, %mul4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5, ptr %reg, align 4
  %14 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin_num, %14
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv9 = shl nsw i8 %rem.tr, 1
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %bit, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctl_dev = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl_dev, align 4
  %call1 = tail call i32 @pinctrl_force_sleep(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp eq i32 %7, 6
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 100, ptr noundef nonnull @rk3288_grf_gpio6c_iomux) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pctl_dev, align 4
  %call7 = tail call i32 @pinctrl_force_default(ptr noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctrl = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %type = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = load i32, ptr @rk3288_grf_gpio6c_iomux, align 4
  %or = or i32 %8, 268435456
  %call1 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 100, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %pctl_dev = getelementptr inbounds %struct.rockchip_pinctrl, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pctl_dev, align 4
  %call4 = tail call i32 @pinctrl_force_default(ptr noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !31, !33, !35, !37, !38, !40, !41, !42, !43, !44, !46, !48, !49, !51, !53, !55, !56, !57, !58, !59, !60, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !148, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @__initcall__kmod_pinctrl_rockchip__234_3241_rockchip_pinctrl_drv_register2, !1, !"__initcall__kmod_pinctrl_rockchip__234_3241_rockchip_pinctrl_drv_register2", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3241, i32 1}
!2 = !{ptr @__exitcall_rockchip_pinctrl_drv_unregister, !3, !"__exitcall_rockchip_pinctrl_drv_unregister", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3247, i32 1}
!4 = !{ptr @__UNIQUE_ID_description235, !5, !"__UNIQUE_ID_description235", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3249, i32 1}
!6 = !{ptr @__UNIQUE_ID_file236, !7, !"__UNIQUE_ID_file236", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3250, i32 1}
!8 = !{ptr @__UNIQUE_ID_license237, !7, !"__UNIQUE_ID_license237", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias238, !10, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3251, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3231, i32 11}
!13 = !{ptr @rockchip_pinctrl_driver, !14, !"rockchip_pinctrl_driver", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3227, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2680, i32 38}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2690, i32 38}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2693, i32 30}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2704, i32 33}
!23 = !{ptr @rockchip_pinctrl_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2706, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2718, i32 34}
!28 = !{ptr @rockchip_pinctrl_probe._key.7, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2720, i32 5}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2725, i32 30}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2740, i32 34}
!35 = !{ptr @rockchip_pinctrl_get_soc_data.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2528, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2564, i32 4}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rockchip_pinctrl_get_soc_data.__UNIQUE_ID_ddebug233, !39, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!44 = !{ptr @rockchip_regmap_config, !45, !"rockchip_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 200, i32 29}
!46 = !{ptr @rockchip_pinctrl_register.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2489, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2498, i32 54}
!51 = !{ptr @rockchip_pctrl_ops, !52, !"rockchip_pctrl_ops", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 348, i32 33}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 302, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rockchip_dt_node_to_map._entry, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @rockchip_dt_node_to_map._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 336, i32 2}
!62 = !{ptr @rockchip_dt_node_to_map.__UNIQUE_ID_ddebug223, !61, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!63 = !{ptr @rockchip_pmx_ops, !64, !"rockchip_pmx_ops", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2063, i32 32}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2037, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rockchip_pmx_set.__UNIQUE_ID_ddebug228, !66, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 928, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rockchip_set_mux.__UNIQUE_ID_ddebug224, !70, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 884, i32 3}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rockchip_verify_mux._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rockchip_verify_mux._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 890, i32 4}
!80 = !{ptr @rockchip_verify_mux._entry.29, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rockchip_verify_mux._entry_ptr.31, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @rockchip_pinconf_ops, !83, !"rockchip_pinconf_ops", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2285, i32 33}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1805, i32 3}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rockchip_get_pull._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rockchip_get_pull._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @rockchip_pull_list, !90, !"rockchip_pull_list", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1751, i32 12}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 835, i32 3}
!93 = !{ptr @rockchip_get_mux._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rockchip_get_mux._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1626, i32 4}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rockchip_get_drive_perpin._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @rockchip_get_drive_perpin._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1638, i32 3}
!102 = !{ptr @rockchip_get_drive_perpin._entry.37, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rockchip_get_drive_perpin._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @rockchip_perpin_drv_list, !105, !"rockchip_perpin_drv_list", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1567, i32 12}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1821, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rockchip_set_pull.__UNIQUE_ID_ddebug226, !107, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1864, i32 4}
!112 = !{ptr @rockchip_set_pull._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @rockchip_set_pull._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @rockchip_set_pull._entry.43, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1876, i32 3}
!116 = !{ptr @rockchip_set_pull._entry_ptr.44, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1664, i32 2}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rockchip_set_drive_perpin.__UNIQUE_ID_ddebug225, !118, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1686, i32 3}
!123 = !{ptr @rockchip_set_drive_perpin._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rockchip_set_drive_perpin._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @rockchip_set_drive_perpin._entry.48, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1725, i32 4}
!127 = !{ptr @rockchip_set_drive_perpin._entry_ptr.49, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @rockchip_set_drive_perpin._entry.50, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1736, i32 3}
!130 = !{ptr @rockchip_set_drive_perpin._entry_ptr.51, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 1973, i32 2}
!133 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rockchip_set_schmitt.__UNIQUE_ID_ddebug227, !132, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2422, i32 2}
!137 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug231, !136, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2423, i32 2}
!141 = !{ptr @rockchip_pinctrl_parse_dt.__UNIQUE_ID_ddebug232, !140, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2441, i32 4}
!144 = !{ptr @rockchip_pinctrl_parse_dt._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rockchip_pinctrl_parse_dt._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @rockchip_bank_match, !147, !"rockchip_bank_match", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2291, i32 34}
!148 = !{ptr @rockchip_pinctrl_parse_functions.grp_index, !149, !"grp_index", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2381, i32 13}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2384, i32 2}
!152 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @rockchip_pinctrl_parse_functions.__UNIQUE_ID_ddebug230, !151, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2324, i32 2}
!156 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @rockchip_pinctrl_parse_groups.__UNIQUE_ID_ddebug229, !155, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2333, i32 29}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2337, i32 38}
!162 = !{ptr @rockchip_pinctrl_dt_match, !163, !"rockchip_pinctrl_dt_match", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3193, i32 34}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2796, i32 14}
!166 = !{ptr @px30_pin_ctrl, !167, !"px30_pin_ctrl", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2793, i32 33}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2771, i32 2}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2776, i32 2}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2781, i32 2}
!174 = !{ptr @.str.68, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2786, i32 2}
!176 = !{ptr @px30_pin_banks, !177, !"px30_pin_banks", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2770, i32 33}
!178 = !{ptr @px30_mux_route_data, !179, !"px30_mux_route_data", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 597, i32 39}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2820, i32 13}
!182 = !{ptr @rv1108_pin_ctrl, !183, !"rv1108_pin_ctrl", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2817, i32 33}
!184 = !{ptr @rv1108_pin_banks, !185, !"rv1108_pin_banks", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2807, i32 33}
!186 = !{ptr @rv1108_mux_recalced_data, !187, !"rv1108_mux_recalced_data", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 360, i32 42}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2841, i32 14}
!190 = !{ptr @rk2928_pin_ctrl, !191, !"rk2928_pin_ctrl", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2838, i32 33}
!192 = !{ptr @rk2928_pin_banks, !193, !"rk2928_pin_banks", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2831, i32 33}
!194 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2856, i32 14}
!196 = !{ptr @rk3036_pin_ctrl, !197, !"rk3036_pin_ctrl", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2853, i32 33}
!198 = !{ptr @rk3036_pin_banks, !199, !"rk3036_pin_banks", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2847, i32 33}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2874, i32 14}
!202 = !{ptr @rk3066a_pin_ctrl, !203, !"rk3066a_pin_ctrl", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2871, i32 33}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2867, i32 2}
!206 = !{ptr @.str.74, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2868, i32 2}
!208 = !{ptr @rk3066a_pin_banks, !209, !"rk3066a_pin_banks", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2862, i32 33}
!210 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2890, i32 13}
!212 = !{ptr @rk3066b_pin_ctrl, !213, !"rk3066b_pin_ctrl", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2887, i32 33}
!214 = !{ptr @rk3066b_pin_banks, !215, !"rk3066b_pin_banks", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2880, i32 33}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2905, i32 14}
!218 = !{ptr @rk3128_pin_ctrl, !219, !"rk3128_pin_ctrl", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2902, i32 33}
!220 = !{ptr @rk3128_pin_banks, !221, !"rk3128_pin_banks", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2895, i32 33}
!222 = !{ptr @rk3128_mux_recalced_data, !223, !"rk3128_mux_recalced_data", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 424, i32 43}
!224 = !{ptr @rk3128_mux_route_data, !225, !"rk3128_mux_route_data", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 608, i32 39}
!226 = !{ptr @.str.77, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2925, i32 14}
!228 = !{ptr @rk3188_pin_ctrl, !229, !"rk3188_pin_ctrl", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2922, i32 33}
!230 = !{ptr @rk3188_pin_banks, !231, !"rk3188_pin_banks", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2915, i32 33}
!232 = !{ptr @rk3188_mux_route_data, !233, !"rk3188_mux_route_data", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 618, i32 39}
!234 = !{ptr @.str.78, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2943, i32 14}
!236 = !{ptr @rk3228_pin_ctrl, !237, !"rk3228_pin_ctrl", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2940, i32 33}
!238 = !{ptr @rk3228_pin_banks, !239, !"rk3228_pin_banks", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2933, i32 33}
!240 = !{ptr @rk3228_mux_route_data, !241, !"rk3228_mux_route_data", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 623, i32 39}
!242 = !{ptr @.str.79, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2987, i32 14}
!244 = !{ptr @rk3288_pin_ctrl, !245, !"rk3288_pin_ctrl", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2984, i32 33}
!246 = !{ptr @.str.80, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2970, i32 2}
!248 = !{ptr @.str.81, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2976, i32 2}
!250 = !{ptr @.str.82, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2981, i32 2}
!252 = !{ptr @rk3288_pin_banks, !253, !"rk3288_pin_banks", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2952, i32 33}
!254 = !{ptr @rk3288_mux_route_data, !255, !"rk3288_mux_route_data", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 644, i32 39}
!256 = !{ptr @.str.83, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3023, i32 14}
!258 = !{ptr @rk3308_pin_ctrl, !259, !"rk3308_pin_ctrl", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3020, i32 33}
!260 = !{ptr @rk3308_pin_banks, !261, !"rk3308_pin_banks", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2997, i32 33}
!262 = !{ptr @rk3308_mux_recalced_data, !263, !"rk3308_mux_recalced_data", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 458, i32 42}
!264 = !{ptr @rk3308_mux_route_data, !265, !"rk3308_mux_route_data", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 649, i32 39}
!266 = !{ptr @.str.84, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3052, i32 14}
!268 = !{ptr @rk3328_pin_ctrl, !269, !"rk3328_pin_ctrl", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3049, i32 33}
!270 = !{ptr @rk3328_pin_banks, !271, !"rk3328_pin_banks", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3035, i32 33}
!272 = !{ptr @rk3328_mux_recalced_data, !273, !"rk3328_mux_recalced_data", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 552, i32 42}
!274 = !{ptr @rk3328_mux_route_data, !275, !"rk3328_mux_route_data", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 678, i32 39}
!276 = !{ptr @.str.85, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3078, i32 14}
!278 = !{ptr @rk3368_pin_ctrl, !279, !"rk3368_pin_ctrl", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3075, i32 33}
!280 = !{ptr @rk3368_pin_banks, !281, !"rk3368_pin_banks", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3064, i32 33}
!282 = !{ptr @.str.86, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3142, i32 14}
!284 = !{ptr @rk3399_pin_ctrl, !285, !"rk3399_pin_ctrl", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3139, i32 33}
!286 = !{ptr @rk3399_pin_banks, !287, !"rk3399_pin_banks", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3086, i32 33}
!288 = !{ptr @rk3399_mux_route_data, !289, !"rk3399_mux_route_data", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 693, i32 39}
!290 = !{ptr @.str.87, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3180, i32 13}
!292 = !{ptr @rk3568_pin_ctrl, !293, !"rk3568_pin_ctrl", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3177, i32 33}
!294 = !{ptr @rk3568_pin_banks, !295, !"rk3568_pin_banks", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 3154, i32 33}
!296 = !{ptr @rk3568_mux_route_data, !297, !"rk3568_mux_route_data", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 701, i32 39}
!298 = !{ptr @rockchip_pinctrl_dev_pm_ops, !299, !"rockchip_pinctrl_dev_pm_ops", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2666, i32 8}
!300 = !{ptr @rk3288_grf_gpio6c_iomux, !301, !"rk3288_grf_gpio6c_iomux", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/pinctrl-rockchip.c", i32 2624, i32 12}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{!"auto-init"}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{i64 2149045449, i64 2149045454, i64 2149045467, i64 2149045511, i64 2149045545, i64 2149045566}
