; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/stm32-adc-core.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-adc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stm32_adc_priv_cfg = type { ptr, ptr, i32, i32, i32 }
%struct.stm32_adc_common_regs = type { i32, i32, [3 x i32], [3 x i32], i32, i32 }
%struct.stm32h7_adc_ck_spec = type { i32, i32, i32 }
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
%struct.stm32_adc_priv = type { [3 x i32], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.stm32_adc_common, i32, ptr }
%struct.stm32_adc_common = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_stm32_adc_core__297_842_stm32_adc_driver_init6 = internal global ptr @stm32_adc_driver_init, section ".initcall6.init", align 4
@stm32_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_adc_probe, ptr @stm32_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_core_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_adc_driver_exit = internal global ptr @stm32_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [63 x i8] c"stm32_adc_core.author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [68 x i8] c"stm32_adc_core.description=STMicroelectronics STM32 ADC core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [51 x i8] c"stm32_adc_core.file=drivers/iio/adc/stm32-adc-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [30 x i8] c"stm32_adc_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [45 x i8] c"stm32_adc_core.alias=platform:stm32-adc-core\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32-adc-core\00", [17 x i8] zeroinitializer }, align 32
@stm32_adc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-adc-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_adc_priv_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-adc-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_adc_priv_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-adc-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_adc_priv_cfg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@stm32_adc_core_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_core_runtime_suspend, ptr @stm32_adc_core_runtime_resume, ptr @stm32_adc_core_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@stm32_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->common.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdda get failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vref get failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't get 'adc' clock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't get 'bus' clock\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 706, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vref get voltage failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/adc/stm32-adc-core.c\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr = internal global ptr @stm32_adc_probe._entry, section ".printk_index", align 4
@stm32_adc_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.11, ptr @.str.12, ptr @.str.16, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_adc_core\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vref+=%dmV\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,max-clk-rate-hz\00", [45 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.12, i32 729, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to populate DT children\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr.20 = internal global ptr @stm32_adc_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't probe syscfg\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"booster-supply\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"booster\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't get booster\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-supply\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"can't get vdd\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.12, i32 625, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vdd enable failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32_adc_core_switches_probe\00", [34 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_probe._entry_ptr = internal global ptr @stm32_adc_core_switches_probe._entry, section ".printk_index", align 4
@stm32_adc_core_switches_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.12, i32 631, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vdd get voltage failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_probe._entry_ptr.33 = internal global ptr @stm32_adc_core_switches_probe._entry.31, section ".printk_index", align 4
@stm32_adc_core_hw_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.12, i32 517, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdda enable failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_adc_core_hw_start\00", [40 x i8] zeroinitializer }, align 32
@stm32_adc_core_hw_start._entry_ptr = internal global ptr @stm32_adc_core_hw_start._entry, section ".printk_index", align 4
@stm32_adc_core_hw_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.12, i32 523, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vdda get voltage failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_adc_core_hw_start._entry_ptr.38 = internal global ptr @stm32_adc_core_hw_start._entry.36, section ".printk_index", align 4
@stm32_adc_core_hw_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.12, i32 534, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vref enable failed\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_adc_core_hw_start._entry_ptr.41 = internal global ptr @stm32_adc_core_hw_start._entry.39, section ".printk_index", align 4
@stm32_adc_core_hw_start._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.12, i32 540, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bus clk enable failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_core_hw_start._entry_ptr.44 = internal global ptr @stm32_adc_core_hw_start._entry.42, section ".printk_index", align 4
@stm32_adc_core_hw_start._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.12, i32 546, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adc clk enable failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_core_hw_start._entry_ptr.47 = internal global ptr @stm32_adc_core_hw_start._entry.45, section ".printk_index", align 4
@stm32_adc_core_switches_supply_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.48, ptr @.str.12, i32 455, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"stm32_adc_core_switches_supply_en\00", [62 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_supply_en._entry_ptr = internal global ptr @stm32_adc_core_switches_supply_en._entry, section ".printk_index", align 4
@stm32_adc_core_switches_supply_en._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.12, i32 464, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd select failed, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_supply_en._entry_ptr.51 = internal global ptr @stm32_adc_core_switches_supply_en._entry.49, section ".printk_index", align 4
@stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.12, ptr @.str.52, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"analog switches supplied by vdd\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_supply_en._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.12, i32 479, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"booster enable failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_supply_en._entry_ptr.55 = internal global ptr @stm32_adc_core_switches_supply_en._entry.53, section ".printk_index", align 4
@stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.12, ptr @.str.56, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"analog switches supplied by booster\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.12, ptr @.str.57, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"analog switches supplied by vdda (%d uV)\0A\00", [54 x i8] zeroinitializer }, align 32
@stm32_adc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @stm32_adc_domain_map, ptr @stm32_adc_domain_unmap, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@stm32_adc_irq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.12, i32 407, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add irq domain\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_adc_irq_probe\00", [44 x i8] zeroinitializer }, align 32
@stm32_adc_irq_probe._entry_ptr = internal global ptr @stm32_adc_irq_probe._entry, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@stm32_adc_offset = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 256, i32 512], [20 x i8] zeroinitializer }, align 32
@stm32f4_adc_priv_cfg = internal constant { %struct.stm32_adc_priv_cfg, [44 x i8] } { %struct.stm32_adc_priv_cfg { ptr @stm32f4_adc_common_regs, ptr @stm32f4_adc_clk_sel, i32 36000000, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@stm32h7_adc_priv_cfg = internal constant { %struct.stm32_adc_priv_cfg, [44 x i8] } { %struct.stm32_adc_priv_cfg { ptr @stm32h7_adc_common_regs, ptr @stm32h7_adc_clk_sel, i32 36000000, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@stm32mp1_adc_priv_cfg = internal constant { %struct.stm32_adc_priv_cfg, [44 x i8] } { %struct.stm32_adc_priv_cfg { ptr @stm32h7_adc_common_regs, ptr @stm32h7_adc_clk_sel, i32 40000000, i32 3, i32 2 }, [44 x i8] zeroinitializer }, align 32
@stm32f4_adc_common_regs = internal constant { %struct.stm32_adc_common_regs, [56 x i8] } { %struct.stm32_adc_common_regs { i32 768, i32 772, [3 x i32] [i32 2, i32 512, i32 131072], [3 x i32] [i32 32, i32 8192, i32 2097152], i32 4, i32 32 }, [56 x i8] zeroinitializer }, align 32
@stm32f4_adc_clk_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.12, i32 135, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No 'adc' clock found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32f4_adc_clk_sel\00", [44 x i8] zeroinitializer }, align 32
@stm32f4_adc_clk_sel._entry_ptr = internal global ptr @stm32f4_adc_clk_sel._entry, section ".printk_index", align 4
@stm32f4_adc_clk_sel._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.12, i32 141, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock rate: 0\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32f4_adc_clk_sel._entry_ptr.64 = internal global ptr @stm32f4_adc_clk_sel._entry.62, section ".printk_index", align 4
@stm32f4_pclk_div = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 6, i32 8], [16 x i8] zeroinitializer }, align 32
@stm32f4_adc_clk_sel._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.12, i32 150, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adc clk selection failed\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32f4_adc_clk_sel._entry_ptr.67 = internal global ptr @stm32f4_adc_clk_sel._entry.65, section ".printk_index", align 4
@stm32f4_adc_clk_sel.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.61, ptr @.str.12, ptr @.str.68, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Using analog clock source at %ld kHz\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32h7_adc_common_regs = internal constant { %struct.stm32_adc_common_regs, [56 x i8] } { %struct.stm32_adc_common_regs { i32 768, i32 776, [3 x i32] [i32 4, i32 262144, i32 0], [3 x i32] [i32 16, i32 1048576, i32 0], i32 4, i32 4 }, [56 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.12, i32 207, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No 'bus' clock found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32h7_adc_clk_sel\00", [44 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry_ptr = internal global ptr @stm32h7_adc_clk_sel._entry, section ".printk_index", align 4
@stm32h7_adc_clk_sel._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.12, i32 223, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid adc clock rate: 0\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry_ptr.73 = internal global ptr @stm32h7_adc_clk_sel._entry.71, section ".printk_index", align 4
@stm32h7_adc_clk_sel._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.12, i32 230, ptr @.str.76, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc clock duty: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry_ptr.77 = internal global ptr @stm32h7_adc_clk_sel._entry.74, section ".printk_index", align 4
@stm32h7_adc_ckmodes_spec = internal constant { [15 x %struct.stm32h7_adc_ck_spec], [44 x i8] } { [15 x %struct.stm32h7_adc_ck_spec] [%struct.stm32h7_adc_ck_spec { i32 0, i32 0, i32 1 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 1, i32 2 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 2, i32 4 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 3, i32 6 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 4, i32 8 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 5, i32 10 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 6, i32 12 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 7, i32 16 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 8, i32 32 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 9, i32 64 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 10, i32 128 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 11, i32 256 }, %struct.stm32h7_adc_ck_spec { i32 1, i32 0, i32 1 }, %struct.stm32h7_adc_ck_spec { i32 2, i32 0, i32 2 }, %struct.stm32h7_adc_ck_spec { i32 3, i32 0, i32 4 }], [44 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.70, ptr @.str.12, i32 255, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid bus clock rate: 0\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry_ptr.80 = internal global ptr @stm32h7_adc_clk_sel._entry.78, section ".printk_index", align 4
@stm32h7_adc_clk_sel._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.70, ptr @.str.12, i32 261, ptr @.str.76, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bus clock duty: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry_ptr.83 = internal global ptr @stm32h7_adc_clk_sel._entry.81, section ".printk_index", align 4
@stm32h7_adc_clk_sel._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.70, ptr @.str.12, i32 278, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@stm32h7_adc_clk_sel._entry_ptr.85 = internal global ptr @stm32h7_adc_clk_sel._entry.84, section ".printk_index", align 4
@stm32h7_adc_clk_sel.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.70, ptr @.str.12, ptr @.str.86, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Using %s clock/%d source at %ld kHz\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"stm32_adc_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 833, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 837, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"stm32_adc_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 818, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"stm32_adc_core_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 787, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 662, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 670, i32 46 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 673, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 675, i32 46 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 678, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 680, i32 49 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 683, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 685, i32 49 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 688, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 706, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 710, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 712, i32 48 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 729, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 587, i32 53 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 591, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 598, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 599, i32 52 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 603, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 611, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 612, i32 48 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 616, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 625, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 631, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 517, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 523, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 534, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 540, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 546, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 455, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 464, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 467, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 479, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 482, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 489, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [21 x i8] c"stm32_adc_domain_ops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 380, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 407, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"stm32_adc_offset\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 318, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"stm32f4_adc_priv_cfg\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 795, i32 40 }
@___asan_gen_.280 = private unnamed_addr constant [21 x i8] c"stm32h7_adc_priv_cfg\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 802, i32 40 }
@___asan_gen_.283 = private unnamed_addr constant [22 x i8] c"stm32mp1_adc_priv_cfg\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 810, i32 40 }
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"stm32f4_adc_common_regs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 299, i32 43 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 135, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 141, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"stm32f4_pclk_div\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 118, i32 12 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 150, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 160, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [24 x i8] c"stm32h7_adc_common_regs\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 309, i32 43 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 207, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 223, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 230, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant [25 x i8] c"stm32h7_adc_ckmodes_spec\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 178, i32 41 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 255, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 261, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 278, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [36 x i8] c"../drivers/iio/adc/stm32-adc-core.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 292, i32 2 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_stm32_adc_driver_exit, ptr @__initcall__kmod_stm32_adc_core__297_842_stm32_adc_driver_init6, ptr @stm32_adc_core_hw_start._entry, ptr @stm32_adc_core_hw_start._entry.36, ptr @stm32_adc_core_hw_start._entry.39, ptr @stm32_adc_core_hw_start._entry.42, ptr @stm32_adc_core_hw_start._entry.45, ptr @stm32_adc_core_hw_start._entry_ptr, ptr @stm32_adc_core_hw_start._entry_ptr.38, ptr @stm32_adc_core_hw_start._entry_ptr.41, ptr @stm32_adc_core_hw_start._entry_ptr.44, ptr @stm32_adc_core_hw_start._entry_ptr.47, ptr @stm32_adc_core_switches_probe._entry, ptr @stm32_adc_core_switches_probe._entry.31, ptr @stm32_adc_core_switches_probe._entry_ptr, ptr @stm32_adc_core_switches_probe._entry_ptr.33, ptr @stm32_adc_core_switches_supply_en._entry, ptr @stm32_adc_core_switches_supply_en._entry.49, ptr @stm32_adc_core_switches_supply_en._entry.53, ptr @stm32_adc_core_switches_supply_en._entry_ptr, ptr @stm32_adc_core_switches_supply_en._entry_ptr.51, ptr @stm32_adc_core_switches_supply_en._entry_ptr.55, ptr @stm32_adc_driver_exit, ptr @stm32_adc_irq_probe._entry, ptr @stm32_adc_irq_probe._entry_ptr, ptr @stm32_adc_probe._entry, ptr @stm32_adc_probe._entry.18, ptr @stm32_adc_probe._entry_ptr, ptr @stm32_adc_probe._entry_ptr.20, ptr @stm32f4_adc_clk_sel._entry, ptr @stm32f4_adc_clk_sel._entry.62, ptr @stm32f4_adc_clk_sel._entry.65, ptr @stm32f4_adc_clk_sel._entry_ptr, ptr @stm32f4_adc_clk_sel._entry_ptr.64, ptr @stm32f4_adc_clk_sel._entry_ptr.67, ptr @stm32h7_adc_clk_sel._entry, ptr @stm32h7_adc_clk_sel._entry.71, ptr @stm32h7_adc_clk_sel._entry.74, ptr @stm32h7_adc_clk_sel._entry.78, ptr @stm32h7_adc_clk_sel._entry.81, ptr @stm32h7_adc_clk_sel._entry.84, ptr @stm32h7_adc_clk_sel._entry_ptr, ptr @stm32h7_adc_clk_sel._entry_ptr.73, ptr @stm32h7_adc_clk_sel._entry_ptr.77, ptr @stm32h7_adc_clk_sel._entry_ptr.80, ptr @stm32h7_adc_clk_sel._entry_ptr.83, ptr @stm32h7_adc_clk_sel._entry_ptr.85, ptr @stm32_adc_driver, ptr @.str, ptr @stm32_adc_of_match, ptr @stm32_adc_core_pm_ops, ptr @stm32_adc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @stm32_adc_domain_ops, ptr @.str.58, ptr @.str.59, ptr @stm32_adc_offset, ptr @stm32f4_adc_priv_cfg, ptr @stm32h7_adc_priv_cfg, ptr @stm32mp1_adc_priv_cfg, ptr @stm32f4_adc_common_regs, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @stm32f4_pclk_div, ptr @.str.66, ptr @.str.68, ptr @stm32h7_adc_common_regs, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.76, ptr @stm32h7_adc_ckmodes_spec, ptr @.str.79, ptr @.str.82, ptr @.str.86], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_switches_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_switches_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_hw_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_hw_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_hw_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_hw_start._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_hw_start._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_switches_supply_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_switches_supply_en._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_core_switches_supply_en._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_irq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_offset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_priv_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_priv_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_adc_priv_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_common_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_clk_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_clk_sel._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_pclk_div to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_clk_sel._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_common_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_clk_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_clk_sel._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_clk_sel._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_ckmodes_spec to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_clk_sel._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_clk_sel._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_clk_sel._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_adc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_adc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %max_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rate) #8
  %2 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max_rate, align 4, !annotation !200
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %common = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %common, ptr %driver_data.i.i, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_match_table, align 4
  %call9 = tail call ptr @of_match_device(ptr noundef %7, ptr noundef %dev1) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %cfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %cfg, align 4
  %lock = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 12, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_adc_probe.__key, i16 noundef signext 3) #8
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #8
  %11 = ptrtoint ptr %common to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %common, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call12, align 4
  %phys_base = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %phys_base, align 4
  %call26 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %vdda = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %vdda to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %vdda, align 4
  %cmp.i213 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call26 to i32
  %call33 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %call36 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  %vref = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call36, ptr %vref, align 4
  %cmp.i214 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call36 to i32
  %call43 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call46 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %aclk = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call46, ptr %aclk, align 4
  %cmp.i215 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call46 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %call56 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %bclk = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call56, ptr %bclk, align 4
  %cmp.i216 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call56 to i32
  %call63 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %23, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %call65 = tail call fastcc i32 @stm32_adc_core_switches_probe(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !201
  %call.i217 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call70 = tail call fastcc i32 @stm32_adc_core_hw_start(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.err_pm_stop_crit_edge

if.end68.err_pm_stop_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_stop

if.end73:                                         ; preds = %if.end68
  %25 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vref, align 4
  %call75 = tail call i32 @regulator_get_voltage(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp = icmp slt i32 %call75, 0
  br i1 %cmp, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call75) #11
  br label %err_hw_stop

if.end81:                                         ; preds = %if.end73
  %div222 = udiv i32 %call75, 1000
  %vref_mv = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div222, ptr %vref_mv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_probe, %if.then88)) #8
          to label %do.end94 [label %if.then88], !srcloc !202

if.then88:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vref_mv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %29) #8
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %if.end81
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.17, ptr noundef nonnull %max_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool98.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool98.not, label %if.then99, label %if.else

if.then99:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_rate, align 4
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 4
  %max_clk_rate_hz = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %max_clk_rate_hz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_clk_rate_hz, align 4
  %38 = call i32 @llvm.umin.i32(i32 %33, i32 %37)
  br label %if.end106

if.else:                                          ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg, align 4
  %max_clk_rate_hz104 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %max_clk_rate_hz104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_clk_rate_hz104, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else, %if.then99
  %.sink = phi i32 [ %38, %if.then99 ], [ %42, %if.else ]
  %43 = getelementptr inbounds %struct.stm32_adc_priv, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %43, align 4
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg, align 4
  %clk_sel = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %clk_sel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk_sel, align 4
  %call108 = call i32 %48(ptr noundef %pdev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.end106.err_hw_stop_crit_edge, label %if.end111

if.end106.err_hw_stop_crit_edge:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hw_stop

if.end111:                                        ; preds = %if.end106
  %call112 = call fastcc i32 @stm32_adc_irq_probe(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end111.err_hw_stop_crit_edge, label %if.end115

if.end111.err_hw_stop_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hw_stop

if.end115:                                        ; preds = %if.end111
  %call117 = call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.end122, label %if.end124

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  call fastcc void @stm32_adc_irq_remove(ptr noundef nonnull %call.i)
  br label %err_hw_stop

if.end124:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %call.i218 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %49 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store volatile i64 %call.i218, ptr %last_busy.i, align 8
  %call.i219 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  br label %cleanup

err_hw_stop:                                      ; preds = %do.end122, %if.end111.err_hw_stop_crit_edge, %if.end106.err_hw_stop_crit_edge, %do.end79
  %ret.0 = phi i32 [ %call75, %do.end79 ], [ %call108, %if.end106.err_hw_stop_crit_edge ], [ %call112, %if.end111.err_hw_stop_crit_edge ], [ %call117, %do.end122 ]
  call fastcc void @stm32_adc_core_hw_stop(ptr noundef %dev1)
  br label %err_pm_stop

err_pm_stop:                                      ; preds = %err_hw_stop, %if.end68.err_pm_stop_crit_edge
  %ret.1 = phi i32 [ %call70, %if.end68.err_pm_stop_crit_edge ], [ %ret.0, %err_hw_stop ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i220 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #8
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %err_pm_stop, %if.end124, %if.end64.cleanup_crit_edge, %if.then59, %if.then49, %if.then39, %if.then29, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then19 ], [ %call33, %if.then29 ], [ %call43, %if.then39 ], [ %call53, %if.then49 ], [ %call63, %if.then59 ], [ %ret.1, %err_pm_stop ], [ 0, %if.end124 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call void @of_platform_depopulate(ptr noundef %dev) #8
  tail call fastcc void @stm32_adc_irq_remove(ptr noundef %add.ptr.i)
  tail call fastcc void @stm32_adc_core_hw_stop(ptr noundef %dev)
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i16 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !204
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !205
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_core_switches_probe(ptr noundef %dev, ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  %syscfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %syscfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %syscfg, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %syscfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %syscfg, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %cfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 11
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 4
  %has_syscfg = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %has_syscfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %has_syscfg, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.if.end23_crit_edge, label %land.lhs.true

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %land.lhs.true.if.end23_crit_edge, label %if.then10

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then10:                                        ; preds = %land.lhs.true
  %call11 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  %booster = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 5
  %9 = ptrtoint ptr %booster to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %booster, align 4
  %cmp.i106 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then14, label %if.then10.if.end23_crit_edge

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %if.then10
  %cmp17.not = icmp eq ptr %call11, inttoptr (i32 -19 to ptr)
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call11 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %booster to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %booster, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.then10.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 4
  %has_syscfg25 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %has_syscfg25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %has_syscfg25, align 4
  %and26 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.if.end43_crit_edge, label %land.lhs.true28

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true28:                                  ; preds = %if.end23
  %call.i107 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %tobool.i108.not = icmp eq ptr %call.i107, null
  br i1 %tobool.i108.not, label %land.lhs.true28.if.end43_crit_edge, label %if.then30

land.lhs.true28.if.end43_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then30:                                        ; preds = %land.lhs.true28
  %call31 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  %vdd = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 6
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %vdd, align 4
  %cmp.i109 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then34, label %if.then30.if.end43_crit_edge

if.then30.if.end43_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then34:                                        ; preds = %if.then30
  %cmp37.not = icmp eq ptr %call31, inttoptr (i32 -19 to ptr)
  br i1 %cmp37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call31 to i32
  %call39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %17, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vdd, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %if.then30.if.end43_crit_edge, %land.lhs.true28.if.end43_crit_edge, %if.end23.if.end43_crit_edge
  %vdd44 = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 6
  %19 = ptrtoint ptr %vdd44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdd44, align 4
  %tobool45.not = icmp eq ptr %20, null
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  %call48 = tail call i32 @regulator_enable(ptr noundef nonnull %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end, label %if.end51

do.end:                                           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call48) #11
  br label %cleanup

if.end51:                                         ; preds = %if.then46
  %21 = ptrtoint ptr %vdd44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdd44, align 4
  %call53 = tail call i32 @regulator_get_voltage(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call53) #11
  %23 = ptrtoint ptr %vdd44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdd44, align 4
  %call60 = tail call i32 @regulator_disable(ptr noundef %24) #8
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %vdd_uv = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 9
  %25 = ptrtoint ptr %vdd_uv to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call53, ptr %vdd_uv, align 4
  %26 = ptrtoint ptr %vdd44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdd44, align 4
  %call63 = tail call i32 @regulator_disable(ptr noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end58, %do.end, %if.end43.cleanup_crit_edge, %if.then38, %if.then18, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call19, %if.then18 ], [ %call39, %if.then38 ], [ %call48, %do.end ], [ %call53, %do.end58 ], [ 0, %if.end61 ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_core_hw_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %vdda = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdda, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdda, align 4
  %call4 = tail call i32 @regulator_get_voltage(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call4) #11
  br label %err_vdda_disable

if.end10:                                         ; preds = %if.end
  %vdda_uv = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %vdda_uv to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %vdda_uv, align 4
  %call11 = tail call fastcc i32 @stm32_adc_core_switches_supply_en(ptr noundef %add.ptr.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.err_vdda_disable_crit_edge, label %if.end14

if.end10.err_vdda_disable_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vdda_disable

if.end14:                                         ; preds = %if.end10
  %vref = getelementptr i8, ptr %1, i32 -16
  %7 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vref, align 4
  %call15 = tail call i32 @regulator_enable(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #11
  br label %err_switches_dis

if.end21:                                         ; preds = %if.end14
  %bclk = getelementptr i8, ptr %1, i32 -36
  %9 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.clk_prepare_enable.exit_crit_edge

if.end21.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end21
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end28_crit_edge, label %if.then3.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end21.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end21.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp23 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp23, label %do.end27, label %clk_prepare_enable.exit.if.end28_crit_edge

clk_prepare_enable.exit.if.end28_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end27:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %err_regulator_disable

if.end28:                                         ; preds = %clk_prepare_enable.exit.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  %aclk = getelementptr i8, ptr %1, i32 -40
  %11 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aclk, align 4
  %call.i73 = tail call i32 @clk_prepare(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i77, label %if.end28.clk_prepare_enable.exit80_crit_edge

if.end28.clk_prepare_enable.exit80_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit80

if.end.i77:                                       ; preds = %if.end28
  %call1.i75 = tail call i32 @clk_enable(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool2.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool2.not.i76, label %if.end.i77.if.end35_crit_edge, label %if.then3.i78

if.end.i77.if.end35_crit_edge:                    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then3.i78:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %12) #8
  br label %clk_prepare_enable.exit80

clk_prepare_enable.exit80:                        ; preds = %if.then3.i78, %if.end28.clk_prepare_enable.exit80_crit_edge
  %retval.0.i79 = phi i32 [ %call.i73, %if.end28.clk_prepare_enable.exit80_crit_edge ], [ %call1.i75, %if.then3.i78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i79)
  %cmp30 = icmp slt i32 %retval.0.i79, 0
  br i1 %cmp30, label %do.end34, label %clk_prepare_enable.exit80.if.end35_crit_edge

clk_prepare_enable.exit80.if.end35_crit_edge:     ; preds = %clk_prepare_enable.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end34:                                         ; preds = %clk_prepare_enable.exit80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #11
  %13 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bclk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %err_regulator_disable

if.end35:                                         ; preds = %clk_prepare_enable.exit80.if.end35_crit_edge, %if.end.i77.if.end35_crit_edge
  %ccr_bak = getelementptr i8, ptr %1, i32 60
  %15 = ptrtoint ptr %ccr_bak to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ccr_bak, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %cfg = getelementptr i8, ptr %1, i32 -4
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %ccr = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ccr, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #8, !srcloc !206
  br label %cleanup

err_regulator_disable:                            ; preds = %do.end34, %do.end27
  %ret.0 = phi i32 [ %retval.0.i, %do.end27 ], [ %retval.0.i79, %do.end34 ]
  %26 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vref, align 4
  %call39 = tail call i32 @regulator_disable(ptr noundef %27) #8
  br label %err_switches_dis

err_switches_dis:                                 ; preds = %err_regulator_disable, %do.end20
  %ret.1 = phi i32 [ %call15, %do.end20 ], [ %ret.0, %err_regulator_disable ]
  %28 = ptrtoint ptr %vdda_uv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vdda_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %29)
  %cmp.i = icmp slt i32 %29, 2700000
  br i1 %cmp.i, label %if.then.i, label %err_switches_dis.err_vdda_disable_crit_edge

err_switches_dis.err_vdda_disable_crit_edge:      ; preds = %err_switches_dis
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vdda_disable

if.then.i:                                        ; preds = %err_switches_dis
  %syscfg.i = getelementptr i8, ptr %1, i32 64
  %30 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %syscfg.i, align 4
  %tobool.not.i81 = icmp eq ptr %31, null
  br i1 %tobool.not.i81, label %if.then.i.if.end.i83_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i83_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i83

land.lhs.true.i:                                  ; preds = %if.then.i
  %vdd_uv.i = getelementptr i8, ptr %1, i32 -12
  %32 = ptrtoint ptr %vdd_uv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vdd_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %33)
  %cmp1.i = icmp sgt i32 %33, 2700000
  br i1 %cmp1.i, label %if.then2.i, label %land.lhs.true.i.if.end.i83_crit_edge

land.lhs.true.i.if.end.i83_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i83

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i82 = tail call i32 @regmap_write(ptr noundef nonnull %31, i32 noundef 68, i32 noundef 512) #8
  %vdd.i = getelementptr i8, ptr %1, i32 -24
  %34 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdd.i, align 4
  %call4.i = tail call i32 @regulator_disable(ptr noundef %35) #8
  br label %err_vdda_disable

if.end.i83:                                       ; preds = %land.lhs.true.i.if.end.i83_crit_edge, %if.then.i.if.end.i83_crit_edge
  %booster.i = getelementptr i8, ptr %1, i32 -28
  %36 = ptrtoint ptr %booster.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %booster.i, align 4
  %tobool5.not.i = icmp eq ptr %37, null
  br i1 %tobool5.not.i, label %if.end.i83.err_vdda_disable_crit_edge, label %if.then6.i

if.end.i83.err_vdda_disable_crit_edge:            ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vdda_disable

if.then6.i:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @regulator_disable(ptr noundef nonnull %37) #8
  br label %err_vdda_disable

err_vdda_disable:                                 ; preds = %if.then6.i, %if.end.i83.err_vdda_disable_crit_edge, %if.then2.i, %err_switches_dis.err_vdda_disable_crit_edge, %if.end10.err_vdda_disable_crit_edge, %do.end9
  %ret.2 = phi i32 [ %call4, %do.end9 ], [ %call11, %if.end10.err_vdda_disable_crit_edge ], [ %ret.1, %err_switches_dis.err_vdda_disable_crit_edge ], [ %ret.1, %if.then2.i ], [ %ret.1, %if.end.i83.err_vdda_disable_crit_edge ], [ %ret.1, %if.then6.i ]
  %38 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdda, align 4
  %call41 = tail call i32 @regulator_disable(ptr noundef %39) #8
  br label %cleanup

cleanup:                                          ; preds = %err_vdda_disable, %if.end35, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.2, %err_vdda_disable ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_irq_probe(ptr noundef %pdev, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %num_irqs48 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_irqs48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_irqs48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp49.not = icmp eq i32 %5, 0
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.050, 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %num_irqs = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_irqs, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.050) #8
  %arrayidx = getelementptr [3 x i32], ptr %priv, i32 0, i32 %i.050
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @stm32_adc_domain_ops, ptr noundef %priv) #8
  %domain = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i, ptr %domain, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %do.end, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.end
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 4
  %num_irqs1351 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_irqs1351 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_irqs1351, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1452.not = icmp eq i32 %15, 0
  br i1 %cmp1452.not, label %for.cond11.preheader.cleanup_crit_edge, label %for.cond11.preheader.for.body15_crit_edge

for.cond11.preheader.for.body15_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body15

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #11
  br label %cleanup

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond11.preheader.for.body15_crit_edge
  %i.153 = phi i32 [ %inc22, %for.body15.for.body15_crit_edge ], [ 0, %for.cond11.preheader.for.body15_crit_edge ]
  %arrayidx17 = getelementptr [3 x i32], ptr %priv, i32 0, i32 %i.153
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  tail call void @__irq_set_handler(i32 noundef %17, ptr noundef nonnull @stm32_adc_irq_handler, i32 noundef 1, ptr noundef null) #8
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %call20 = tail call i32 @irq_set_handler_data(i32 noundef %19, ptr noundef %priv) #8
  %inc22 = add nuw i32 %i.153, 1
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %num_irqs13 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %num_irqs13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_irqs13, align 4
  %cmp14 = icmp ult i32 %inc22, %23
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.cleanup_crit_edge

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

cleanup:                                          ; preds = %for.body15.cleanup_crit_edge, %do.end, %for.cond11.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %for.cond11.preheader.cleanup_crit_edge ], [ 0, %for.body15.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_irq_remove(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !200
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #8
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i, align 4, !annotation !200
  %call.i.1 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %irq.i) #8
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge, label %if.then.i.1

irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge: ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit.1

if.then.i.1:                                      ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %if.then.i.1, %irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %9, %if.then.i.1 ], [ 0, %irq_find_mapping.exit.irq_find_mapping.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.1) #8
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !200
  %call.i.2 = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef 2, ptr noundef nonnull %irq.i) #8
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge, label %if.then.i.2

irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge: ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit.2

if.then.i.2:                                      ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %if.then.i.2, %irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %14, %if.then.i.2 ], [ 0, %irq_find_mapping.exit.1.irq_find_mapping.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.2) #8
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %16) #8
  %cfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 11
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg, align 4
  %num_irqs2 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_irqs2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_irqs2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp33.not = icmp eq i32 %20, 0
  br i1 %cmp33.not, label %irq_find_mapping.exit.2.for.end7_crit_edge, label %irq_find_mapping.exit.2.for.body4_crit_edge

irq_find_mapping.exit.2.for.body4_crit_edge:      ; preds = %irq_find_mapping.exit.2
  br label %for.body4

irq_find_mapping.exit.2.for.end7_crit_edge:       ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end7

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %irq_find_mapping.exit.2.for.body4_crit_edge
  %i.04 = phi i32 [ %inc6, %for.body4.for.body4_crit_edge ], [ 0, %irq_find_mapping.exit.2.for.body4_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr %priv, i32 0, i32 %i.04
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__irq_set_handler(i32 noundef %22, ptr noundef null, i32 noundef 1, ptr noundef null) #8
  %inc6 = add nuw i32 %i.04, 1
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 4
  %num_irqs = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_irqs, align 4
  %cmp3 = icmp ult i32 %inc6, %26
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end7_crit_edge

for.body4.for.end7_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end7

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.end7:                                         ; preds = %for.body4.for.end7_crit_edge, %irq_find_mapping.exit.2.for.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_core_hw_stop(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cfg = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ccr = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ccr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %ccr_bak = getelementptr i8, ptr %1, i32 60
  %12 = ptrtoint ptr %ccr_bak to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ccr_bak, align 4
  %aclk = getelementptr i8, ptr %1, i32 -40
  %13 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %bclk = getelementptr i8, ptr %1, i32 -36
  %15 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bclk, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %vref = getelementptr i8, ptr %1, i32 -16
  %17 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vref, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %18) #8
  %vdda_uv.i = getelementptr i8, ptr %1, i32 -8
  %19 = ptrtoint ptr %vdda_uv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vdda_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %20)
  %cmp.i = icmp slt i32 %20, 2700000
  br i1 %cmp.i, label %if.then.i, label %entry.stm32_adc_core_switches_supply_dis.exit_crit_edge

entry.stm32_adc_core_switches_supply_dis.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_adc_core_switches_supply_dis.exit

if.then.i:                                        ; preds = %entry
  %syscfg.i = getelementptr i8, ptr %1, i32 64
  %21 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %syscfg.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %vdd_uv.i = getelementptr i8, ptr %1, i32 -12
  %23 = ptrtoint ptr %vdd_uv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vdd_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %24)
  %cmp1.i = icmp sgt i32 %24, 2700000
  br i1 %cmp1.i, label %if.then2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_write(ptr noundef nonnull %22, i32 noundef 68, i32 noundef 512) #8
  %vdd.i = getelementptr i8, ptr %1, i32 -24
  %25 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdd.i, align 4
  %call4.i = tail call i32 @regulator_disable(ptr noundef %26) #8
  br label %stm32_adc_core_switches_supply_dis.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %booster.i = getelementptr i8, ptr %1, i32 -28
  %27 = ptrtoint ptr %booster.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %booster.i, align 4
  %tobool5.not.i = icmp eq ptr %28, null
  br i1 %tobool5.not.i, label %if.end.i.stm32_adc_core_switches_supply_dis.exit_crit_edge, label %if.then6.i

if.end.i.stm32_adc_core_switches_supply_dis.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_adc_core_switches_supply_dis.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @regulator_disable(ptr noundef nonnull %28) #8
  br label %stm32_adc_core_switches_supply_dis.exit

stm32_adc_core_switches_supply_dis.exit:          ; preds = %if.then6.i, %if.end.i.stm32_adc_core_switches_supply_dis.exit_crit_edge, %if.then2.i, %entry.stm32_adc_core_switches_supply_dis.exit_crit_edge
  %vdda = getelementptr i8, ptr %1, i32 -20
  %29 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdda, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %30) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !204
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !205
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_core_switches_supply_en(ptr nocapture noundef readonly %priv, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdda_uv = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %vdda_uv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vdda_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %1)
  %cmp = icmp slt i32 %1, 2700000
  br i1 %cmp, label %if.then, label %entry.do.body53_crit_edge

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.then:                                          ; preds = %entry
  %syscfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %syscfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syscfg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end24_crit_edge, label %land.lhs.true

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then
  %vdd_uv = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %vdd_uv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vdd_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %5)
  %cmp1 = icmp sgt i32 %5, 2700000
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then2:                                         ; preds = %land.lhs.true
  %vdd = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %if.then2
  %8 = ptrtoint ptr %syscfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscfg, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %do.body15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdd, align 4
  %call10 = tail call i32 @regulator_disable(ptr noundef %11) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call6) #11
  br label %cleanup

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_core_switches_supply_en, %if.then20)) #8
          to label %cleanup [label %if.then20], !srcloc !202

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.52) #8
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %booster = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 5
  %12 = ptrtoint ptr %booster to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %booster, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end24.do.body53_crit_edge, label %if.then26

