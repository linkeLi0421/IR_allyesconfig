; ModuleID = '/llk/IR_all_yes/drivers/thermal/tegra/tegra30-tsensor.c_pt.bc'
source_filename = "../drivers/thermal/tegra/tegra30-tsensor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_tsensor = type { ptr, i8, ptr, ptr, ptr, [2 x %struct.tegra_tsensor_channel], %struct.tegra_tsensor_calibration_data }
%struct.tegra_tsensor_channel = type { ptr, i32, ptr, ptr }
%struct.tegra_tsensor_calibration_data = type { i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tegra30_tsensor__280_669_tegra_tsensor_driver_init6 = internal global ptr @tegra_tsensor_driver_init, section ".initcall6.init", align 4
@tegra_tsensor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_tsensor_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_tsensor_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_tsensor_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_tsensor_driver_exit = internal global ptr @tegra_tsensor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description281 = internal constant [65 x i8] c"tegra30_tsensor.description=NVIDIA Tegra30 Thermal Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [58 x i8] c"tegra30_tsensor.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [59 x i8] c"tegra30_tsensor.file=drivers/thermal/tegra/tegra30-tsensor\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [28 x i8] c"tegra30_tsensor.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra30-tsensor\00", [16 x i8] zeroinitializer }, align 32
@tegra_tsensor_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_tsensor_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_tsensor_suspend, ptr @tegra_tsensor_resume, ptr @tegra_tsensor_suspend, ptr @tegra_tsensor_resume, ptr @tegra_tsensor_suspend, ptr @tegra_tsensor_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_tsensor\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get ATE version\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_tsensor_nvmem_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 441, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported ATE version: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_tsensor_nvmem_setup\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/thermal/tegra/tegra30-tsensor.c\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_tsensor_nvmem_setup._entry_ptr = internal global ptr @tegra_tsensor_nvmem_setup._entry, section ".printk_index", align 4
@tegra_tsensor_nvmem_setup.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_tsensor_nvmem_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 452, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"older ATE version detected, channels remapped\0A\00", [49 x i8] zeroinitializer }, align 32
@tegra_tsensor_nvmem_setup._entry_ptr.13 = internal global ptr @tegra_tsensor_nvmem_setup._entry.11, section ".printk_index", align 4
@tegra_tsensor_nvmem_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 458, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get calibration data: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tegra_tsensor_nvmem_setup._entry_ptr.17 = internal global ptr @tegra_tsensor_nvmem_setup._entry.14, section ".printk_index", align 4
@tegra_tsensor_nvmem_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 477, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid calibration data: %d %d %u %u\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_tsensor_nvmem_setup._entry_ptr.20 = internal global ptr @tegra_tsensor_nvmem_setup._entry.18, section ".printk_index", align 4
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra_tsensor_nvmem_setup.__print_once.21 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_tsensor_nvmem_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 504, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"calibration: %d %d %u %u ATE ver: %u SoC rev: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_tsensor_nvmem_setup._entry_ptr.24 = internal global ptr @tegra_tsensor_nvmem_setup._entry.22, section ".printk_index", align 4
@tegra_tsensor_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.8, i32 98, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to assert hardware reset: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_tsensor_hw_enable\00", [40 x i8] zeroinitializer }, align 32
@tegra_tsensor_hw_enable._entry_ptr = internal global ptr @tegra_tsensor_hw_enable._entry, section ".printk_index", align 4
@tegra_tsensor_hw_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.8, i32 104, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_tsensor_hw_enable._entry_ptr.29 = internal global ptr @tegra_tsensor_hw_enable._entry.27, section ".printk_index", align 4
@tegra_tsensor_hw_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.8, i32 112, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to deassert hardware reset: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_tsensor_hw_enable._entry_ptr.32 = internal global ptr @tegra_tsensor_hw_enable._entry.30, section ".printk_index", align 4
@tegra_tsensor_hw_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.33, ptr @.str.8, i32 146, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_tsensor_hw_disable\00", [39 x i8] zeroinitializer }, align 32
@tegra_tsensor_hw_disable._entry_ptr = internal global ptr @tegra_tsensor_hw_disable._entry, section ".printk_index", align 4
@ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @tegra_tsensor_get_temp, ptr null, ptr @tegra_tsensor_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register thermal zone\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_tsensor_register_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 534, ptr @.str.37, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add hwmon sysfs attributes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_tsensor_register_channel\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_tsensor_register_channel._entry_ptr = internal global ptr @tegra_tsensor_register_channel._entry, section ".printk_index", align 4
@tegra_tsensor_get_temp.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_tsensor_get_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.8, i32 178, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ch%u: counter invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_tsensor_get_temp\00", [41 x i8] zeroinitializer }, align 32
@tegra_tsensor_get_temp._entry_ptr = internal global ptr @tegra_tsensor_get_temp._entry, section ".printk_index", align 4
@tegra_tsensor_get_temp.__print_once.40 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_tsensor_get_temp._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.8, i32 191, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch%u: counter overflow\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_tsensor_get_temp._entry_ptr.43 = internal global ptr @tegra_tsensor_get_temp._entry.41, section ".printk_index", align 4
@tegra_tsensor_handle_channel_interrupt._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra_tsensor_handle_channel_interrupt = private unnamed_addr constant [39 x i8] c"tegra_tsensor_handle_channel_interrupt\00", align 1
@tegra_tsensor_handle_channel_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.tegra_tsensor_handle_channel_interrupt, ptr @.str.8, i32 259, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ch%u: counter overflowed\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_tsensor_handle_channel_interrupt._entry_ptr = internal global ptr @tegra_tsensor_handle_channel_interrupt._entry, section ".printk_index", align 4
@tegra_tsensor_enable_hw_channel.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_tsensor_enable_hw_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.8, i32 368, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ch%u: PMC emergency shutdown trip set to %dC\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_tsensor_enable_hw_channel\00", [32 x i8] zeroinitializer }, align 32
@tegra_tsensor_enable_hw_channel._entry_ptr = internal global ptr @tegra_tsensor_enable_hw_channel._entry, section ".printk_index", align 4
@tegra_tsensor_enable_hw_channel._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.8, i32 413, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ch%u: failed to enable zone: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_tsensor_enable_hw_channel._entry_ptr.50 = internal global ptr @tegra_tsensor_enable_hw_channel._entry.48, section ".printk_index", align 4
@tegra_tsensor_disable_hw_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.8, i32 294, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ch%u: failed to disable zone: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_tsensor_disable_hw_channel\00", [63 x i8] zeroinitializer }, align 32
@tegra_tsensor_disable_hw_channel._entry_ptr = internal global ptr @tegra_tsensor_disable_hw_channel._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"tegra_tsensor_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 661, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 664, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"tegra_tsensor_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 655, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"tegra_tsensor_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 650, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 563, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 568, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 592, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 595, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 436, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 441, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 451, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 458, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 476, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 501, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 98, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 104, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 112, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 146, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 243, i32 48 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 523, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 534, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 178, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 191, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 259, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 367, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 413, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [43 x i8] c"../drivers/thermal/tegra/tegra30-tsensor.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 294, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_tegra_tsensor_driver_exit, ptr @__initcall__kmod_tegra30_tsensor__280_669_tegra_tsensor_driver_init6, ptr @tegra_tsensor_disable_hw_channel._entry, ptr @tegra_tsensor_disable_hw_channel._entry_ptr, ptr @tegra_tsensor_driver_exit, ptr @tegra_tsensor_enable_hw_channel._entry, ptr @tegra_tsensor_enable_hw_channel._entry.48, ptr @tegra_tsensor_enable_hw_channel._entry_ptr, ptr @tegra_tsensor_enable_hw_channel._entry_ptr.50, ptr @tegra_tsensor_get_temp._entry, ptr @tegra_tsensor_get_temp._entry.41, ptr @tegra_tsensor_get_temp._entry_ptr, ptr @tegra_tsensor_get_temp._entry_ptr.43, ptr @tegra_tsensor_handle_channel_interrupt._entry, ptr @tegra_tsensor_handle_channel_interrupt._entry_ptr, ptr @tegra_tsensor_hw_disable._entry, ptr @tegra_tsensor_hw_disable._entry_ptr, ptr @tegra_tsensor_hw_enable._entry, ptr @tegra_tsensor_hw_enable._entry.27, ptr @tegra_tsensor_hw_enable._entry.30, ptr @tegra_tsensor_hw_enable._entry_ptr, ptr @tegra_tsensor_hw_enable._entry_ptr.29, ptr @tegra_tsensor_hw_enable._entry_ptr.32, ptr @tegra_tsensor_nvmem_setup._entry, ptr @tegra_tsensor_nvmem_setup._entry.11, ptr @tegra_tsensor_nvmem_setup._entry.14, ptr @tegra_tsensor_nvmem_setup._entry.18, ptr @tegra_tsensor_nvmem_setup._entry.22, ptr @tegra_tsensor_nvmem_setup._entry_ptr, ptr @tegra_tsensor_nvmem_setup._entry_ptr.13, ptr @tegra_tsensor_nvmem_setup._entry_ptr.17, ptr @tegra_tsensor_nvmem_setup._entry_ptr.20, ptr @tegra_tsensor_nvmem_setup._entry_ptr.24, ptr @tegra_tsensor_register_channel._entry, ptr @tegra_tsensor_register_channel._entry_ptr, ptr @tegra_tsensor_driver, ptr @.str, ptr @tegra_tsensor_of_match, ptr @tegra_tsensor_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @tegra_tsensor_handle_channel_interrupt._rs, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_nvmem_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_nvmem_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_nvmem_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_nvmem_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_nvmem_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_hw_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_hw_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_hw_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_register_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_get_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_get_temp._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_handle_channel_interrupt._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_handle_channel_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_enable_hw_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_enable_hw_channel._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tsensor_disable_hw_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_tsensor_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_tsensor_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_tsensor_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i217.i = alloca i32, align 4
  %val.i212.i = alloca i32, align 4
  %val.i207.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %ate_ver.i = alloca i32, align 4
  %cal.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev5, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %clk, align 4
  %cmp.i117 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call14 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call.i118 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i118, ptr %rst, align 4
  %cmp.i119 = icmp ugt ptr %call.i118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i118 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ate_ver.i) #7
  %8 = ptrtoint ptr %ate_ver.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ate_ver.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cal.i) #7
  %9 = ptrtoint ptr %cal.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cal.i, align 4
  %call.i120 = call i32 @tegra_fuse_readl(i32 noundef 40, ptr noundef nonnull %ate_ver.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %11, i32 noundef %call.i120, ptr noundef nonnull @.str.5) #7
  br label %tegra_tsensor_nvmem_setup.exit.thread

