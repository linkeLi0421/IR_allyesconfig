; ModuleID = '/llk/IR_all_yes/drivers/thermal/rockchip_thermal.c_pt.bc'
source_filename = "../drivers/thermal/rockchip_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rockchip_tsadc_chip = type { [2 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.chip_tsadc_table }
%struct.chip_tsadc_table = type { ptr, i32, i32, i32 }
%struct.tsadc_table = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rockchip_thermal_data = type { ptr, ptr, ptr, [2 x %struct.rockchip_thermal_sensor], ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rockchip_thermal_sensor = type { ptr, ptr, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rockchip_thermal__230_1575_rockchip_thermal_driver_init6 = internal global ptr @rockchip_thermal_driver_init, section ".initcall6.init", align 4
@rockchip_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_thermal_probe, ptr @rockchip_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_rockchip_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_thermal_driver_exit = internal global ptr @rockchip_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [53 x i8] c"rockchip_thermal.description=ROCKCHIP THERMAL Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [39 x i8] c"rockchip_thermal.author=Rockchip, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [55 x i8] c"rockchip_thermal.file=drivers/thermal/rockchip_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [32 x i8] c"rockchip_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [49 x i8] c"rockchip_thermal.alias=platform:rockchip-thermal\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-thermal\00", [47 x i8] zeroinitializer }, align 32
@of_rockchip_thermal_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_tsadc_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@rockchip_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_thermal_suspend, ptr @rockchip_thermal_resume, ptr @rockchip_thermal_suspend, ptr @rockchip_thermal_resume, ptr @rockchip_thermal_suspend, ptr @rockchip_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get tsadc reset: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_thermal_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/thermal/rockchip_thermal.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr = internal global ptr @rockchip_thermal_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsadc\00", [26 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get tsadc clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.9 = internal global ptr @rockchip_thermal_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get apb_pclk clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.13 = internal global ptr @rockchip_thermal_probe._entry.11, section ".printk_index", align 4
@rockchip_thermal_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable converter clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.16 = internal global ptr @rockchip_thermal_probe._entry.14, section ".printk_index", align 4
@rockchip_thermal_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable pclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.19 = internal global ptr @rockchip_thermal_probe._entry.17, section ".printk_index", align 4
@rockchip_thermal_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to parse device tree data: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.22 = internal global ptr @rockchip_thermal_probe._entry.20, section ".printk_index", align 4
@rockchip_thermal_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to register sensor[%d] : error = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.25 = internal global ptr @rockchip_thermal_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip_thermal\00", [47 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request tsadc irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.29 = internal global ptr @rockchip_thermal_probe._entry.27, section ".printk_index", align 4
@rockchip_thermal_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1464, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to register sensor %d with hwmon: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rockchip_thermal_probe._entry_ptr.33 = internal global ptr @rockchip_thermal_probe._entry.30, section ".printk_index", align 4
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip,hw-tshut-temp\00", [41 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1256, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Missing tshut temp property, using default %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_configure_from_dt\00", [37 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr = internal global ptr @rockchip_configure_from_dt._entry, section ".printk_index", align 4
@rockchip_configure_from_dt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 1261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid tshut temperature specified: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr.39 = internal global ptr @rockchip_configure_from_dt._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip,hw-tshut-mode\00", [41 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.3, i32 1271, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Missing tshut mode property, using default (%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr.43 = internal global ptr @rockchip_configure_from_dt._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cru\00", [28 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.3, i32 1279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid tshut mode specified: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr.48 = internal global ptr @rockchip_configure_from_dt._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,hw-tshut-polarity\00", [37 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.3, i32 1288, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Missing tshut-polarity property, using default (%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr.52 = internal global ptr @rockchip_configure_from_dt._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.36, ptr @.str.3, i32 1296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid tshut-polarity specified: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr.57 = internal global ptr @rockchip_configure_from_dt._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.36, ptr @.str.3, i32 1305, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing rockchip,grf property\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_configure_from_dt._entry_ptr.61 = internal global ptr @rockchip_configure_from_dt._entry.59, section ".printk_index", align 4
@rockchip_thermal_register_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: invalid tshut=%d, error=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_thermal_register_sensor\00", [63 x i8] zeroinitializer }, align 32
@rockchip_thermal_register_sensor._entry_ptr = internal global ptr @rockchip_thermal_register_sensor._entry, section ".printk_index", align 4
@rockchip_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @rockchip_thermal_get_temp, ptr null, ptr @rockchip_thermal_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_thermal_register_sensor._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 1334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register sensor %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_thermal_register_sensor._entry_ptr.66 = internal global ptr @rockchip_thermal_register_sensor._entry.64, section ".printk_index", align 4
@rockchip_thermal_get_temp.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_thermal_get_temp\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sensor %d - temp: %d, retval: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_thermal_set_trips.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_thermal_set_trips\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: sensor %d: low: %d, high %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rockchip_thermal_alarm_irq_thread\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"thermal alarm\0A\00", [17 x i8] zeroinitializer }, align 32
@px30_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 0, i32 0, ptr @rk_tsadcv4_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3328_code_table, i32 35, i32 4095, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rv1108_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] zeroinitializer, i32 1, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rv1108_table, i32 36, i32 4095, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3228_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] zeroinitializer, i32 1, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3228_code_table, i32 36, i32 1023, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3288_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] [i32 1, i32 2], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv2_irq_ack, ptr @rk_tsadcv2_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3288_code_table, i32 36, i32 4095, i32 0 } }, [60 x i8] zeroinitializer }, align 32
@rk3328_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] zeroinitializer, i32 1, i32 95000, i32 0, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3328_code_table, i32 35, i32 4095, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3366_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv3_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3228_code_table, i32 36, i32 1023, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3368_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv2_irq_ack, ptr @rk_tsadcv2_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3368_code_table, i32 36, i32 1023, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3399_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv3_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3399_code_table, i32 36, i32 1023, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3568_tsadc_data = internal constant { %struct.rockchip_tsadc_chip, [60 x i8] } { %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv7_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3568_code_table, i32 36, i32 4095, i32 1 } }, [60 x i8] zeroinitializer }, align 32
@rk3328_code_table = internal constant { [35 x %struct.tsadc_table], [72 x i8] } { [35 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 296, i32 -40000 }, %struct.tsadc_table { i32 304, i32 -35000 }, %struct.tsadc_table { i32 313, i32 -30000 }, %struct.tsadc_table { i32 331, i32 -20000 }, %struct.tsadc_table { i32 340, i32 -15000 }, %struct.tsadc_table { i32 349, i32 -10000 }, %struct.tsadc_table { i32 359, i32 -5000 }, %struct.tsadc_table { i32 368, i32 0 }, %struct.tsadc_table { i32 378, i32 5000 }, %struct.tsadc_table { i32 388, i32 10000 }, %struct.tsadc_table { i32 398, i32 15000 }, %struct.tsadc_table { i32 408, i32 20000 }, %struct.tsadc_table { i32 418, i32 25000 }, %struct.tsadc_table { i32 429, i32 30000 }, %struct.tsadc_table { i32 440, i32 35000 }, %struct.tsadc_table { i32 451, i32 40000 }, %struct.tsadc_table { i32 462, i32 45000 }, %struct.tsadc_table { i32 473, i32 50000 }, %struct.tsadc_table { i32 485, i32 55000 }, %struct.tsadc_table { i32 496, i32 60000 }, %struct.tsadc_table { i32 508, i32 65000 }, %struct.tsadc_table { i32 521, i32 70000 }, %struct.tsadc_table { i32 533, i32 75000 }, %struct.tsadc_table { i32 546, i32 80000 }, %struct.tsadc_table { i32 559, i32 85000 }, %struct.tsadc_table { i32 572, i32 90000 }, %struct.tsadc_table { i32 586, i32 95000 }, %struct.tsadc_table { i32 600, i32 100000 }, %struct.tsadc_table { i32 614, i32 105000 }, %struct.tsadc_table { i32 629, i32 110000 }, %struct.tsadc_table { i32 644, i32 115000 }, %struct.tsadc_table { i32 659, i32 120000 }, %struct.tsadc_table { i32 675, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], [72 x i8] zeroinitializer }, align 32
@rk_tsadcv2_code_to_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: unknown table mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rk_tsadcv2_code_to_temp\00", [40 x i8] zeroinitializer }, align 32
@rk_tsadcv2_code_to_temp._entry_ptr = internal global ptr @rk_tsadcv2_code_to_temp._entry, section ".printk_index", align 4
@rk_tsadcv2_temp_to_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.75, ptr @.str.3, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rk_tsadcv2_temp_to_code\00", [40 x i8] zeroinitializer }, align 32
@rk_tsadcv2_temp_to_code._entry_ptr = internal global ptr @rk_tsadcv2_temp_to_code._entry, section ".printk_index", align 4
@rk_tsadcv2_temp_to_code._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: invalid temperature, temp=%d error=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@rk_tsadcv2_temp_to_code._entry_ptr.78 = internal global ptr @rk_tsadcv2_temp_to_code._entry.76, section ".printk_index", align 4
@rv1108_table = internal constant { [36 x %struct.tsadc_table], [64 x i8] } { [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 374, i32 -40000 }, %struct.tsadc_table { i32 382, i32 -35000 }, %struct.tsadc_table { i32 389, i32 -30000 }, %struct.tsadc_table { i32 397, i32 -25000 }, %struct.tsadc_table { i32 405, i32 -20000 }, %struct.tsadc_table { i32 413, i32 -15000 }, %struct.tsadc_table { i32 421, i32 -10000 }, %struct.tsadc_table { i32 429, i32 -5000 }, %struct.tsadc_table { i32 436, i32 0 }, %struct.tsadc_table { i32 444, i32 5000 }, %struct.tsadc_table { i32 452, i32 10000 }, %struct.tsadc_table { i32 460, i32 15000 }, %struct.tsadc_table { i32 468, i32 20000 }, %struct.tsadc_table { i32 476, i32 25000 }, %struct.tsadc_table { i32 483, i32 30000 }, %struct.tsadc_table { i32 491, i32 35000 }, %struct.tsadc_table { i32 499, i32 40000 }, %struct.tsadc_table { i32 507, i32 45000 }, %struct.tsadc_table { i32 515, i32 50000 }, %struct.tsadc_table { i32 523, i32 55000 }, %struct.tsadc_table { i32 531, i32 60000 }, %struct.tsadc_table { i32 539, i32 65000 }, %struct.tsadc_table { i32 547, i32 70000 }, %struct.tsadc_table { i32 555, i32 75000 }, %struct.tsadc_table { i32 562, i32 80000 }, %struct.tsadc_table { i32 570, i32 85000 }, %struct.tsadc_table { i32 578, i32 90000 }, %struct.tsadc_table { i32 586, i32 95000 }, %struct.tsadc_table { i32 594, i32 100000 }, %struct.tsadc_table { i32 602, i32 105000 }, %struct.tsadc_table { i32 610, i32 110000 }, %struct.tsadc_table { i32 618, i32 115000 }, %struct.tsadc_table { i32 626, i32 120000 }, %struct.tsadc_table { i32 634, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], [64 x i8] zeroinitializer }, align 32
@rk3228_code_table = internal constant { [36 x %struct.tsadc_table], [64 x i8] } { [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 588, i32 -40000 }, %struct.tsadc_table { i32 593, i32 -35000 }, %struct.tsadc_table { i32 598, i32 -30000 }, %struct.tsadc_table { i32 603, i32 -25000 }, %struct.tsadc_table { i32 608, i32 -20000 }, %struct.tsadc_table { i32 613, i32 -15000 }, %struct.tsadc_table { i32 618, i32 -10000 }, %struct.tsadc_table { i32 623, i32 -5000 }, %struct.tsadc_table { i32 629, i32 0 }, %struct.tsadc_table { i32 634, i32 5000 }, %struct.tsadc_table { i32 639, i32 10000 }, %struct.tsadc_table { i32 644, i32 15000 }, %struct.tsadc_table { i32 649, i32 20000 }, %struct.tsadc_table { i32 654, i32 25000 }, %struct.tsadc_table { i32 660, i32 30000 }, %struct.tsadc_table { i32 665, i32 35000 }, %struct.tsadc_table { i32 670, i32 40000 }, %struct.tsadc_table { i32 675, i32 45000 }, %struct.tsadc_table { i32 681, i32 50000 }, %struct.tsadc_table { i32 686, i32 55000 }, %struct.tsadc_table { i32 691, i32 60000 }, %struct.tsadc_table { i32 696, i32 65000 }, %struct.tsadc_table { i32 702, i32 70000 }, %struct.tsadc_table { i32 707, i32 75000 }, %struct.tsadc_table { i32 712, i32 80000 }, %struct.tsadc_table { i32 717, i32 85000 }, %struct.tsadc_table { i32 723, i32 90000 }, %struct.tsadc_table { i32 728, i32 95000 }, %struct.tsadc_table { i32 733, i32 100000 }, %struct.tsadc_table { i32 738, i32 105000 }, %struct.tsadc_table { i32 744, i32 110000 }, %struct.tsadc_table { i32 749, i32 115000 }, %struct.tsadc_table { i32 754, i32 120000 }, %struct.tsadc_table { i32 760, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], [64 x i8] zeroinitializer }, align 32
@rk3288_code_table = internal constant { [36 x %struct.tsadc_table], [64 x i8] } { [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 4095, i32 -40000 }, %struct.tsadc_table { i32 3800, i32 -40000 }, %struct.tsadc_table { i32 3792, i32 -35000 }, %struct.tsadc_table { i32 3783, i32 -30000 }, %struct.tsadc_table { i32 3774, i32 -25000 }, %struct.tsadc_table { i32 3765, i32 -20000 }, %struct.tsadc_table { i32 3756, i32 -15000 }, %struct.tsadc_table { i32 3747, i32 -10000 }, %struct.tsadc_table { i32 3737, i32 -5000 }, %struct.tsadc_table { i32 3728, i32 0 }, %struct.tsadc_table { i32 3718, i32 5000 }, %struct.tsadc_table { i32 3708, i32 10000 }, %struct.tsadc_table { i32 3698, i32 15000 }, %struct.tsadc_table { i32 3688, i32 20000 }, %struct.tsadc_table { i32 3678, i32 25000 }, %struct.tsadc_table { i32 3667, i32 30000 }, %struct.tsadc_table { i32 3656, i32 35000 }, %struct.tsadc_table { i32 3645, i32 40000 }, %struct.tsadc_table { i32 3634, i32 45000 }, %struct.tsadc_table { i32 3623, i32 50000 }, %struct.tsadc_table { i32 3611, i32 55000 }, %struct.tsadc_table { i32 3600, i32 60000 }, %struct.tsadc_table { i32 3588, i32 65000 }, %struct.tsadc_table { i32 3575, i32 70000 }, %struct.tsadc_table { i32 3563, i32 75000 }, %struct.tsadc_table { i32 3550, i32 80000 }, %struct.tsadc_table { i32 3537, i32 85000 }, %struct.tsadc_table { i32 3524, i32 90000 }, %struct.tsadc_table { i32 3510, i32 95000 }, %struct.tsadc_table { i32 3496, i32 100000 }, %struct.tsadc_table { i32 3482, i32 105000 }, %struct.tsadc_table { i32 3467, i32 110000 }, %struct.tsadc_table { i32 3452, i32 115000 }, %struct.tsadc_table { i32 3437, i32 120000 }, %struct.tsadc_table { i32 3421, i32 125000 }, %struct.tsadc_table { i32 0, i32 125000 }], [64 x i8] zeroinitializer }, align 32
@rk3368_code_table = internal constant { [36 x %struct.tsadc_table], [64 x i8] } { [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 106, i32 -40000 }, %struct.tsadc_table { i32 108, i32 -35000 }, %struct.tsadc_table { i32 110, i32 -30000 }, %struct.tsadc_table { i32 112, i32 -25000 }, %struct.tsadc_table { i32 114, i32 -20000 }, %struct.tsadc_table { i32 116, i32 -15000 }, %struct.tsadc_table { i32 118, i32 -10000 }, %struct.tsadc_table { i32 120, i32 -5000 }, %struct.tsadc_table { i32 122, i32 0 }, %struct.tsadc_table { i32 124, i32 5000 }, %struct.tsadc_table { i32 126, i32 10000 }, %struct.tsadc_table { i32 128, i32 15000 }, %struct.tsadc_table { i32 130, i32 20000 }, %struct.tsadc_table { i32 132, i32 25000 }, %struct.tsadc_table { i32 134, i32 30000 }, %struct.tsadc_table { i32 136, i32 35000 }, %struct.tsadc_table { i32 138, i32 40000 }, %struct.tsadc_table { i32 140, i32 45000 }, %struct.tsadc_table { i32 142, i32 50000 }, %struct.tsadc_table { i32 144, i32 55000 }, %struct.tsadc_table { i32 146, i32 60000 }, %struct.tsadc_table { i32 148, i32 65000 }, %struct.tsadc_table { i32 150, i32 70000 }, %struct.tsadc_table { i32 152, i32 75000 }, %struct.tsadc_table { i32 154, i32 80000 }, %struct.tsadc_table { i32 156, i32 85000 }, %struct.tsadc_table { i32 158, i32 90000 }, %struct.tsadc_table { i32 160, i32 95000 }, %struct.tsadc_table { i32 162, i32 100000 }, %struct.tsadc_table { i32 163, i32 105000 }, %struct.tsadc_table { i32 165, i32 110000 }, %struct.tsadc_table { i32 167, i32 115000 }, %struct.tsadc_table { i32 169, i32 120000 }, %struct.tsadc_table { i32 171, i32 125000 }, %struct.tsadc_table { i32 1023, i32 125000 }], [64 x i8] zeroinitializer }, align 32
@rk3399_code_table = internal constant { [36 x %struct.tsadc_table], [64 x i8] } { [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 402, i32 -40000 }, %struct.tsadc_table { i32 410, i32 -35000 }, %struct.tsadc_table { i32 419, i32 -30000 }, %struct.tsadc_table { i32 427, i32 -25000 }, %struct.tsadc_table { i32 436, i32 -20000 }, %struct.tsadc_table { i32 444, i32 -15000 }, %struct.tsadc_table { i32 453, i32 -10000 }, %struct.tsadc_table { i32 461, i32 -5000 }, %struct.tsadc_table { i32 470, i32 0 }, %struct.tsadc_table { i32 478, i32 5000 }, %struct.tsadc_table { i32 487, i32 10000 }, %struct.tsadc_table { i32 496, i32 15000 }, %struct.tsadc_table { i32 504, i32 20000 }, %struct.tsadc_table { i32 513, i32 25000 }, %struct.tsadc_table { i32 521, i32 30000 }, %struct.tsadc_table { i32 530, i32 35000 }, %struct.tsadc_table { i32 538, i32 40000 }, %struct.tsadc_table { i32 547, i32 45000 }, %struct.tsadc_table { i32 555, i32 50000 }, %struct.tsadc_table { i32 564, i32 55000 }, %struct.tsadc_table { i32 573, i32 60000 }, %struct.tsadc_table { i32 581, i32 65000 }, %struct.tsadc_table { i32 590, i32 70000 }, %struct.tsadc_table { i32 599, i32 75000 }, %struct.tsadc_table { i32 607, i32 80000 }, %struct.tsadc_table { i32 616, i32 85000 }, %struct.tsadc_table { i32 624, i32 90000 }, %struct.tsadc_table { i32 633, i32 95000 }, %struct.tsadc_table { i32 642, i32 100000 }, %struct.tsadc_table { i32 650, i32 105000 }, %struct.tsadc_table { i32 659, i32 110000 }, %struct.tsadc_table { i32 668, i32 115000 }, %struct.tsadc_table { i32 677, i32 120000 }, %struct.tsadc_table { i32 685, i32 125000 }, %struct.tsadc_table { i32 1023, i32 125000 }], [64 x i8] zeroinitializer }, align 32
@rk3568_code_table = internal constant { [36 x %struct.tsadc_table], [64 x i8] } { [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 1584, i32 -40000 }, %struct.tsadc_table { i32 1620, i32 -35000 }, %struct.tsadc_table { i32 1652, i32 -30000 }, %struct.tsadc_table { i32 1688, i32 -25000 }, %struct.tsadc_table { i32 1720, i32 -20000 }, %struct.tsadc_table { i32 1756, i32 -15000 }, %struct.tsadc_table { i32 1788, i32 -10000 }, %struct.tsadc_table { i32 1824, i32 -5000 }, %struct.tsadc_table { i32 1856, i32 0 }, %struct.tsadc_table { i32 1892, i32 5000 }, %struct.tsadc_table { i32 1924, i32 10000 }, %struct.tsadc_table { i32 1956, i32 15000 }, %struct.tsadc_table { i32 1992, i32 20000 }, %struct.tsadc_table { i32 2024, i32 25000 }, %struct.tsadc_table { i32 2060, i32 30000 }, %struct.tsadc_table { i32 2092, i32 35000 }, %struct.tsadc_table { i32 2128, i32 40000 }, %struct.tsadc_table { i32 2160, i32 45000 }, %struct.tsadc_table { i32 2196, i32 50000 }, %struct.tsadc_table { i32 2228, i32 55000 }, %struct.tsadc_table { i32 2264, i32 60000 }, %struct.tsadc_table { i32 2300, i32 65000 }, %struct.tsadc_table { i32 2332, i32 70000 }, %struct.tsadc_table { i32 2368, i32 75000 }, %struct.tsadc_table { i32 2400, i32 80000 }, %struct.tsadc_table { i32 2436, i32 85000 }, %struct.tsadc_table { i32 2468, i32 90000 }, %struct.tsadc_table { i32 2500, i32 95000 }, %struct.tsadc_table { i32 2536, i32 100000 }, %struct.tsadc_table { i32 2572, i32 105000 }, %struct.tsadc_table { i32 2604, i32 110000 }, %struct.tsadc_table { i32 2636, i32 115000 }, %struct.tsadc_table { i32 2672, i32 120000 }, %struct.tsadc_table { i32 2704, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], [64 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_thermal_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.79, ptr @.str.3, i32 1549, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_thermal_resume\00", [40 x i8] zeroinitializer }, align 32
@rockchip_thermal_resume._entry_ptr = internal global ptr @rockchip_thermal_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"rockchip_thermal_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1565, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1567, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"of_rockchip_thermal_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1147, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"rockchip_thermal_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1562, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1389, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1393, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1396, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1400, i32 43 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1403, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1410, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1417, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1425, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1438, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1448, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1450, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1462, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1253, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1254, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1260, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1267, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1268, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1278, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1283, i32 31 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1285, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1295, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1303, i32 53 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1305, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1324, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [24 x i8] c"rockchip_of_thermal_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1242, i32 48 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1333, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1236, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1220, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1203, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"px30_tsadc_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 927, i32 41 }
@___asan_gen_.279 = private unnamed_addr constant [18 x i8] c"rv1108_tsadc_data\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 951, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"rk3228_tsadc_data\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 975, i32 41 }
@___asan_gen_.285 = private unnamed_addr constant [18 x i8] c"rk3288_tsadc_data\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 999, i32 41 }
@___asan_gen_.288 = private unnamed_addr constant [18 x i8] c"rk3328_tsadc_data\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1024, i32 41 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"rk3366_tsadc_data\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1047, i32 41 }
@___asan_gen_.294 = private unnamed_addr constant [18 x i8] c"rk3368_tsadc_data\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1072, i32 41 }
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"rk3399_tsadc_data\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1097, i32 41 }
@___asan_gen_.300 = private unnamed_addr constant [18 x i8] c"rk3568_tsadc_data\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1122, i32 41 }
@___asan_gen_.303 = private unnamed_addr constant [18 x i8] c"rk3328_code_table\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 371, i32 33 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 625, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 568, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 573, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [13 x i8] c"rv1108_table\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 254, i32 33 }
@___asan_gen_.330 = private unnamed_addr constant [18 x i8] c"rk3228_code_table\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 293, i32 33 }
@___asan_gen_.333 = private unnamed_addr constant [18 x i8] c"rk3288_code_table\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 332, i32 33 }
@___asan_gen_.336 = private unnamed_addr constant [18 x i8] c"rk3368_code_table\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 409, i32 33 }
@___asan_gen_.339 = private unnamed_addr constant [18 x i8] c"rk3399_code_table\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 448, i32 33 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"rk3568_code_table\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 487, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [38 x i8] c"../drivers/thermal/rockchip_thermal.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1548, i32 4 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_rockchip_thermal_driver_exit, ptr @__initcall__kmod_rockchip_thermal__230_1575_rockchip_thermal_driver_init6, ptr @rk_tsadcv2_code_to_temp._entry, ptr @rk_tsadcv2_code_to_temp._entry_ptr, ptr @rk_tsadcv2_temp_to_code._entry, ptr @rk_tsadcv2_temp_to_code._entry.76, ptr @rk_tsadcv2_temp_to_code._entry_ptr, ptr @rk_tsadcv2_temp_to_code._entry_ptr.78, ptr @rockchip_configure_from_dt._entry, ptr @rockchip_configure_from_dt._entry.37, ptr @rockchip_configure_from_dt._entry.41, ptr @rockchip_configure_from_dt._entry.46, ptr @rockchip_configure_from_dt._entry.50, ptr @rockchip_configure_from_dt._entry.55, ptr @rockchip_configure_from_dt._entry.59, ptr @rockchip_configure_from_dt._entry_ptr, ptr @rockchip_configure_from_dt._entry_ptr.39, ptr @rockchip_configure_from_dt._entry_ptr.43, ptr @rockchip_configure_from_dt._entry_ptr.48, ptr @rockchip_configure_from_dt._entry_ptr.52, ptr @rockchip_configure_from_dt._entry_ptr.57, ptr @rockchip_configure_from_dt._entry_ptr.61, ptr @rockchip_thermal_driver_exit, ptr @rockchip_thermal_probe._entry, ptr @rockchip_thermal_probe._entry.11, ptr @rockchip_thermal_probe._entry.14, ptr @rockchip_thermal_probe._entry.17, ptr @rockchip_thermal_probe._entry.20, ptr @rockchip_thermal_probe._entry.23, ptr @rockchip_thermal_probe._entry.27, ptr @rockchip_thermal_probe._entry.30, ptr @rockchip_thermal_probe._entry.7, ptr @rockchip_thermal_probe._entry_ptr, ptr @rockchip_thermal_probe._entry_ptr.13, ptr @rockchip_thermal_probe._entry_ptr.16, ptr @rockchip_thermal_probe._entry_ptr.19, ptr @rockchip_thermal_probe._entry_ptr.22, ptr @rockchip_thermal_probe._entry_ptr.25, ptr @rockchip_thermal_probe._entry_ptr.29, ptr @rockchip_thermal_probe._entry_ptr.33, ptr @rockchip_thermal_probe._entry_ptr.9, ptr @rockchip_thermal_register_sensor._entry, ptr @rockchip_thermal_register_sensor._entry.64, ptr @rockchip_thermal_register_sensor._entry_ptr, ptr @rockchip_thermal_register_sensor._entry_ptr.66, ptr @rockchip_thermal_resume._entry, ptr @rockchip_thermal_resume._entry_ptr, ptr @rockchip_thermal_driver, ptr @.str, ptr @of_rockchip_thermal_match, ptr @rockchip_thermal_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @rockchip_of_thermal_ops, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @px30_tsadc_data, ptr @rv1108_tsadc_data, ptr @rk3228_tsadc_data, ptr @rk3288_tsadc_data, ptr @rk3328_tsadc_data, ptr @rk3366_tsadc_data, ptr @rk3368_tsadc_data, ptr @rk3399_tsadc_data, ptr @rk3568_tsadc_data, ptr @rk3328_code_table, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @rv1108_table, ptr @rk3228_code_table, ptr @rk3288_code_table, ptr @rk3368_code_table, ptr @rk3399_code_table, ptr @rk3568_code_table, ptr @.str.79], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rockchip_thermal_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_configure_from_dt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_register_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_register_sensor._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_tsadc_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_code_table to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_tsadcv2_code_to_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_tsadcv2_temp_to_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_tsadcv2_temp_to_code._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_code_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_code_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_code_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_code_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_code_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_thermal_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_thermal_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %shut_temp.i = alloca i32, align 4
  %tshut_mode.i = alloca i32, align 4
  %tshut_polarity.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @of_rockchip_thermal_match, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %pdev9 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev9, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call.i, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call14) #6
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %call24 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %reset = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %reset, align 4
  %cmp.i230 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %9) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %clk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %clk, align 4
  %cmp.i231 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %11) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  %pclk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call45, ptr %pclk, align 4
  %cmp.i232 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %13) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end43
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call.i233 = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool.not.i = icmp eq i32 %call.i233, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end55.do.end62_crit_edge