if.end24.do.body53_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.then26:                                        ; preds = %if.end24
  %call28 = tail call i32 @regulator_enable(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %do.body35

do.end33:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call28) #11
  br label %cleanup

do.body35:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_core_switches_supply_en, %if.then47)) #8
          to label %cleanup [label %if.then47], !srcloc !202

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.56) #8
  br label %cleanup

do.body53:                                        ; preds = %if.end24.do.body53_crit_edge, %entry.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_core_switches_supply_en, %if.then65)) #8
          to label %cleanup [label %if.then65], !srcloc !202

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %vdda_uv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vdda_uv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body53, %if.then47, %do.body35, %do.end33, %if.then20, %do.body15, %if.then8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %if.then8 ], [ %call28, %do.end33 ], [ 0, %if.then20 ], [ 0, %if.then47 ], [ 0, %if.then65 ], [ 0, %do.body15 ], [ 0, %do.body35 ], [ 0, %do.body53 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adc_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
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
  %common = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %cfg = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !207
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %num_irqs36 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_irqs36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_irqs36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp37.not = icmp eq i32 %25, 0
  br i1 %cmp37.not, label %chained_irq_enter.exit.for.end_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %26 = phi ptr [ %23, %for.body.lr.ph ], [ %57, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx = getelementptr %struct.stm32_adc_common_regs, ptr %28, i32 0, i32 2, i32 %i.038
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %and = and i32 %30, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.lor.lhs.false_crit_edge, label %land.lhs.true

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %arrayidx.i = getelementptr [3 x i32], ptr @stm32_adc_offset, i32 0, i32 %i.038
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %common, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %32
  %ier1.i = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %28, i32 0, i32 4
  %35 = ptrtoint ptr %ier1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ier1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %36
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !207
  %38 = call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %eocie_msk.i = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %eocie_msk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %eocie_msk.i, align 4
  %and.i = and i32 %44, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %arrayidx10 = getelementptr %struct.stm32_adc_common_regs, ptr %48, i32 0, i32 3, i32 %i.038
  %49 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %50, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %51 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %53 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %irq.i, align 4, !annotation !200
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %52, i32 noundef %i.038, ptr noundef nonnull %irq.i) #8
  %tobool.not.i31 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i31, label %if.then.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then.irq_find_mapping.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %55, %if.then.i ], [ 0, %if.then.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  %call14 = call i32 @generic_handle_irq(i32 noundef %retval.0.i) #8
  br label %for.inc

for.inc:                                          ; preds = %irq_find_mapping.exit, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw i32 %i.038, 1
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg, align 4
  %num_irqs = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_irqs, align 4
  %cmp = icmp ult i32 %inc, %59
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %60 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i33 = icmp eq ptr %61, null
  br i1 %tobool.not.i33, label %if.else.i34, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i34:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %62 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i34, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %63, %if.else.i34 ], [ %61, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adc_domain_unmap(ptr nocapture noundef readnone %d, i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_adc_clk_sel(ptr noundef %pdev, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %aclk = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aclk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @clk_get_rate(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %max_clk_rate = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %max_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_clk_rate, align 4
  %div66 = lshr i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div66, i32 %3)
  %cmp9.not = icmp ugt i32 %div66, %3
  br i1 %cmp9.not, label %for.inc, label %for.cond.preheader.if.end18_crit_edge

for.cond.preheader.if.end18_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.63) #11
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %div.167 = lshr i32 %call, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.167, i32 %3)
  %cmp9.not.1 = icmp ugt i32 %div.167, %3
  br i1 %cmp9.not.1, label %for.inc.1, label %for.inc.if.end18_crit_edge

for.inc.if.end18_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.inc.1:                                        ; preds = %for.inc
  %div.2 = udiv i32 %call, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %3)
  %cmp9.not.2 = icmp ugt i32 %div.2, %3
  br i1 %cmp9.not.2, label %for.inc.2, label %for.inc.1.if.end18_crit_edge