if.end.i:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %ate_ver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ate_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i121 = icmp ult i32 %13, 8
  br i1 %cmp.i121, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %13) #10
  br label %tegra_tsensor_nvmem_setup.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %13)
  %cmp5.i = icmp ult i32 %13, 22
  br i1 %cmp5.i, label %do.body7.i, label %if.end4.i.if.end17.i_crit_edge

if.end4.i.if.end17.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

do.body7.i:                                       ; preds = %if.end4.i
  %.b206.i = load i1, ptr @tegra_tsensor_nvmem_setup.__print_once, align 1
  br i1 %.b206.i, label %do.body7.i.do.end16.i_crit_edge, label %if.then9.i

do.body7.i.do.end16.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

if.then9.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra_tsensor_nvmem_setup.__print_once, align 1
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.12) #10
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then9.i, %do.body7.i.do.end16.i_crit_edge
  %swap_channels.i = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %swap_channels.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %swap_channels.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end16.i, %if.end4.i.if.end17.i_crit_edge
  %call18.i = call i32 @tegra_fuse_readl(i32 noundef 152, ptr noundef nonnull %cal.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end40.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %call18.i) #10
  br label %tegra_tsensor_nvmem_setup.exit.thread

do.end40.i:                                       ; preds = %if.end17.i
  %21 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cal.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end40.i
  %i.0224.i = phi i32 [ 0, %do.end40.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %t1_25C.0223.i = phi i32 [ 0, %do.end40.i ], [ %or65.i, %for.body.i.for.body.i_crit_edge ]
  %t2_90C.0222.i = phi i32 [ 0, %do.end40.i ], [ %or75.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val.i.i, align 4
  %add.i = shl i32 %i.0224.i, 2
  %add.i.i = add nuw nsw i32 %add.i, 380
  %call.i.i = call i32 @tegra_fuse_readl(i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #7
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.i = icmp ne i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %conv.i = zext i1 %tobool.i.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, %i.0224.i
  %or.i = or i32 %shl.i, %t1_25C.0223.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i207.i) #7
  %26 = ptrtoint ptr %val.i207.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %val.i207.i, align 4
  %add.i209.i = add nuw nsw i32 %add.i, 408
  %call.i210.i = call i32 @tegra_fuse_readl(i32 noundef %add.i209.i, ptr noundef nonnull %val.i207.i) #7
  %27 = ptrtoint ptr %val.i207.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i207.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i211.i = icmp ne i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i207.i) #7
  %conv63.i = zext i1 %tobool.i211.i to i32
  %shl64.i = shl nuw nsw i32 %conv63.i, %i.0224.i
  %or65.i = or i32 %or.i, %shl64.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i212.i) #7
  %29 = ptrtoint ptr %val.i212.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val.i212.i, align 4
  %add.i214.i = add nuw nsw i32 %add.i, 324
  %call.i215.i = call i32 @tegra_fuse_readl(i32 noundef %add.i214.i, ptr noundef nonnull %val.i212.i) #7
  %30 = ptrtoint ptr %val.i212.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i212.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i216.i = icmp ne i32 %31, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i212.i) #7
  %conv68.i = zext i1 %tobool.i216.i to i32
  %shl69.i = shl nuw nsw i32 %conv68.i, %i.0224.i
  %or70.i = or i32 %shl69.i, %t2_90C.0222.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i217.i) #7
  %32 = ptrtoint ptr %val.i217.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val.i217.i, align 4
  %add.i219.i = add nuw nsw i32 %add.i, 352
  %call.i220.i = call i32 @tegra_fuse_readl(i32 noundef %add.i219.i, ptr noundef nonnull %val.i217.i) #7
  %33 = ptrtoint ptr %val.i217.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i217.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i221.i = icmp ne i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i217.i) #7
  %conv73.i = zext i1 %tobool.i221.i to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, %i.0224.i
  %or75.i = or i32 %or70.i, %shl74.i
  %inc.i = add nuw nsw i32 %i.0224.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %and.i = and i32 %22, 65535
  %shr58.i = lshr i32 %22, 16
  %sub.i = sub nsw i32 %shr58.i, %and.i
  %sub76.i = sub i32 %or75.i, %or65.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub76.i)
  %cmp77.not.i = icmp ugt i32 %sub.i, %sub76.i
  br i1 %cmp77.not.i, label %if.end84.i, label %do.end82.i