if.end55.do.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.end.i:                                         ; preds = %if.end55
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end64, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then3.i, %if.end55.do.end62_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i233, %if.end55.do.end62_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk, align 4
  %call.i234 = tail call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %if.end.i238, label %if.end64.do.end71_crit_edge

if.end64.do.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

if.end.i238:                                      ; preds = %if.end64
  %call1.i236 = tail call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i236)
  %tobool2.not.i237 = icmp eq i32 %call1.i236, 0
  br i1 %tobool2.not.i237, label %if.end73, label %if.then3.i239

if.then3.i239:                                    ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then3.i239, %if.end64.do.end71_crit_edge
  %retval.0.i240.ph = phi i32 [ %call1.i236, %if.then3.i239 ], [ %call.i234, %if.end64.do.end71_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i240.ph) #9
  br label %err_disable_clk

if.end73:                                         ; preds = %if.end.i238
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  %call.i242 = tail call i32 @reset_control_assert(ptr noundef %19) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %call1.i243 = tail call i32 @reset_control_deassert(ptr noundef %19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shut_temp.i) #6
  %20 = ptrtoint ptr %shut_temp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %shut_temp.i, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tshut_mode.i) #6
  %21 = ptrtoint ptr %tshut_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tshut_mode.i, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tshut_polarity.i) #6
  %22 = ptrtoint ptr %tshut_polarity.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tshut_polarity.i, align 4, !annotation !189
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %shut_temp.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i244 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i244, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %tshut_temp.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %tshut_temp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tshut_temp.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %26) #9
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %tshut_temp2.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %tshut_temp2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tshut_temp2.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end73
  %31 = ptrtoint ptr %shut_temp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shut_temp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i245 = icmp slt i32 %32, 0
  br i1 %cmp.i245, label %do.end7.i, label %if.else.i.if.end9.i_crit_edge

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

