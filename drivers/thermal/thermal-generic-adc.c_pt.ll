; ModuleID = '/llk/IR_all_yes/drivers/thermal/thermal-generic-adc.c_pt.bc'
source_filename = "../drivers/thermal/thermal-generic-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.gadc_thermal_info = type { ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_thermal_generic_adc__183_174_gadc_thermal_driver_init6 = internal global ptr @gadc_thermal_driver_init, section ".initcall6.init", align 4
@gadc_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gadc_thermal_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_adc_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gadc_thermal_driver_exit = internal global ptr @gadc_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [66 x i8] c"thermal_generic_adc.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [87 x i8] c"thermal_generic_adc.description=Generic ADC thermal driver using IIO framework with DT\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [61 x i8] c"thermal_generic_adc.file=drivers/thermal/thermal-generic-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [35 x i8] c"thermal_generic_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"generic-adc-thermal\00", [44 x i8] zeroinitializer }, align 32
@of_adc_thermal_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-adc-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gadc_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Only DT based supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gadc_thermal_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/thermal/thermal-generic-adc.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gadc_thermal_probe._entry_ptr = internal global ptr @gadc_thermal_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sensor-channel\00", [17 x i8] zeroinitializer }, align 32
@gadc_thermal_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IIO channel not found: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gadc_thermal_probe._entry_ptr.9 = internal global ptr @gadc_thermal_probe._entry.7, section ".printk_index", align 4
@gadc_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @gadc_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gadc_thermal_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Thermal zone sensor register failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@gadc_thermal_probe._entry_ptr.12 = internal global ptr @gadc_thermal_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"temperature-lookup-table\00", [39 x i8] zeroinitializer }, align 32
@gadc_thermal_read_linear_lookup_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 89, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"no lookup table, assuming DAC channel returns milliCelcius\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"gadc_thermal_read_linear_lookup_table\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gadc_thermal_read_linear_lookup_table._entry_ptr = internal global ptr @gadc_thermal_read_linear_lookup_table._entry, section ".printk_index", align 4
@gadc_thermal_read_linear_lookup_table._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Pair of temperature vs ADC read value missing\0A\00", [49 x i8] zeroinitializer }, align 32
@gadc_thermal_read_linear_lookup_table._entry_ptr.19 = internal global ptr @gadc_thermal_read_linear_lookup_table._entry.17, section ".printk_index", align 4
@gadc_thermal_read_linear_lookup_table._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read temperature lookup table: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@gadc_thermal_read_linear_lookup_table._entry_ptr.22 = internal global ptr @gadc_thermal_read_linear_lookup_table._entry.20, section ".printk_index", align 4
@gadc_thermal_get_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IIO channel read failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gadc_thermal_get_temp\00", [42 x i8] zeroinitializer }, align 32
@gadc_thermal_get_temp._entry_ptr = internal global ptr @gadc_thermal_get_temp._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"gadc_thermal_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 166, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 168, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"of_adc_thermal_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 160, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 123, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 131, i32 50 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 135, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"gadc_thermal_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 71, i32 48 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 151, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 83, i32 47 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 88, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 94, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 107, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [41 x i8] c"../drivers/thermal/thermal-generic-adc.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 63, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_gadc_thermal_driver_exit, ptr @__initcall__kmod_thermal_generic_adc__183_174_gadc_thermal_driver_init6, ptr @gadc_thermal_driver_exit, ptr @gadc_thermal_get_temp._entry, ptr @gadc_thermal_get_temp._entry_ptr, ptr @gadc_thermal_probe._entry, ptr @gadc_thermal_probe._entry.10, ptr @gadc_thermal_probe._entry.7, ptr @gadc_thermal_probe._entry_ptr, ptr @gadc_thermal_probe._entry_ptr.12, ptr @gadc_thermal_probe._entry_ptr.9, ptr @gadc_thermal_read_linear_lookup_table._entry, ptr @gadc_thermal_read_linear_lookup_table._entry.17, ptr @gadc_thermal_read_linear_lookup_table._entry.20, ptr @gadc_thermal_read_linear_lookup_table._entry_ptr, ptr @gadc_thermal_read_linear_lookup_table._entry_ptr.19, ptr @gadc_thermal_read_linear_lookup_table._entry_ptr.22, ptr @gadc_thermal_driver, ptr @.str, ptr @of_adc_thermal_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @gadc_thermal_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_adc_thermal_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_read_linear_lookup_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_read_linear_lookup_table._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_read_linear_lookup_table._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadc_thermal_get_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gadc_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gadc_thermal_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gadc_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gadc_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadc_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %chan_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %channel = getelementptr inbounds %struct.gadc_thermal_info, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %channel, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end19

