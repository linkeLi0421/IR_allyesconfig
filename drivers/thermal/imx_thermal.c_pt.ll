; ModuleID = '/llk/IR_all_yes/drivers/thermal/imx_thermal.c_pt.bc'
source_filename = "../drivers/thermal/imx_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thermal_soc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.imx_thermal_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_imx_thermal__205_931_imx_thermal_init6 = internal global ptr @imx_thermal_init, section ".initcall6.init", align 4
@imx_thermal = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_thermal_probe, ptr @imx_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_imx_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_thermal_exit = internal global ptr @imx_thermal_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author206 = internal constant [49 x i8] c"imx_thermal.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [63 x i8] c"imx_thermal.description=Thermal driver for Freescale i.MX SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file208 = internal constant [45 x i8] c"imx_thermal.file=drivers/thermal/imx_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [27 x i8] c"imx_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias210 = internal constant [39 x i8] c"imx_thermal.alias=platform:imx-thermal\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx_thermal\00", [20 x i8] zeroinitializer }, align 32
@of_imx_thermal_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-tempmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_imx6q_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-tempmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-tempmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_imx7d_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@imx_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_thermal_suspend, ptr @imx_thermal_resume, ptr @imx_thermal_suspend, ptr @imx_thermal_resume, ptr @imx_thermal_suspend, ptr @imx_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_thermal_runtime_suspend, ptr @imx_thermal_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,tempmon\00", [20 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 663, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get tempmon regmap: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_thermal_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/thermal/imx_thermal.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr = internal global ptr @imx_thermal_probe._entry, section ".printk_index", align 4
@imx_thermal_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no device match found\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.9 = internal global ptr @imx_thermal_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvmem-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init from nvmem\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 701, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to init from fsl,tempmon-data\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.14 = internal global ptr @imx_thermal_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register cpufreq cooling device\0A\00", [53 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 729, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get thermal clk: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.18 = internal global ptr @imx_thermal_probe._entry.16, section ".printk_index", align 4
@imx_thermal_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 742, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable thermal clk: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.21 = internal global ptr @imx_thermal_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_thermal_zone\00", [47 x i8] zeroinitializer }, align 32
@imx_tz_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr @imx_bind, ptr @imx_unbind, ptr @imx_get_temp, ptr null, ptr @imx_change_mode, ptr @imx_get_trip_type, ptr @imx_get_trip_temp, ptr @imx_set_trip_temp, ptr null, ptr null, ptr @imx_get_crit_temp, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register thermal zone device %d\0A\00", [53 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.25 = internal global ptr @imx_thermal_probe._entry.23, section ".printk_index", align 4
@imx_thermal_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 762, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s CPU temperature grade - max:%dC critical:%dC passive:%dC\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.29 = internal global ptr @imx_thermal_probe._entry.26, section ".printk_index", align 4
@imx_thermal_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 799, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request alarm irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_thermal_probe._entry_ptr.32 = internal global ptr @imx_thermal_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"calib\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp_grade\00", [21 x i8] zeroinitializer }, align 32
@imx_init_calib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 439, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid sensor calibration data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_init_calib\00", [17 x i8] zeroinitializer }, align 32
@imx_init_calib._entry_ptr = internal global ptr @imx_init_calib._entry, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Commercial\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Extended Commercial\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Industrial\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Automotive\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,tempmon-data\00", [47 x i8] zeroinitializer }, align 32
@imx_init_from_tempmon_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get sensor regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx_init_from_tempmon_data\00", [37 x i8] zeroinitializer }, align 32
@imx_init_from_tempmon_data._entry_ptr = internal global ptr @imx_init_from_tempmon_data._entry, section ".printk_index", align 4
@imx_init_from_tempmon_data._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read sensor data: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@imx_init_from_tempmon_data._entry_ptr.46 = internal global ptr @imx_init_from_tempmon_data._entry.44, section ".printk_index", align 4
@imx_init_from_tempmon_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 539, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@imx_init_from_tempmon_data._entry_ptr.48 = internal global ptr @imx_init_from_tempmon_data._entry.47, section ".printk_index", align 4
@imx_thermal_register_legacy_cooling.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"imx_thermal_register_legacy_cooling\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: CPUFreq policy not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#cooling-cells\00", [17 x i8] zeroinitializer }, align 32
@imx_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"binding zone %s with cdev %s failed:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx_bind\00", [23 x i8] zeroinitializer }, align 32
@imx_bind._entry_ptr = internal global ptr @imx_bind._entry, section ".printk_index", align 4
@imx_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unbinding zone %s with cdev %s failed:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx_unbind\00", [21 x i8] zeroinitializer }, align 32
@imx_unbind._entry_ptr = internal global ptr @imx_unbind._entry, section ".printk_index", align 4
@imx_get_temp.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_get_temp\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"temp measurement never finished\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_get_temp.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.58, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"thermal alarm off: T < %d\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_get_temp.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.59, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"millicelsius: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@imx_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"imx_thermal_alarm_irq_thread\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"THERMAL ALARM: T > %d\0A\00", [41 x i8] zeroinitializer }, align 32
@thermal_imx6q_data = internal global { %struct.thermal_soc_data, [48 x i8] } { %struct.thermal_soc_data { i32 1, i32 384, i32 1, i32 2, i32 400, i32 65535, i32 0, i32 384, i32 1048320, i32 8, i32 4, i32 0, i32 0, i32 0, i32 384, i32 -1048576, i32 20, i32 0, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@thermal_imx6sx_data = internal global { %struct.thermal_soc_data, [48 x i8] } { %struct.thermal_soc_data { i32 2, i32 384, i32 1, i32 2, i32 400, i32 65535, i32 0, i32 384, i32 1048320, i32 8, i32 4, i32 656, i32 268369920, i32 16, i32 384, i32 -1048576, i32 20, i32 656, i32 4095, i32 0 }, [48 x i8] zeroinitializer }, align 32
@thermal_imx7d_data = internal global { %struct.thermal_soc_data, [48 x i8] } { %struct.thermal_soc_data { i32 3, i32 784, i32 512, i32 1024, i32 784, i32 -65536, i32 16, i32 784, i32 511, i32 0, i32 2048, i32 784, i32 133955584, i32 18, i32 768, i32 261632, i32 9, i32 768, i32 511, i32 0 }, [48 x i8] zeroinitializer }, align 32
@switch.table.imx_thermal_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@switch.table.imx_thermal_probe.62 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 95000, i32 105000, i32 105000, i32 125000], [16 x i8] zeroinitializer }, align 32
@switch.table.imx_thermal_probe.63 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@switch.table.imx_thermal_probe.64 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 95000, i32 105000, i32 105000, i32 125000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"imx_thermal\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 922, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 924, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"of_imx_thermal_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 590, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"imx_thermal_pm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 916, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 660, i32 59 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 663, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 670, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 693, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 697, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 701, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 722, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 728, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 742, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 746, i32 42 }
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"imx_tz_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 421, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 754, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 759, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 799, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 552, i32 40 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 560, i32 40 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 439, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 489, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 493, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 497, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 501, i32 22 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 521, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 524, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 530, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 539, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 610, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 616, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 396, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 412, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 267, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 288, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 294, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 582, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"thermal_imx6q_data\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 118, i32 32 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"thermal_imx6sx_data\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 139, i32 32 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"thermal_imx7d_data\00", align 1
@___asan_gen_.259 = private constant [33 x i8] c"../drivers/thermal/imx_thermal.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 168, i32 32 }
@___asan_gen_.261 = private unnamed_addr constant [31 x i8] c"switch.table.imx_thermal_probe\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [34 x i8] c"switch.table.imx_thermal_probe.62\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [34 x i8] c"switch.table.imx_thermal_probe.63\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [34 x i8] c"switch.table.imx_thermal_probe.64\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__exitcall_imx_thermal_exit, ptr @__initcall__kmod_imx_thermal__205_931_imx_thermal_init6, ptr @imx_bind._entry, ptr @imx_bind._entry_ptr, ptr @imx_init_calib._entry, ptr @imx_init_calib._entry_ptr, ptr @imx_init_from_tempmon_data._entry, ptr @imx_init_from_tempmon_data._entry.44, ptr @imx_init_from_tempmon_data._entry.47, ptr @imx_init_from_tempmon_data._entry_ptr, ptr @imx_init_from_tempmon_data._entry_ptr.46, ptr @imx_init_from_tempmon_data._entry_ptr.48, ptr @imx_thermal_exit, ptr @imx_thermal_probe._entry, ptr @imx_thermal_probe._entry.12, ptr @imx_thermal_probe._entry.16, ptr @imx_thermal_probe._entry.19, ptr @imx_thermal_probe._entry.23, ptr @imx_thermal_probe._entry.26, ptr @imx_thermal_probe._entry.30, ptr @imx_thermal_probe._entry.7, ptr @imx_thermal_probe._entry_ptr, ptr @imx_thermal_probe._entry_ptr.14, ptr @imx_thermal_probe._entry_ptr.18, ptr @imx_thermal_probe._entry_ptr.21, ptr @imx_thermal_probe._entry_ptr.25, ptr @imx_thermal_probe._entry_ptr.29, ptr @imx_thermal_probe._entry_ptr.32, ptr @imx_thermal_probe._entry_ptr.9, ptr @imx_unbind._entry, ptr @imx_unbind._entry_ptr, ptr @imx_thermal, ptr @.str, ptr @of_imx_thermal_match, ptr @imx_thermal_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @imx_tz_ops, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @thermal_imx6q_data, ptr @thermal_imx6sx_data, ptr @thermal_imx7d_data, ptr @switch.table.imx_thermal_probe, ptr @switch.table.imx_thermal_probe.62, ptr @switch.table.imx_thermal_probe.63, ptr @switch.table.imx_thermal_probe.64], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_imx_thermal_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tz_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_thermal_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_init_calib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_init_from_tempmon_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_init_from_tempmon_data._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_init_from_tempmon_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_imx6q_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_imx6sx_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_imx7d_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.imx_thermal_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.imx_thermal_probe.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.imx_thermal_probe.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.imx_thermal_probe.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_thermal, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_thermal_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_thermal) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i297 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tempmon = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %tempmon to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %tempmon, align 4
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %socdata = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 15
  %5 = ptrtoint ptr %socdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %socdata, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then21, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @regmap_write(ptr noundef %call4, i32 noundef 360, i32 noundef 939524096) #9
  %8 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %socdata, align 4
  %low_alarm_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %low_alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %low_alarm_ctrl, align 4
  %add = add i32 %11, 4
  %low_alarm_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %low_alarm_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %low_alarm_mask, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %call4, i32 noundef %add, i32 noundef %13) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call27, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call35 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef null) #9
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !145
  %call.i296 = call i32 @nvmem_cell_read_u32(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296)
  %tobool.not.i = icmp eq i32 %call.i296, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then37.if.then40_crit_edge