do.end7.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %32) #9
  br label %do.end81

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %do.end.i
  %.sink98.i = phi i32 [ %30, %do.end.i ], [ %32, %if.else.i.if.end9.i_crit_edge ]
  %tshut_temp8.i = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %tshut_temp8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink98.i, ptr %tshut_temp8.i, align 4
  %call.i.i95.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull %tshut_mode.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i95.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i95.i, -1
  br i1 %tobool11.not.i, label %if.end9.i.if.end24.i_crit_edge, label %do.end15.i

if.end9.i.if.end24.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %tshut_mode17.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %tshut_mode17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tshut_mode17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp18.i = icmp eq i32 %37, 1
  %cond.i = select i1 %cmp18.i, ptr @.str.44, ptr @.str.45
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond.i) #9
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %tshut_mode20.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %39, i32 0, i32 3
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end15.i, %if.end9.i.if.end24.i_crit_edge
  %.sink.in.i = phi ptr [ %tshut_mode20.i, %do.end15.i ], [ %tshut_mode.i, %if.end9.i.if.end24.i_crit_edge ]
  %40 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %41 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink.i, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink.i)
  %cmp26.i = icmp ugt i32 %.sink.i, 1
  br i1 %cmp26.i, label %do.end30.i, label %if.end32.i

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %.sink.i) #9
  br label %do.end81