if.then10:                                        ; preds = %if.end5
  %cmp.not = icmp eq ptr %call7, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then10.cleanup_crit_edge, label %do.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %3) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_type.i) #6
  %6 = ptrtoint ptr %chan_type.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %chan_type.i, align 4, !annotation !66
  %call.i69 = tail call i32 @of_property_count_elems_of_size(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 1
  br i1 %cmp.i70, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %if.end19
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel, align 4
  %call1.i = call i32 @iio_get_channel_type(ptr noundef %8, ptr noundef nonnull %chan_type.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %9 = ptrtoint ptr %chan_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 9
  br i1 %cmp2.not.i, label %lor.lhs.false.i.if.end24_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i.if.end24_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %if.end24

if.end4.i:                                        ; preds = %if.end19
  %11 = and i32 %call.i69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %gadc_thermal_read_linear_lookup_table.exit.thread

if.end10.i:                                       ; preds = %if.end4.i
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i69, i32 4) #6
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !67

devm_kcalloc.exit.thread.i:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %lookup_table44.i = getelementptr inbounds %struct.gadc_thermal_info, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %lookup_table44.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lookup_table44.i, align 4
  br label %gadc_thermal_read_linear_lookup_table.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end10.i
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %15, i32 noundef 3520) #6
  %lookup_table.i = getelementptr inbounds %struct.gadc_thermal_info, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i.i, ptr %lookup_table.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool13.not.i, label %devm_kcalloc.exit.i.gadc_thermal_read_linear_lookup_table.exit.thread_crit_edge, label %if.end15.i

devm_kcalloc.exit.i.gadc_thermal_read_linear_lookup_table.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gadc_thermal_read_linear_lookup_table.exit.thread

if.end15.i:                                       ; preds = %devm_kcalloc.exit.i
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %call5.i.i.i, i32 noundef %call.i69, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp18.i, label %do.end22.i, label %if.end23.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #9
  br label %gadc_thermal_read_linear_lookup_table.exit.thread

if.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %div4647.i = lshr i32 %call.i69, 1
  %nlookup_table.i = getelementptr inbounds %struct.gadc_thermal_info, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %nlookup_table.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div4647.i, ptr %nlookup_table.i, align 4
  br label %if.end24