if.then37.if.then40_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end.i:                                         ; preds = %if.then37
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %23 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end.i.i [
    i32 0, label %if.end.i.imx_init_calib.exit.i_crit_edge
    i32 -1, label %if.end.i.imx_init_calib.exit.i_crit_edge467
  ]

if.end.i.imx_init_calib.exit.i_crit_edge467:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_init_calib.exit.i

if.end.i.imx_init_calib.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_init_calib.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %socdata.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %22, i32 0, i32 15
  %24 = ptrtoint ptr %socdata.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %socdata.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp2.i.i = icmp eq i32 %27, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i = lshr i32 %20, 9
  %and.i.i = and i32 %shr.i.i, 511
  %c1.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %22, i32 0, i32 5
  %28 = ptrtoint ptr %c1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i.i, ptr %c1.i.i, align 4
  br label %if.end4.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr5.i.i = lshr i32 %20, 20
  %mul6.i.i = mul nuw nsw i32 %shr5.i.i, 15423
  %sub.i.i = add nsw i32 %mul6.i.i, -4148468
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i.i, i64 10000000000) #13, !srcloc !146
  %asmresult1.i.i.i = extractvalue { i64, i64 } %29, 1
  %extract.t = trunc i64 %asmresult1.i.i.i to i32
  %c1195.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %22, i32 0, i32 5
  %30 = ptrtoint ptr %c1195.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %extract.t, ptr %c1195.i.i, align 4
  %mul197.i.i = mul i32 %shr5.i.i, %extract.t
  %add198.i.i = add i32 %mul197.i.i, 28581
  %c2.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %22, i32 0, i32 6
  %31 = ptrtoint ptr %c2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add198.i.i, ptr %c2.i.i, align 4
  br label %if.end4.i

imx_init_calib.exit.i:                            ; preds = %if.end.i.imx_init_calib.exit.i_crit_edge, %if.end.i.imx_init_calib.exit.i_crit_edge467
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %if.then40

if.end4.i:                                        ; preds = %if.end4.i.i, %if.then3.i.i
  %call6.i = call i32 @nvmem_cell_read_u32(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.if.then40_crit_edge

if.end4.i.if.then40_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %shr.i20.i = lshr i32 %33, 6
  %and.i21.i = and i32 %shr.i20.i, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.imx_thermal_probe, i32 0, i32 %and.i21.i
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep461 = getelementptr inbounds [4 x i32], ptr @switch.table.imx_thermal_probe.62, i32 0, i32 %and.i21.i
  %37 = ptrtoint ptr %switch.gep461 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load462 = load i32, ptr %switch.gep461, align 4
  %temp_grade8.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %35, i32 0, i32 16
  %38 = ptrtoint ptr %temp_grade8.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %switch.load, ptr %temp_grade8.i.i, align 4
  %temp_max9.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %35, i32 0, i32 9
  %39 = ptrtoint ptr %temp_max9.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %switch.load462, ptr %temp_max9.i.i, align 4
  %sub.i22.i = add nsw i32 %switch.load462, -5000
  %temp_critical.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %35, i32 0, i32 8
  %40 = ptrtoint ptr %temp_critical.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i22.i, ptr %temp_critical.i.i, align 4
  %sub12.i.i = add nsw i32 %switch.load462, -10000
  %temp_passive.i.i = getelementptr inbounds %struct.imx_thermal_data, ptr %35, i32 0, i32 7
  %41 = ptrtoint ptr %temp_passive.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub12.i.i, ptr %temp_passive.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.end52

if.then40:                                        ; preds = %if.end4.i.if.then40_crit_edge, %imx_init_calib.exit.i, %if.then37.if.then40_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %if.end4.i.if.then40_crit_edge ], [ -22, %imx_init_calib.exit.i ], [ %call.i296, %if.then37.if.then40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %call42 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i.ph, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i297) #9
  %42 = ptrtoint ptr %val.i297 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val.i297, align 4, !annotation !145
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %call.i299 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %44, ptr noundef nonnull @.str.41) #9
  %cmp.i.i = icmp ugt ptr %call.i299, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %imx_init_from_tempmon_data.exit, label %if.end.i301