if.end32.i:                                       ; preds = %if.end24.i
  %call.i.i96.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %tshut_polarity.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i96.i)
  %tobool34.not.i = icmp sgt i32 %call.i.i96.i, -1
  br i1 %tobool34.not.i, label %if.end32.i.if.end48.i_crit_edge, label %do.end38.i

if.end32.i.if.end48.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %tshut_polarity40.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %tshut_polarity40.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tshut_polarity40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp41.i = icmp eq i32 %46, 0
  %cond42.i = select i1 %cmp41.i, ptr @.str.53, ptr @.str.54
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond42.i) #9
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %tshut_polarity44.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %48, i32 0, i32 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end38.i, %if.end32.i.if.end48.i_crit_edge
  %.sink97.in.i = phi ptr [ %tshut_polarity44.i, %do.end38.i ], [ %tshut_polarity.i, %if.end32.i.if.end48.i_crit_edge ]
  %49 = ptrtoint ptr %.sink97.in.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.sink97.i = load i32, ptr %.sink97.in.i, align 4
  %50 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 10
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink97.i, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink97.i)
  %cmp50.i = icmp ugt i32 %.sink97.i, 1
  br i1 %cmp50.i, label %do.end54.i, label %if.end56.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %.sink97.i) #9
  br label %do.end81

if.end56.i:                                       ; preds = %if.end48.i
  %call57.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.58) #6
  %grf.i = getelementptr inbounds %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 6
  %52 = ptrtoint ptr %grf.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call57.i, ptr %grf.i, align 4
  %cmp.i.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end63.i, label %if.end56.i.if.end83_crit_edge

if.end56.i.if.end83_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60) #9
  br label %if.end83

do.end81:                                         ; preds = %do.end54.i, %do.end30.i, %do.end7.i
  %retval.0.i246.ph = phi i32 [ -34, %do.end7.i ], [ -22, %do.end54.i ], [ -22, %do.end30.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tshut_polarity.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tshut_mode.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shut_temp.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i246.ph) #9
  br label %err_disable_pclk

if.end83:                                         ; preds = %do.end63.i, %if.end56.i.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tshut_polarity.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tshut_mode.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shut_temp.i) #6
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %initialize = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %initialize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %initialize, align 4
  %57 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %grf.i, align 4
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %50, align 4
  call void %56(ptr noundef %58, ptr noundef %60, i32 noundef %62) #6
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %chn_num269 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %chn_num269 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chn_num269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp87270 = icmp sgt i32 %66, 0
  br i1 %cmp87270, label %if.end83.for.body_crit_edge, label %if.end83.for.end_crit_edge

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end83.for.body_crit_edge:                      ; preds = %if.end83
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end83.for.body_crit_edge
  %67 = phi ptr [ %89, %for.inc.for.body_crit_edge ], [ %64, %if.end83.for.body_crit_edge ]
  %i.0271 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end83.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 3, i32 %i.0271
  %arrayidx89 = getelementptr [2 x i32], ptr %67, i32 0, i32 %i.0271
  %68 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx89, align 4
  %set_tshut_mode.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %67, i32 0, i32 11
  %70 = ptrtoint ptr %set_tshut_mode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_tshut_mode.i, align 4
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %74 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %41, align 4
  call void %71(i32 noundef %69, ptr noundef %73, i32 noundef %75) #6
  %set_tshut_temp.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %67, i32 0, i32 10
  %76 = ptrtoint ptr %set_tshut_temp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_tshut_temp.i, align 4
  %table.i = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %67, i32 0, i32 12
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %80 = ptrtoint ptr %tshut_temp8.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tshut_temp8.i, align 4
  %call.i249 = call i32 %77(ptr noundef %table.i, i32 noundef %69, ptr noundef %79, i32 noundef %81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool.not.i250 = icmp eq i32 %call.i249, 0
  br i1 %tobool.not.i250, label %for.body.if.end.i253_crit_edge, label %do.end.i251

for.body.if.end.i253_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i253

do.end.i251:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %tshut_temp8.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tshut_temp8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef %83, i32 noundef %call.i249) #9
  br label %if.end.i253

if.end.i253:                                      ; preds = %do.end.i251, %for.body.if.end.i253_crit_edge
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %arrayidx, align 4
  %id4.i = getelementptr %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 3, i32 %i.0271, i32 2
  %85 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %69, ptr %id4.i, align 4
  %call6.i = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef %69, ptr noundef %arrayidx, ptr noundef nonnull @rockchip_of_thermal_ops) #6
  %tzd.i = getelementptr %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 3, i32 %i.0271, i32 1
  %86 = ptrtoint ptr %tzd.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call6.i, ptr %tzd.i, align 4
  %cmp.i.i252 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i252, label %rockchip_thermal_register_sensor.exit, label %for.inc

rockchip_thermal_register_sensor.exit:            ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %call6.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %69, i32 noundef %87) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %i.0271, i32 noundef %87) #9
  br label %err_disable_pclk

for.inc:                                          ; preds = %if.end.i253
  %inc = add nuw nsw i32 %i.0271, 1
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %chn_num = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %chn_num to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chn_num, align 4
  %cmp87 = icmp slt i32 %inc, %91
  br i1 %cmp87, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end83.for.end_crit_edge
  %call99 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef null, ptr noundef nonnull @rockchip_thermal_alarm_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.26, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end106, label %do.end104

do.end104:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call99) #9
  br label %err_disable_pclk

if.end106:                                        ; preds = %for.end
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %control = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %control, align 4
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  call void %95(ptr noundef %97, i1 noundef zeroext true) #6
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  %chn_num111272 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %chn_num111272 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %chn_num111272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp112273 = icmp sgt i32 %101, 0
  br i1 %cmp112273, label %if.end106.for.body113_crit_edge, label %if.end106.for.end131_crit_edge

