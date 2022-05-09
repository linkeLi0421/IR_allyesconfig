; ModuleID = '/llk/IR_all_yes/drivers/opp/ti-opp-supply.c_pt.bc'
source_filename = "../drivers/opp/ti-opp-supply.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ti_opp_supply_data = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ti_opp_supply_of_data = type { i8, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ti_opp_supply_optimum_voltage_table = type { i32, i32 }
%struct.dev_pm_opp_info = type { i32, ptr }
%struct.dev_pm_opp_supply = type { i32, i32, i32, i32 }
%struct.dev_pm_set_opp_data = type { %struct.dev_pm_opp_info, %struct.dev_pm_opp_info, ptr, i32, ptr, ptr }

@__initcall__kmod_ti_opp_supply__304_423_ti_opp_supply_driver_init6 = internal global ptr @ti_opp_supply_driver_init, section ".initcall6.init", align 4
@ti_opp_supply_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_opp_supply_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_opp_supply_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_opp_supply_driver_exit = internal global ptr @ti_opp_supply_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [67 x i8] c"ti_opp_supply.description=Texas Instruments OMAP OPP Supply driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [44 x i8] c"ti_opp_supply.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [45 x i8] c"ti_opp_supply.file=drivers/opp/ti-opp-supply\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [29 x i8] c"ti_opp_supply.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_opp_supply\00", [18 x i8] zeroinitializer }, align 32
@ti_opp_supply_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-opp-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_generic_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-opp-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_omap5_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-core-opp-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_omap5core_of_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ti_opp_supply_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to match device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_opp_supply_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/opp/ti-opp-supply.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_opp_supply_probe._entry_ptr = internal global ptr @ti_opp_supply_probe._entry, section ".printk_index", align 4
@ti_opp_supply_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Bad data in match\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_opp_supply_probe._entry_ptr.8 = internal global ptr @ti_opp_supply_probe._entry.6, section ".printk_index", align 4
@opp_data = internal global { %struct.ti_opp_supply_data, [20 x i8] } zeroinitializer, align 32
@_store_optimized_voltages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to get IO resource\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_store_optimized_voltages\00", [38 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry_ptr = internal global ptr @_store_optimized_voltages._entry, section ".printk_index", align 4
@_store_optimized_voltages._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to map Efuse registers\0A\00", [33 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry_ptr.13 = internal global ptr @_store_optimized_voltages._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,efuse-settings\00", [46 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No 'ti,efuse-settings' property found\0A\00", [57 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry_ptr.17 = internal global ptr @_store_optimized_voltages._entry.15, section ".printk_index", align 4
@_store_optimized_voltages._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid 'ti,efuse-settings'\0A\00", [35 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry_ptr.20 = internal global ptr @_store_optimized_voltages._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,absolute-max-voltage-uv\00", [37 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ti,absolute-max-voltage-uv is missing\0A\00", [57 x i8] zeroinitializer }, align 32
@_store_optimized_voltages._entry_ptr.24 = internal global ptr @_store_optimized_voltages._entry.22, section ".printk_index", align 4
@_store_optimized_voltages.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.25, i8 0, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%d] efuse=0x%08x volt_table=%d vset=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@_store_optimized_voltages.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.26, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%d] efuse=0x%08x volt_table=%d:vset0\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbb\00", [28 x i8] zeroinitializer }, align 32
@ti_opp_supply_set_opp.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_opp_supply_set_opp\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: switching OPP: %lu Hz --> %lu Hz\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_opp_supply_set_opp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to set clock rate: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ti_opp_supply_set_opp._entry_ptr = internal global ptr @ti_opp_supply_set_opp._entry, section ".printk_index", align 4
@ti_opp_supply_set_opp._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to restore old-freq (%lu Hz)\0A\00", [55 x i8] zeroinitializer }, align 32
@ti_opp_supply_set_opp._entry_ptr.34 = internal global ptr @ti_opp_supply_set_opp._entry.32, section ".printk_index", align 4
@_get_optimal_vdd_voltage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__._get_optimal_vdd_voltage = private unnamed_addr constant [25 x i8] c"_get_optimal_vdd_voltage\00", align 1
@_get_optimal_vdd_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__._get_optimal_vdd_voltage, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed optimized voltage match for %d\0A\00", [53 x i8] zeroinitializer }, align 32
@_get_optimal_vdd_voltage._entry_ptr = internal global ptr @_get_optimal_vdd_voltage._entry, section ".printk_index", align 4
@_opp_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 247, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid range voltages [Min:%lu target:%lu Max:%lu]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_opp_set_voltage\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@_opp_set_voltage._entry_ptr = internal global ptr @_opp_set_voltage._entry, section ".printk_index", align 4
@_opp_set_voltage.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.40, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s scaling to %luuV[min %luuV max %luuV]\0A\00", [54 x i8] zeroinitializer }, align 32
@_opp_set_voltage._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s failed for %luuV[min %luuV max %luuV]\0A\00", [54 x i8] zeroinitializer }, align 32
@_opp_set_voltage._entry_ptr.43 = internal global ptr @_opp_set_voltage._entry.41, section ".printk_index", align 4
@omap_generic_of_data = internal constant { %struct.ti_opp_supply_of_data, [20 x i8] } zeroinitializer, align 32
@omap_omap5_of_data = internal constant { %struct.ti_opp_supply_of_data, [20 x i8] } { %struct.ti_opp_supply_of_data { i8 2, i32 4095, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap_omap5core_of_data = internal constant { %struct.ti_opp_supply_of_data, [20 x i8] } { %struct.ti_opp_supply_of_data { i8 6, i32 4095, i8 0 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"ti_opp_supply_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 416, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 419, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"ti_opp_supply_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 369, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 389, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 394, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"opp_data\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 46, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 88, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 95, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 101, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 103, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 112, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 117, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 120, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 148, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 158, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 299, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 303, i32 59 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 309, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 314, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 336, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 211, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 245, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 251, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 260, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [21 x i8] c"omap_generic_of_data\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 354, i32 43 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"omap_omap5_of_data\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 357, i32 43 }
@___asan_gen_.188 = private unnamed_addr constant [23 x i8] c"omap_omap5core_of_data\00", align 1
@___asan_gen_.189 = private constant [31 x i8] c"../drivers/opp/ti-opp-supply.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 363, i32 43 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_ti_opp_supply_driver_exit, ptr @__initcall__kmod_ti_opp_supply__304_423_ti_opp_supply_driver_init6, ptr @_get_optimal_vdd_voltage._entry, ptr @_get_optimal_vdd_voltage._entry_ptr, ptr @_opp_set_voltage._entry, ptr @_opp_set_voltage._entry.41, ptr @_opp_set_voltage._entry_ptr, ptr @_opp_set_voltage._entry_ptr.43, ptr @_store_optimized_voltages._entry, ptr @_store_optimized_voltages._entry.11, ptr @_store_optimized_voltages._entry.15, ptr @_store_optimized_voltages._entry.18, ptr @_store_optimized_voltages._entry.22, ptr @_store_optimized_voltages._entry_ptr, ptr @_store_optimized_voltages._entry_ptr.13, ptr @_store_optimized_voltages._entry_ptr.17, ptr @_store_optimized_voltages._entry_ptr.20, ptr @_store_optimized_voltages._entry_ptr.24, ptr @ti_opp_supply_driver_exit, ptr @ti_opp_supply_probe._entry, ptr @ti_opp_supply_probe._entry.6, ptr @ti_opp_supply_probe._entry_ptr, ptr @ti_opp_supply_probe._entry_ptr.8, ptr @ti_opp_supply_set_opp._entry, ptr @ti_opp_supply_set_opp._entry.32, ptr @ti_opp_supply_set_opp._entry_ptr, ptr @ti_opp_supply_set_opp._entry_ptr.34, ptr @ti_opp_supply_driver, ptr @.str, ptr @ti_opp_supply_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @opp_data, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @_get_optimal_vdd_voltage._rs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @omap_generic_of_data, ptr @omap_omap5_of_data, ptr @omap_omap5core_of_data], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_opp_supply_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_opp_supply_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_opp_supply_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_opp_supply_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_store_optimized_voltages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_store_optimized_voltages._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_store_optimized_voltages._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_store_optimized_voltages._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_store_optimized_voltages._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_opp_supply_set_opp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_opp_supply_set_opp._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_optimal_vdd_voltage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_optimal_vdd_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_opp_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_opp_set_voltage._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_generic_of_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_omap5_of_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_omap5core_of_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_opp_supply_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_opp_supply_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_opp_supply_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_opp_supply_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_opp_supply_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @ti_opp_supply_of_match, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %call12 = tail call fastcc i32 @_store_optimized_voltages(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %call17 = tail call ptr @dev_pm_opp_register_set_opp_helper(ptr noundef %call, ptr noundef nonnull @ti_opp_supply_set_opp) #6
  %cmp.i.i.not = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call17 to i32
  %7 = load ptr, ptr @opp_data, align 4
  tail call void @kfree(ptr noundef %7) #6
  store ptr null, ptr @opp_data, align 4
  store i32 0, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end16.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -19, %do.end ], [ %call12, %if.then11.cleanup_crit_edge ], [ %6, %if.then20 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_store_optimized_voltages(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call1 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %out_map

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call3 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %add.i) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %out_map

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call10 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out.sink.split_crit_edge, label %if.end16

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end16:                                         ; preds = %if.end9
  %length = getelementptr inbounds %struct.property, ptr %call10, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %div172 = lshr i32 %9, 3
  store i32 %div172, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %mul19 = and i32 %9, -8
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19, i32 %10)
  %cmp.not = icmp eq i32 %mul19, %10
  br i1 %cmp.not, label %if.end25, label %if.end16.out.sink.split_crit_edge

if.end16.out.sink.split_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end25:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.21, ptr noundef getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 2), i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool28.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool28.not, label %if.end33, label %if.end25.out.sink.split_crit_edge

if.end25.out.sink.split_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end33:                                         ; preds = %if.end25
  %13 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 8) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end33.out_crit_edge, label %if.end7.i.i, !prof !112

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7.i.i:                                      ; preds = %if.end33
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #10
  %tobool36.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool36.not, label %if.end7.i.i.out_crit_edge, label %if.end38

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end38:                                         ; preds = %if.end7.i.i
  store ptr %call8.i.i, ptr @opp_data, align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4014.not = icmp eq i32 %17, 0
  br i1 %cmp4014.not, label %if.end38.out_crit_edge, label %for.body.lr.ph

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %if.end38
  %value = getelementptr inbounds %struct.property, ptr %call10, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value, align 4
  %efuse_voltage_mask = getelementptr inbounds %struct.ti_opp_supply_of_data, ptr %1, i32 0, i32 1
  %efuse_voltage_uv = getelementptr inbounds %struct.ti_opp_supply_of_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end90.for.body_crit_edge, %for.body.lr.ph
  %val.019 = phi ptr [ %19, %for.body.lr.ph ], [ %incdec.ptr43, %if.end90.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end90.for.body_crit_edge ]
  %table.015 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr91, %if.end90.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %val.019, i32 1
  %20 = ptrtoint ptr %val.019 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.019, align 4
  %22 = ptrtoint ptr %table.015 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %table.015, align 4
  %incdec.ptr43 = getelementptr i32, ptr %val.019, i32 2
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr, align 4
  %add.ptr45 = getelementptr i8, ptr %call3, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #6, !srcloc !113
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %27 = ptrtoint ptr %efuse_voltage_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %efuse_voltage_mask, align 4
  %and = and i32 %28, %26
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 false) #6, !range !115
  %shr = lshr i32 %and, %29
  %30 = ptrtoint ptr %efuse_voltage_uv to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %efuse_voltage_uv, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool51.not = icmp eq i8 %31, 0
  %mul52 = mul i32 %shr, 1000
  %cond = select i1 %tobool51.not, i32 %mul52, i32 %shr
  %optimized_uv = getelementptr inbounds %struct.ti_opp_supply_optimum_voltage_table, ptr %table.015, i32 0, i32 1
  %32 = ptrtoint ptr %optimized_uv to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %optimized_uv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_store_optimized_voltages.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_store_optimized_voltages, %do.end65)) #6
          to label %if.then60 [label %do.end65], !srcloc !117

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %table.015 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %table.015, align 4
  %35 = ptrtoint ptr %optimized_uv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %optimized_uv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_store_optimized_voltages.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %i.017, i32 noundef %24, i32 noundef %34, i32 noundef %36) #6
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %for.body
  %37 = ptrtoint ptr %optimized_uv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %optimized_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool67.not = icmp eq i32 %38, 0
  br i1 %tobool67.not, label %do.body69, label %do.end65.if.end90_crit_edge