for.inc.1.if.end18_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.inc.2:                                        ; preds = %for.inc.1
  %div.368 = lshr i32 %call, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.368, i32 %3)
  %cmp9.not.3 = icmp ugt i32 %div.368, %3
  br i1 %cmp9.not.3, label %for.inc.3, label %for.inc.2.if.end18_crit_edge

for.inc.2.if.end18_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.66) #11
  br label %cleanup

if.end18:                                         ; preds = %for.inc.2.if.end18_crit_edge, %for.inc.1.if.end18_crit_edge, %for.inc.if.end18_crit_edge, %for.cond.preheader.if.end18_crit_edge
  %i.064.lcssa = phi i32 [ 0, %for.cond.preheader.if.end18_crit_edge ], [ 1, %for.inc.if.end18_crit_edge ], [ 2, %for.inc.1.if.end18_crit_edge ], [ 3, %for.inc.2.if.end18_crit_edge ]
  %arrayidx19 = getelementptr [4 x i32], ptr @stm32f4_pclk_div, i32 0, i32 %i.064.lcssa
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx19, align 4
  %div20 = udiv i32 %call, %5
  %common = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 12
  %rate21 = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %rate21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div20, ptr %rate21, align 4
  %7 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 772
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !207
  %10 = and i32 %9, -769
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %shl = shl nuw nsw i32 %i.064.lcssa, 16
  %or = or i32 %11, %shl
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common, align 4
  %add.ptr26 = getelementptr i8, ptr %14, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %12) #8, !srcloc !206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32f4_adc_clk_sel.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32f4_adc_clk_sel, %if.then33)) #8
          to label %cleanup [label %if.then33], !srcloc !202

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %15 = ptrtoint ptr %rate21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate21, align 4
  %div37 = udiv i32 %16, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32f4_adc_clk_sel.__UNIQUE_ID_ddebug289, ptr noundef %dev34, ptr noundef nonnull @.str.68, i32 noundef %div37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end18, %for.inc.3, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %for.inc.3 ], [ -22, %do.end6 ], [ -2, %do.end ], [ 0, %if.then33 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_adc_clk_sel(ptr noundef %pdev, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bclk = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bclk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %aclk = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aclk, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end37_crit_edge, label %if.then2

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @clk_get_rate(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.72) #11
  br label %cleanup

if.end10:                                         ; preds = %if.then2
  %4 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aclk, align 4
  %call12 = tail call i32 @clk_get_scaled_duty_cycle(ptr noundef %5, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end16, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.75, i32 noundef %call12) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end10.if.end18_crit_edge
  %6 = add i32 %call12, -52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %6)
  %7 = icmp ult i32 %6, -3
  %max_clk_rate = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18
  %i.0174 = phi i32 [ 0, %if.end18 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %i.0174
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %div24 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %i.0174, i32 2
  %10 = ptrtoint ptr %div24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25.not = icmp eq i32 %9, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %12 = zext i32 %i.0174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0174, label %if.end27.if.end32_crit_edge [
    i32 12, label %if.end27.land.lhs.true_crit_edge
    i32 0, label %if.end27.land.lhs.true_crit_edge217
  ]

if.end27.land.lhs.true_crit_edge217:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end27.land.lhs.true_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end27.land.lhs.true_crit_edge, %if.end27.land.lhs.true_crit_edge217
  br i1 %7, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  %div33 = udiv i32 %call, %11
  %13 = ptrtoint ptr %max_clk_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_clk_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div33, i32 %14)
  %cmp34.not = icmp ugt i32 %div33, %14
  br i1 %cmp34.not, label %if.end32.for.inc_crit_edge, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.inc.if.end37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %15 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bclk, align 4
  %call39 = tail call i32 @clk_get_rate(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.79) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %17 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bclk, align 4
  %call48 = tail call i32 @clk_get_scaled_duty_cycle(ptr noundef %18, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %dev54 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev54, ptr noundef nonnull @.str.82, i32 noundef %call48) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end53, %if.end46.if.end55_crit_edge
  %19 = add i32 %call48, -52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %19)
  %20 = icmp ult i32 %19, -3
  %max_clk_rate76 = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 4
  br label %for.body58