do.end82.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.19, i32 noundef %shr58.i, i32 noundef %and.i, i32 noundef %or75.i, i32 noundef %or65.i) #10
  br label %tegra_tsensor_nvmem_setup.exit.thread

if.end84.i:                                       ; preds = %for.end.i
  %mul.i = mul i32 %sub76.i, 1000000
  %div.i = sdiv i32 %sub.i, 2
  %add88.i = add i32 %mul.i, %div.i
  %div89.i = udiv i32 %add88.i, %sub.i
  %calib.i = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %calib.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div89.i, ptr %calib.i, align 4
  %mul90.i = mul i32 %or65.i, 1000000
  %mul93.i = mul i32 %div89.i, %and.i
  %sub94.i = sub i32 %mul90.i, %mul93.i
  %b.i = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %b.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub94.i, ptr %b.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11) to i32))
  %39 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp96.i = icmp eq i32 %39, 1
  %.sink226.neg.i = select i1 %cmp96.i, i32 5550, i32 7024
  %.sink226.i = select i1 %cmp96.i, i32 -2775, i32 -3512
  %.sink225.i = select i1 %cmp96.i, i32 1338811, i32 1528943
  %.sink.i = select i1 %cmp96.i, i32 -7300000, i32 -11100000
  %40 = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink226.i, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink225.i, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 6, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %44, align 4
  %add124.pn.i = select i1 %cmp96.i, i32 1341586, i32 1532455
  %cond227.i = udiv i32 %add124.pn.i, %.sink226.neg.i
  %cond227.neg.i = sub nsw i32 0, %cond227.i
  %r.i = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 6, i32 5
  %46 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond227.neg.i, ptr %r.i, align 4
  %.b204205.i = load i1, ptr @tegra_tsensor_nvmem_setup.__print_once.21, align 1
  br i1 %.b204205.i, label %if.end84.i.if.end36_crit_edge, label %if.then132.i

if.end84.i.if.end36_crit_edge:                    ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then132.i:                                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra_tsensor_nvmem_setup.__print_once.21, align 1
  %47 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev5, align 4
  %49 = ptrtoint ptr %ate_ver.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ate_ver.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.23, i32 noundef %shr58.i, i32 noundef %and.i, i32 noundef %or75.i, i32 noundef %or65.i, i32 noundef %50, i32 noundef %39) #10
  br label %if.end36

tegra_tsensor_nvmem_setup.exit.thread:            ; preds = %do.end82.i, %do.end23.i, %do.end.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -22, %do.end82.i ], [ %call18.i, %do.end23.i ], [ -19, %do.end.i ], [ %call.i120, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ate_ver.i) #7
  br label %cleanup

if.end36:                                         ; preds = %if.then132.i, %if.end84.i.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ate_ver.i) #7
  %call37 = call fastcc i32 @tegra_tsensor_hw_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.cond.preheader, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end40
  %swap_channels.i122 = getelementptr inbounds %struct.tegra_tsensor, ptr %call.i, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 0
  %51 = ptrtoint ptr %swap_channels.i122 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %swap_channels.i122, align 4, !range !124
  %ts2.i = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %53 = ptrtoint ptr %ts2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %ts2.i, align 4
  %id3.i = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %54 = ptrtoint ptr %id3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %id3.i, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %57 = shl nuw nsw i8 %52, 6
  %narrow = add nuw i8 %57, 64
  %mul.i125 = zext i8 %narrow to i32
  %add.ptr.i = getelementptr i8, ptr %56, i32 %mul.i125
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %arrayidx.i, align 4
  %59 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev5, align 4
  %call.i127 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %60, i32 noundef 0, ptr noundef %arrayidx.i, ptr noundef nonnull @ops) #7
  %tzd.i = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  %61 = ptrtoint ptr %tzd.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i127, ptr %tzd.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i128, label %if.end15.i

if.then.i128:                                     ; preds = %for.cond.preheader
  %cmp.not.i = icmp eq ptr %call.i127, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i, label %if.end.i130, label %tegra_tsensor_register_channel.exit

if.end.i130:                                      ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %tzd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %tzd.i, align 4
  br label %for.inc

