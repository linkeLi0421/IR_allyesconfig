; ModuleID = '/llk/IR_all_yes/drivers/thermal/st/stm_thermal.c_pt.bc'
source_filename = "../drivers/thermal/st/stm_thermal.c"
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
%struct.stm_thermal_sensor = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_stm_thermal__193_599_stm_thermal_driver_init6 = internal global ptr @stm_thermal_driver_init, section ".initcall6.init", align 4
@stm_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm_thermal_probe, ptr @stm_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm_thermal_driver_exit = internal global ptr @stm_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description194 = internal constant [71 x i8] c"stm_thermal.description=STMicroelectronics STM32 Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [75 x i8] c"stm_thermal.author=David Hernandez Sanchez <david.hernandezsanchez@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [48 x i8] c"stm_thermal.file=drivers/thermal/st/stm_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [27 x i8] c"stm_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias198 = internal constant [39 x i8] c"stm_thermal.alias=platform:stm_thermal\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm_thermal\00", [20 x i8] zeroinitializer }, align 32
@stm_thermal_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm_thermal_suspend, ptr @stm_thermal_resume, ptr @stm_thermal_suspend, ptr @stm_thermal_resume, ptr @stm_thermal_suspend, ptr @stm_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: device tree node not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm_thermal_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/thermal/st/stm_thermal.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry_ptr = internal global ptr @stm_thermal_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to fetch PCLK clock\0A\00", [32 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry_ptr.9 = internal global ptr @stm_thermal_probe._entry.7, section ".printk_index", align 4
@stm_thermal_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error prepare sensor: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry_ptr.12 = internal global ptr @stm_thermal_probe._entry.10, section ".printk_index", align 4
@stm_thermal_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error power on sensor: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry_ptr.15 = internal global ptr @stm_thermal_probe._entry.13, section ".printk_index", align 4
@stm_tz_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @stm_thermal_get_temp, ptr null, ptr @stm_thermal_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: thermal zone sensor registering KO\0A\00", [56 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry_ptr.18 = internal global ptr @stm_thermal_probe._entry.16, section ".printk_index", align 4
@stm_thermal_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Driver initialized successfully\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm_thermal_probe._entry_ptr.22 = internal global ptr @stm_thermal_probe._entry.19, section ".printk_index", align 4
@stm_thermal_read_factory_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: wrong setting\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"stm_thermal_read_factory_settings\00", [62 x i8] zeroinitializer }, align 32
@stm_thermal_read_factory_settings._entry_ptr = internal global ptr @stm_thermal_read_factory_settings._entry, section ".printk_index", align 4
@stm_thermal_read_factory_settings.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: T0 = %doC, FMT0 = %dHz, RAMP_COEFF = %dHz/oC\00", [47 x i8] zeroinitializer }, align 32
@stm_thermal_set_trips.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm_thermal_set_trips\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set trips %d <--> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@stm_thermal_calculate_threshold.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stm_thermal_calculate_threshold\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"freqM=%d Hz, threshold=0x%x\00", [36 x i8] zeroinitializer }, align 32
@stm_register_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to register IRQ %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm_register_irq\00", [47 x i8] zeroinitializer }, align 32
@stm_register_irq._entry_ptr = internal global ptr @stm_register_irq._entry, section ".printk_index", align 4
@stm_register_irq.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: thermal IRQ registered\00", [37 x i8] zeroinitializer }, align 32
@stm_thermal_irq_handler.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm_thermal_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sr:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@stm_enable_irq.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm_enable_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"low:%d high:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"stm_thermal_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 590, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 592, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"stm_thermal_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 482, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"stm_thermal_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 474, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 496, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 517, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 519, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 532, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 538, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"stm_tz_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 477, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 547, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 569, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 263, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 267, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 311, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 287, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 397, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 402, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 129, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [36 x i8] c"../drivers/thermal/st/stm_thermal.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 106, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias198, ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__exitcall_stm_thermal_driver_exit, ptr @__initcall__kmod_stm_thermal__193_599_stm_thermal_driver_init6, ptr @stm_register_irq._entry, ptr @stm_register_irq._entry_ptr, ptr @stm_thermal_driver_exit, ptr @stm_thermal_probe._entry, ptr @stm_thermal_probe._entry.10, ptr @stm_thermal_probe._entry.13, ptr @stm_thermal_probe._entry.16, ptr @stm_thermal_probe._entry.19, ptr @stm_thermal_probe._entry.7, ptr @stm_thermal_probe._entry_ptr, ptr @stm_thermal_probe._entry_ptr.12, ptr @stm_thermal_probe._entry_ptr.15, ptr @stm_thermal_probe._entry_ptr.18, ptr @stm_thermal_probe._entry_ptr.22, ptr @stm_thermal_probe._entry_ptr.9, ptr @stm_thermal_read_factory_settings._entry, ptr @stm_thermal_read_factory_settings._entry_ptr, ptr @stm_thermal_driver, ptr @.str, ptr @stm_thermal_of_match, ptr @stm_thermal_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @stm_tz_ops, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_tz_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_thermal_read_factory_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_register_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #5
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %base15 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %base15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %base15, align 4
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  %clk = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %clk, align 4
  %cmp.i122 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base15, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !94
  %13 = and i32 %12, -1996488705
  %14 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base15, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %13) #5, !srcloc !95
  %16 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base15, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1996488704) #5, !srcloc !95
  %call30 = tail call fastcc i32 @stm_thermal_prepare(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call30) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %call38 = tail call fastcc i32 @stm_sensor_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call38) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %call47 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @stm_tz_ops) #5
  %th_dev = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %th_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call47, ptr %th_dev, align 4
  %cmp.i123 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2) #8
  %19 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %th_dev, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  %call58 = tail call fastcc i32 @stm_register_irq(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.err_tz_crit_edge

if.end57.err_tz_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_tz

if.end61:                                         ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_enable_irq.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_probe, %if.then.i)) #5
          to label %stm_enable_irq.exit [label %if.then.i], !srcloc !96

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %low_temp_enabled.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %low_temp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %low_temp_enabled.i, align 4
  %high_temp_enabled.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %high_temp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %high_temp_enabled.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_enable_irq.__UNIQUE_ID_ddebug187, ptr noundef %23, ptr noundef nonnull @.str.36, i32 noundef %25, i32 noundef %27) #5
  br label %stm_enable_irq.exit