for.body58:                                       ; preds = %for.inc80.for.body58_crit_edge, %if.end55
  %i.1176 = phi i32 [ 0, %if.end55 ], [ %inc81, %for.inc80.for.body58_crit_edge ]
  %arrayidx59 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %i.1176
  %21 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx59, align 4
  %div64 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %i.1176, i32 2
  %23 = ptrtoint ptr %div64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %div64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool65.not = icmp eq i32 %22, 0
  br i1 %tobool65.not, label %for.body58.for.inc80_crit_edge, label %if.end67

for.body58.for.inc80_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80

if.end67:                                         ; preds = %for.body58
  %25 = zext i32 %i.1176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %i.1176, label %if.end67.if.end74_crit_edge [
    i32 12, label %if.end67.land.lhs.true69_crit_edge
    i32 0, label %if.end67.land.lhs.true69_crit_edge218
  ]

if.end67.land.lhs.true69_crit_edge218:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true69

if.end67.land.lhs.true69_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true69

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true69:                                  ; preds = %if.end67.land.lhs.true69_crit_edge, %if.end67.land.lhs.true69_crit_edge218
  br i1 %20, label %land.lhs.true69.for.inc80_crit_edge, label %land.lhs.true69.if.end74_crit_edge

land.lhs.true69.if.end74_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true69.for.inc80_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80