do.end65.if.end90_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.body69:                                        ; preds = %do.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_store_optimized_voltages.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_store_optimized_voltages, %do.end87)) #6
          to label %if.then83 [label %do.end87], !srcloc !117

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %table.015 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %table.015, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_store_optimized_voltages.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %i.017, i32 noundef %24, i32 noundef %40) #6
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body69
  %41 = ptrtoint ptr %table.015 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %table.015, align 4
  %43 = ptrtoint ptr %optimized_uv to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %optimized_uv, align 4
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %do.end65.if.end90_crit_edge
  %inc = add nuw i32 %i.017, 1
  %incdec.ptr91 = getelementptr %struct.ti_opp_supply_optimum_voltage_table, ptr %table.015, i32 1
  %44 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %cmp40 = icmp ult i32 %inc, %44
  br i1 %cmp40, label %if.end90.for.body_crit_edge, label %if.end90.out_crit_edge

if.end90.out_crit_edge:                           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end90.for.body_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out.sink.split:                                   ; preds = %if.end25.out.sink.split_crit_edge, %if.end16.out.sink.split_crit_edge, %if.end9.out.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.16, %if.end9.out.sink.split_crit_edge ], [ @.str.19, %if.end16.out.sink.split_crit_edge ], [ @.str.23, %if.end25.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.23.sink) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.end90.out_crit_edge, %if.end38.out_crit_edge, %if.end7.i.i.out_crit_edge, %if.end33.out_crit_edge
  %ret.0 = phi i32 [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %if.end33.out_crit_edge ], [ 0, %if.end38.out_crit_edge ], [ -22, %out.sink.split ], [ 0, %if.end90.out_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call3) #6
  br label %out_map