if.end106.for.end131_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end131

if.end106.for.body113_crit_edge:                  ; preds = %if.end106
  br label %for.body113

for.body113:                                      ; preds = %for.inc129.for.body113_crit_edge, %if.end106.for.body113_crit_edge
  %i.1274 = phi i32 [ %inc130, %for.inc129.for.body113_crit_edge ], [ 0, %if.end106.for.body113_crit_edge ]
  %tzd1.i = getelementptr %struct.rockchip_thermal_data, ptr %call.i, i32 0, i32 3, i32 %i.1274, i32 1
  %102 = ptrtoint ptr %tzd1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tzd1.i, align 4
  %call.i255 = call i32 @thermal_zone_device_enable(ptr noundef %103) #6
  %104 = ptrtoint ptr %tzd1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tzd1.i, align 4
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %105, i32 0, i32 21
  %106 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tzp, align 8
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %no_hwmon to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %no_hwmon, align 4
  %109 = load ptr, ptr %tzd1.i, align 4
  %call121 = call i32 @thermal_add_hwmon_sysfs(ptr noundef %109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %for.body113.for.inc129_crit_edge, label %do.end126

for.body113.for.inc129_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc129

do.end126:                                        ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %i.1274, i32 noundef %call121) #9
  br label %for.inc129

for.inc129:                                       ; preds = %do.end126, %for.body113.for.inc129_crit_edge
  %inc130 = add nuw nsw i32 %i.1274, 1
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  %chn_num111 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %chn_num111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %chn_num111, align 4
  %cmp112 = icmp slt i32 %inc130, %113
  br i1 %cmp112, label %for.inc129.for.body113_crit_edge, label %for.inc129.for.end131_crit_edge

for.inc129.for.end131_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end131

for.inc129.for.body113_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body113

for.end131:                                       ; preds = %for.inc129.for.end131_crit_edge, %if.end106.for.end131_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_disable_pclk:                                 ; preds = %do.end104, %rockchip_thermal_register_sensor.exit, %do.end81
  %error.0 = phi i32 [ %retval.0.i246.ph, %do.end81 ], [ %87, %rockchip_thermal_register_sensor.exit ], [ %call99, %do.end104 ]
  %115 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %116) #6
  call void @clk_unprepare(ptr noundef %116) #6
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_disable_pclk, %do.end71
  %error.1 = phi i32 [ %retval.0.i240.ph, %do.end71 ], [ %error.0, %err_disable_pclk ]
  %117 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %118) #6
  call void @clk_unprepare(ptr noundef %118) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %for.end131, %do.end62, %if.then48, %if.then36, %if.then27, %if.then19, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then19 ], [ %9, %if.then27 ], [ %11, %if.then36 ], [ %13, %if.then48 ], [ %retval.0.i.ph, %do.end62 ], [ %error.1, %err_disable_clk ], [ 0, %for.end131 ], [ -6, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chn_num10 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chn_num10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chn_num10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11 = icmp sgt i32 %5, 0
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tzd = getelementptr %struct.rockchip_thermal_data, ptr %1, i32 0, i32 3, i32 %i.012, i32 1
  %6 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzd, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %7) #6
  %8 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tzd, align 4
  %call2.i = tail call i32 @thermal_zone_device_disable(ptr noundef %9) #6
  %inc = add nuw nsw i32 %i.012, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %chn_num = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %chn_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chn_num, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  %control = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %.lcssa, i32 0, i32 7
  %14 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control, align 4
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void %15(ptr noundef %17, i1 noundef zeroext false) #6
  %pclk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  %clk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_alarm_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_thermal_alarm_irq_thread, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.rockchip_thermal_data, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug227, ptr noundef %dev3, ptr noundef nonnull @.str.72) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %irq_ack = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_ack, align 4
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void %5(ptr noundef %7) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %chn_num12 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %chn_num12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chn_num12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp sgt i32 %11, 0
  br i1 %cmp13, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %tzd = getelementptr %struct.rockchip_thermal_data, ptr %dev, i32 0, i32 3, i32 %i.014, i32 1
  %12 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tzd, align 4
  tail call void @thermal_zone_device_update(ptr noundef %13, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.014, 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %chn_num = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %chn_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chn_num, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_get_temp(ptr nocapture noundef readonly %_sensor, ptr noundef %out_temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sensor, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_temp = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_temp, align 4
  %table = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 12
  %id = getelementptr inbounds %struct.rockchip_thermal_sensor, ptr %_sensor, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call = tail call i32 %5(ptr noundef %table, i32 noundef %7, ptr noundef %9, ptr noundef %out_temp) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_thermal_get_temp.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_thermal_get_temp, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = ptrtoint ptr %out_temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out_temp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_thermal_get_temp.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %13, i32 noundef %15, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_set_trips(ptr nocapture noundef readonly %_sensor, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sensor, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_thermal_set_trips.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_thermal_set_trips, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %id = getelementptr inbounds %struct.rockchip_thermal_sensor, ptr %_sensor, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_thermal_set_trips.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %7, i32 noundef %low, i32 noundef %high) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_alarm_temp = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %set_alarm_temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_alarm_temp, align 4
  %table = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 12
  %id4 = getelementptr inbounds %struct.rockchip_thermal_sensor, ptr %_sensor, i32 0, i32 2
  %10 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id4, align 4
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %call5 = tail call i32 %9(ptr noundef %table, i32 noundef %11, ptr noundef %13, i32 noundef %high) #6
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv4_initialize(ptr noundef %grf, ptr noundef %regs, i32 noundef %tshut_polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tshut_polarity)
  %cmp.i = icmp eq i32 %tshut_polarity, 1
  %add.ptr.i = getelementptr i8, ptr %regs, i32 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #6, !srcloc !191
  br label %rk_tsadcv2_initialize.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !191
  br label %rk_tsadcv2_initialize.exit

rk_tsadcv2_initialize.exit:                       ; preds = %if.else.i, %if.then.i
  %add.ptr2.i = getelementptr i8, ptr %regs, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -100663296) #6, !srcloc !191
  %add.ptr3.i = getelementptr i8, ptr %regs, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 67108864) #6, !srcloc !191
  %add.ptr4.i = getelementptr i8, ptr %regs, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 838860800) #6, !srcloc !191
  %add.ptr5.i = getelementptr i8, ptr %regs, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 67108864) #6, !srcloc !191
  %call = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 1032, i32 noundef 131074) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv3_irq_ack(ptr noundef %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = and i32 %0, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv3_control(ptr noundef %regs, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %or = or i32 %1, 3
  %and = and i32 %1, -2
  %val.0 = select i1 %enable, i32 %or, i32 %and
  %2 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_tsadcv2_get_temp(ptr nocapture noundef readonly %table, i32 noundef %chn, ptr noundef %regs, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chn, 2
  %add = add i32 %mul, 32
  %add.ptr = getelementptr i8, ptr %regs, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %length.i = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %sub.i = add i32 %3, -1
  %div191.i = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp ult i32 %3, 2
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !193

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 587, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %mode.i = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 3
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end86.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb47.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %data_mask.i = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 2
  %7 = ptrtoint ptr %data_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_mask.i, align 4
  %and.i = and i32 %8, %1
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table, align 4
  %arrayidx.i = getelementptr %struct.tsadc_table, ptr %10, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %12)
  %cmp21.not.i = icmp ugt i32 %and.i, %12
  br i1 %cmp21.not.i, label %while.cond.preheader.i, label %sw.bb.i.rk_tsadcv2_code_to_temp.exit_crit_edge

sw.bb.i.rk_tsadcv2_code_to_temp.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk_tsadcv2_code_to_temp.exit

while.cond.preheader.i:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp24.not201.i = icmp eq i32 %sub.i, 0
  br i1 %cmp24.not201.i, label %while.cond.preheader.i.sw.epilog.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.sw.epilog.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %low.0205.i = phi i32 [ %low.1.i, %if.else.i.while.body.i_crit_edge ], [ 1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %high.0204.i = phi i32 [ %high.1.i, %if.else.i.while.body.i_crit_edge ], [ %sub.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %mid.0202.i = phi i32 [ %div46193.i, %if.else.i.while.body.i_crit_edge ], [ %div191.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.tsadc_table, ptr %10, i32 %mid.0202.i
  %13 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %14)
  %cmp28.not.i = icmp ult i32 %and.i, %14
  br i1 %cmp28.not.i, label %while.body.i.if.else.i_crit_edge, label %land.lhs.true.i

while.body.i.if.else.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %sub30.i = add nsw i32 %mid.0202.i, -1
  %arrayidx31.i = getelementptr %struct.tsadc_table, ptr %10, i32 %sub30.i
  %15 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %16)
  %cmp33.i = icmp ult i32 %and.i, %16
  br i1 %cmp33.i, label %land.lhs.true.i.sw.epilog.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %while.body.i.if.else.i_crit_edge
  %high.1.i = phi i32 [ %sub30.i, %land.lhs.true.i.if.else.i_crit_edge ], [ %high.0204.i, %while.body.i.if.else.i_crit_edge ]
  %add40.i = add nuw i32 %mid.0202.i, 1
  %low.1.i = select i1 %cmp28.not.i, i32 %add40.i, i32 %low.0205.i
  %add45.i = add i32 %high.1.i, %low.1.i
  %div46193.i = lshr i32 %add45.i, 1
  %cmp24.not.i = icmp ugt i32 %low.1.i, %high.1.i
  br i1 %cmp24.not.i, label %if.else.i.sw.epilog.i_crit_edge, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %if.end.i
  %data_mask48.i = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 2
  %17 = ptrtoint ptr %data_mask48.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_mask48.i, align 4
  %and49.i = and i32 %18, %1
  %19 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table, align 4
  %arrayidx51.i = getelementptr %struct.tsadc_table, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx51.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %22)
  %cmp53.i = icmp ult i32 %and49.i, %22
  br i1 %cmp53.i, label %sw.bb47.i.rk_tsadcv2_code_to_temp.exit_crit_edge, label %while.cond56.preheader.i

sw.bb47.i.rk_tsadcv2_code_to_temp.exit_crit_edge: ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk_tsadcv2_code_to_temp.exit

while.cond56.preheader.i:                         ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp57.not195.i = icmp eq i32 %sub.i, 0
  br i1 %cmp57.not195.i, label %while.cond56.preheader.i.sw.epilog.i_crit_edge, label %while.cond56.preheader.i.while.body58.i_crit_edge

while.cond56.preheader.i.while.body58.i_crit_edge: ; preds = %while.cond56.preheader.i
  br label %while.body58.i

while.cond56.preheader.i.sw.epilog.i_crit_edge:   ; preds = %while.cond56.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

while.body58.i:                                   ; preds = %if.else70.i.while.body58.i_crit_edge, %while.cond56.preheader.i.while.body58.i_crit_edge
  %low.2199.i = phi i32 [ %low.3.i, %if.else70.i.while.body58.i_crit_edge ], [ 1, %while.cond56.preheader.i.while.body58.i_crit_edge ]
  %high.2198.i = phi i32 [ %high.3.i, %if.else70.i.while.body58.i_crit_edge ], [ %sub.i, %while.cond56.preheader.i.while.body58.i_crit_edge ]
  %mid.1196.i = phi i32 [ %div82192.i, %if.else70.i.while.body58.i_crit_edge ], [ %div191.i, %while.cond56.preheader.i.while.body58.i_crit_edge ]
  %arrayidx60.i = getelementptr %struct.tsadc_table, ptr %20, i32 %mid.1196.i
  %23 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx60.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %24)
  %cmp62.not.i = icmp ugt i32 %and49.i, %24
  br i1 %cmp62.not.i, label %while.body58.i.if.else70.i_crit_edge, label %land.lhs.true63.i

while.body58.i.if.else70.i_crit_edge:             ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else70.i

land.lhs.true63.i:                                ; preds = %while.body58.i
  %sub65.i = add nsw i32 %mid.1196.i, -1
  %arrayidx66.i = getelementptr %struct.tsadc_table, ptr %20, i32 %sub65.i
  %25 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx66.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i, i32 %26)
  %cmp68.i = icmp ugt i32 %and49.i, %26
  br i1 %cmp68.i, label %land.lhs.true63.i.sw.epilog.i_crit_edge, label %land.lhs.true63.i.if.else70.i_crit_edge