if.end74:                                         ; preds = %land.lhs.true69.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %div75 = udiv i32 %call39, %24
  %26 = ptrtoint ptr %max_clk_rate76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_clk_rate76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div75, i32 %27)
  %cmp77.not = icmp ugt i32 %div75, %27
  br i1 %cmp77.not, label %if.end74.for.inc80_crit_edge, label %if.end74.out_crit_edge

if.end74.out_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end74.for.inc80_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80

for.inc80:                                        ; preds = %if.end74.for.inc80_crit_edge, %land.lhs.true69.for.inc80_crit_edge, %for.body58.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.1176, 1
  %exitcond185.not = icmp eq i32 %inc81, 15
  br i1 %exitcond185.not, label %do.end85, label %for.inc80.for.body58_crit_edge

for.inc80.for.body58_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body58

do.end85:                                         ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.66) #11
  br label %cleanup

out:                                              ; preds = %if.end74.out_crit_edge, %if.end32.out_crit_edge
  %div87.pre-phi = phi i32 [ %div75, %if.end74.out_crit_edge ], [ %div33, %if.end32.out_crit_edge ]
  %div.0 = phi i32 [ %24, %if.end74.out_crit_edge ], [ %11, %if.end32.out_crit_edge ]
  %i.1176.pn = phi i32 [ %i.1176, %if.end74.out_crit_edge ], [ %i.0174, %if.end32.out_crit_edge ]
  %ckmode.0 = phi i32 [ %22, %if.end74.out_crit_edge ], [ 0, %if.end32.out_crit_edge ]
  %presc.0.in = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %i.1176.pn, i32 1
  %28 = ptrtoint ptr %presc.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %presc.0 = load i32, ptr %presc.0.in, align 4
  %common = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 12
  %rate88 = getelementptr inbounds %struct.stm32_adc_priv, ptr %priv, i32 0, i32 12, i32 2
  %29 = ptrtoint ptr %rate88 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div87.pre-phi, ptr %rate88, align 4
  %30 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %common, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 776
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !207
  %33 = and i32 %32, -16129
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %shl = shl i32 %ckmode.0, 16
  %shl91 = shl i32 %presc.0, 18
  %or = or i32 %shl, %shl91
  %or92 = or i32 %or, %34
  %35 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %36 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %common, align 4
  %add.ptr95 = getelementptr i8, ptr %37, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %35) #8, !srcloc !206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32h7_adc_clk_sel.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32h7_adc_clk_sel, %if.then102)) #8
          to label %cleanup [label %if.then102], !srcloc !202