stm_enable_irq.exit:                              ; preds = %if.then.i, %if.end61
  %28 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base15, align 4
  %add.ptr.i125 = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #5, !srcloc !94
  %31 = and i32 %30, -100663297
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %low_temp_enabled5.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %low_temp_enabled5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %low_temp_enabled5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.i = icmp eq i32 %34, 0
  %or.i = or i32 %32, 4
  %spec.select.i = select i1 %tobool6.not.i, i32 %32, i32 %or.i
  %high_temp_enabled9.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %high_temp_enabled9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %high_temp_enabled9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool10.not.i = icmp eq i32 %36, 0
  %or12.i = or i32 %spec.select.i, 2
  %value.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %or12.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %value.1.i) #5
  %38 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base15, align 4
  %add.ptr15.i = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %37) #5, !srcloc !95
  %40 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %th_dev, align 4
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tzp, align 8
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %no_hwmon to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %no_hwmon, align 4
  %45 = load ptr, ptr %th_dev, align 4
  %call65 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.end71, label %stm_enable_irq.exit.err_tz_crit_edge

stm_enable_irq.exit.err_tz_crit_edge:             ; preds = %stm_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_tz

do.end71:                                         ; preds = %stm_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2) #8
  br label %cleanup

err_tz:                                           ; preds = %stm_enable_irq.exit.err_tz_crit_edge, %if.end57.err_tz_crit_edge
  %ret.0 = phi i32 [ %call58, %if.end57.err_tz_crit_edge ], [ %call65, %stm_enable_irq.exit.err_tz_crit_edge ]
  %46 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %th_dev, align 4
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %47) #5
  br label %cleanup