out_map:                                          ; preds = %out, %do.end8, %do.end
  %ret.1 = phi i32 [ %ret.0, %out ], [ -12, %do.end8 ], [ -19, %do.end ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_register_set_opp_helper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_opp_supply_set_opp(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.dev_pm_opp_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supplies, align 4
  %arrayidx3 = getelementptr %struct.dev_pm_opp_supply, ptr %1, i32 1
  %new_opp = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %data, i32 0, i32 1
  %supplies4 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %data, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %supplies4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplies4, align 4
  %arrayidx8 = getelementptr %struct.dev_pm_opp_supply, ptr %3, i32 1
  %dev9 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev9, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %8 = ptrtoint ptr %new_opp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_opp, align 4
  %clk13 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %clk13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk13, align 4
  %regulators = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regulators, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %arrayidx16 = getelementptr ptr, ptr %13, i32 1
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx16, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %entry._get_optimal_vdd_voltage.exit_crit_edge, label %if.end.i

entry._get_optimal_vdd_voltage.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_optimal_vdd_voltage.exit

if.end.i:                                         ; preds = %entry
  %21 = load ptr, ptr @opp_data, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.end.i._get_optimal_vdd_voltage.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i._get_optimal_vdd_voltage.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_optimal_vdd_voltage.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %table.04.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %21, %if.end.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %table.04.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %table.04.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp6.i = icmp eq i32 %23, %19
  br i1 %cmp6.i, label %if.then7.i, label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %optimized_uv.i = getelementptr inbounds %struct.ti_opp_supply_optimum_voltage_table, ptr %table.04.i, i32 0, i32 1
  %24 = ptrtoint ptr %optimized_uv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %optimized_uv.i, align 4
  br label %_get_optimal_vdd_voltage.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %incdec.ptr.i = getelementptr %struct.ti_opp_supply_optimum_voltage_table, ptr %table.04.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %20
  br i1 %exitcond.not.i, label %do.body.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body.i:                                        ; preds = %for.inc.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @_get_optimal_vdd_voltage._rs, ptr noundef nonnull @__func__._get_optimal_vdd_voltage) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %do.body.i._get_optimal_vdd_voltage.exit_crit_edge, label %do.end.i

do.body.i._get_optimal_vdd_voltage.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_optimal_vdd_voltage.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._get_optimal_vdd_voltage, i32 noundef %19) #9
  br label %_get_optimal_vdd_voltage.exit