if.end.i301:                                      ; preds = %if.else
  %call4.i = call i32 @regmap_read(ptr noundef %call.i299, i32 noundef 1248, ptr noundef nonnull %val.i297) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i300 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i300, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call4.i) #12
  br label %imx_init_from_tempmon_data.exit.thread

if.end10.i:                                       ; preds = %if.end.i301
  %45 = ptrtoint ptr %val.i297 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i297, align 4
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i, align 4
  %49 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %46, label %if.end.i.i305 [
    i32 0, label %if.end10.i.imx_init_calib.exit.i429_crit_edge
    i32 -1, label %if.end10.i.imx_init_calib.exit.i429_crit_edge468
  ]

if.end10.i.imx_init_calib.exit.i429_crit_edge468: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_init_calib.exit.i429

if.end10.i.imx_init_calib.exit.i429_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_init_calib.exit.i429

if.end.i.i305:                                    ; preds = %if.end10.i
  %socdata.i.i303 = getelementptr inbounds %struct.imx_thermal_data, ptr %48, i32 0, i32 15
  %50 = ptrtoint ptr %socdata.i.i303 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %socdata.i.i303, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp2.i.i304 = icmp eq i32 %53, 3
  br i1 %cmp2.i.i304, label %if.then3.i.i309, label %if.end4.i.i316

if.then3.i.i309:                                  ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i306 = lshr i32 %46, 9
  %and.i.i307 = and i32 %shr.i.i306, 511
  %c1.i.i308 = getelementptr inbounds %struct.imx_thermal_data, ptr %48, i32 0, i32 5
  %54 = ptrtoint ptr %c1.i.i308 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i.i307, ptr %c1.i.i308, align 4
  br label %if.end14.i

if.end4.i.i316:                                   ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #11
  %shr5.i.i310 = lshr i32 %46, 20
  %mul6.i.i311 = mul nuw nsw i32 %shr5.i.i310, 15423
  %sub.i.i312 = add nsw i32 %mul6.i.i311, -4148468
  %55 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i.i312, i64 10000000000) #13, !srcloc !146
  %asmresult1.i.i.i420 = extractvalue { i64, i64 } %55, 1
  %extract.t458 = trunc i64 %asmresult1.i.i.i420 to i32
  %c1195.i.i424 = getelementptr inbounds %struct.imx_thermal_data, ptr %48, i32 0, i32 5
  %56 = ptrtoint ptr %c1195.i.i424 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %extract.t458, ptr %c1195.i.i424, align 4
  %mul197.i.i425 = mul i32 %shr5.i.i310, %extract.t458
  %add198.i.i426 = add i32 %mul197.i.i425, 28581
  %c2.i.i427 = getelementptr inbounds %struct.imx_thermal_data, ptr %48, i32 0, i32 6
  %57 = ptrtoint ptr %c2.i.i427 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add198.i.i426, ptr %c2.i.i427, align 4
  br label %if.end14.i

imx_init_calib.exit.i429:                         ; preds = %if.end10.i.imx_init_calib.exit.i429_crit_edge, %if.end10.i.imx_init_calib.exit.i429_crit_edge468
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %imx_init_from_tempmon_data.exit.thread

if.end14.i:                                       ; preds = %if.end4.i.i316, %if.then3.i.i309
  %call15.i = call i32 @regmap_read(ptr noundef %call.i299, i32 noundef 1152, ptr noundef nonnull %val.i297) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end22.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call15.i) #12
  br label %imx_init_from_tempmon_data.exit.thread

if.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %val.i297 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i297, align 4
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i, align 4
  %shr.i43.i = lshr i32 %59, 6
  %and.i44.i = and i32 %shr.i43.i, 3
  %switch.gep463 = getelementptr inbounds [4 x ptr], ptr @switch.table.imx_thermal_probe.63, i32 0, i32 %and.i44.i
  %62 = ptrtoint ptr %switch.gep463 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load464 = load ptr, ptr %switch.gep463, align 4
  %switch.gep465 = getelementptr inbounds [4 x i32], ptr @switch.table.imx_thermal_probe.64, i32 0, i32 %and.i44.i
  %63 = ptrtoint ptr %switch.gep465 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load466 = load i32, ptr %switch.gep465, align 4
  %temp_grade8.i.i436 = getelementptr inbounds %struct.imx_thermal_data, ptr %61, i32 0, i32 16
  %64 = ptrtoint ptr %temp_grade8.i.i436 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %switch.load464, ptr %temp_grade8.i.i436, align 4
  %temp_max9.i.i437 = getelementptr inbounds %struct.imx_thermal_data, ptr %61, i32 0, i32 9
  %65 = ptrtoint ptr %temp_max9.i.i437 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %switch.load466, ptr %temp_max9.i.i437, align 4
  %sub.i45.i = add nsw i32 %switch.load466, -5000
  %temp_critical.i.i438 = getelementptr inbounds %struct.imx_thermal_data, ptr %61, i32 0, i32 8
  %66 = ptrtoint ptr %temp_critical.i.i438 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.i45.i, ptr %temp_critical.i.i438, align 4
  %sub12.i.i439 = add nsw i32 %switch.load466, -10000
  %temp_passive.i.i440 = getelementptr inbounds %struct.imx_thermal_data, ptr %61, i32 0, i32 7
  %67 = ptrtoint ptr %temp_passive.i.i440 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub12.i.i439, ptr %temp_passive.i.i440, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i297) #9
  br label %if.end52

imx_init_from_tempmon_data.exit.thread:           ; preds = %do.end20.i, %imx_init_calib.exit.i429, %do.end8.i
  %retval.0.i442.ph = phi i32 [ -22, %imx_init_calib.exit.i429 ], [ %call15.i, %do.end20.i ], [ %call4.i, %do.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i297) #9
  br label %do.end49

imx_init_from_tempmon_data.exit:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %call.i299 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %68) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i297) #9
  br label %do.end49