cleanup:                                          ; preds = %err_tz, %do.end71, %do.end53, %do.end43, %do.end35, %do.end23, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %4, %if.then12 ], [ %9, %do.end23 ], [ %call30, %do.end35 ], [ %call38, %do.end43 ], [ %21, %do.end53 ], [ %ret.0, %err_tz ], [ 0, %do.end71 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @stm_thermal_sensor_off(ptr noundef %1)
  %th_dev = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %th_dev, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %3) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %4 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %th_dev, align 4
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm_thermal_prepare(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call fastcc i32 @stm_thermal_read_factory_settings(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.thermal_unprepare_crit_edge

if.end.thermal_unprepare_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %thermal_unprepare

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i17 = tail call i32 @clk_get_rate(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end4.thermal_unprepare_crit_edge, label %stm_thermal_calibration.exit.thread

if.end4.thermal_unprepare_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %thermal_unprepare

stm_thermal_calibration.exit.thread:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i17)
  %4 = icmp ult i32 %call.i17, 1000000
  %div.i = udiv i32 %call.i17, 1000000
  %5 = shl i32 %div.i, 24
  %phi.bo.i = add i32 %5, 16777216
  %base.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 7
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !94
  %9 = and i32 %8, -999296
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %phi.bo.i.op = or i32 %phi.bo.i, 983040
  %and7.i = select i1 %4, i32 983040, i32 %phi.bo.i.op
  %and8.i = or i32 %and7.i, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %and8.i) #5
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !95
  br label %cleanup

thermal_unprepare:                                ; preds = %if.end4.thermal_unprepare_crit_edge, %if.end.thermal_unprepare_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.thermal_unprepare_crit_edge ], [ -22, %if.end4.thermal_unprepare_crit_edge ]
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %thermal_unprepare, %stm_thermal_calibration.exit.thread, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %thermal_unprepare ], [ 0, %stm_thermal_calibration.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm_sensor_power_on(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !94
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !95
  %call3 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call3, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 159) #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr1367 = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1367) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %9 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not69 = icmp eq i32 %9, 0
  br i1 %tobool.not69, label %entry.land.lhs.true_crit_edge, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %13 = and i32 %12, 8388608
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.if.end40_crit_edge

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %17 = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool37.not = icmp eq i32 %17, 0
  br i1 %tobool37.not, label %for.end.cleanup_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %if.then33.if.end40_crit_edge, %entry.if.end40_crit_edge
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !94
  %21 = or i32 %20, 268435456
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #5, !srcloc !95
  %mode = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 2
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm_register_irq(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call5 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call, ptr noundef null, ptr noundef nonnull @stm_thermal_irq_handler, i32 noundef 8192, ptr noundef %6, ptr noundef %sensor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %8) #8
  br label %cleanup

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_register_irq.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_register_irq, %if.then15)) #5
          to label %cleanup [label %if.then15], !srcloc !96

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_register_irq.__UNIQUE_ID_ddebug192, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm_thermal_read_factory_settings(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !94
  %t0 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 8
  %3 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 30000, i32 130000
  %4 = ptrtoint ptr %t0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %t0, align 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !94
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mul = mul nuw nsw i32 %9, 100
  %fmt0 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 9
  %10 = ptrtoint ptr %fmt0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %fmt0, align 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !94
  %14 = and i32 %13, -65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %ramp_coeff = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 10
  %16 = ptrtoint ptr %ramp_coeff to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ramp_coeff, align 4
  %17 = ptrtoint ptr %fmt0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %do.end, label %do.body22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #8
  br label %return

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_thermal_read_factory_settings.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_read_factory_settings, %if.then28)) #5
          to label %return [label %if.then28], !srcloc !96

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor, align 4
  %23 = ptrtoint ptr %t0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t0, align 4
  %25 = ptrtoint ptr %fmt0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt0, align 4
  %27 = ptrtoint ptr %ramp_coeff to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ramp_coeff, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_thermal_read_factory_settings.__UNIQUE_ID_ddebug189, ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %24, i32 noundef %26, i32 noundef %28) #5
  br label %return