if.end15.i:                                       ; preds = %for.cond.preheader
  %call17.i = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %call.i127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.for.inc_crit_edge, label %do.end.i131

if.end15.i.for.inc_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.i131:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.35) #10
  br label %for.inc

tegra_tsensor_register_channel.exit:              ; preds = %if.then.i128
  %65 = ptrtoint ptr %call.i127 to i32
  %66 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev5, align 4
  %call13.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %67, i32 noundef %65, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool48.not = icmp eq i32 %call13.i, 0
  br i1 %tobool48.not, label %tegra_tsensor_register_channel.exit.for.inc_crit_edge, label %tegra_tsensor_register_channel.exit.cleanup_crit_edge

tegra_tsensor_register_channel.exit.cleanup_crit_edge: ; preds = %tegra_tsensor_register_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tegra_tsensor_register_channel.exit.for.inc_crit_edge: ; preds = %tegra_tsensor_register_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %tegra_tsensor_register_channel.exit.for.inc_crit_edge, %do.end.i131, %if.end15.i.for.inc_crit_edge, %if.end.i130
  %arrayidx.i.1 = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %swap_channels.i122 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %swap_channels.i122, align 4, !range !124
  %ts2.i.1 = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 1, i32 2
  %70 = ptrtoint ptr %ts2.i.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %ts2.i.1, align 4
  %id3.i.1 = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %id3.i.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %id3.i.1, align 4
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %74 = shl nuw nsw i8 %69, 6
  %75 = xor i8 %74, 64
  %narrow141 = add nuw i8 %75, 64
  %mul.i125.1 = zext i8 %narrow141 to i32
  %add.ptr.i.1 = getelementptr i8, ptr %73, i32 %mul.i125.1
  %76 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i.1, ptr %arrayidx.i.1, align 4
  %77 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev5, align 4
  %call.i127.1 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %78, i32 noundef 1, ptr noundef %arrayidx.i.1, ptr noundef nonnull @ops) #7
  %tzd.i.1 = getelementptr %struct.tegra_tsensor, ptr %call.i, i32 0, i32 5, i32 1, i32 3
  %79 = ptrtoint ptr %tzd.i.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i127.1, ptr %tzd.i.1, align 4
  %cmp.i.i.1 = icmp ugt ptr %call.i127.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %if.then.i128.1, label %if.end15.i.1

if.end15.i.1:                                     ; preds = %for.inc
  %call17.i.1 = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %call.i127.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.1)
  %tobool18.not.i.1 = icmp eq i32 %call17.i.1, 0
  br i1 %tobool18.not.i.1, label %if.end15.i.1.for.inc.1_crit_edge, label %do.end.i131.1

if.end15.i.1.for.inc.1_crit_edge:                 ; preds = %if.end15.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

do.end.i131.1:                                    ; preds = %if.end15.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.35) #10
  br label %for.inc.1

if.then.i128.1:                                   ; preds = %for.inc
  %cmp.not.i.1 = icmp eq ptr %call.i127.1, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i.1, label %if.end.i130.1, label %tegra_tsensor_register_channel.exit.1

tegra_tsensor_register_channel.exit.1:            ; preds = %if.then.i128.1
  %82 = ptrtoint ptr %call.i127.1 to i32
  %83 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev5, align 4
  %call13.i.1 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %84, i32 noundef %82, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.1)
  %tobool48.not.1 = icmp eq i32 %call13.i.1, 0
  br i1 %tobool48.not.1, label %tegra_tsensor_register_channel.exit.1.for.inc.1_crit_edge, label %tegra_tsensor_register_channel.exit.1.cleanup_crit_edge

tegra_tsensor_register_channel.exit.1.cleanup_crit_edge: ; preds = %tegra_tsensor_register_channel.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tegra_tsensor_register_channel.exit.1.for.inc.1_crit_edge: ; preds = %tegra_tsensor_register_channel.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.i130.1:                                    ; preds = %if.then.i128.1
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %tzd.i.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %tzd.i.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.i130.1, %tegra_tsensor_register_channel.exit.1.for.inc.1_crit_edge, %do.end.i131.1, %if.end15.i.1.for.inc.1_crit_edge
  %call52 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef null, ptr noundef nonnull @tegra_tsensor_isr, i32 noundef 8192, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.body60.preheader, label %if.then54

for.body60.preheader:                             ; preds = %for.inc.1
  %call61 = call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond58, label %for.body60.preheader.cleanup_crit_edge

for.body60.preheader.cleanup_crit_edge:           ; preds = %for.body60.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call52, ptr noundef nonnull @.str.4) #7
  br label %cleanup

for.cond58:                                       ; preds = %for.body60.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call61.1 = call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef nonnull %call.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.cond58, %if.then54, %for.body60.preheader.cleanup_crit_edge, %tegra_tsensor_register_channel.exit.1.cleanup_crit_edge, %tegra_tsensor_register_channel.exit.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %tegra_tsensor_nvmem_setup.exit.thread, %if.then27, %if.then17, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %call21, %if.then17 ], [ %call31, %if.then27 ], [ %call56, %if.then54 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call42, %if.end40.cleanup_crit_edge ], [ %retval.0.i.ph, %tegra_tsensor_nvmem_setup.exit.thread ], [ %call61, %for.body60.preheader.cleanup_crit_edge ], [ %call13.i, %tegra_tsensor_register_channel.exit.cleanup_crit_edge ], [ %call13.i.1, %tegra_tsensor_register_channel.exit.1.cleanup_crit_edge ], [ %call61.1, %for.cond58 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_tsensor_hw_enable(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 4
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i, %if.end.do.end6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end6_crit_edge ]
  %dev7 = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 3
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end32, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 3
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31, i32 noundef %call10) #10
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %cleanup

do.end32:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 13906175) #7, !srcloc !125
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ts, align 4
  %add.ptr51 = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 13906175) #7, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i.ph, %do.end6 ], [ %call10, %do.end15 ], [ 0, %do.end32 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_tegra_tsensor_hw_disable, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %rst.i.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %rst.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst.i.i, align 4
  %call.i.i = tail call i32 @reset_control_assert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %do.end.i.i, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_tegra_tsensor_hw_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rst.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call.i) #10
  br label %tegra_tsensor_hw_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %tegra_tsensor_hw_disable.exit