do.end49:                                         ; preds = %imx_init_from_tempmon_data.exit, %imx_init_from_tempmon_data.exit.thread
  %retval.0.i442452 = phi i32 [ %retval.0.i442.ph, %imx_init_from_tempmon_data.exit.thread ], [ %68, %imx_init_from_tempmon_data.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end22.i, %if.end9.i
  %69 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %socdata, align 4
  %sensor_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %sensor_ctrl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sensor_ctrl, align 4
  %add54 = add i32 %72, 8
  %power_down_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %70, i32 0, i32 2
  %73 = ptrtoint ptr %power_down_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %power_down_mask, align 4
  %call56 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add54, i32 noundef %74) #9
  %75 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %socdata, align 4
  %sensor_ctrl58 = getelementptr inbounds %struct.thermal_soc_data, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %sensor_ctrl58 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sensor_ctrl58, align 4
  %add59 = add i32 %78, 8
  %measure_temp_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %measure_temp_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %measure_temp_mask, align 4
  %call61 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add59, i32 noundef %80) #9
  %81 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %socdata, align 4
  %measure_freq_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %measure_freq_ctrl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %measure_freq_ctrl, align 4
  %add63 = add i32 %84, 8
  %measure_freq_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %82, i32 0, i32 5
  %85 = ptrtoint ptr %measure_freq_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %measure_freq_mask, align 4
  %call65 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add63, i32 noundef %86) #9
  %87 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %socdata, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp68.not = icmp eq i32 %90, 3
  br i1 %cmp68.not, label %if.end52.if.end71_crit_edge, label %if.then69

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 @regmap_write(ptr noundef %call4, i32 noundef 340, i32 noundef 8) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end52.if.end71_crit_edge
  %91 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %socdata, align 4
  %sensor_ctrl73 = getelementptr inbounds %struct.thermal_soc_data, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %sensor_ctrl73 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sensor_ctrl73, align 4
  %add74 = add i32 %94, 4
  %power_down_mask76 = getelementptr inbounds %struct.thermal_soc_data, ptr %92, i32 0, i32 2
  %95 = ptrtoint ptr %power_down_mask76 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %power_down_mask76, align 4
  %call77 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add74, i32 noundef %96) #9
  %call78 = call fastcc i32 @imx_thermal_register_legacy_cooling(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call78, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end83:                                         ; preds = %if.end71
  %call85 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %thermal_clk = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 14
  %97 = ptrtoint ptr %thermal_clk to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call85, ptr %thermal_clk, align 4
  %cmp.i443 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i443, label %if.then88, label %if.end98

if.then88:                                        ; preds = %if.end83
  %cmp91.not = icmp eq ptr %call85, inttoptr (i32 -517 to ptr)
  br i1 %cmp91.not, label %if.then88.legacy_cleanup_crit_edge, label %do.end95

if.then88.legacy_cleanup_crit_edge:               ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %legacy_cleanup

do.end95:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %call85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %98) #12
  br label %legacy_cleanup

if.end98:                                         ; preds = %if.end83
  %call100 = call fastcc i32 @clk_prepare_enable(ptr noundef %call85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call100) #12
  br label %legacy_cleanup

if.end107:                                        ; preds = %if.end98
  %call108 = call ptr @thermal_zone_device_register(ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %call.i, ptr noundef nonnull @imx_tz_ops, ptr noundef null, i32 noundef 1000, i32 noundef 2000) #9
  %tz = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 2
  %99 = ptrtoint ptr %tz to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call108, ptr %tz, align 4
  %cmp.i444 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i444, label %if.then111, label %do.end121

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %call108 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %100) #12
  br label %clk_disable

do.end121:                                        ; preds = %if.end107
  %temp_grade = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 16
  %101 = ptrtoint ptr %temp_grade to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %temp_grade, align 4
  %temp_max = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 9
  %103 = ptrtoint ptr %temp_max to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %temp_max, align 4
  %div = sdiv i32 %104, 1000
  %temp_critical = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 8
  %105 = ptrtoint ptr %temp_critical to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %temp_critical, align 4
  %div123 = sdiv i32 %106, 1000
  %temp_passive = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 7
  %107 = ptrtoint ptr %temp_passive to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %temp_passive, align 4
  %div124 = sdiv i32 %108, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %102, i32 noundef %div, i32 noundef %div123, i32 noundef %div124) #12
  %109 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %socdata, align 4
  %measure_freq_ctrl126 = getelementptr inbounds %struct.thermal_soc_data, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %measure_freq_ctrl126 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %measure_freq_ctrl126, align 4
  %add127 = add i32 %112, 8
  %measure_freq_mask129 = getelementptr inbounds %struct.thermal_soc_data, ptr %110, i32 0, i32 5
  %113 = ptrtoint ptr %measure_freq_mask129 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %measure_freq_mask129, align 4
  %call130 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add127, i32 noundef %114) #9
  %115 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %socdata, align 4
  %measure_freq_ctrl132 = getelementptr inbounds %struct.thermal_soc_data, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %measure_freq_ctrl132 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %measure_freq_ctrl132, align 4
  %add133 = add i32 %118, 4
  %measure_freq_shift = getelementptr inbounds %struct.thermal_soc_data, ptr %116, i32 0, i32 6
  %119 = ptrtoint ptr %measure_freq_shift to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %measure_freq_shift, align 4
  %shl = shl i32 3277, %120
  %call135 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add133, i32 noundef %shl) #9
  %121 = ptrtoint ptr %temp_passive to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %temp_passive, align 4
  call fastcc void @imx_set_alarm_temp(ptr noundef nonnull %call.i, i32 noundef %122)
  %123 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %socdata, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp139 = icmp eq i32 %126, 2
  br i1 %cmp139, label %if.then140, label %do.end121.if.end142_crit_edge

do.end121.if.end142_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then140:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %temp_critical to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %temp_critical, align 4
  call fastcc void @imx_set_panic_temp(ptr noundef nonnull %call.i, i32 noundef %128)
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %do.end121.if.end142_crit_edge
  %129 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %socdata, align 4
  %sensor_ctrl144 = getelementptr inbounds %struct.thermal_soc_data, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %sensor_ctrl144 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sensor_ctrl144, align 4
  %add145 = add i32 %132, 8
  %power_down_mask147 = getelementptr inbounds %struct.thermal_soc_data, ptr %130, i32 0, i32 2
  %133 = ptrtoint ptr %power_down_mask147 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %power_down_mask147, align 4
  %call148 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add145, i32 noundef %134) #9
  %135 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %socdata, align 4
  %sensor_ctrl150 = getelementptr inbounds %struct.thermal_soc_data, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %sensor_ctrl150 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sensor_ctrl150, align 4
  %add151 = add i32 %138, 4
  %measure_temp_mask153 = getelementptr inbounds %struct.thermal_soc_data, ptr %136, i32 0, i32 3
  %139 = ptrtoint ptr %measure_temp_mask153 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %measure_temp_mask153, align 4
  %call154 = call i32 @regmap_write(ptr noundef %call4, i32 noundef %add151, i32 noundef %140) #9
  call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #9
  %call.i445 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  %141 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %142) #9
  %143 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call.i, align 4
  %call159 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.end142.disable_runtime_pm_crit_edge, label %if.end162

if.end142.disable_runtime_pm_crit_edge:           ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_runtime_pm

if.end162:                                        ; preds = %if.end142
  %irq_enabled = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 12
  %145 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %irq_enabled, align 4
  %146 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tz, align 4
  %call164 = call i32 @thermal_zone_device_enable(ptr noundef %147) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end162.thermal_zone_unregister_crit_edge

if.end162.thermal_zone_unregister_crit_edge:      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %thermal_zone_unregister

if.end167:                                        ; preds = %if.end162
  %148 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq, align 4
  %call170 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %149, ptr noundef nonnull @imx_thermal_alarm_irq, ptr noundef nonnull @imx_thermal_alarm_irq_thread, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %do.end175, label %if.end177

do.end175:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call170) #12
  br label %thermal_zone_unregister

