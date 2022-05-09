; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/ti-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/ti-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ti_cpufreq_soc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.ti_cpufreq_data = type { ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_ti_cpufreq__183_423_ti_cpufreq_init6 = internal global ptr @ti_cpufreq_init, section ".initcall6.init", align 4
@__initcall__kmod_ti_cpufreq__184_431_ti_cpufreq_driver_init6 = internal global ptr @ti_cpufreq_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description185 = internal constant [58 x i8] c"ti_cpufreq.description=TI CPUFreq/OPP hw-supported driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [50 x i8] c"ti_cpufreq.author=Dave Gerlach <d-gerlach@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [43 x i8] c"ti_cpufreq.file=drivers/cpufreq/ti-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [26 x i8] c"ti_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti-cpufreq\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@ti_cpufreq_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3x_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3517\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3517_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am43\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4x_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap34xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap34xx_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap36xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap36xx_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap34xx_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3630\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap36xx_soc_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@am3x_soc_data = internal global { %struct.ti_cpufreq_soc_data, [32 x i8] } { %struct.ti_cpufreq_soc_data { ptr null, ptr @amx3_efuse_xlate, i32 7727, i32 2044, i32 8191, i32 0, i32 1536, i8 0 }, [32 x i8] zeroinitializer }, align 32
@am3517_soc_data = internal global { %struct.ti_cpufreq_soc_data, [32 x i8] } { %struct.ti_cpufreq_soc_data { ptr null, ptr @omap3_efuse_xlate, i32 0, i32 476, i32 0, i32 0, i32 3178388, i8 0 }, [32 x i8] zeroinitializer }, align 32
@am4x_soc_data = internal global { %struct.ti_cpufreq_soc_data, [32 x i8] } { %struct.ti_cpufreq_soc_data { ptr null, ptr @amx3_efuse_xlate, i32 4090, i32 1552, i32 63, i32 0, i32 1536, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dra7_soc_data = internal global { %struct.ti_cpufreq_soc_data, [32 x i8] } { %struct.ti_cpufreq_soc_data { ptr null, ptr @dra7_efuse_xlate, i32 0, i32 524, i32 16252928, i32 19, i32 516, i8 1 }, [32 x i8] zeroinitializer }, align 32
@omap34xx_soc_data = internal global { %struct.ti_cpufreq_soc_data, [32 x i8] } { %struct.ti_cpufreq_soc_data { ptr null, ptr @omap3_efuse_xlate, i32 0, i32 3178396, i32 8, i32 3, i32 3178388, i8 0 }, [32 x i8] zeroinitializer }, align 32
@omap36xx_soc_data = internal global { %struct.ti_cpufreq_soc_data, [32 x i8] } { %struct.ti_cpufreq_soc_data { ptr @omap3_reg_names, ptr @omap3_efuse_xlate, i32 0, i32 476, i32 512, i32 9, i32 3178388, i8 1 }, [32 x i8] zeroinitializer }, align 32
@omap3_reg_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu0\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbb\00", [28 x i8] zeroinitializer }, align 32
@ti_cpufreq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@__const.ti_cpufreq_probe.default_reg_names = private unnamed_addr constant [2 x ptr] [ptr @.str.4, ptr @.str.3], align 8
@ti_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to get device for CPU0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_cpufreq_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/cpufreq/ti-cpufreq.c\00", [35 x i8] zeroinitializer }, align 32
@ti_cpufreq_probe._entry_ptr = internal global ptr @ti_cpufreq_probe._entry, section ".printk_index", align 4
@ti_cpufreq_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 351, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"OPP-v2 not supported, cpufreq-dt will attempt to use legacy tables.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_cpufreq_probe._entry_ptr.12 = internal global ptr @ti_cpufreq_probe._entry.8, section ".printk_index", align 4
@ti_cpufreq_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 377, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set supported hardware\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ti_cpufreq_probe._entry_ptr.16 = internal global ptr @ti_cpufreq_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@ti_cpufreq_setup_syscon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 291, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\22syscon\22 is missing, cannot use OPPv2 table.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ti_cpufreq_setup_syscon_register\00", [63 x i8] zeroinitializer }, align 32
@ti_cpufreq_setup_syscon_register._entry_ptr = internal global ptr @ti_cpufreq_setup_syscon_register._entry, section ".printk_index", align 4
@ti_cpufreq_get_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 273, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to read the revision number from syscon: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_cpufreq_get_rev\00", [45 x i8] zeroinitializer }, align 32
@ti_cpufreq_get_rev._entry_ptr = internal global ptr @ti_cpufreq_get_rev._entry, section ".printk_index", align 4
@ti_cpufreq_get_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 232, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to read the efuse value from syscon: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_cpufreq_get_efuse\00", [43 x i8] zeroinitializer }, align 32
@ti_cpufreq_get_efuse._entry_ptr = internal global ptr @ti_cpufreq_get_efuse._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 11, i64 15, i64 18, i64 23, i64 24]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 418, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 316, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"ti_cpufreq_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 298, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"am3x_soc_data\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 108, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"am3517_soc_data\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 193, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"am4x_soc_data\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 117, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"dra7_soc_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 126, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"omap34xx_soc_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 152, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"omap36xx_soc_data\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 178, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"omap3_reg_names\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 176, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 176, i32 48 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 176, i32 56 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"ti_cpufreq_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 425, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 329, i32 44 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 344, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 350, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 376, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 401, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 288, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 290, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 271, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [32 x i8] c"../drivers/cpufreq/ti-cpufreq.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 230, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__initcall__kmod_ti_cpufreq__183_423_ti_cpufreq_init6, ptr @__initcall__kmod_ti_cpufreq__184_431_ti_cpufreq_driver_init6, ptr @ti_cpufreq_get_efuse._entry, ptr @ti_cpufreq_get_efuse._entry_ptr, ptr @ti_cpufreq_get_rev._entry, ptr @ti_cpufreq_get_rev._entry_ptr, ptr @ti_cpufreq_probe._entry, ptr @ti_cpufreq_probe._entry.13, ptr @ti_cpufreq_probe._entry.8, ptr @ti_cpufreq_probe._entry_ptr, ptr @ti_cpufreq_probe._entry_ptr.12, ptr @ti_cpufreq_probe._entry_ptr.16, ptr @ti_cpufreq_setup_syscon_register._entry, ptr @ti_cpufreq_setup_syscon_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @ti_cpufreq_of_match, ptr @am3x_soc_data, ptr @am3517_soc_data, ptr @am4x_soc_data, ptr @dra7_soc_data, ptr @omap34xx_soc_data, ptr @omap36xx_soc_data, ptr @omap3_reg_names, ptr @.str.2, ptr @.str.3, ptr @ti_cpufreq_driver, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3x_soc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3517_soc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am4x_soc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_soc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_soc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_soc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_reg_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_setup_syscon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_get_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_cpufreq_get_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_cpufreq_init() #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.1, ptr noundef null) #8
  %call1.i = tail call ptr @of_match_node(ptr noundef nonnull @ti_cpufreq_of_match, ptr noundef %call.i.i) #8
  tail call void @of_node_put(ptr noundef %call.i.i) #8
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i3 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_cpufreq_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_cpufreq_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amx3_efuse_xlate(ptr nocapture noundef readonly %opp_data, i32 noundef %efuse) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %efuse)
  %tobool.not = icmp eq i32 %efuse, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %soc_data = getelementptr inbounds %struct.ti_cpufreq_data, ptr %opp_data, i32 0, i32 3
  %0 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data, align 4
  %efuse_fallback = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %efuse_fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %efuse_fallback, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %efuse.addr.0 = phi i32 [ %efuse, %entry.if.end_crit_edge ], [ %3, %if.then ]
  %neg = xor i32 %efuse.addr.0, -1
  ret i32 %neg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap3_efuse_xlate(ptr nocapture noundef readnone %opp_data, i32 noundef %efuse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %efuse
  ret i32 %shl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dra7_efuse_xlate(ptr nocapture noundef readnone %opp_data, i32 noundef %efuse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %efuse to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %efuse, label %entry.sw.epilog_crit_edge [
    i32 18, label %entry.sw.bb_crit_edge
    i32 24, label %entry.sw.bb_crit_edge8
    i32 23, label %entry.sw.bb1_crit_edge
    i32 15, label %entry.sw.bb1_crit_edge9
    i32 11, label %entry.sw.bb3_crit_edge
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9
  %calculated_efuse.0 = phi i32 [ 7, %entry.sw.bb1_crit_edge ], [ 7, %entry.sw.bb1_crit_edge9 ], [ 15, %sw.bb ]
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb1, %entry.sw.bb3_crit_edge
  %calculated_efuse.1 = phi i32 [ 3, %entry.sw.bb3_crit_edge ], [ %calculated_efuse.0, %sw.bb1 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %calculated_efuse.2 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ %calculated_efuse.1, %sw.bb3 ]
  ret i32 %calculated_efuse.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_cpufreq_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %efuse.i = alloca i32, align 4
  %revision.i = alloca i32, align 4
  %version = alloca [2 x i32], align 4
  %default_reg_names = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %version) #8
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !84
  %1 = getelementptr inbounds [2 x i32], ptr %version, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %default_reg_names) #8
  %3 = load i64, ptr @__const.ti_cpufreq_probe.default_reg_names, align 8
  %4 = ptrtoint ptr %default_reg_names to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %default_reg_names, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup67_crit_edge, label %if.end5

if.end.cleanup67_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %soc_data = getelementptr inbounds %struct.ti_cpufreq_data, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %soc_data, align 4
  %call6 = tail call ptr @get_cpu_device(i32 noundef 0) #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %call.i, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %cleanup67

if.end11:                                         ; preds = %if.end5
  %call13 = tail call ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef nonnull %call6) #8
  %opp_node = getelementptr inbounds %struct.ti_cpufreq_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %opp_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %opp_node, align 4
  %tobool15.not = icmp eq ptr %call13, null
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.9) #11
  br label %register_cpufreq_dt