_get_optimal_vdd_voltage.exit:                    ; preds = %do.end.i, %do.body.i._get_optimal_vdd_voltage.exit_crit_edge, %if.then7.i, %if.end.i._get_optimal_vdd_voltage.exit_crit_edge, %entry._get_optimal_vdd_voltage.exit_crit_edge
  %retval.0.i133 = phi i32 [ %25, %if.then7.i ], [ %19, %entry._get_optimal_vdd_voltage.exit_crit_edge ], [ -22, %if.end.i._get_optimal_vdd_voltage.exit_crit_edge ], [ %19, %do.end.i ], [ %19, %do.body.i._get_optimal_vdd_voltage.exit_crit_edge ]
  %u_volt_min = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %u_volt_min to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %u_volt_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %retval.0.i133)
  %cmp = icmp ult i32 %27, %retval.0.i133
  br i1 %cmp, label %if.then, label %_get_optimal_vdd_voltage.exit.if.end_crit_edge

_get_optimal_vdd_voltage.exit.if.end_crit_edge:   ; preds = %_get_optimal_vdd_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %_get_optimal_vdd_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %u_volt_min to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i133, ptr %u_volt_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %_get_optimal_vdd_voltage.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp18 = icmp ugt i32 %9, %7
  br i1 %cmp18, label %if.then19, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then19:                                        ; preds = %if.end
  %call20 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %5, ptr noundef %3, i32 noundef %retval.0.i133, ptr noundef %15, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end22, label %if.then19.restore_voltage_crit_edge