if.end177:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call.i, align 4
  %call.i446 = call i32 @__pm_runtime_idle(ptr noundef %151, i32 noundef 5) #9
  br label %cleanup

thermal_zone_unregister:                          ; preds = %do.end175, %if.end162.thermal_zone_unregister_crit_edge
  %ret.0 = phi i32 [ %call164, %if.end162.thermal_zone_unregister_crit_edge ], [ %call170, %do.end175 ]
  %152 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tz, align 4
  call void @thermal_zone_device_unregister(ptr noundef %153) #9
  br label %disable_runtime_pm

disable_runtime_pm:                               ; preds = %thermal_zone_unregister, %if.end142.disable_runtime_pm_crit_edge
  %ret.1 = phi i32 [ %call159, %if.end142.disable_runtime_pm_crit_edge ], [ %ret.0, %thermal_zone_unregister ]
  %154 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call.i, align 4
  call fastcc void @pm_runtime_put_noidle(ptr noundef %155)
  %156 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call.i, align 4
  call void @__pm_runtime_disable(ptr noundef %157, i1 noundef zeroext true) #9
  br label %clk_disable

clk_disable:                                      ; preds = %disable_runtime_pm, %if.then111
  %ret.2 = phi i32 [ %100, %if.then111 ], [ %ret.1, %disable_runtime_pm ]
  %158 = ptrtoint ptr %thermal_clk to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %thermal_clk, align 4
  call void @clk_disable(ptr noundef %159) #9
  call void @clk_unprepare(ptr noundef %159) #9
  br label %legacy_cleanup

legacy_cleanup:                                   ; preds = %clk_disable, %do.end105, %do.end95, %if.then88.legacy_cleanup_crit_edge
  %ret.3 = phi i32 [ %98, %do.end95 ], [ -517, %if.then88.legacy_cleanup_crit_edge ], [ %call100, %do.end105 ], [ %ret.2, %clk_disable ]
  %cdev.i = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 3
  %160 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cdev.i, align 4
  call void @cpufreq_cooling_unregister(ptr noundef %161) #9
  %policy.i = getelementptr inbounds %struct.imx_thermal_data, ptr %call.i, i32 0, i32 1
  %162 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %policy.i, align 4
  call void @cpufreq_cpu_put(ptr noundef %163) #9
  br label %cleanup