if.end21:                                         ; preds = %if.end11
  %call.i102 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %call13, ptr noundef nonnull @.str.18) #8
  %syscon.i = getelementptr inbounds %struct.ti_cpufreq_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %syscon.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i102, ptr %syscon.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ti_cpufreq_setup_syscon_register.exit, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

ti_cpufreq_setup_syscon_register.exit:            ; preds = %if.end21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19) #11
  %15 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %syscon.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %ti_cpufreq_setup_syscon_register.exit.if.end25_crit_edge, label %ti_cpufreq_setup_syscon_register.exit.fail_put_node_crit_edge

ti_cpufreq_setup_syscon_register.exit.fail_put_node_crit_edge: ; preds = %ti_cpufreq_setup_syscon_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_put_node

ti_cpufreq_setup_syscon_register.exit.if.end25_crit_edge: ; preds = %ti_cpufreq_setup_syscon_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %ti_cpufreq_setup_syscon_register.exit.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision.i) #8
  %20 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %revision.i, align 4, !annotation !84
  %21 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %syscon.i, align 4
  %23 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc_data, align 4
  %rev_offset.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %rev_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rev_offset.i, align 4
  %call.i104 = call i32 @regmap_read(ptr noundef %22, i32 noundef %26, ptr noundef nonnull %revision.i) #8
  %27 = zext i32 %call.i104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call.i104, label %do.end.i105 [
    i32 -5, label %if.then.i
    i32 0, label %if.end25.if.end29_crit_edge
  ]

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then.i:                                        ; preds = %if.end25
  %28 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc_data, align 4
  %rev_offset2.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %rev_offset2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rev_offset2.i, align 4
  %add.i = add i32 %31, 1207968368
  %call3.i = call ptr @ioremap(i32 noundef %add.i, i32 noundef 4) #8
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.then.i.ti_cpufreq_get_rev.exit.thread_crit_edge, label %if.end.i