if.then19.restore_voltage_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %restore_voltage

if.end22:                                         ; preds = %if.then19
  %call23 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %5, ptr noundef %arrayidx8, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.do.body_crit_edge, label %if.end22.restore_voltage_crit_edge

if.end22.restore_voltage_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %restore_voltage

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_opp_supply_set_opp.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_opp_supply_set_opp, %do.end)) #6
          to label %if.then33 [label %do.end], !srcloc !117

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_opp_supply_set_opp.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %call35 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %call35) #9
  br label %restore_voltage

if.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp42 = icmp ult i32 %9, %7
  br i1 %cmp42, label %if.then43, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %if.end41
  %call44 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %5, ptr noundef %arrayidx8, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then43.restore_freq_crit_edge

if.then43.restore_freq_crit_edge:                 ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %restore_freq

if.end47:                                         ; preds = %if.then43
  %call48 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %5, ptr noundef %3, i32 noundef %retval.0.i133, ptr noundef %15, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end47.restore_freq_crit_edge

if.end47.restore_freq_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %restore_freq

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

restore_freq:                                     ; preds = %if.end47.restore_freq_crit_edge, %if.then43.restore_freq_crit_edge
  %call53 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %restore_freq.restore_voltage_crit_edge, label %do.end58

restore_freq.restore_voltage_crit_edge:           ; preds = %restore_freq
  call void @__sanitizer_cov_trace_pc() #8
  br label %restore_voltage

do.end58:                                         ; preds = %restore_freq
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef %7) #9
  br label %restore_voltage