if.then102:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev103 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ckmode.0)
  %tobool104.not = icmp eq i32 %ckmode.0, 0
  %cond = select i1 %tobool104.not, ptr @.str.6, ptr @.str.8
  %38 = ptrtoint ptr %rate88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate88, align 4
  %div107 = udiv i32 %39, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32h7_adc_clk_sel.__UNIQUE_ID_ddebug290, ptr noundef %dev103, ptr noundef nonnull @.str.86, ptr noundef nonnull %cond, i32 noundef %div.0, i32 noundef %div107) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %out, %do.end85, %do.end44, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end85 ], [ -22, %do.end44 ], [ -22, %do.end8 ], [ -2, %do.end ], [ 0, %if.then102 ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_scaled_duty_cycle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_core_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @stm32_adc_core_hw_stop(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_core_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stm32_adc_core_hw_start(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_core_runtime_idle(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %0 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !155, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !187, !189}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__initcall__kmod_stm32_adc_core__297_842_stm32_adc_driver_init6, !1, !"__initcall__kmod_stm32_adc_core__297_842_stm32_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 842, i32 1}
!2 = !{ptr @__exitcall_stm32_adc_driver_exit, !1, !"__exitcall_stm32_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 844, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 845, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 846, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias302, !11, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 847, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 837, i32 11}
!14 = !{ptr @stm32_adc_driver, !15, !"stm32_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 833, i32 31}
!16 = !{ptr @stm32_adc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 662, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 670, i32 46}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 673, i32 10}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 675, i32 46}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 678, i32 10}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 680, i32 49}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 683, i32 10}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 685, i32 49}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 688, i32 10}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 706, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stm32_adc_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @stm32_adc_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 710, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @stm32_adc_probe.__UNIQUE_ID_ddebug294, !44, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 712, i32 48}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 729, i32 3}
!51 = !{ptr @stm32_adc_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @stm32_adc_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 587, i32 53}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 591, i32 35}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 598, i32 32}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 599, i32 52}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 603, i32 36}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 611, i32 32}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 612, i32 48}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 616, i32 36}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 625, i32 4}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @stm32_adc_core_switches_probe._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @stm32_adc_core_switches_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 631, i32 4}
!76 = !{ptr @stm32_adc_core_switches_probe._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @stm32_adc_core_switches_probe._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 517, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stm32_adc_core_hw_start._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stm32_adc_core_hw_start._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 523, i32 3}
!85 = !{ptr @stm32_adc_core_hw_start._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @stm32_adc_core_hw_start._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 534, i32 3}
!89 = !{ptr @stm32_adc_core_hw_start._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @stm32_adc_core_hw_start._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 540, i32 3}
!93 = !{ptr @stm32_adc_core_hw_start._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @stm32_adc_core_hw_start._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 546, i32 3}
!97 = !{ptr @stm32_adc_core_hw_start._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @stm32_adc_core_hw_start._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 455, i32 5}
!101 = !{ptr @stm32_adc_core_switches_supply_en._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @stm32_adc_core_switches_supply_en._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 464, i32 5}
!105 = !{ptr @stm32_adc_core_switches_supply_en._entry.49, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @stm32_adc_core_switches_supply_en._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 467, i32 4}
!109 = !{ptr @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug291, !108, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 479, i32 5}
!112 = !{ptr @stm32_adc_core_switches_supply_en._entry.53, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @stm32_adc_core_switches_supply_en._entry_ptr.55, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 482, i32 4}
!116 = !{ptr @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug292, !115, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 489, i32 2}
!119 = !{ptr @stm32_adc_core_switches_supply_en.__UNIQUE_ID_ddebug293, !118, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 407, i32 3}
!122 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @stm32_adc_irq_probe._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @stm32_adc_irq_probe._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @stm32_adc_domain_ops, !126, !"stm32_adc_domain_ops", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 380, i32 36}
!127 = !{ptr @stm32_adc_offset, !128, !"stm32_adc_offset", i1 false, i1 false}
!128 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 318, i32 27}
!129 = !{ptr @stm32_adc_of_match, !130, !"stm32_adc_of_match", i1 false, i1 false}
!130 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 818, i32 34}
!131 = !{ptr @stm32f4_adc_priv_cfg, !132, !"stm32f4_adc_priv_cfg", i1 false, i1 false}
!132 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 795, i32 40}
!133 = !{ptr @stm32f4_adc_common_regs, !134, !"stm32f4_adc_common_regs", i1 false, i1 false}
!134 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 299, i32 43}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 135, i32 3}
!137 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @stm32f4_adc_clk_sel._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @stm32f4_adc_clk_sel._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 141, i32 3}
!142 = !{ptr @stm32f4_adc_clk_sel._entry.62, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @stm32f4_adc_clk_sel._entry_ptr.64, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 150, i32 3}
!146 = !{ptr @stm32f4_adc_clk_sel._entry.65, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @stm32f4_adc_clk_sel._entry_ptr.67, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 160, i32 2}
!150 = !{ptr @stm32f4_adc_clk_sel.__UNIQUE_ID_ddebug289, !149, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!151 = !{ptr @stm32f4_pclk_div, !152, !"stm32f4_pclk_div", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 118, i32 12}
!153 = !{ptr @stm32h7_adc_priv_cfg, !154, !"stm32h7_adc_priv_cfg", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 802, i32 40}
!155 = !{ptr @stm32h7_adc_common_regs, !156, !"stm32h7_adc_common_regs", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 309, i32 43}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 207, i32 3}
!159 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @stm32h7_adc_clk_sel._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @stm32h7_adc_clk_sel._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 223, i32 4}
!164 = !{ptr @stm32h7_adc_clk_sel._entry.71, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @stm32h7_adc_clk_sel._entry_ptr.73, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 230, i32 4}
!168 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @stm32h7_adc_clk_sel._entry.74, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @stm32h7_adc_clk_sel._entry_ptr.77, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 255, i32 3}
!173 = !{ptr @stm32h7_adc_clk_sel._entry.78, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @stm32h7_adc_clk_sel._entry_ptr.80, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 261, i32 3}
!177 = !{ptr @stm32h7_adc_clk_sel._entry.81, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @stm32h7_adc_clk_sel._entry_ptr.83, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @stm32h7_adc_clk_sel._entry.84, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 278, i32 2}
!181 = !{ptr @stm32h7_adc_clk_sel._entry_ptr.85, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 292, i32 2}
!184 = !{ptr @stm32h7_adc_clk_sel.__UNIQUE_ID_ddebug290, !183, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!185 = !{ptr @stm32h7_adc_ckmodes_spec, !186, !"stm32h7_adc_ckmodes_spec", i1 false, i1 false}
!186 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 178, i32 41}
!187 = !{ptr @stm32mp1_adc_priv_cfg, !188, !"stm32mp1_adc_priv_cfg", i1 false, i1 false}
!188 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 810, i32 40}
!189 = !{ptr @stm32_adc_core_pm_ops, !190, !"stm32_adc_core_pm_ops", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/stm32-adc-core.c", i32 787, i32 32}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"auto-init"}
!201 = !{i64 2148261020, i64 2148261046, i64 2148261075, i64 2148261109, i64 2148261140, i64 2148261163}
!202 = !{i64 2148742835, i64 2148742840, i64 2148742853, i64 2148742897, i64 2148742931, i64 2148742952}
!203 = !{i64 2148260439}
!204 = !{i64 745262, i64 745287, i64 745309, i64 745325, i64 745337, i64 745357, i64 745381, i64 745397, i64 745409}
!205 = !{i64 2148260627}
!206 = !{i64 4250548}
!207 = !{i64 4250966}