land.lhs.true63.i.if.else70.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else70.i

land.lhs.true63.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else70.i:                                      ; preds = %land.lhs.true63.i.if.else70.i_crit_edge, %while.body58.i.if.else70.i_crit_edge
  %high.3.i = phi i32 [ %sub65.i, %land.lhs.true63.i.if.else70.i_crit_edge ], [ %high.2198.i, %while.body58.i.if.else70.i_crit_edge ]
  %add76.i = add nuw i32 %mid.1196.i, 1
  %low.3.i = select i1 %cmp62.not.i, i32 %add76.i, i32 %low.2199.i
  %add81.i = add i32 %high.3.i, %low.3.i
  %div82192.i = lshr i32 %add81.i, 1
  %cmp57.not.i = icmp ugt i32 %low.3.i, %high.3.i
  br i1 %cmp57.not.i, label %if.else70.i.sw.epilog.i_crit_edge, label %if.else70.i.while.body58.i_crit_edge

if.else70.i.while.body58.i_crit_edge:             ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body58.i

if.else70.i.sw.epilog.i_crit_edge:                ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end86.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %5) #9
  br label %rk_tsadcv2_code_to_temp.exit

sw.epilog.i:                                      ; preds = %if.else70.i.sw.epilog.i_crit_edge, %land.lhs.true63.i.sw.epilog.i_crit_edge, %while.cond56.preheader.i.sw.epilog.i_crit_edge, %if.else.i.sw.epilog.i_crit_edge, %land.lhs.true.i.sw.epilog.i_crit_edge, %while.cond.preheader.i.sw.epilog.i_crit_edge
  %mid.2.i = phi i32 [ 0, %while.cond.preheader.i.sw.epilog.i_crit_edge ], [ 0, %while.cond56.preheader.i.sw.epilog.i_crit_edge ], [ %div46193.i, %if.else.i.sw.epilog.i_crit_edge ], [ %mid.0202.i, %land.lhs.true.i.sw.epilog.i_crit_edge ], [ %div82192.i, %if.else70.i.sw.epilog.i_crit_edge ], [ %mid.1196.i, %land.lhs.true63.i.sw.epilog.i_crit_edge ]
  %code.addr.0.i = phi i32 [ %and.i, %while.cond.preheader.i.sw.epilog.i_crit_edge ], [ %and49.i, %while.cond56.preheader.i.sw.epilog.i_crit_edge ], [ %and.i, %land.lhs.true.i.sw.epilog.i_crit_edge ], [ %and.i, %if.else.i.sw.epilog.i_crit_edge ], [ %and49.i, %land.lhs.true63.i.sw.epilog.i_crit_edge ], [ %and49.i, %if.else70.i.sw.epilog.i_crit_edge ]
  %27 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %table, align 4
  %temp91.i = getelementptr %struct.tsadc_table, ptr %28, i32 %mid.2.i, i32 1
  %29 = ptrtoint ptr %temp91.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %temp91.i, align 4
  %sub93.i = add nsw i32 %mid.2.i, -1
  %arrayidx94.i = getelementptr %struct.tsadc_table, ptr %28, i32 %sub93.i
  %temp95.i = getelementptr %struct.tsadc_table, ptr %28, i32 %sub93.i, i32 1
  %31 = ptrtoint ptr %temp95.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %temp95.i, align 4
  %sub96.i = sub i32 %30, %32
  %33 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx94.i, align 4
  %sub101.i = sub i32 %34, %code.addr.0.i
  %35 = tail call i32 @llvm.abs.i32(i32 %sub101.i, i1 false) #6
  %mul.i = mul i32 %35, %sub96.i
  %arrayidx111.i = getelementptr %struct.tsadc_table, ptr %28, i32 %mid.2.i
  %36 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx111.i, align 4
  %sub113.i = sub i32 %34, %37
  %38 = tail call i32 @llvm.abs.i32(i32 %sub113.i, i1 false) #6
  %div125.i = udiv i32 %mul.i, %38
  %add126.i = add i32 %div125.i, %32
  %39 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add126.i, ptr %temp, align 4
  br label %rk_tsadcv2_code_to_temp.exit

rk_tsadcv2_code_to_temp.exit:                     ; preds = %sw.epilog.i, %do.end86.i, %sw.bb47.i.rk_tsadcv2_code_to_temp.exit_crit_edge, %sw.bb.i.rk_tsadcv2_code_to_temp.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end86.i ], [ 0, %sw.epilog.i ], [ -11, %sw.bb.i.rk_tsadcv2_code_to_temp.exit_crit_edge ], [ -11, %sw.bb47.i.rk_tsadcv2_code_to_temp.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_tsadcv2_alarm_temp(ptr nocapture noundef readonly %table, i32 noundef %chn, ptr noundef %regs, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %temp)
  %cmp = icmp eq i32 %temp, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %regs, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %shl = shl nuw i32 1, %chn
  %neg = xor i32 %shl, -1
  %and = and i32 %1, %neg
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !191
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @rk_tsadcv2_temp_to_code(ptr noundef %table, i32 noundef %temp)
  %data_mask = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 2
  %3 = ptrtoint ptr %data_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %4)
  %cmp3 = icmp eq i32 %call2, %4
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and7 = and i32 %4, %call2
  %5 = tail call i32 @llvm.bswap.i32(i32 %and7)
  %mul = shl i32 %chn, 2
  %add = add i32 %mul, 48
  %add.ptr8 = getelementptr i8, ptr %regs, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #6, !srcloc !191
  %add.ptr10 = getelementptr i8, ptr %regs, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !192
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %shl13 = shl nuw i32 1, %chn
  %or = or i32 %7, %shl13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #6, !srcloc !191
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end5 ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_tsadcv2_tshut_temp(ptr nocapture noundef readonly %table, i32 noundef %chn, ptr noundef %regs, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rk_tsadcv2_temp_to_code(ptr noundef %table, i32 noundef %temp)
  %data_mask = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %data_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp = icmp eq i32 %call, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %call)
  %mul = shl i32 %chn, 2
  %add = add i32 %mul, 64
  %add.ptr = getelementptr i8, ptr %regs, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !191
  %add.ptr1 = getelementptr i8, ptr %regs, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !192
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add3 = add i32 %chn, 4
  %shl = shl nuw i32 1, %add3
  %or = or i32 %4, %shl
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %5) #6, !srcloc !191
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv2_tshut_mode(i32 noundef %chn, ptr noundef %regs, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %. = select i1 %cmp, i32 8, i32 4
  %.20 = select i1 %cmp, i32 4, i32 8
  %add3 = add i32 %., %chn
  %shl4 = shl nuw i32 1, %add3
  %neg5 = xor i32 %shl4, -1
  %and6 = and i32 %1, %neg5
  %add7 = add i32 %.20, %chn
  %shl8 = shl nuw i32 1, %add7
  %or9 = or i32 %and6, %shl8
  %2 = tail call i32 @llvm.bswap.i32(i32 %or9)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv2_initialize(ptr nocapture noundef readnone %grf, ptr noundef %regs, i32 noundef %tshut_polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tshut_polarity)
  %cmp = icmp eq i32 %tshut_polarity, 1
  %add.ptr = getelementptr i8, ptr %regs, i32 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65536) #6, !srcloc !191
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.ptr2 = getelementptr i8, ptr %regs, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -100663296) #6, !srcloc !191
  %add.ptr3 = getelementptr i8, ptr %regs, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 67108864) #6, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %regs, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 838860800) #6, !srcloc !191
  %add.ptr5 = getelementptr i8, ptr %regs, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 67108864) #6, !srcloc !191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_tsadcv2_temp_to_code(ptr nocapture noundef readonly %table, i32 noundef %temp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_mask = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %data_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_mask, align 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %temp2 = getelementptr inbounds %struct.tsadc_table, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %temp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %temp2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %temp)
  %cmp = icmp sgt i32 %5, %temp
  br i1 %cmp, label %entry.do.end64_crit_edge, label %lor.lhs.false