cleanup:                                          ; preds = %legacy_cleanup, %if.end177, %if.then80, %do.end49, %if.then40, %if.end26.cleanup_crit_edge, %do.end17, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call42, %if.then40 ], [ %call82, %if.then80 ], [ %ret.3, %legacy_cleanup ], [ 0, %if.end177 ], [ %retval.0.i442452, %do.end49 ], [ -19, %do.end17 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !148
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  %tz = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tz, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %8) #9
  %cdev.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdev.i, align 4
  tail call void @cpufreq_cooling_unregister(ptr noundef %10) #9
  %policy.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %policy.i, align 4
  tail call void @cpufreq_cpu_put(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_thermal_register_legacy_cooling(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get(i32 noundef 0) #9
  %policy = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %policy, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_thermal_register_legacy_cooling.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_thermal_register_legacy_cooling, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !150

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @imx_thermal_register_legacy_cooling.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %call9 = tail call ptr @of_get_cpu_node(i32 noundef %2, ptr noundef null) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.if.then13_crit_edge, label %lor.lhs.false

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end7
  %call11 = tail call ptr @of_find_property(ptr noundef nonnull %call9, ptr noundef nonnull @.str.51, ptr noundef null) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7.if.then13_crit_edge
  %3 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %policy, align 4
  %call15 = tail call ptr @cpufreq_cooling_register(ptr noundef %4) #9
  %cdev = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %cdev, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call15 to i32
  %7 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %policy, align 4
  tail call void @cpufreq_cpu_put(ptr noundef %8) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then13.if.end23_crit_edge, %lor.lhs.false.if.end23_crit_edge
  %ret.0 = phi i32 [ 0, %lor.lhs.false.if.end23_crit_edge ], [ %6, %if.then18 ], [ 0, %if.then13.if.end23_crit_edge ]
  tail call void @of_node_put(ptr noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.0, %if.end23 ], [ -517, %if.then6 ], [ -517, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_set_alarm_temp(ptr nocapture noundef %data, i32 noundef %alarm_temp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tempmon = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tempmon, align 4
  %socdata = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata, align 4
  %alarm_temp1 = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %alarm_temp1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %alarm_temp, ptr %alarm_temp1, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 %alarm_temp, 1000
  %c1 = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c1, align 4
  %add = add nsw i32 %div, -25
  %sub = add i32 %add, %8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %c2 = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c2, align 4
  %sub3 = sub i32 %10, %alarm_temp
  %c14 = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %c14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c14, align 4
  %div5 = udiv i32 %sub3, %12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %alarm_value.0 = phi i32 [ %sub, %if.then ], [ %div5, %if.else ]
  %high_alarm_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %high_alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %high_alarm_ctrl, align 4
  %add6 = add i32 %14, 8
  %high_alarm_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 15
  %15 = ptrtoint ptr %high_alarm_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %high_alarm_mask, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add6, i32 noundef %16) #9
  %17 = ptrtoint ptr %high_alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %high_alarm_ctrl, align 4
  %add8 = add i32 %18, 4
  %high_alarm_shift = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 16
  %19 = ptrtoint ptr %high_alarm_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %high_alarm_shift, align 4
  %shl = shl i32 %alarm_value.0, %20
  %call9 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add8, i32 noundef %shl) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_set_panic_temp(ptr nocapture noundef readonly %data, i32 noundef %panic_temp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %socdata = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %tempmon = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tempmon, align 4
  %c2 = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c2, align 4
  %sub = sub i32 %5, %panic_temp
  %c1 = getelementptr inbounds %struct.imx_thermal_data, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c1, align 4
  %div = udiv i32 %sub, %7
  %panic_alarm_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %panic_alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %panic_alarm_ctrl, align 4
  %add = add i32 %9, 8
  %panic_alarm_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %panic_alarm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %panic_alarm_mask, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add, i32 noundef %11) #9
  %12 = ptrtoint ptr %panic_alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %panic_alarm_ctrl, align 4
  %add2 = add i32 %13, 4
  %panic_alarm_shift = getelementptr inbounds %struct.thermal_soc_data, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %panic_alarm_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %panic_alarm_shift, align 4
  %shl = shl i32 %div, %15
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add2, i32 noundef %shl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !148
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_alarm_irq(i32 noundef %irq, ptr nocapture noundef writeonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #9
  %irq_enabled = getelementptr inbounds %struct.imx_thermal_data, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %irq_enabled, align 4
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_alarm_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_thermal_alarm_irq_thread, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tz = getelementptr inbounds %struct.imx_thermal_data, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz, align 4
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 2
  %alarm_temp = getelementptr inbounds %struct.imx_thermal_data, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %alarm_temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_temp, align 4
  %div = sdiv i32 %3, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug203, ptr noundef %device, ptr noundef nonnull @.str.61, i32 noundef %div) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tz3 = getelementptr inbounds %struct.imx_thermal_data, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %tz3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tz3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %5, i32 noundef 0) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !148
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cooling_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_bind(ptr noundef %tz, ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tz, i32 noundef 0, ptr noundef %cdev, i32 noundef -1, i32 noundef -1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 1
  %type1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.52, ptr noundef %type, ptr noundef %1, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_unbind(ptr noundef %tz, ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tz, i32 noundef 0, ptr noundef %cdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 1
  %type1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.54, ptr noundef %type, ptr noundef %1, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_get_temp(ptr noundef %tz, ptr nocapture noundef %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %socdata = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata, align 4
  %tempmon = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tempmon, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !145
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !148
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  br label %cleanup

if.end:                                           ; preds = %entry
  %temp_data = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %temp_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp_data, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef %11, ptr noundef nonnull %val) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %temp_valid_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %temp_valid_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp_valid_mask, align 4
  %and = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_get_temp.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_get_temp, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_get_temp.__UNIQUE_ID_ddebug200, ptr noundef %device, ptr noundef nonnull @.str.57) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %temp_value_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %temp_value_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_value_mask, align 4
  %and10 = and i32 %17, %13
  %temp_value_shift = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %temp_value_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp_value_shift, align 4
  %shr = lshr i32 %and10, %19
  %20 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socdata, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp12 = icmp eq i32 %23, 3
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %c1 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c1, align 4
  %sub = sub i32 %shr, %25
  %26 = mul i32 %sub, 1000
  %mul = add i32 %26, 25000
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %c2 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c2, align 4
  %c114 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %c114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c114, align 4
  %mul15 = mul i32 %30, %shr
  %sub16 = sub i32 %28, %mul15
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  %storemerge = phi i32 [ %sub16, %if.else ], [ %mul, %if.then13 ]
  %31 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %temp, align 4
  %32 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %socdata, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp20 = icmp eq i32 %35, 1
  br i1 %cmp20, label %if.then21, label %if.end17.if.end54_crit_edge

if.end17.if.end54_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then21:                                        ; preds = %if.end17
  %alarm_temp = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %alarm_temp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %alarm_temp, align 4
  %temp_passive = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %temp_passive to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %temp_passive, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp22 = icmp ne i32 %37, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %39)
  %cmp24.not = icmp slt i32 %storemerge, %39
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp24.not
  br i1 %or.cond, label %if.then21.if.end26_crit_edge, label %if.then25

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.then21
  %temp_critical = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %temp_critical to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %temp_critical, align 4
  %42 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tempmon, align 4
  %44 = ptrtoint ptr %alarm_temp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %alarm_temp, align 4
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp.i138 = icmp eq i32 %46, 3
  br i1 %cmp.i138, label %if.then.i139, label %if.else.i

if.then.i139:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = sdiv i32 %41, 1000
  %c1.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %c1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %c1.i, align 4
  %add.i = add nsw i32 %div.i, -25
  %sub.i = add i32 %add.i, %48
  br label %imx_set_alarm_temp.exit

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %c2.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %c2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %c2.i, align 4
  %sub3.i = sub i32 %50, %41
  %c14.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %c14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %c14.i, align 4
  %div5.i = udiv i32 %sub3.i, %52
  br label %imx_set_alarm_temp.exit

imx_set_alarm_temp.exit:                          ; preds = %if.else.i, %if.then.i139
  %alarm_value.0.i = phi i32 [ %sub.i, %if.then.i139 ], [ %div5.i, %if.else.i ]
  %high_alarm_ctrl.i = getelementptr inbounds %struct.thermal_soc_data, ptr %33, i32 0, i32 14
  %53 = ptrtoint ptr %high_alarm_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %high_alarm_ctrl.i, align 4
  %add6.i = add i32 %54, 8
  %high_alarm_mask.i = getelementptr inbounds %struct.thermal_soc_data, ptr %33, i32 0, i32 15
  %55 = ptrtoint ptr %high_alarm_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %high_alarm_mask.i, align 4
  %call.i140 = call i32 @regmap_write(ptr noundef %43, i32 noundef %add6.i, i32 noundef %56) #9
  %57 = ptrtoint ptr %high_alarm_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %high_alarm_ctrl.i, align 4
  %add8.i = add i32 %58, 4
  %high_alarm_shift.i = getelementptr inbounds %struct.thermal_soc_data, ptr %33, i32 0, i32 16
  %59 = ptrtoint ptr %high_alarm_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %high_alarm_shift.i, align 4
  %shl.i = shl i32 %alarm_value.0.i, %60
  %call9.i = call i32 @regmap_write(ptr noundef %43, i32 noundef %add8.i, i32 noundef %shl.i) #9
  br label %if.end26

if.end26:                                         ; preds = %imx_set_alarm_temp.exit, %if.then21.if.end26_crit_edge
  %61 = ptrtoint ptr %alarm_temp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %alarm_temp, align 4
  %temp_critical28 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 8
  %63 = ptrtoint ptr %temp_critical28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %temp_critical28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp29 = icmp eq i32 %62, %64
  br i1 %cmp29, label %land.lhs.true30, label %if.end26.if.end54_crit_edge

if.end26.if.end54_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true30:                                  ; preds = %if.end26
  %65 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %temp, align 4
  %67 = ptrtoint ptr %temp_passive to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %temp_passive, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp32 = icmp slt i32 %66, %68
  br i1 %cmp32, label %if.then33, label %land.lhs.true30.if.end54_crit_edge

land.lhs.true30.if.end54_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then33:                                        ; preds = %land.lhs.true30
  %69 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tempmon, align 4
  %71 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %socdata, align 4
  %73 = ptrtoint ptr %alarm_temp to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %68, ptr %alarm_temp, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp.i144 = icmp eq i32 %75, 3
  br i1 %cmp.i144, label %if.then.i149, label %if.else.i154

if.then.i149:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %div.i145 = sdiv i32 %68, 1000
  %c1.i146 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %c1.i146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %c1.i146, align 4
  %add.i147 = add nsw i32 %div.i145, -25
  %sub.i148 = add i32 %add.i147, %77
  br label %imx_set_alarm_temp.exit164

if.else.i154:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %c2.i150 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 6
  %78 = ptrtoint ptr %c2.i150 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %c2.i150, align 4
  %sub3.i151 = sub i32 %79, %68
  %c14.i152 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %80 = ptrtoint ptr %c14.i152 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %c14.i152, align 4
  %div5.i153 = udiv i32 %sub3.i151, %81
  br label %imx_set_alarm_temp.exit164

imx_set_alarm_temp.exit164:                       ; preds = %if.else.i154, %if.then.i149
  %alarm_value.0.i155 = phi i32 [ %sub.i148, %if.then.i149 ], [ %div5.i153, %if.else.i154 ]
  %high_alarm_ctrl.i156 = getelementptr inbounds %struct.thermal_soc_data, ptr %72, i32 0, i32 14
  %82 = ptrtoint ptr %high_alarm_ctrl.i156 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %high_alarm_ctrl.i156, align 4
  %add6.i157 = add i32 %83, 8
  %high_alarm_mask.i158 = getelementptr inbounds %struct.thermal_soc_data, ptr %72, i32 0, i32 15
  %84 = ptrtoint ptr %high_alarm_mask.i158 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %high_alarm_mask.i158, align 4
  %call.i159 = call i32 @regmap_write(ptr noundef %70, i32 noundef %add6.i157, i32 noundef %85) #9
  %86 = ptrtoint ptr %high_alarm_ctrl.i156 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %high_alarm_ctrl.i156, align 4
  %add8.i160 = add i32 %87, 4
  %high_alarm_shift.i161 = getelementptr inbounds %struct.thermal_soc_data, ptr %72, i32 0, i32 16
  %88 = ptrtoint ptr %high_alarm_shift.i161 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %high_alarm_shift.i161, align 4
  %shl.i162 = shl i32 %alarm_value.0.i155, %89
  %call9.i163 = call i32 @regmap_write(ptr noundef %70, i32 noundef %add8.i160, i32 noundef %shl.i162) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_get_temp.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_get_temp, %if.then47)) #9
          to label %if.end54 [label %if.then47], !srcloc !150