tegra_tsensor_hw_disable.exit:                    ; preds = %if.end.i, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.tegra_tsensor, ptr %data, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.tegra_tsensor, ptr %data, i32 0, i32 5, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !126
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %2) #7, !srcloc !125
  %and.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 5
  br i1 %cmp.i, label %do.body16.i, label %entry.do.end39.i_crit_edge

entry.do.end39.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.body16.i:                                      ; preds = %entry
  %call17.i = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_tsensor_handle_channel_interrupt._rs, ptr noundef nonnull @__func__.tegra_tsensor_handle_channel_interrupt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %do.body16.i.do.end39.i_crit_edge, label %do.end21.i

do.body16.i.do.end39.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end21.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef 0) #10
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end21.i, %do.body16.i.do.end39.i_crit_edge, %entry.do.end39.i_crit_edge
  %8 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool43.not.i = icmp eq i32 %8, 0
  br i1 %tobool43.not.i, label %do.end39.i.tegra_tsensor_handle_channel_interrupt.exit_crit_edge, label %if.end45.i

do.end39.i.tegra_tsensor_handle_channel_interrupt.exit_crit_edge: ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_tsensor_handle_channel_interrupt.exit

if.end45.i:                                       ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %tzd.i = getelementptr %struct.tegra_tsensor, ptr %data, i32 0, i32 5, i32 0, i32 3
  %9 = ptrtoint ptr %tzd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tzd.i, align 4
  tail call void @thermal_zone_device_update(ptr noundef %10, i32 noundef 0) #7
  br label %tegra_tsensor_handle_channel_interrupt.exit

tegra_tsensor_handle_channel_interrupt.exit:      ; preds = %if.end45.i, %do.end39.i.tegra_tsensor_handle_channel_interrupt.exit_crit_edge
  %arrayidx.i.1 = getelementptr %struct.tegra_tsensor, ptr %data, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #7, !srcloc !126
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.1, align 4
  %add.ptr2.i.1 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.1, i32 %13) #7, !srcloc !125
  %and.i.1 = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i.1)
  %cmp.i.1 = icmp eq i32 %and.i.1, 5
  br i1 %cmp.i.1, label %do.body16.i.1, label %tegra_tsensor_handle_channel_interrupt.exit.do.end39.i.1_crit_edge

tegra_tsensor_handle_channel_interrupt.exit.do.end39.i.1_crit_edge: ; preds = %tegra_tsensor_handle_channel_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i.1

do.body16.i.1:                                    ; preds = %tegra_tsensor_handle_channel_interrupt.exit
  %call17.i.1 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_tsensor_handle_channel_interrupt._rs, ptr noundef nonnull @__func__.tegra_tsensor_handle_channel_interrupt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.1)
  %tobool.not.i.1 = icmp eq i32 %call17.i.1, 0
  br i1 %tobool.not.i.1, label %do.body16.i.1.do.end39.i.1_crit_edge, label %do.end21.i.1

do.body16.i.1.do.end39.i.1_crit_edge:             ; preds = %do.body16.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i.1

do.end21.i.1:                                     ; preds = %do.body16.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.45, i32 noundef 1) #10
  br label %do.end39.i.1

do.end39.i.1:                                     ; preds = %do.end21.i.1, %do.body16.i.1.do.end39.i.1_crit_edge, %tegra_tsensor_handle_channel_interrupt.exit.do.end39.i.1_crit_edge
  %19 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool43.not.i.1 = icmp eq i32 %19, 0
  br i1 %tobool43.not.i.1, label %do.end39.i.1.tegra_tsensor_handle_channel_interrupt.exit.1_crit_edge, label %if.end45.i.1

do.end39.i.1.tegra_tsensor_handle_channel_interrupt.exit.1_crit_edge: ; preds = %do.end39.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_tsensor_handle_channel_interrupt.exit.1

if.end45.i.1:                                     ; preds = %do.end39.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %tzd.i.1 = getelementptr %struct.tegra_tsensor, ptr %data, i32 0, i32 5, i32 1, i32 3
  %20 = ptrtoint ptr %tzd.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tzd.i.1, align 4
  tail call void @thermal_zone_device_update(ptr noundef %21, i32 noundef 0) #7
  br label %tegra_tsensor_handle_channel_interrupt.exit.1

tegra_tsensor_handle_channel_interrupt.exit.1:    ; preds = %if.end45.i.1, %do.end39.i.1.tegra_tsensor_handle_channel_interrupt.exit.1_crit_edge
  %22 = or i32 %3, %14
  %23 = lshr i32 %22, 8
  %.lobit = and i32 %23, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_tsensor_enable_hw_channel(ptr nocapture noundef readonly %ts, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %type.i = alloca i32, align 4
  %trip_temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tegra_tsensor, ptr %ts, i32 0, i32 5, i32 %id
  %tzd1 = getelementptr %struct.tegra_tsensor, ptr %ts, i32 0, i32 5, i32 %id, i32 3
  %0 = ptrtoint ptr %tzd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !126
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !125
  br label %cleanup

if.end:                                           ; preds = %entry
  %trips.i = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trips.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp48.not.i = icmp eq i32 %9, 0
  br i1 %cmp48.not.i, label %if.end.tegra_tsensor_get_hw_channel_trips.exit_crit_edge, label %for.body.lr.ph.i

if.end.tegra_tsensor_get_hw_channel_trips.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_tsensor_get_hw_channel_trips.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %hot_trip.0 = phi i32 [ 85000, %for.body.lr.ph.i ], [ %hot_trip.1, %if.end6.i.for.body.i_crit_edge ]
  %crit_trip.0 = phi i32 [ 90000, %for.body.lr.ph.i ], [ %crit_trip.1, %if.end6.i.for.body.i_crit_edge ]
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end6.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %type.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp.i) #7
  %11 = ptrtoint ptr %trip_temp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %trip_temp.i, align 4, !annotation !127
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_trip_temp.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %get_trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_trip_temp.i, align 4
  %call.i = call i32 %15(ptr noundef nonnull %1, i32 noundef %i.049.i, ptr noundef nonnull %trip_temp.i) #7
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %get_trip_type.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %get_trip_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_trip_type.i, align 4
  %call2.i = call i32 %19(ptr noundef nonnull %1, i32 noundef %i.049.i, ptr noundef nonnull %type.i) #7
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %for.body.i.if.end6.i_crit_edge [
    i32 2, label %if.end.thread.i
    i32 3, label %if.then5.i
  ]

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end.thread.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trip_temp.i, align 4
  br label %if.end6.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %trip_temp.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.thread.i, %for.body.i.if.end6.i_crit_edge
  %hot_trip.1 = phi i32 [ %hot_trip.0, %for.body.i.if.end6.i_crit_edge ], [ %hot_trip.0, %if.then5.i ], [ %24, %if.end.thread.i ]
  %crit_trip.1 = phi i32 [ %crit_trip.0, %for.body.i.if.end6.i_crit_edge ], [ %26, %if.then5.i ], [ %crit_trip.0, %if.end.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  %inc.i = add nuw i32 %i.049.i, 1
  %27 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %trips.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %if.end6.i.for.body.i_crit_edge, label %if.end6.i.tegra_tsensor_get_hw_channel_trips.exit_crit_edge

if.end6.i.tegra_tsensor_get_hw_channel_trips.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_tsensor_get_hw_channel_trips.exit

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tegra_tsensor_get_hw_channel_trips.exit:          ; preds = %if.end6.i.tegra_tsensor_get_hw_channel_trips.exit_crit_edge, %if.end.tegra_tsensor_get_hw_channel_trips.exit_crit_edge
  %hot_trip.2 = phi i32 [ 85000, %if.end.tegra_tsensor_get_hw_channel_trips.exit_crit_edge ], [ %hot_trip.1, %if.end6.i.tegra_tsensor_get_hw_channel_trips.exit_crit_edge ]
  %crit_trip.2 = phi i32 [ 90000, %if.end.tegra_tsensor_get_hw_channel_trips.exit_crit_edge ], [ %crit_trip.1, %if.end6.i.tegra_tsensor_get_hw_channel_trips.exit_crit_edge ]
  %29 = call i32 @llvm.smax.i32(i32 %hot_trip.2, i32 25000) #7
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 90000) #7
  %add.i = add i32 %crit_trip.2, 5000
  %31 = call i32 @llvm.smax.i32(i32 %add.i, i32 25000) #7
  %32 = call i32 @llvm.umin.i32(i32 %31, i32 90000) #7
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %.b250 = load i1, ptr @tegra_tsensor_enable_hw_channel.__print_once, align 1
  br i1 %.b250, label %tegra_tsensor_get_hw_channel_trips.exit.do.end17_crit_edge, label %if.then5