if.then.i.ti_cpufreq_get_rev.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_cpufreq_get_rev.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call3.i) #8, !srcloc !85
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %34 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %revision.i, align 4
  call void @iounmap(ptr noundef nonnull %call3.i) #8
  br label %if.end29

do.end.i105:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21, i32 noundef %call.i104) #11
  br label %ti_cpufreq_get_rev.exit.thread

ti_cpufreq_get_rev.exit.thread:                   ; preds = %do.end.i105, %if.then.i.ti_cpufreq_get_rev.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -12, %if.then.i.ti_cpufreq_get_rev.exit.thread_crit_edge ], [ %call.i104, %do.end.i105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision.i) #8
  br label %fail_put_node

if.end29:                                         ; preds = %if.end.i, %if.end25.if.end29_crit_edge
  %35 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %revision.i, align 4
  %shr.i = lshr i32 %36, 28
  %shl.i = shl nuw nsw i32 1, %shr.i
  %37 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl.i, ptr %version, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision.i) #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse.i) #8
  %40 = ptrtoint ptr %efuse.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %efuse.i, align 4, !annotation !84
  %41 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %syscon.i, align 4
  %43 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc_data, align 4
  %efuse_offset.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %efuse_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %efuse_offset.i, align 4
  %call.i108 = call i32 @regmap_read(ptr noundef %42, i32 noundef %46, ptr noundef nonnull %efuse.i) #8
  %47 = zext i32 %call.i108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call.i108, label %do.end.i114 [
    i32 -5, label %if.then.i112
    i32 0, label %if.end29.if.end34_crit_edge
  ]

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then.i112:                                     ; preds = %if.end29
  %48 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %soc_data, align 4
  %efuse_offset2.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %efuse_offset2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %efuse_offset2.i, align 4
  %add.i109 = add i32 %51, 1207968368
  %call3.i110 = call ptr @ioremap(i32 noundef %add.i109, i32 noundef 4) #8
  %tobool.not.i111 = icmp eq ptr %call3.i110, null
  br i1 %tobool.not.i111, label %if.then.i112.ti_cpufreq_get_efuse.exit.thread_crit_edge, label %if.end.i113