gadc_thermal_read_linear_lookup_table.exit.thread: ; preds = %do.end22.i, %devm_kcalloc.exit.i.gadc_thermal_read_linear_lookup_table.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end9.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.gadc_thermal_read_linear_lookup_table.exit.thread_crit_edge ], [ %call.i.i, %do.end22.i ], [ -22, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_type.i) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end23.i, %do.end.i, %lor.lhs.false.i.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_type.i) #6
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call28 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @gadc_thermal_ops) #6
  %tz_dev = getelementptr inbounds %struct.gadc_thermal_info, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %tz_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call28, ptr %tz_dev, align 4
  %cmp.i71 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end24
  %cmp34.not = icmp eq ptr %call28, inttoptr (i32 -517 to ptr)
  br i1 %cmp34.not, label %if.then31.cleanup_crit_edge, label %do.end38

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %gadc_thermal_read_linear_lookup_table.exit.thread, %do.end16, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %3, %do.end16 ], [ -517, %if.then10.cleanup_crit_edge ], [ %21, %do.end38 ], [ -517, %if.then31.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %retval.0.i.ph, %gadc_thermal_read_linear_lookup_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadc_thermal_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !66
  %channel = getelementptr inbounds %struct.gadc_thermal_info, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel, align 4
  %call = call i32 @iio_read_channel_processed(ptr noundef %2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %lookup_table.i = getelementptr inbounds %struct.gadc_thermal_info, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %lookup_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lookup_table.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.gadc_thermal_adc_to_temp.exit_crit_edge, label %for.cond.preheader.i

if.end.gadc_thermal_adc_to_temp.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %gadc_thermal_adc_to_temp.exit

for.cond.preheader.i:                             ; preds = %if.end
  %nlookup_table.i = getelementptr inbounds %struct.gadc_thermal_info, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %nlookup_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlookup_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp85.i = icmp sgt i32 %10, 0
  br i1 %cmp85.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.then6.i_crit_edge

for.cond.preheader.i.if.then6.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.086.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul.i = shl nuw i32 %i.086.i, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx.i = getelementptr i32, ptr %8, i32 %add.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp2.not.i = icmp sgt i32 %12, %6
  br i1 %cmp2.not.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %if.then11.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086.i)
  %cmp5.i = icmp eq i32 %i.086.i, 0
  br i1 %cmp5.i, label %for.end.i.if.then6.i_crit_edge, label %if.else16.i

for.end.i.if.then6.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then6.i:                                       ; preds = %for.end.i.if.then6.i_crit_edge, %for.cond.preheader.i.if.then6.i_crit_edge
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  br label %gadc_thermal_adc_to_temp.exit

if.then11.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = shl nuw i32 %10, 1
  %mul14.i = add i32 %sub.i, -2
  %arrayidx15.i = getelementptr i32, ptr %8, i32 %mul14.i
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15.i, align 4
  br label %gadc_thermal_adc_to_temp.exit

if.else16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub19.i = add i32 %mul.i, -1
  %arrayidx20.i = getelementptr i32, ptr %8, i32 %sub19.i
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx20.i, align 4
  %sub27.i = add i32 %mul.i, -2
  %arrayidx28.i = getelementptr i32, ptr %8, i32 %sub27.i
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx31.i = getelementptr i32, ptr %8, i32 %mul.i
  %21 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx31.i, align 4
  %sub32.i = sub i32 %22, %20
  %sub33.i = sub i32 %12, %18
  %sub32.i.frozen = freeze i32 %sub32.i
  %sub33.i.frozen = freeze i32 %sub33.i
  %div.i = sdiv i32 %sub32.i.frozen, %sub33.i.frozen
  %23 = mul i32 %div.i, %sub33.i.frozen
  %rem36.i.decomposed = sub i32 %sub32.i.frozen, %23
  %sub37.i = sub i32 %6, %18
  %mul38.i = mul i32 %div.i, %sub37.i
  %mul40.i = mul i32 %rem36.i.decomposed, %sub37.i
  %div42.i = sdiv i32 %mul40.i, %sub33.i
  %add43.i = add i32 %mul38.i, %20
  %add44.i = add i32 %add43.i, %div42.i
  br label %gadc_thermal_adc_to_temp.exit

gadc_thermal_adc_to_temp.exit:                    ; preds = %if.else16.i, %if.then11.i, %if.then6.i, %if.end.gadc_thermal_adc_to_temp.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.end.gadc_thermal_adc_to_temp.exit_crit_edge ], [ %14, %if.then6.i ], [ %16, %if.then11.i ], [ %add44.i, %if.else16.i ]
  %24 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %gadc_thermal_adc_to_temp.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %gadc_thermal_adc_to_temp.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_thermal_generic_adc__183_174_gadc_thermal_driver_init6, !1, !"__initcall__kmod_thermal_generic_adc__183_174_gadc_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 174, i32 1}
!2 = !{ptr @__exitcall_gadc_thermal_driver_exit, !1, !"__exitcall_gadc_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 176, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 177, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 178, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 168, i32 11}
!12 = !{ptr @gadc_thermal_driver, !13, !"gadc_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 166, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 123, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gadc_thermal_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gadc_thermal_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 131, i32 50}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 135, i32 4}
!26 = !{ptr @gadc_thermal_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gadc_thermal_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 151, i32 4}
!30 = !{ptr @gadc_thermal_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gadc_thermal_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 83, i32 47}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 88, i32 4}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @gadc_thermal_read_linear_lookup_table._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @gadc_thermal_read_linear_lookup_table._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 94, i32 3}
!42 = !{ptr @gadc_thermal_read_linear_lookup_table._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gadc_thermal_read_linear_lookup_table._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 107, i32 3}
!46 = !{ptr @gadc_thermal_read_linear_lookup_table._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gadc_thermal_read_linear_lookup_table._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @gadc_thermal_ops, !49, !"gadc_thermal_ops", i1 false, i1 false}
!49 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 71, i32 48}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 63, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @gadc_thermal_get_temp._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @gadc_thermal_get_temp._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @of_adc_thermal_match, !56, !"of_adc_thermal_match", i1 false, i1 false}
!56 = !{!"../drivers/thermal/thermal-generic-adc.c", i32 160, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{!"branch_weights", i32 1, i32 2000}