if.then47:                                        ; preds = %imx_set_alarm_temp.exit164
  call void @__sanitizer_cov_trace_pc() #11
  %device48 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %90 = ptrtoint ptr %alarm_temp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %alarm_temp, align 4
  %div = sdiv i32 %91, 1000
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_get_temp.__UNIQUE_ID_ddebug201, ptr noundef %device48, ptr noundef nonnull @.str.58, i32 noundef %div) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %imx_set_alarm_temp.exit164, %land.lhs.true30.if.end54_crit_edge, %if.end26.if.end54_crit_edge, %if.end17.if.end54_crit_edge
  %92 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %temp, align 4
  %last_temp = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 11
  %94 = ptrtoint ptr %last_temp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %last_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp55.not = icmp eq i32 %93, %95
  br i1 %cmp55.not, label %if.end54.if.end75_crit_edge, label %do.body57

if.end54.if.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.body57:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_get_temp.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_get_temp, %if.then69)) #9
          to label %do.end73 [label %if.then69], !srcloc !150

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %device70 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %96 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_get_temp.__UNIQUE_ID_ddebug202, ptr noundef %device70, ptr noundef nonnull @.str.59, i32 noundef %97) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body57
  %98 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %temp, align 4
  %100 = ptrtoint ptr %last_temp to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %last_temp, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %if.end54.if.end75_crit_edge
  %irq_enabled = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 12
  %101 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %irq_enabled, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool76.not = icmp eq i8 %102, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %if.end75.if.end82_crit_edge

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true77:                                  ; preds = %if.end75
  %103 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %temp, align 4
  %alarm_temp78 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 10
  %105 = ptrtoint ptr %alarm_temp78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %alarm_temp78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp79 = icmp slt i32 %104, %106
  br i1 %cmp79, label %if.then80, label %land.lhs.true77.if.end82_crit_edge

land.lhs.true77.if.end82_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %irq_enabled, align 4
  %irq = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 13
  %108 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %109) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %land.lhs.true77.if.end82_crit_edge, %if.end75.if.end82_crit_edge
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %call.i165 = call i32 @__pm_runtime_idle(ptr noundef %111, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then7, %do.body, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -11, %if.then7 ], [ -11, %do.body ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_change_mode(ptr nocapture noundef readonly %tz, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 5) #9
  %irq_enabled = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_enabled, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %irq_enabled, align 4
  %irq = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #9
  br label %if.end11

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #9
  %irq_enabled5 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %irq_enabled5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_enabled5, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.else.if.end11_crit_edge, label %if.then7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %irq8 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq8, align 4
  tail call void @disable_irq(i32 noundef %12) #9
  %13 = ptrtoint ptr %irq_enabled5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %irq_enabled5, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else.if.end11_crit_edge, %if.then1, %if.then.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imx_get_trip_type(ptr nocapture noundef readnone %tz, i32 noundef %trip, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cmp = icmp eq i32 %trip, 0
  %cond = select i1 %cmp, i32 1, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %type, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_get_trip_temp(ptr nocapture noundef readonly %tz, i32 noundef %trip, ptr nocapture noundef writeonly %temp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cmp = icmp eq i32 %trip, 0
  %temp_passive = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 7
  %temp_critical = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 8
  %cond.in = select i1 %cmp, ptr %temp_passive, ptr %temp_critical
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load i32, ptr %cond.in, align 4
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_set_trip_temp(ptr nocapture noundef readonly %tz, i32 noundef %trip, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !148
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trip)
  %cmp1 = icmp eq i32 %trip, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %temp)
  %cmp4 = icmp slt i32 %temp, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %temp_critical = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %temp_critical to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp_critical, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %temp)
  %cmp5 = icmp slt i32 %6, %temp
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %temp_passive = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %temp_passive to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %temp, ptr %temp_passive, align 4
  %tempmon.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %tempmon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tempmon.i, align 4
  %socdata.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socdata.i, align 4
  %alarm_temp1.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %alarm_temp1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %temp, ptr %alarm_temp1.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i19 = icmp eq i32 %14, 3
  br i1 %cmp.i19, label %if.then.i20, label %if.else.i

if.then.i20:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %div.i25 = udiv i32 %temp, 1000
  %c1.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %c1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c1.i, align 4
  %add.i = add nsw i32 %div.i25, -25
  %sub.i = add i32 %add.i, %16
  br label %imx_set_alarm_temp.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %c2.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %c2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c2.i, align 4
  %sub3.i = sub i32 %18, %temp
  %c14.i = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %c14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c14.i, align 4
  %div5.i = udiv i32 %sub3.i, %20
  br label %imx_set_alarm_temp.exit

imx_set_alarm_temp.exit:                          ; preds = %if.else.i, %if.then.i20
  %alarm_value.0.i = phi i32 [ %sub.i, %if.then.i20 ], [ %div5.i, %if.else.i ]
  %high_alarm_ctrl.i = getelementptr inbounds %struct.thermal_soc_data, ptr %11, i32 0, i32 14
  %21 = ptrtoint ptr %high_alarm_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %high_alarm_ctrl.i, align 4
  %add6.i = add i32 %22, 8
  %high_alarm_mask.i = getelementptr inbounds %struct.thermal_soc_data, ptr %11, i32 0, i32 15
  %23 = ptrtoint ptr %high_alarm_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %high_alarm_mask.i, align 4
  %call.i21 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add6.i, i32 noundef %24) #9
  %25 = ptrtoint ptr %high_alarm_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %high_alarm_ctrl.i, align 4
  %add8.i = add i32 %26, 4
  %high_alarm_shift.i = getelementptr inbounds %struct.thermal_soc_data, ptr %11, i32 0, i32 16
  %27 = ptrtoint ptr %high_alarm_shift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %high_alarm_shift.i, align 4
  %shl.i = shl i32 %alarm_value.0.i, %28
  %call9.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add8.i, i32 noundef %shl.i) #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i22 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %imx_set_alarm_temp.exit, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %imx_set_alarm_temp.exit ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_get_crit_temp(ptr nocapture noundef readonly %tz, ptr nocapture noundef writeonly %temp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %temp_critical = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %temp_critical to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp_critical, align 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_bind_cooling_device(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_unbind_cooling_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cooling_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tz = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tz, align 4
  %call1 = tail call i32 @thermal_zone_device_disable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tz = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tz, align 4
  %call3 = tail call i32 @thermal_zone_device_enable(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %socdata1 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %socdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata1, align 4
  %tempmon = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tempmon, align 4
  %sensor_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sensor_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_ctrl, align 4
  %add = add i32 %7, 8
  %measure_temp_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %measure_temp_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %measure_temp_mask, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %sensor_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sensor_ctrl, align 4
  %add4 = add i32 %11, 4
  %power_down_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %power_down_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_down_mask, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add4, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %thermal_clk = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %thermal_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thermal_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call2, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_thermal_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %socdata1 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %socdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata1, align 4
  %tempmon = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tempmon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tempmon, align 4
  %thermal_clk = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %thermal_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thermal_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %sensor_ctrl = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %sensor_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sensor_ctrl, align 4
  %add = add i32 %9, 8
  %power_down_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %power_down_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_down_mask, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %sensor_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensor_ctrl, align 4
  %add8 = add i32 %13, 4
  %measure_temp_mask = getelementptr inbounds %struct.thermal_soc_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %measure_temp_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %measure_temp_mask, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add8, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126, !128, !130, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_imx_thermal__205_931_imx_thermal_init6, !1, !"__initcall__kmod_imx_thermal__205_931_imx_thermal_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/imx_thermal.c", i32 931, i32 1}