tegra_tsensor_get_hw_channel_trips.exit.do.end17_crit_edge: ; preds = %tegra_tsensor_get_hw_channel_trips.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.then5:                                         ; preds = %tegra_tsensor_get_hw_channel_trips.exit
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra_tsensor_enable_hw_channel.__print_once, align 1
  %dev = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 3
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %add = add nuw nsw i32 %32, 500
  %cond288 = udiv i32 %add, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.46, i32 noundef %id, i32 noundef %cond288) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then5, %tegra_tsensor_get_hw_channel_trips.exit.do.end17_crit_edge
  %calib.i = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 6
  %p.i = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p.i, align 4
  %mul.neg.i = mul nsw i32 %30, -1000
  %sub.i = add i32 %36, %mul.neg.i
  %m.i = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i253 = icmp slt i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp2.i = icmp sgt i32 %38, 0
  %cmp4.i = xor i1 %cmp.i253, %cmp2.i
  %add.pn.v.v.i = select i1 %cmp4.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %38, %add.pn.v.v.i
  %add.pn.i = add i32 %add.pn.v.i, %sub.i
  %cond.i = sdiv i32 %add.pn.i, %38
  %r.i = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 6, i32 5
  %39 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %r.i, align 4
  %mul16.i = mul i32 %40, %40
  %sub17.i = sub i32 %mul16.i, %cond.i
  %call.i254 = call i32 @int_sqrt(i32 noundef %sub17.i) #7
  %b.i = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %b.i, align 4
  %43 = ptrtoint ptr %calib.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %calib.i, align 4
  %45 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %p.i, align 4
  %mul.neg.i257 = mul nsw i32 %32, -1000
  %sub.i258 = add i32 %46, %mul.neg.i257
  %47 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %m.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i258)
  %cmp.i260 = icmp slt i32 %sub.i258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp2.i261 = icmp sgt i32 %48, 0
  %cmp4.i262 = xor i1 %cmp.i260, %cmp2.i261
  %add.pn.v.v.i263 = select i1 %cmp4.i262, i32 2, i32 -2
  %add.pn.v.i264 = sdiv i32 %48, %add.pn.v.v.i263
  %add.pn.i265 = add i32 %add.pn.v.i264, %sub.i258
  %cond.i266 = sdiv i32 %add.pn.i265, %48
  %49 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %r.i, align 4
  %mul16.i268 = mul i32 %50, %50
  %sub17.i269 = sub i32 %mul16.i268, %cond.i266
  %call.i270 = call i32 @int_sqrt(i32 noundef %sub17.i269) #7
  %51 = add i32 %call.i270, %50
  %mul20.i271 = mul i32 %51, -1000000
  %52 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %b.i, align 4
  %sub22.i273 = sub i32 %mul20.i271, %53
  %54 = ptrtoint ptr %calib.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %calib.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub22.i273)
  %cmp26.i274 = icmp slt i32 %sub22.i273, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp28.i275 = icmp sgt i32 %55, 0
  %cmp30.i276 = xor i1 %cmp28.i275, %cmp26.i274
  %add34.pn.v.v.i277 = select i1 %cmp30.i276, i32 2, i32 -2
  %add34.pn.v.i278 = sdiv i32 %55, %add34.pn.v.v.i277
  %add34.pn.i279 = add i32 %sub22.i273, %add34.pn.v.i278
  %cond41.i280 = sdiv i32 %add34.pn.i279, %55
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %add.ptr22 = getelementptr i8, ptr %57, i32 8
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !126
  %59 = add i32 %call.i254, %40
  %mul20.i = mul i32 %59, -1000000
  %sub22.i = sub i32 %mul20.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp28.i = icmp sgt i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub22.i)
  %cmp26.i = icmp slt i32 %sub22.i, 1
  %cmp30.i = xor i1 %cmp28.i, %cmp26.i
  %add34.pn.v.v.i = select i1 %cmp30.i, i32 2, i32 -2
  %add34.pn.v.i = sdiv i32 %44, %add34.pn.v.v.i
  %add34.pn.i = add i32 %sub22.i, %add34.pn.v.i
  %cond41.i = sdiv i32 %add34.pn.i, %44
  %60 = and i32 %58, -65536
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %shl = shl i32 %cond41.i, 16
  %or = or i32 %61, %shl
  %62 = call i32 @llvm.bswap.i32(i32 %or)
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  %add.ptr50 = getelementptr i8, ptr %64, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %62) #7, !srcloc !125
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %add.ptr53 = getelementptr i8, ptr %66, i32 12
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !126
  %68 = and i32 %67, 65535
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %and80 = and i32 %cond41.i280, 65535
  %or81 = or i32 %69, %and80
  %70 = call i32 @llvm.bswap.i32(i32 %or81)
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx, align 4
  %add.ptr83 = getelementptr i8, ptr %72, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %70) #7, !srcloc !125
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !126
  %76 = and i32 %75, -2097152001
  %77 = or i32 %76, 2080374784
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #7, !srcloc !125
  call void @mutex_unlock(ptr noundef %lock) #7
  %call195 = call i32 @thermal_zone_device_enable(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %do.end17.cleanup_crit_edge, label %do.end200

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end200:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev201 = getelementptr inbounds %struct.tegra_tsensor, ptr %ts, i32 0, i32 3
  %80 = ptrtoint ptr %dev201 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev201, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.49, i32 noundef %id, i32 noundef %call195) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end200, %do.end17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call195, %do.end200 ], [ 0, %if.then ], [ 0, %do.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ts1 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts1, align 4
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1050000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 176) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr195 = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #7, !srcloc !126
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and196 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool.not197 = icmp eq i32 %and196, 0
  br i1 %tobool.not197, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then24

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr19 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !126
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %for.end