return:                                           ; preds = %if.then28, %do.body22, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then28 ], [ 0, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 365) #5
  %base = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #5, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and61 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool.not62 = icmp eq i32 %and61, 0
  br i1 %tobool.not62, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !94
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, 65535
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.land.lhs.true_crit_edge, label %if.then26.if.end33_crit_edge

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !94
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %.pre = and i32 %13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool30.not = icmp eq i32 %.pre, 0
  br i1 %tobool30.not, label %for.end.cleanup_crit_edge, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %for.end.if.end33_crit_edge, %if.then26.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %periods.066 = phi i32 [ %13, %for.end.if.end33_crit_edge ], [ %5, %if.end.if.end33_crit_edge ], [ %9, %if.then26.if.end33_crit_edge ]
  %clk = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call34 = tail call i32 @clk_get_rate(ptr noundef %15) #5
  %mul = mul i32 %call34, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %periods.066, i32 %mul)
  %tobool35.not = icmp ugt i32 %periods.066, %mul
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %mul, %periods.066
  %fmt0 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 9
  %16 = ptrtoint ptr %fmt0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt0, align 4
  %sub = sub i32 %div, %17
  %mul38 = mul i32 %sub, 1000
  %ramp_coeff = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 10
  %18 = ptrtoint ptr %ramp_coeff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ramp_coeff, align 4
  %div39 = sdiv i32 %mul38, %19
  %t0 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %t0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t0, align 4
  %add40 = add i32 %21, %div39
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add40, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -11, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_set_trips(ptr nocapture noundef %data, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_thermal_set_trips.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_set_trips, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_thermal_set_trips.__UNIQUE_ID_ddebug191, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %low, i32 noundef %high) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %low)
  %cmp = icmp sgt i32 %low, -2147483647
  %low_temp_enabled = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %5 = ptrtoint ptr %low_temp_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %low_temp_enabled, align 4
  %sub = add i32 %low, -500
  %t0.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %t0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t0.i, align 4
  %sub.i = sub i32 %sub, %7
  %ramp_coeff.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 10
  %8 = ptrtoint ptr %ramp_coeff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ramp_coeff.i, align 4
  %mul.i = mul i32 %sub.i, %9
  %div.i = sdiv i32 %mul.i, 1000
  %fmt0.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 9
  %10 = ptrtoint ptr %fmt0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt0.i, align 4
  %add.i = add i32 %div.i, %11
  %clk.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %13) #5
  %mul1.i = mul i32 %call.i, 15
  %div2.i = udiv i32 %mul1.i, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul1.i)
  %tobool.not.i = icmp ugt i32 %add.i, %mul1.i
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %do.body.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_thermal_calculate_threshold.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_set_trips, %stm_thermal_calculate_threshold.exit.thread)) #5
          to label %if.end9 [label %stm_thermal_calculate_threshold.exit.thread], !srcloc !96

stm_thermal_calculate_threshold.exit.thread:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_thermal_calculate_threshold.__UNIQUE_ID_ddebug190, ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef %add.i, i32 noundef %div2.i) #5
  br label %if.end9

if.end9:                                          ; preds = %stm_thermal_calculate_threshold.exit.thread, %do.body.i
  %shl = shl i32 %div2.i, 16
  br label %if.end12

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %low_temp_enabled to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %low_temp_enabled, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end9
  %itr1.0 = phi i32 [ %shl, %if.end9 ], [ 0, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %high)
  %cmp13.not = icmp eq i32 %high, 2147483647
  %high_temp_enabled23 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 5
  br i1 %cmp13.not, label %if.else22, label %if.then14

if.then14:                                        ; preds = %if.end12
  %17 = ptrtoint ptr %high_temp_enabled23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %high_temp_enabled23, align 4
  %t0.i49 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 8
  %18 = ptrtoint ptr %t0.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t0.i49, align 4
  %sub.i50 = sub i32 %high, %19
  %ramp_coeff.i51 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 10
  %20 = ptrtoint ptr %ramp_coeff.i51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ramp_coeff.i51, align 4
  %mul.i52 = mul i32 %sub.i50, %21
  %div.i53 = sdiv i32 %mul.i52, 1000
  %fmt0.i54 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 9
  %22 = ptrtoint ptr %fmt0.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt0.i54, align 4
  %add.i55 = add i32 %div.i53, %23
  %clk.i56 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %clk.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i56, align 4
  %call.i57 = tail call i32 @clk_get_rate(ptr noundef %25) #5
  %mul1.i58 = mul i32 %call.i57, 15
  %div2.i59 = udiv i32 %mul1.i58, %add.i55
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i55, i32 %mul1.i58)
  %tobool.not.i60 = icmp ugt i32 %add.i55, %mul1.i58
  br i1 %tobool.not.i60, label %if.then14.cleanup_crit_edge, label %do.body.i61

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i61:                                      ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_thermal_calculate_threshold.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_set_trips, %stm_thermal_calculate_threshold.exit64.thread)) #5
          to label %if.end18 [label %stm_thermal_calculate_threshold.exit64.thread], !srcloc !96

stm_thermal_calculate_threshold.exit64.thread:    ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_thermal_calculate_threshold.__UNIQUE_ID_ddebug190, ptr noundef %27, ptr noundef nonnull @.str.29, i32 noundef %add.i55, i32 noundef %div2.i59) #5
  br label %if.end18

if.end18:                                         ; preds = %stm_thermal_calculate_threshold.exit64.thread, %do.body.i61
  %and20 = and i32 %div2.i59, 65535
  %or21 = or i32 %and20, %itr1.0
  br label %if.end24