restore_voltage:                                  ; preds = %do.end58, %restore_freq.restore_voltage_crit_edge, %do.end40, %if.end22.restore_voltage_crit_edge, %if.then19.restore_voltage_crit_edge
  %ret.0 = phi i32 [ %call20, %if.then19.restore_voltage_crit_edge ], [ %call23, %if.end22.restore_voltage_crit_edge ], [ %call35, %do.end40 ], [ %call53, %do.end58 ], [ 0, %restore_freq.restore_voltage_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool61.not = icmp eq i32 %30, 0
  br i1 %tobool61.not, label %restore_voltage.if.end71_crit_edge, label %if.then62

restore_voltage.if.end71_crit_edge:               ; preds = %restore_voltage
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then62:                                        ; preds = %restore_voltage
  %call63 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %5, ptr noundef %arrayidx3, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.then62
  %call67 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %5, ptr noundef %1, i32 noundef 0, ptr noundef %15, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.if.end71_crit_edge, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end71:                                         ; preds = %if.end66.if.end71_crit_edge, %restore_voltage.if.end71_crit_edge
  %ret.1 = phi i32 [ 0, %if.end66.if.end71_crit_edge ], [ %ret.0, %restore_voltage.if.end71_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end66.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end71 ], [ 0, %if.end47.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ %call63, %if.then62.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_opp_set_voltage(ptr noundef %dev, ptr nocapture noundef readonly %supply, i32 noundef %new_target_uv, ptr noundef %reg, ptr noundef %reg_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_target_uv)
  %tobool.not = icmp eq i32 %new_target_uv, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supply, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %vdd_uv.0 = phi i32 [ %1, %if.else ], [ %new_target_uv, %entry.if.end_crit_edge ]
  %2 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.else3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u_volt_max = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %supply, i32 0, i32 2
  %3 = ptrtoint ptr %u_volt_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u_volt_max, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end.if.end4_crit_edge
  %uv_max.0 = phi i32 [ %4, %if.else3 ], [ %2, %if.end.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %vdd_uv.0, i32 %uv_max.0)
  %cmp = icmp ugt i32 %vdd_uv.0, %uv_max.0
  br i1 %cmp, label %if.end4.do.end_crit_edge, label %lor.lhs.false

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end4
  %u_volt_min = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %supply, i32 0, i32 1
  %5 = ptrtoint ptr %u_volt_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u_volt_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %vdd_uv.0, i32 %6)
  %cmp5 = icmp ult i32 %vdd_uv.0, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %uv_max.0)
  %cmp8 = icmp ugt i32 %6, %uv_max.0
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %do.body12

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end4.do.end_crit_edge
  %u_volt_min10 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %supply, i32 0, i32 1
  %7 = ptrtoint ptr %u_volt_min10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u_volt_min10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %8, i32 noundef %vdd_uv.0, i32 noundef %uv_max.0) #9
  br label %cleanup