if.then24:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 5251, i32 noundef 21000, i32 noundef 2) #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !126
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and = and i32 %13, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then24.land.lhs.true_crit_edge, label %if.then24.for.end_crit_edge

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then24.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then16 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then24.for.end_crit_edge ]
  %and27 = and i32 %val.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body31, label %if.end40

do.body31:                                        ; preds = %for.end
  %.b191 = load i1, ptr @tegra_tsensor_get_temp.__print_once, align 1
  br i1 %.b191, label %do.body31.cleanup_crit_edge, label %if.then33

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra_tsensor_get_temp.__print_once, align 1
  %dev = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.38, i32 noundef %17) #10
  br label %cleanup

if.end40:                                         ; preds = %for.end
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr43 = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #7, !srcloc !126
  %21 = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %21)
  %cmp64 = icmp eq i32 %21, 65535
  br i1 %cmp64, label %do.body66, label %if.end77

do.body66:                                        ; preds = %if.end40
  %.b189190 = load i1, ptr @tegra_tsensor_get_temp.__print_once.40, align 1
  br i1 %.b189190, label %do.body66.cleanup_crit_edge, label %if.then68

do.body66.cleanup_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra_tsensor_get_temp.__print_once.40, align 1
  %dev72 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev72, align 4
  %id73 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %id73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.42, i32 noundef %25) #10
  br label %cleanup

if.end77:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shr63 = lshr exact i32 %26, 16
  %calib = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %calib to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %calib, align 4
  %mul = mul i32 %28, %shr63
  %b = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b, align 4
  %add79 = add i32 %mul, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add79)
  %cmp81 = icmp sgt i32 %add79, 0
  %cond90.in.v = select i1 %cmp81, i32 500000, i32 -500000
  %cond90.in = add i32 %cond90.in.v, %add79
  %cond90 = sdiv i32 %cond90.in, 1000000
  %cond90.in.off = add i32 %cond90.in, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999, i32 %cond90.in.off)
  %31 = icmp ult i32 %cond90.in.off, 1999999
  %. = select i1 %31, i32 1, i32 %cond90
  %p = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp100 = icmp slt i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.)
  %cmp102 = icmp sgt i32 %., 0
  %cmp104 = xor i1 %cmp100, %cmp102
  %div107.lhs.trunc = trunc i32 %. to i16
  %add108.pn.v.v.v = select i1 %cmp104, i16 2, i16 -2
  %add108.pn.v.v = sdiv i16 %div107.lhs.trunc, %add108.pn.v.v.v
  %add108.pn.v = sext i16 %add108.pn.v.v to i32
  %add108.pn = add i32 %33, %add108.pn.v
  %cond115 = sdiv i32 %add108.pn, %.
  %m = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %m, align 4
  %mul117 = mul i32 %., %35
  %n = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 3
  %36 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n, align 4
  %add120 = add i32 %37, %cond115
  %add121 = add i32 %add120, %mul117
  %mul122 = mul i32 %add121, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul122)
  %cmp125 = icmp sgt i32 %mul122, 0
  %cond140.in.v = select i1 %cmp125, i32 500, i32 -500
  %cond140.in = add i32 %cond140.in.v, %mul122
  %cond140 = sdiv i32 %cond140.in, 1000
  %38 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond140, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then68, %do.body66.cleanup_crit_edge, %if.then33, %do.body31.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -110, %if.then33 ], [ -110, %do.body31.cleanup_crit_edge ], [ -22, %if.then68 ], [ -22, %do.body66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_set_trips(ptr nocapture noundef readonly %data, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %high)
  %cmp = icmp eq i32 %high, 2147483647
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ts1 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !126
  %p.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p.i, align 4
  %mul.neg.i = mul i32 %high, -1000
  %sub.i = add i32 %6, %mul.neg.i
  %m.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp sgt i32 %8, 0
  %cmp4.i = xor i1 %cmp.i, %cmp2.i
  %add.pn.v.v.i = select i1 %cmp4.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %8, %add.pn.v.v.i
  %add.pn.i = add i32 %add.pn.v.i, %sub.i
  %cond.i = sdiv i32 %add.pn.i, %8
  %r.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 5
  %9 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r.i, align 4
  %mul16.i = mul i32 %10, %10
  %sub17.i = sub i32 %mul16.i, %cond.i
  %call.i = tail call i32 @int_sqrt(i32 noundef %sub17.i) #7
  %11 = add i32 %call.i, %10
  %mul20.i = mul i32 %11, -1000000
  %b.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b.i, align 4
  %sub22.i = sub i32 %mul20.i, %13
  %calib.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %calib.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %calib.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.i = icmp sgt i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub22.i)
  %cmp26.i = icmp slt i32 %sub22.i, 1
  %cmp30.i = xor i1 %cmp28.i, %cmp26.i
  %add34.pn.v.v.i = select i1 %cmp30.i, i32 2, i32 -2
  %add34.pn.v.i = sdiv i32 %15, %add34.pn.v.v.i
  %add34.pn.i = add i32 %sub22.i, %add34.pn.v.i
  %cond41.i = sdiv i32 %add34.pn.i, %15
  %16 = and i32 %4, 65535
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and19 = and i32 %cond41.i, 65535
  %or = or i32 %and19, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %18) #7, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 0
  %tzd1.i = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 0, i32 3
  %2 = ptrtoint ptr %tzd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzd1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.inc_crit_edge, label %if.end.i

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @thermal_zone_device_disable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %enable_channel.thread37

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