if.then.i112.ti_cpufreq_get_efuse.exit.thread_crit_edge: ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_cpufreq_get_efuse.exit.thread

if.end.i113:                                      ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #10
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call3.i110) #8, !srcloc !85
  %53 = call i32 @llvm.bswap.i32(i32 %52) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %54 = ptrtoint ptr %efuse.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %efuse.i, align 4
  call void @iounmap(ptr noundef nonnull %call3.i110) #8
  br label %if.end34

do.end.i114:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.23, i32 noundef %call.i108) #11
  br label %ti_cpufreq_get_efuse.exit.thread

ti_cpufreq_get_efuse.exit.thread:                 ; preds = %do.end.i114, %if.then.i112.ti_cpufreq_get_efuse.exit.thread_crit_edge
  %retval.1.i117.ph = phi i32 [ -12, %if.then.i112.ti_cpufreq_get_efuse.exit.thread_crit_edge ], [ %call.i108, %do.end.i114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse.i) #8
  br label %fail_put_node

if.end34:                                         ; preds = %if.end.i113, %if.end29.if.end34_crit_edge
  %55 = ptrtoint ptr %efuse.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %efuse.i, align 4
  %57 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %soc_data, align 4
  %efuse_mask.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %efuse_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %efuse_mask.i, align 4
  %and.i = and i32 %60, %56
  %efuse_shift.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %58, i32 0, i32 5
  %61 = ptrtoint ptr %efuse_shift.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %efuse_shift.i, align 4
  %shr.i115 = lshr i32 %and.i, %62
  store i32 %shr.i115, ptr %efuse.i, align 4
  %efuse_xlate.i = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %efuse_xlate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %efuse_xlate.i, align 4
  %call14.i = call i32 %64(ptr noundef nonnull %call.i, i32 noundef %shr.i115) #8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call14.i, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse.i) #8
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %call36 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef %67, ptr noundef nonnull %version, i32 noundef 2) #8
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.14) #11
  %70 = ptrtoint ptr %call36 to i32
  br label %fail_put_node

if.end44:                                         ; preds = %if.end34
  %opp_table = getelementptr inbounds %struct.ti_cpufreq_data, ptr %call.i, i32 0, i32 4
  %71 = ptrtoint ptr %opp_table to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call36, ptr %opp_table, align 4
  %72 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %soc_data, align 4
  %multi_regulator = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %multi_regulator to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %multi_regulator, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool46.not = icmp eq i8 %75, 0
  br i1 %tobool46.not, label %if.end44.if.end63_crit_edge, label %if.then47

if.end44.if.end63_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then47:                                        ; preds = %if.end44
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  %tobool51.not = icmp eq ptr %77, null
  %spec.select = select i1 %tobool51.not, ptr %default_reg_names, ptr %77
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %call57 = call ptr @dev_pm_opp_set_regulators(ptr noundef %79, ptr noundef nonnull %spec.select, i32 noundef 2) #8
  %cmp.i118 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %cleanup, label %if.then47.if.end63_crit_edge

if.then47.if.end63_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

cleanup:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %opp_table, align 4
  call void @dev_pm_opp_put_supported_hw(ptr noundef %81) #8
  %82 = ptrtoint ptr %call57 to i32
  br label %fail_put_node

if.end63:                                         ; preds = %if.then47.if.end63_crit_edge, %if.end44.if.end63_crit_edge
  %83 = ptrtoint ptr %opp_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %opp_node, align 4
  call void @of_node_put(ptr noundef %84) #8
  br label %register_cpufreq_dt