if.else22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %high_temp_enabled23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %high_temp_enabled23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.end18
  %itr1.1 = phi i32 [ %or21, %if.end18 ], [ %itr1.0, %if.else22 ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %itr1.1)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %29) #5, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then14.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %sdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_thermal_irq_handler.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_irq_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  %base = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_thermal_irq_handler.__UNIQUE_ID_ddebug188, ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %th_dev = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 1
  %6 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %th_dev, align 4
  tail call void @thermal_zone_device_update(ptr noundef %7, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_enable_irq.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_irq_handler, %if.then.i)) #5
          to label %stm_enable_irq.exit [label %if.then.i], !srcloc !96

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdata, align 4
  %low_temp_enabled.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 4
  %10 = ptrtoint ptr %low_temp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %low_temp_enabled.i, align 4
  %high_temp_enabled.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 5
  %12 = ptrtoint ptr %high_temp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %high_temp_enabled.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_enable_irq.__UNIQUE_ID_ddebug187, ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef %11, i32 noundef %13) #5
  br label %stm_enable_irq.exit

stm_enable_irq.exit:                              ; preds = %if.then.i, %do.end
  %base.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 7
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !94
  %17 = and i32 %16, -100663297
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %low_temp_enabled5.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 4
  %19 = ptrtoint ptr %low_temp_enabled5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %low_temp_enabled5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  %or.i = or i32 %18, 4
  %spec.select.i = select i1 %tobool6.not.i, i32 %18, i32 %or.i
  %high_temp_enabled9.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sdata, i32 0, i32 5
  %21 = ptrtoint ptr %high_temp_enabled9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %high_temp_enabled9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not.i = icmp eq i32 %22, 0
  %or12.i = or i32 %spec.select.i, 2
  %value.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %or12.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %value.1.i) #5
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %23) #5, !srcloc !95
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr7 = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 1996488704) #5, !srcloc !95
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm_thermal_sensor_off(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 7
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !94
  %3 = and i32 %2, -1996488705
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #5, !srcloc !95
  %mode.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 2
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode.i, align 4
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !94
  %10 = and i32 %9, -268435457
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !95
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 5000, i32 noundef 2) #5
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !94
  %16 = and i32 %15, -16777217
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !95
  %call11.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call11.i, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 197) #5
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr2163.i = getelementptr i8, ptr %20, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2163.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %22 = and i32 %21, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not65.i = icmp eq i32 %22, 0
  br i1 %tobool.not65.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then42.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call29.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call29.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call29.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then42.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #5
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %24, i32 32
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %26 = and i32 %25, 8388608
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then42.i.if.end_crit_edge, label %if.then42.i.land.lhs.true.i_crit_edge

if.then42.i.land.lhs.true.i_crit_edge:            ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then42.i.if.end_crit_edge:                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %28, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %30 = and i32 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not.i = icmp eq i32 %30, 0
  br i1 %tobool46.not.i, label %for.end.i.if.end_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then42.i.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.stm_thermal_sensor, ptr %sensor, i32 0, i32 3
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %32) #5
  tail call void @clk_unprepare(ptr noundef %32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @stm_thermal_sensor_off(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_thermal_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @stm_thermal_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @stm_sensor_power_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %th_dev = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %th_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %th_dev, align 4
  tail call void @thermal_zone_device_update(ptr noundef %3, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_enable_irq.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_thermal_resume, %if.then.i)) #5
          to label %stm_enable_irq.exit [label %if.then.i], !srcloc !96

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %low_temp_enabled.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %low_temp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %low_temp_enabled.i, align 4
  %high_temp_enabled.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %high_temp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %high_temp_enabled.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_enable_irq.__UNIQUE_ID_ddebug187, ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef %7, i32 noundef %9) #5
  br label %stm_enable_irq.exit