entry.do.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %sub1 = add i32 %7, -2
  %temp5 = getelementptr %struct.tsadc_table, ptr %3, i32 %sub1, i32 1
  %8 = ptrtoint ptr %temp5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %temp)
  %cmp6 = icmp slt i32 %9, %temp
  br i1 %cmp6, label %lor.lhs.false.do.end64_crit_edge, label %while.cond.preheader

lor.lhs.false.do.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

while.cond.preheader:                             ; preds = %lor.lhs.false
  %mid.0117 = sdiv i32 %sub1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp7.not118 = icmp slt i32 %sub1, 0
  br i1 %cmp7.not118, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %mid.0121 = phi i32 [ %mid.0, %if.else.while.body_crit_edge ], [ %mid.0117, %while.cond.preheader.while.body_crit_edge ]
  %high.0120 = phi i32 [ %high.1, %if.else.while.body_crit_edge ], [ %sub1, %while.cond.preheader.while.body_crit_edge ]
  %low.0119 = phi i32 [ %low.1, %if.else.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %temp10 = getelementptr %struct.tsadc_table, ptr %3, i32 %mid.0121, i32 1
  %10 = ptrtoint ptr %temp10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %temp)
  %cmp11 = icmp eq i32 %11, %temp
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr %struct.tsadc_table, ptr %3, i32 %mid.0121
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %temp)
  %cmp18 = icmp sgt i32 %11, %temp
  %sub20 = add nsw i32 %mid.0121, -1
  %add22 = add nsw i32 %mid.0121, 1
  %low.1 = select i1 %cmp18, i32 %low.0119, i32 %add22
  %high.1 = select i1 %cmp18, i32 %sub20, i32 %high.0120
  %add25 = add i32 %low.1, %high.1
  %mid.0 = sdiv i32 %add25, 2
  %cmp7.not = icmp sgt i32 %low.1, %high.1
  br i1 %cmp7.not, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %mid.0.lcssa = phi i32 [ %mid.0117, %while.cond.preheader.while.end_crit_edge ], [ %mid.0, %if.else.while.end_crit_edge ]
  %add28 = add nsw i32 %mid.0.lcssa, 1
  %arrayidx29 = getelementptr %struct.tsadc_table, ptr %3, i32 %add28
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.tsadc_table, ptr %3, i32 %mid.0.lcssa
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx32, align 4
  %sub34 = sub i32 %15, %17
  %18 = tail call i32 @llvm.abs.i32(i32 %sub34, i1 false)
  %temp39 = getelementptr %struct.tsadc_table, ptr %3, i32 %mid.0.lcssa, i32 1
  %19 = ptrtoint ptr %temp39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp39, align 4
  %sub40 = sub i32 %temp, %20
  %mul = mul i32 %18, %sub40
  %temp44 = getelementptr %struct.tsadc_table, ptr %3, i32 %add28, i32 1
  %21 = ptrtoint ptr %temp44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %temp44, align 4
  %sub48 = sub i32 %22, %20
  %mode = getelementptr inbounds %struct.chip_tsadc_table, ptr %table, i32 0, i32 3
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %24, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb54
  ]

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %div52 = udiv i32 %mul, %sub48
  %sub53 = sub i32 %17, %div52
  br label %cleanup

sw.bb54:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %div58 = udiv i32 %mul, %sub48
  %add59 = add i32 %div58, %17
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.75, i32 noundef %24) #9
  br label %cleanup