register_cpufreq_dt:                              ; preds = %if.end63, %do.end19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %85 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %86 = call ptr @memset(ptr %85, i32 255, i32 48)
  %87 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %fwnode.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %85, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.17, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %91 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %92 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %properties.i.i, align 8
  %93 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  br label %cleanup67

fail_put_node:                                    ; preds = %cleanup, %do.end41, %ti_cpufreq_get_efuse.exit.thread, %ti_cpufreq_get_rev.exit.thread, %ti_cpufreq_setup_syscon_register.exit.fail_put_node_crit_edge
  %ret.1 = phi i32 [ %17, %ti_cpufreq_setup_syscon_register.exit.fail_put_node_crit_edge ], [ %70, %do.end41 ], [ %82, %cleanup ], [ %retval.1.i.ph, %ti_cpufreq_get_rev.exit.thread ], [ %retval.1.i117.ph, %ti_cpufreq_get_efuse.exit.thread ]
  %94 = ptrtoint ptr %opp_node to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %opp_node, align 4
  call void @of_node_put(ptr noundef %95) #8
  br label %cleanup67

cleanup67:                                        ; preds = %fail_put_node, %register_cpufreq_dt, %do.end, %if.end.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ %ret.1, %fail_put_node ], [ 0, %register_cpufreq_dt ], [ -19, %do.end ], [ -19, %entry.cleanup67_crit_edge ], [ -12, %if.end.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %default_reg_names) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %version) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_ti_cpufreq__183_423_ti_cpufreq_init6, !1, !"__initcall__kmod_ti_cpufreq__183_423_ti_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 423, i32 1}
!2 = !{ptr @__initcall__kmod_ti_cpufreq__184_431_ti_cpufreq_driver_init6, !3, !"__initcall__kmod_ti_cpufreq__184_431_ti_cpufreq_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 431, i32 1}
!4 = !{ptr @__UNIQUE_ID_description185, !5, !"__UNIQUE_ID_description185", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 433, i32 1}
!6 = !{ptr @__UNIQUE_ID_author186, !7, !"__UNIQUE_ID_author186", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 434, i32 1}
!8 = !{ptr @__UNIQUE_ID_file187, !9, !"__UNIQUE_ID_file187", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 435, i32 1}
!10 = !{ptr @__UNIQUE_ID_license188, !9, !"__UNIQUE_ID_license188", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 418, i32 39}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 316, i32 28}
!15 = !{ptr @ti_cpufreq_of_match, !16, !"ti_cpufreq_of_match", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 298, i32 34}
!17 = !{ptr @am3x_soc_data, !18, !"am3x_soc_data", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 108, i32 35}
!19 = !{ptr @am3517_soc_data, !20, !"am3517_soc_data", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 193, i32 35}
!21 = !{ptr @am4x_soc_data, !22, !"am4x_soc_data", i1 false, i1 false}
!22 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 117, i32 35}
!23 = !{ptr @dra7_soc_data, !24, !"dra7_soc_data", i1 false, i1 false}
!24 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 126, i32 35}
!25 = !{ptr @omap34xx_soc_data, !26, !"omap34xx_soc_data", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 152, i32 35}
!27 = !{ptr @omap36xx_soc_data, !28, !"omap36xx_soc_data", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 178, i32 35}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 176, i32 48}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 176, i32 56}
!33 = !{ptr @omap3_reg_names, !34, !"omap3_reg_names", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 176, i32 27}
!35 = !{ptr @ti_cpufreq_driver, !36, !"ti_cpufreq_driver", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 425, i32 31}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 329, i32 44}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 344, i32 3}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ti_cpufreq_probe._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @ti_cpufreq_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 350, i32 3}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ti_cpufreq_probe._entry.8, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @ti_cpufreq_probe._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 376, i32 3}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ti_cpufreq_probe._entry.13, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ti_cpufreq_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 401, i32 34}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 288, i32 8}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 290, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ti_cpufreq_setup_syscon_register._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ti_cpufreq_setup_syscon_register._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 271, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ti_cpufreq_get_rev._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ti_cpufreq_get_rev._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/cpufreq/ti-cpufreq.c", i32 230, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ti_cpufreq_get_efuse._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ti_cpufreq_get_efuse._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 4816383}
!86 = !{i64 2153002807}
!87 = !{i64 2153000516}
!88 = !{i8 0, i8 2}