do.body12:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_opp_set_voltage.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_opp_set_voltage, %do.end21)) #6
          to label %if.then17 [label %do.end21], !srcloc !117

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %u_volt_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u_volt_min, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_opp_set_voltage.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef %reg_name, i32 noundef %vdd_uv.0, i32 noundef %10, i32 noundef %uv_max.0) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body12
  %11 = ptrtoint ptr %u_volt_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %u_volt_min, align 4
  %call.i = tail call i32 @regulator_set_voltage(ptr noundef %reg, i32 noundef %vdd_uv.0, i32 noundef %uv_max.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.end21.cleanup_crit_edge, label %regulator_set_voltage_triplet.exit

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

regulator_set_voltage_triplet.exit:               ; preds = %do.end21
  %call1.i = tail call i32 @regulator_set_voltage(ptr noundef %reg, i32 noundef %12, i32 noundef %uv_max.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool24.not = icmp eq i32 %call1.i, 0
  br i1 %tobool24.not, label %regulator_set_voltage_triplet.exit.cleanup_crit_edge, label %do.end28

regulator_set_voltage_triplet.exit.cleanup_crit_edge: ; preds = %regulator_set_voltage_triplet.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %regulator_set_voltage_triplet.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %u_volt_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %u_volt_min, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %reg_name, i32 noundef %vdd_uv.0, i32 noundef %14, i32 noundef %uv_max.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %regulator_set_voltage_triplet.exit.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1.i, %do.end28 ], [ 0, %regulator_set_voltage_triplet.exit.cleanup_crit_edge ], [ 0, %do.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !93, !94, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_ti_opp_supply__304_423_ti_opp_supply_driver_init6, !1, !"__initcall__kmod_ti_opp_supply__304_423_ti_opp_supply_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/opp/ti-opp-supply.c", i32 423, i32 1}
!2 = !{ptr @__exitcall_ti_opp_supply_driver_exit, !1, !"__exitcall_ti_opp_supply_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description305, !4, !"__UNIQUE_ID_description305", i1 false, i1 false}
!4 = !{!"../drivers/opp/ti-opp-supply.c", i32 425, i32 1}
!5 = !{ptr @__UNIQUE_ID_author306, !6, !"__UNIQUE_ID_author306", i1 false, i1 false}
!6 = !{!"../drivers/opp/ti-opp-supply.c", i32 426, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/opp/ti-opp-supply.c", i32 427, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/opp/ti-opp-supply.c", i32 419, i32 14}
!12 = !{ptr @ti_opp_supply_driver, !13, !"ti_opp_supply_driver", i1 false, i1 false}
!13 = !{!"../drivers/opp/ti-opp-supply.c", i32 416, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/opp/ti-opp-supply.c", i32 389, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ti_opp_supply_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ti_opp_supply_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/opp/ti-opp-supply.c", i32 394, i32 3}
!24 = !{ptr @ti_opp_supply_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ti_opp_supply_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/opp/ti-opp-supply.c", i32 88, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @_store_optimized_voltages._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @_store_optimized_voltages._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/opp/ti-opp-supply.c", i32 95, i32 3}
!33 = !{ptr @_store_optimized_voltages._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @_store_optimized_voltages._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/opp/ti-opp-supply.c", i32 101, i32 40}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/opp/ti-opp-supply.c", i32 103, i32 3}
!39 = !{ptr @_store_optimized_voltages._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @_store_optimized_voltages._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/opp/ti-opp-supply.c", i32 112, i32 3}
!43 = !{ptr @_store_optimized_voltages._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @_store_optimized_voltages._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/opp/ti-opp-supply.c", i32 117, i32 43}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/opp/ti-opp-supply.c", i32 120, i32 3}
!49 = !{ptr @_store_optimized_voltages._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @_store_optimized_voltages._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/opp/ti-opp-supply.c", i32 148, i32 3}
!53 = !{ptr @_store_optimized_voltages.__UNIQUE_ID_ddebug300, !52, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/opp/ti-opp-supply.c", i32 158, i32 4}
!56 = !{ptr @_store_optimized_voltages.__UNIQUE_ID_ddebug301, !55, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!57 = !{ptr @opp_data, !58, !"opp_data", i1 false, i1 false}
!58 = !{!"../drivers/opp/ti-opp-supply.c", i32 46, i32 34}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/opp/ti-opp-supply.c", i32 299, i32 12}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/opp/ti-opp-supply.c", i32 303, i32 59}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/opp/ti-opp-supply.c", i32 309, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ti_opp_supply_set_opp.__UNIQUE_ID_ddebug303, !64, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/opp/ti-opp-supply.c", i32 314, i32 3}
!69 = !{ptr @ti_opp_supply_set_opp._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ti_opp_supply_set_opp._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/opp/ti-opp-supply.c", i32 336, i32 3}
!73 = !{ptr @ti_opp_supply_set_opp._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ti_opp_supply_set_opp._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/opp/ti-opp-supply.c", i32 211, i32 2}
!77 = !{ptr @_get_optimal_vdd_voltage._rs, !76, !"_rs", i1 false, i1 false}
!78 = !{ptr @__func__._get_optimal_vdd_voltage, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @_get_optimal_vdd_voltage._entry, !76, !"_entry", i1 false, i1 false}
!81 = !{ptr @_get_optimal_vdd_voltage._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/opp/ti-opp-supply.c", i32 245, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @_opp_set_voltage._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @_opp_set_voltage._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/opp/ti-opp-supply.c", i32 251, i32 2}
!90 = !{ptr @_opp_set_voltage.__UNIQUE_ID_ddebug302, !89, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/opp/ti-opp-supply.c", i32 260, i32 3}
!93 = !{ptr @_opp_set_voltage._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @_opp_set_voltage._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @ti_opp_supply_of_match, !96, !"ti_opp_supply_of_match", i1 false, i1 false}
!96 = !{!"../drivers/opp/ti-opp-supply.c", i32 369, i32 34}
!97 = !{ptr @omap_generic_of_data, !98, !"omap_generic_of_data", i1 false, i1 false}
!98 = !{!"../drivers/opp/ti-opp-supply.c", i32 354, i32 43}
!99 = !{ptr @omap_omap5_of_data, !100, !"omap_omap5_of_data", i1 false, i1 false}
!100 = !{!"../drivers/opp/ti-opp-supply.c", i32 357, i32 43}
!101 = !{ptr @omap_omap5core_of_data, !102, !"omap_omap5core_of_data", i1 false, i1 false}
!102 = !{!"../drivers/opp/ti-opp-supply.c", i32 363, i32 43}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 5115234}
!114 = !{i64 2155181067}
!115 = !{i32 0, i32 33}
!116 = !{i8 0, i8 2}
!117 = !{i64 2148731934, i64 2148731939, i64 2148731952, i64 2148731996, i64 2148732030, i64 2148732051}