enable_channel.thread37:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i40 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %call.i) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !126
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !125
  %arrayidx.i.1 = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 1
  %tzd1.i.1 = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 1, i32 3
  %12 = ptrtoint ptr %tzd1.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tzd1.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.i.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.i.1:                                       ; preds = %for.inc
  %call.i.1 = tail call i32 @thermal_zone_device_disable(ptr noundef nonnull %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.for.inc.1_crit_edge, label %enable_channel

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %14 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.1, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !126
  %17 = or i32 %16, 16777216
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !125
  %rst.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rst.i, align 4
  %call.i18 = tail call i32 @reset_control_assert(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %tegra_tsensor_hw_disable.exit.thread, label %enable_channel.thread

tegra_tsensor_hw_disable.exit.thread:             ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #7
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %cleanup

enable_channel.thread:                            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i20 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.25, i32 noundef %call.i18) #10
  br label %while.body

enable_channel:                                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %call.i.1) #10
  br label %while.body

while.body:                                       ; preds = %enable_channel, %enable_channel.thread
  %err.036 = phi i32 [ %call.i18, %enable_channel.thread ], [ %call.i.1, %enable_channel ]
  %tobool6.not = phi i1 [ false, %enable_channel.thread ], [ true, %enable_channel ]
  %i.02635 = phi i32 [ 1, %enable_channel.thread ], [ 0, %enable_channel ]
  %call7 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %1, i32 noundef %i.02635)
  br i1 %tobool6.not, label %while.body.cleanup_crit_edge, label %while.body.1

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %dec.1 = add nsw i32 %i.02635, -1
  %call7.1 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %1, i32 noundef %dec.1)
  br label %cleanup

cleanup:                                          ; preds = %while.body.1, %while.body.cleanup_crit_edge, %tegra_tsensor_hw_disable.exit.thread, %enable_channel.thread37
  %retval.0 = phi i32 [ 0, %tegra_tsensor_hw_disable.exit.thread ], [ %call.i, %enable_channel.thread37 ], [ %err.036, %while.body.1 ], [ %err.036, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @tegra_tsensor_hw_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call2 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call2.1 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %for.body.preheader.cleanup_crit_edge ], [ %call2.1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !76, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_tegra30_tsensor__280_669_tegra_tsensor_driver_init6, !1, !"__initcall__kmod_tegra30_tsensor__280_669_tegra_tsensor_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_tegra_tsensor_driver_exit, !1, !"__exitcall_tegra_tsensor_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description281, !4, !"__UNIQUE_ID_description281", i1 false, i1 false}
!4 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_author282, !6, !"__UNIQUE_ID_author282", i1 false, i1 false}
!6 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_file283, !8, !"__UNIQUE_ID_file283", i1 false, i1 false}
!8 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_license284, !8, !"__UNIQUE_ID_license284", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 664, i32 11}
!12 = !{ptr @tegra_tsensor_driver, !13, !"tegra_tsensor_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 661, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 563, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 568, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 592, i32 6}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 595, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 436, i32 31}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 441, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tegra_tsensor_nvmem_setup._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_tsensor_nvmem_setup._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"__print_once", i1 false, i1 false}
!33 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 451, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tegra_tsensor_nvmem_setup._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_tsensor_nvmem_setup._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 458, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tegra_tsensor_nvmem_setup._entry.14, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_tsensor_nvmem_setup._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 476, i32 3}
!44 = !{ptr @tegra_tsensor_nvmem_setup._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_tsensor_nvmem_setup._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__print_once", i1 false, i1 false}
!47 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 501, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tegra_tsensor_nvmem_setup._entry.22, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_tsensor_nvmem_setup._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 98, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tegra_tsensor_hw_enable._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_tsensor_hw_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 104, i32 3}
!58 = !{ptr @tegra_tsensor_hw_enable._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_tsensor_hw_enable._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 112, i32 3}
!62 = !{ptr @tegra_tsensor_hw_enable._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_tsensor_hw_enable._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 146, i32 3}
!66 = !{ptr @tegra_tsensor_hw_disable._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_tsensor_hw_disable._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 523, i32 11}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 534, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tegra_tsensor_register_channel._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @tegra_tsensor_register_channel._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @ops, !77, !"ops", i1 false, i1 false}
!77 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 243, i32 48}
!78 = distinct !{null, !79, !"__print_once", i1 false, i1 false}
!79 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 178, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tegra_tsensor_get_temp._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @tegra_tsensor_get_temp._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__print_once", i1 false, i1 false}
!85 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 191, i32 3}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @tegra_tsensor_get_temp._entry.41, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @tegra_tsensor_get_temp._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 259, i32 3}
!91 = !{ptr @tegra_tsensor_handle_channel_interrupt._rs, !90, !"_rs", i1 false, i1 false}
!92 = !{ptr @__func__.tegra_tsensor_handle_channel_interrupt, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tegra_tsensor_handle_channel_interrupt._entry, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @tegra_tsensor_handle_channel_interrupt._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!96 = distinct !{null, !97, !"__print_once", i1 false, i1 false}
!97 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 367, i32 2}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @tegra_tsensor_enable_hw_channel._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @tegra_tsensor_enable_hw_channel._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 413, i32 3}
!104 = !{ptr @tegra_tsensor_enable_hw_channel._entry.48, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @tegra_tsensor_enable_hw_channel._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @tegra_tsensor_of_match, !107, !"tegra_tsensor_of_match", i1 false, i1 false}
!107 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 655, i32 34}
!108 = !{ptr @tegra_tsensor_pm_ops, !109, !"tegra_tsensor_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 650, i32 32}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/thermal/tegra/tegra30-tsensor.c", i32 294, i32 3}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tegra_tsensor_disable_hw_channel._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra_tsensor_disable_hw_channel._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{i64 4284596}
!126 = !{i64 4285014}
!127 = !{!"auto-init"}