!2 = !{ptr @__exitcall_imx_thermal_exit, !1, !"__exitcall_imx_thermal_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author206, !4, !"__UNIQUE_ID_author206", i1 false, i1 false}
!4 = !{!"../drivers/thermal/imx_thermal.c", i32 933, i32 1}
!5 = !{ptr @__UNIQUE_ID_description207, !6, !"__UNIQUE_ID_description207", i1 false, i1 false}
!6 = !{!"../drivers/thermal/imx_thermal.c", i32 934, i32 1}
!7 = !{ptr @__UNIQUE_ID_file208, !8, !"__UNIQUE_ID_file208", i1 false, i1 false}
!8 = !{!"../drivers/thermal/imx_thermal.c", i32 935, i32 1}
!9 = !{ptr @__UNIQUE_ID_license209, !8, !"__UNIQUE_ID_license209", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias210, !11, !"__UNIQUE_ID_alias210", i1 false, i1 false}
!11 = !{!"../drivers/thermal/imx_thermal.c", i32 936, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/imx_thermal.c", i32 924, i32 11}
!14 = !{ptr @imx_thermal, !15, !"imx_thermal", i1 false, i1 false}
!15 = !{!"../drivers/thermal/imx_thermal.c", i32 922, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/imx_thermal.c", i32 660, i32 59}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/imx_thermal.c", i32 663, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx_thermal_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_thermal_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/imx_thermal.c", i32 670, i32 3}
!28 = !{ptr @imx_thermal_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx_thermal_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/imx_thermal.c", i32 693, i32 42}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/imx_thermal.c", i32 697, i32 11}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/imx_thermal.c", i32 701, i32 4}
!36 = !{ptr @imx_thermal_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx_thermal_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/imx_thermal.c", i32 722, i32 10}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thermal/imx_thermal.c", i32 728, i32 4}
!42 = !{ptr @imx_thermal_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx_thermal_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/thermal/imx_thermal.c", i32 742, i32 3}
!46 = !{ptr @imx_thermal_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_thermal_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thermal/imx_thermal.c", i32 746, i32 42}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thermal/imx_thermal.c", i32 754, i32 3}
!52 = !{ptr @imx_thermal_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_thermal_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/thermal/imx_thermal.c", i32 759, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @imx_thermal_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @imx_thermal_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/thermal/imx_thermal.c", i32 799, i32 3}
!61 = !{ptr @imx_thermal_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @imx_thermal_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thermal/imx_thermal.c", i32 552, i32 40}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thermal/imx_thermal.c", i32 560, i32 40}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/thermal/imx_thermal.c", i32 439, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @imx_init_calib._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @imx_init_calib._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/thermal/imx_thermal.c", i32 489, i32 22}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thermal/imx_thermal.c", i32 493, i32 22}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/thermal/imx_thermal.c", i32 497, i32 22}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thermal/imx_thermal.c", i32 501, i32 22}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/thermal/imx_thermal.c", i32 521, i32 12}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/thermal/imx_thermal.c", i32 524, i32 3}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @imx_init_from_tempmon_data._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @imx_init_from_tempmon_data._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/thermal/imx_thermal.c", i32 530, i32 3}
!89 = !{ptr @imx_init_from_tempmon_data._entry.44, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @imx_init_from_tempmon_data._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @imx_init_from_tempmon_data._entry.47, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/thermal/imx_thermal.c", i32 539, i32 3}
!93 = !{ptr @imx_init_from_tempmon_data._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/thermal/imx_thermal.c", i32 610, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @imx_thermal_register_legacy_cooling.__UNIQUE_ID_ddebug204, !95, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/thermal/imx_thermal.c", i32 616, i32 35}
!100 = !{ptr @imx_tz_ops, !101, !"imx_tz_ops", i1 false, i1 false}
!101 = !{!"../drivers/thermal/imx_thermal.c", i32 421, i32 39}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/thermal/imx_thermal.c", i32 396, i32 3}
!104 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @imx_bind._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @imx_bind._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/thermal/imx_thermal.c", i32 412, i32 3}
!109 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @imx_unbind._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @imx_unbind._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/thermal/imx_thermal.c", i32 267, i32 3}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @imx_get_temp.__UNIQUE_ID_ddebug200, !113, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/thermal/imx_thermal.c", i32 288, i32 4}
!118 = !{ptr @imx_get_temp.__UNIQUE_ID_ddebug201, !117, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/thermal/imx_thermal.c", i32 294, i32 3}
!121 = !{ptr @imx_get_temp.__UNIQUE_ID_ddebug202, !120, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/thermal/imx_thermal.c", i32 582, i32 2}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @imx_thermal_alarm_irq_thread.__UNIQUE_ID_ddebug203, !123, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!126 = !{ptr @of_imx_thermal_match, !127, !"of_imx_thermal_match", i1 false, i1 false}
!127 = !{!"../drivers/thermal/imx_thermal.c", i32 590, i32 34}
!128 = !{ptr @thermal_imx6q_data, !129, !"thermal_imx6q_data", i1 false, i1 false}
!129 = !{!"../drivers/thermal/imx_thermal.c", i32 118, i32 32}
!130 = !{ptr @thermal_imx6sx_data, !131, !"thermal_imx6sx_data", i1 false, i1 false}
!131 = !{!"../drivers/thermal/imx_thermal.c", i32 139, i32 32}
!132 = !{ptr @thermal_imx7d_data, !133, !"thermal_imx7d_data", i1 false, i1 false}
!133 = !{!"../drivers/thermal/imx_thermal.c", i32 168, i32 32}
!134 = !{ptr @imx_thermal_pm_ops, !135, !"imx_thermal_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/thermal/imx_thermal.c", i32 916, i32 32}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{i64 2148653954, i64 2148654234, i64 2148654568, i64 2148654902}
!147 = !{i64 2148262839}
!148 = !{i64 747662, i64 747687, i64 747709, i64 747725, i64 747737, i64 747757, i64 747781, i64 747797, i64 747809}
!149 = !{i64 2148263027}
!150 = !{i64 2148745235, i64 2148745240, i64 2148745253, i64 2148745297, i64 2148745331, i64 2148745352}
!151 = !{i8 0, i8 2}