do.end64:                                         ; preds = %lor.lhs.false.do.end64_crit_edge, %entry.do.end64_crit_edge
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %temp, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end, %sw.bb54, %sw.bb, %if.then12
  %retval.0 = phi i32 [ %1, %do.end64 ], [ %13, %if.then12 ], [ %1, %do.end ], [ %add59, %sw.bb54 ], [ %sub53, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv2_irq_ack(ptr noundef %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = and i32 %0, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv2_control(ptr noundef %regs, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !192
  %1 = and i32 %0, -16777217
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = zext i1 %enable to i32
  %val.0 = or i32 %2, %masksel
  %3 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv3_initialize(ptr noundef %grf, ptr noundef %regs, i32 noundef %tshut_polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %grf, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regs, i32 1073938432) #6, !srcloc !191
  %add.ptr1 = getelementptr i8, ptr %regs, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -100663296) #6, !srcloc !191
  %add.ptr2 = getelementptr i8, ptr %regs, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 67108864) #6, !srcloc !191
  %add.ptr3 = getelementptr i8, ptr %regs, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 838860800) #6, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %regs, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 67108864) #6, !srcloc !191
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 58952, i32 noundef 8388736) #6
  %call6 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 58956, i32 noundef 8388736) #6
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 100, i32 noundef 2) #6
  %call7 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 58948, i32 noundef 262148) #6
  %call8 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 58956, i32 noundef 262148) #6
  tail call void @usleep_range_state(i32 noundef 90, i32 noundef 200, i32 noundef 2) #6
  %add.ptr9 = getelementptr i8, ptr %regs, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1392967680) #6, !srcloc !191
  %add.ptr10 = getelementptr i8, ptr %regs, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 67108864) #6, !srcloc !191
  %add.ptr11 = getelementptr i8, ptr %regs, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1392967680) #6, !srcloc !191
  %add.ptr12 = getelementptr i8, ptr %regs, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 67108864) #6, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tshut_polarity)
  %cmp = icmp eq i32 %tshut_polarity, 1
  %add.ptr14 = getelementptr i8, ptr %regs, i32 4
  br i1 %cmp, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 65536) #6, !srcloc !191
  br label %if.end17

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #6, !srcloc !191
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_tsadcv7_initialize(ptr noundef %grf, ptr noundef %regs, i32 noundef %tshut_polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regs, i32 -1072758784) #6, !srcloc !191
  %add.ptr1 = getelementptr i8, ptr %regs, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 1443233792) #6, !srcloc !191
  %add.ptr2 = getelementptr i8, ptr %regs, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 67108864) #6, !srcloc !191
  %add.ptr3 = getelementptr i8, ptr %regs, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 1443233792) #6, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %regs, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 67108864) #6, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tshut_polarity)
  %cmp = icmp eq i32 %tshut_polarity, 1
  %add.ptr5 = getelementptr i8, ptr %regs, i32 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 65536) #6, !srcloc !191
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp.i = icmp ugt ptr %grf, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 1536, i32 noundef 16777472) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 3221220) #6
  %call9 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 1536, i32 noundef 65537) #6
  %call10 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 1536, i32 noundef 131074) #6
  %call11 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 1536, i32 noundef 262148) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chn_num11 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chn_num11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chn_num11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tzd1.i = getelementptr %struct.rockchip_thermal_data, ptr %1, i32 0, i32 3, i32 %i.013, i32 1
  %6 = ptrtoint ptr %tzd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzd1.i, align 4
  %call2.i = tail call i32 @thermal_zone_device_disable(ptr noundef %7) #6
  %inc = add nuw nsw i32 %i.013, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %chn_num = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %chn_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chn_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %control = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %.lcssa, i32 0, i32 7
  %12 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control, align 4
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void %13(ptr noundef %15, i1 noundef zeroext false) #6
  %pclk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  %clk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pclk = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %reset = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %9) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %call1.i = tail call i32 @reset_control_deassert(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %initialize = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %initialize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %initialize, align 4
  %grf = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grf, align 4
  %regs = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %tshut_polarity = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %tshut_polarity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tshut_polarity, align 4
  tail call void %13(ptr noundef %15, ptr noundef %17, i32 noundef %19) #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %chn_num69 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %chn_num69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chn_num69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp70 = icmp sgt i32 %23, 0
  br i1 %cmp70, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %tshut_mode = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 9
  %tshut_temp = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %24 = phi ptr [ %21, %for.body.lr.ph ], [ %44, %if.end18.for.body_crit_edge ]
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %id8 = getelementptr %struct.rockchip_thermal_data, ptr %1, i32 0, i32 3, i32 %i.071, i32 2
  %25 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id8, align 4
  %set_tshut_mode = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %set_tshut_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_tshut_mode, align 4
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %31 = ptrtoint ptr %tshut_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tshut_mode, align 4
  tail call void %28(i32 noundef %26, ptr noundef %30, i32 noundef %32) #6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %set_tshut_temp = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %set_tshut_temp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_tshut_temp, align 4
  %table = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %34, i32 0, i32 12
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %39 = ptrtoint ptr %tshut_temp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tshut_temp, align 4
  %call14 = tail call i32 %36(ptr noundef %table, i32 noundef %26, ptr noundef %38, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.body.if.end18_crit_edge, label %do.end

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %tshut_temp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tshut_temp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.79, i32 noundef %42, i32 noundef %call14) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %for.body.if.end18_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %chn_num = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %chn_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chn_num, align 4
  %cmp = icmp slt i32 %inc, %46
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %if.end6.for.end_crit_edge
  %.lcssa = phi ptr [ %21, %if.end6.for.end_crit_edge ], [ %44, %if.end18.for.end_crit_edge ]
  %control = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %.lcssa, i32 0, i32 7
  %47 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %control, align 4
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  tail call void %48(ptr noundef %50, i1 noundef zeroext true) #6
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %chn_num2372 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %chn_num2372 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chn_num2372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp2473 = icmp sgt i32 %54, 0
  br i1 %cmp2473, label %for.end.for.body25_crit_edge, label %for.end.for.end30_crit_edge

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.end.for.body25_crit_edge:                     ; preds = %for.end
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.end.for.body25_crit_edge
  %i.174 = phi i32 [ %inc29, %for.body25.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %tzd1.i = getelementptr %struct.rockchip_thermal_data, ptr %1, i32 0, i32 3, i32 %i.174, i32 1
  %55 = ptrtoint ptr %tzd1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tzd1.i, align 4
  %call.i68 = tail call i32 @thermal_zone_device_enable(ptr noundef %56) #6
  %inc29 = add nuw nsw i32 %i.174, 1
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %chn_num23 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %chn_num23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chn_num23, align 4
  %cmp24 = icmp slt i32 %inc29, %60
  br i1 %cmp24, label %for.body25.for.body25_crit_edge, label %for.body25.for.end30_crit_edge

for.body25.for.end30_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.end30:                                        ; preds = %for.body25.for.end30_crit_edge, %for.end.for.end30_crit_edge
  %call31 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end30, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %for.end30 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_rockchip_thermal__230_1575_rockchip_thermal_driver_init6, !1, !"__initcall__kmod_rockchip_thermal__230_1575_rockchip_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1575, i32 1}
!2 = !{ptr @__exitcall_rockchip_thermal_driver_exit, !1, !"__exitcall_rockchip_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1577, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1578, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1579, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias235, !11, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!11 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1580, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1567, i32 11}
!14 = !{ptr @rockchip_thermal_driver, !15, !"rockchip_thermal_driver", i1 false, i1 false}
!15 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1565, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1389, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rockchip_thermal_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rockchip_thermal_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1393, i32 42}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1396, i32 3}
!28 = !{ptr @rockchip_thermal_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rockchip_thermal_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1400, i32 43}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1403, i32 3}
!34 = !{ptr @rockchip_thermal_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rockchip_thermal_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1410, i32 3}
!38 = !{ptr @rockchip_thermal_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rockchip_thermal_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1417, i32 3}
!42 = !{ptr @rockchip_thermal_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rockchip_thermal_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1425, i32 3}
!46 = !{ptr @rockchip_thermal_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rockchip_thermal_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1438, i32 4}
!50 = !{ptr @rockchip_thermal_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rockchip_thermal_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1448, i32 8}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1450, i32 3}
!56 = !{ptr @rockchip_thermal_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rockchip_thermal_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1462, i32 4}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rockchip_thermal_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rockchip_thermal_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1253, i32 31}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1254, i32 3}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rockchip_configure_from_dt._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rockchip_configure_from_dt._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1260, i32 4}
!72 = !{ptr @rockchip_configure_from_dt._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rockchip_configure_from_dt._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1267, i32 31}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1268, i32 3}
!78 = !{ptr @rockchip_configure_from_dt._entry.41, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rockchip_configure_from_dt._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1278, i32 3}
!84 = !{ptr @rockchip_configure_from_dt._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rockchip_configure_from_dt._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1283, i32 31}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1285, i32 3}
!90 = !{ptr @rockchip_configure_from_dt._entry.50, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rockchip_configure_from_dt._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1295, i32 3}
!96 = !{ptr @rockchip_configure_from_dt._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rockchip_configure_from_dt._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1303, i32 53}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1305, i32 3}
!102 = !{ptr @rockchip_configure_from_dt._entry.59, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rockchip_configure_from_dt._entry_ptr.61, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1324, i32 3}
!106 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rockchip_thermal_register_sensor._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @rockchip_thermal_register_sensor._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1333, i32 3}
!111 = !{ptr @rockchip_thermal_register_sensor._entry.64, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rockchip_thermal_register_sensor._entry_ptr.66, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @rockchip_of_thermal_ops, !114, !"rockchip_of_thermal_ops", i1 false, i1 false}
!114 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1242, i32 48}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1236, i32 2}
!117 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @rockchip_thermal_get_temp.__UNIQUE_ID_ddebug229, !116, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1220, i32 2}
!121 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @rockchip_thermal_set_trips.__UNIQUE_ID_ddebug228, !120, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1203, i32 2}
!125 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @rockchip_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug227, !124, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!127 = !{ptr @of_rockchip_thermal_match, !128, !"of_rockchip_thermal_match", i1 false, i1 false}
!128 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1147, i32 34}
!129 = !{ptr @px30_tsadc_data, !130, !"px30_tsadc_data", i1 false, i1 false}
!130 = !{!"../drivers/thermal/rockchip_thermal.c", i32 927, i32 41}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/thermal/rockchip_thermal.c", i32 625, i32 3}
!133 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rk_tsadcv2_code_to_temp._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @rk_tsadcv2_code_to_temp._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/thermal/rockchip_thermal.c", i32 568, i32 3}
!138 = !{ptr @rk_tsadcv2_temp_to_code._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rk_tsadcv2_temp_to_code._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/thermal/rockchip_thermal.c", i32 573, i32 2}
!142 = !{ptr @rk_tsadcv2_temp_to_code._entry.76, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rk_tsadcv2_temp_to_code._entry_ptr.78, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @rk3328_code_table, !145, !"rk3328_code_table", i1 false, i1 false}
!145 = !{!"../drivers/thermal/rockchip_thermal.c", i32 371, i32 33}
!146 = !{ptr @rv1108_tsadc_data, !147, !"rv1108_tsadc_data", i1 false, i1 false}
!147 = !{!"../drivers/thermal/rockchip_thermal.c", i32 951, i32 41}
!148 = !{ptr @rv1108_table, !149, !"rv1108_table", i1 false, i1 false}
!149 = !{!"../drivers/thermal/rockchip_thermal.c", i32 254, i32 33}
!150 = !{ptr @rk3228_tsadc_data, !151, !"rk3228_tsadc_data", i1 false, i1 false}
!151 = !{!"../drivers/thermal/rockchip_thermal.c", i32 975, i32 41}
!152 = !{ptr @rk3228_code_table, !153, !"rk3228_code_table", i1 false, i1 false}
!153 = !{!"../drivers/thermal/rockchip_thermal.c", i32 293, i32 33}
!154 = !{ptr @rk3288_tsadc_data, !155, !"rk3288_tsadc_data", i1 false, i1 false}
!155 = !{!"../drivers/thermal/rockchip_thermal.c", i32 999, i32 41}
!156 = !{ptr @rk3288_code_table, !157, !"rk3288_code_table", i1 false, i1 false}
!157 = !{!"../drivers/thermal/rockchip_thermal.c", i32 332, i32 33}
!158 = !{ptr @rk3328_tsadc_data, !159, !"rk3328_tsadc_data", i1 false, i1 false}
!159 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1024, i32 41}
!160 = !{ptr @rk3366_tsadc_data, !161, !"rk3366_tsadc_data", i1 false, i1 false}
!161 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1047, i32 41}
!162 = !{ptr @rk3368_tsadc_data, !163, !"rk3368_tsadc_data", i1 false, i1 false}
!163 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1072, i32 41}
!164 = !{ptr @rk3368_code_table, !165, !"rk3368_code_table", i1 false, i1 false}
!165 = !{!"../drivers/thermal/rockchip_thermal.c", i32 409, i32 33}
!166 = !{ptr @rk3399_tsadc_data, !167, !"rk3399_tsadc_data", i1 false, i1 false}
!167 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1097, i32 41}
!168 = !{ptr @rk3399_code_table, !169, !"rk3399_code_table", i1 false, i1 false}
!169 = !{!"../drivers/thermal/rockchip_thermal.c", i32 448, i32 33}
!170 = !{ptr @rk3568_tsadc_data, !171, !"rk3568_tsadc_data", i1 false, i1 false}
!171 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1122, i32 41}
!172 = !{ptr @rk3568_code_table, !173, !"rk3568_code_table", i1 false, i1 false}
!173 = !{!"../drivers/thermal/rockchip_thermal.c", i32 487, i32 33}
!174 = !{ptr @rockchip_thermal_pm_ops, !175, !"rockchip_thermal_pm_ops", i1 false, i1 false}
!175 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1562, i32 8}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/thermal/rockchip_thermal.c", i32 1548, i32 4}
!178 = !{ptr @rockchip_thermal_resume._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @rockchip_thermal_resume._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{i64 2148762287, i64 2148762292, i64 2148762305, i64 2148762349, i64 2148762383, i64 2148762404}
!191 = !{i64 4277748}
!192 = !{i64 4278166}
!193 = !{!"branch_weights", i32 1, i32 2000}