stm_enable_irq.exit:                              ; preds = %if.then.i, %if.end5
  %base.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !94
  %13 = and i32 %12, -100663297
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %low_temp_enabled5.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %low_temp_enabled5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %low_temp_enabled5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  %or.i = or i32 %14, 4
  %spec.select.i = select i1 %tobool6.not.i, i32 %14, i32 %or.i
  %high_temp_enabled9.i = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %high_temp_enabled9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %high_temp_enabled9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  %or12.i = or i32 %spec.select.i, 2
  %value.1.i = select i1 %tobool10.not.i, i32 %spec.select.i, i32 %or12.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %value.1.i) #5
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %19) #5, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %stm_enable_irq.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stm_enable_irq.exit ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_stm_thermal__193_599_stm_thermal_driver_init6, !1, !"__initcall__kmod_stm_thermal__193_599_stm_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/st/stm_thermal.c", i32 599, i32 1}
!2 = !{ptr @__exitcall_stm_thermal_driver_exit, !1, !"__exitcall_stm_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description194, !4, !"__UNIQUE_ID_description194", i1 false, i1 false}
!4 = !{!"../drivers/thermal/st/stm_thermal.c", i32 601, i32 1}
!5 = !{ptr @__UNIQUE_ID_author195, !6, !"__UNIQUE_ID_author195", i1 false, i1 false}
!6 = !{!"../drivers/thermal/st/stm_thermal.c", i32 602, i32 1}
!7 = !{ptr @__UNIQUE_ID_file196, !8, !"__UNIQUE_ID_file196", i1 false, i1 false}
!8 = !{!"../drivers/thermal/st/stm_thermal.c", i32 603, i32 1}
!9 = !{ptr @__UNIQUE_ID_license197, !8, !"__UNIQUE_ID_license197", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias198, !11, !"__UNIQUE_ID_alias198", i1 false, i1 false}
!11 = !{!"../drivers/thermal/st/stm_thermal.c", i32 604, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/st/stm_thermal.c", i32 592, i32 11}
!14 = !{ptr @stm_thermal_driver, !15, !"stm_thermal_driver", i1 false, i1 false}
!15 = !{!"../drivers/thermal/st/stm_thermal.c", i32 590, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/st/stm_thermal.c", i32 496, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm_thermal_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm_thermal_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/st/stm_thermal.c", i32 517, i32 41}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/st/stm_thermal.c", i32 519, i32 3}
!28 = !{ptr @stm_thermal_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm_thermal_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/st/stm_thermal.c", i32 532, i32 3}
!32 = !{ptr @stm_thermal_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm_thermal_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/st/stm_thermal.c", i32 538, i32 3}
!36 = !{ptr @stm_thermal_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm_thermal_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/st/stm_thermal.c", i32 547, i32 3}
!40 = !{ptr @stm_thermal_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stm_thermal_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thermal/st/stm_thermal.c", i32 569, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stm_thermal_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm_thermal_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thermal/st/stm_thermal.c", i32 263, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @stm_thermal_read_factory_settings._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @stm_thermal_read_factory_settings._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thermal/st/stm_thermal.c", i32 267, i32 2}
!54 = !{ptr @stm_thermal_read_factory_settings.__UNIQUE_ID_ddebug189, !53, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!55 = !{ptr @stm_tz_ops, !56, !"stm_tz_ops", i1 false, i1 false}
!56 = !{!"../drivers/thermal/st/stm_thermal.c", i32 477, i32 48}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thermal/st/stm_thermal.c", i32 311, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stm_thermal_set_trips.__UNIQUE_ID_ddebug191, !58, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thermal/st/stm_thermal.c", i32 287, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @stm_thermal_calculate_threshold.__UNIQUE_ID_ddebug190, !62, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thermal/st/stm_thermal.c", i32 397, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @stm_register_irq._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @stm_register_irq._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thermal/st/stm_thermal.c", i32 402, i32 2}
!72 = !{ptr @stm_register_irq.__UNIQUE_ID_ddebug192, !71, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/thermal/st/stm_thermal.c", i32 129, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stm_thermal_irq_handler.__UNIQUE_ID_ddebug188, !74, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/thermal/st/stm_thermal.c", i32 106, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @stm_enable_irq.__UNIQUE_ID_ddebug187, !78, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!81 = !{ptr @stm_thermal_of_match, !82, !"stm_thermal_of_match", i1 false, i1 false}
!82 = !{!"../drivers/thermal/st/stm_thermal.c", i32 482, i32 34}
!83 = !{ptr @stm_thermal_pm_ops, !84, !"stm_thermal_pm_ops", i1 false, i1 false}
!84 = !{!"../drivers/thermal/st/stm_thermal.c", i32 474, i32 8}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 4682269}
!95 = !{i64 4681851}
!96 = !{i64 2148734502, i64 2148734507, i64 2148734520, i64 2148734564, i64 2148734598, i64 2148734619}
!97 = !{i64 2153287222}
!98 = !{i64 2153287716}
!99 = !{i64 2153291311}
!100 = !{i64 2153291805}
