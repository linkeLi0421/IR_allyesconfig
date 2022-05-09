; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/gpio.c_pt.bc'
source_filename = "../drivers/staging/greybus/gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gbphy_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gbphy_device_id = type { i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_gpio_line_count_response = type { i8 }
%struct.gbphy_device = type { i32, ptr, ptr, %struct.list_head, %struct.device }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.gb_gpio_controller = type { ptr, ptr, i8, ptr, %struct.gpio_chip, %struct.irq_chip, %struct.mutex }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gb_gpio_line = type { i8, i16, i8, i8, i8, i8 }
%struct.gb_gpio_irq_unmask_request = type { i8 }
%struct.gb_gpio_irq_mask_request = type { i8 }
%struct.gb_gpio_irq_type_request = type { i8, i8 }
%struct.gb_gpio_activate_request = type { i8 }
%struct.gb_gpio_deactivate_request = type { i8 }
%struct.gb_gpio_get_direction_request = type { i8 }
%struct.gb_gpio_get_direction_response = type { i8 }
%struct.gb_gpio_direction_in_request = type { i8 }
%struct.gb_gpio_direction_out_request = type { i8, i8 }
%struct.gb_gpio_get_value_request = type { i8 }
%struct.gb_gpio_get_value_response = type { i8 }
%struct.gb_gpio_set_value_request = type { i8, i8 }
%struct.gb_gpio_set_debounce_request = type <{ i8, i16 }>

@__initcall__kmod_gb_gpio__229_629_gpio_driver_init6 = internal global ptr @gpio_driver_init, section ".initcall6.init", align 4
@gpio_driver = internal global { %struct.gbphy_driver, [36 x i8] } { %struct.gbphy_driver { ptr @.str.1, ptr @gb_gpio_probe, ptr @gb_gpio_remove, ptr @gb_gpio_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gpio_driver_exit = internal global ptr @gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [45 x i8] c"gb_gpio.file=drivers/staging/greybus/gb-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"gb_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gb_gpio\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gb_gpio_id_table = internal constant { [2 x %struct.gbphy_device_id], [30 x i8] } { [2 x %struct.gbphy_device_id] [%struct.gbphy_device_id { i8 2 }, %struct.gbphy_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"greybus_gpio\00", [19 x i8] zeroinitializer }, align 32
@gb_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ggc->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@gb_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 580, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add gpio chip: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gb_gpio_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/greybus/gpio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_gpio_probe._entry_ptr = internal global ptr @gb_gpio_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_gpio_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 370, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported unsolicited request: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_gpio_request_handler\00", [40 x i8] zeroinitializer }, align 32
@gb_gpio_request_handler._entry_ptr = internal global ptr @gb_gpio_request_handler._entry, section ".printk_index", align 4
@gb_gpio_request_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.6, i32 378, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"short event received (%zu < %zu)\0A\00", [62 x i8] zeroinitializer }, align 32
@gb_gpio_request_handler._entry_ptr.13 = internal global ptr @gb_gpio_request_handler._entry.11, section ".printk_index", align 4
@gb_gpio_request_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.6, i32 384, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid hw irq: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@gb_gpio_request_handler._entry_ptr.16 = internal global ptr @gb_gpio_request_handler._entry.14, section ".printk_index", align 4
@gb_gpio_request_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.6, i32 390, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to find IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@gb_gpio_request_handler._entry_ptr.19 = internal global ptr @gb_gpio_request_handler._entry.17, section ".printk_index", align 4
@gb_gpio_request_handler._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.6, i32 399, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to invoke irq handler\0A\00", [34 x i8] zeroinitializer }, align 32
@gb_gpio_request_handler._entry_ptr.22 = internal global ptr @gb_gpio_request_handler._entry.20, section ".printk_index", align 4
@gb_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 319, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported irq type: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gb_gpio_irq_set_type\00", [43 x i8] zeroinitializer }, align 32
@gb_gpio_irq_set_type._entry_ptr = internal global ptr @gb_gpio_irq_set_type._entry, section ".printk_index", align 4
@_gb_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 268, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set irq type: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_gb_gpio_irq_set_type\00", [42 x i8] zeroinitializer }, align 32
@_gb_gpio_irq_set_type._entry_ptr = internal global ptr @_gb_gpio_irq_set_type._entry, section ".printk_index", align 4
@_gb_gpio_irq_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to mask irq: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_gb_gpio_irq_mask\00", [46 x i8] zeroinitializer }, align 32
@_gb_gpio_irq_mask._entry_ptr = internal global ptr @_gb_gpio_irq_mask._entry, section ".printk_index", align 4
@_gb_gpio_irq_unmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 251, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to unmask irq: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_gb_gpio_irq_unmask\00", [44 x i8] zeroinitializer }, align 32
@_gb_gpio_irq_unmask._entry_ptr = internal global ptr @_gb_gpio_irq_unmask._entry, section ".printk_index", align 4
@gbphy_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.33, i32 76, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbphy_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/greybus/gbphy.h\00", [32 x i8] zeroinitializer }, align 32
@gbphy_runtime_get_sync._entry_ptr = internal global ptr @gbphy_runtime_get_sync._entry, section ".printk_index", align 4
@gb_gpio_deactivate_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 95, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deactivate gpio %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_gpio_deactivate_operation\00", [35 x i8] zeroinitializer }, align 32
@gb_gpio_deactivate_operation._entry_ptr = internal global ptr @gb_gpio_deactivate_operation._entry, section ".printk_index", align 4
@gb_gpio_get_direction_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 124, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"gpio %u direction was %u (should be 0 or 1)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gb_gpio_get_direction_operation\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_gpio_get_direction_operation._entry_ptr = internal global ptr @gb_gpio_get_direction_operation._entry, section ".printk_index", align 4
@gb_gpio_get_value_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 173, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get value of gpio %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_gpio_get_value_operation\00", [36 x i8] zeroinitializer }, align 32
@gb_gpio_get_value_operation._entry_ptr = internal global ptr @gb_gpio_get_value_operation._entry, section ".printk_index", align 4
@gb_gpio_get_value_operation._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.6, i32 180, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gpio %u value was %u (should be 0 or 1)\0A\00", [55 x i8] zeroinitializer }, align 32
@gb_gpio_get_value_operation._entry_ptr.43 = internal global ptr @gb_gpio_get_value_operation._entry.41, section ".printk_index", align 4
@gb_gpio_set_value_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 195, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"refusing to set value of input gpio %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_gpio_set_value_operation\00", [36 x i8] zeroinitializer }, align 32
@gb_gpio_set_value_operation._entry_ptr = internal global ptr @gb_gpio_set_value_operation._entry, section ".printk_index", align 4
@gb_gpio_set_value_operation._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set value of gpio %u\0A\00", [32 x i8] zeroinitializer }, align 32
@gb_gpio_set_value_operation._entry_ptr.48 = internal global ptr @gb_gpio_set_value_operation._entry.46, section ".printk_index", align 4
@gpiochip_add.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpiochip_add.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@switch.table.gb_gpio_irq_set_type = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\01\02\03\04\00\00\00\08", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"gpio_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 622, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 629, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 623, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"gb_gpio_id_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 616, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 543, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 545, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 580, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 370, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 377, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 384, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 390, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 399, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 319, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 268, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 237, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 251, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [35 x i8] c"../drivers/staging/greybus/gbphy.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 76, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 95, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 123, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 173, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 179, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 194, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [34 x i8] c"../drivers/staging/greybus/gpio.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 204, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/linux/gpio/driver.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 563, i32 9 }
@___asan_gen_.227 = private unnamed_addr constant [34 x i8] c"switch.table.gb_gpio_irq_set_type\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_gpio_driver_exit, ptr @__initcall__kmod_gb_gpio__229_629_gpio_driver_init6, ptr @_gb_gpio_irq_mask._entry, ptr @_gb_gpio_irq_mask._entry_ptr, ptr @_gb_gpio_irq_set_type._entry, ptr @_gb_gpio_irq_set_type._entry_ptr, ptr @_gb_gpio_irq_unmask._entry, ptr @_gb_gpio_irq_unmask._entry_ptr, ptr @gb_gpio_deactivate_operation._entry, ptr @gb_gpio_deactivate_operation._entry_ptr, ptr @gb_gpio_get_direction_operation._entry, ptr @gb_gpio_get_direction_operation._entry_ptr, ptr @gb_gpio_get_value_operation._entry, ptr @gb_gpio_get_value_operation._entry.41, ptr @gb_gpio_get_value_operation._entry_ptr, ptr @gb_gpio_get_value_operation._entry_ptr.43, ptr @gb_gpio_irq_set_type._entry, ptr @gb_gpio_irq_set_type._entry_ptr, ptr @gb_gpio_probe._entry, ptr @gb_gpio_probe._entry_ptr, ptr @gb_gpio_request_handler._entry, ptr @gb_gpio_request_handler._entry.11, ptr @gb_gpio_request_handler._entry.14, ptr @gb_gpio_request_handler._entry.17, ptr @gb_gpio_request_handler._entry.20, ptr @gb_gpio_request_handler._entry_ptr, ptr @gb_gpio_request_handler._entry_ptr.13, ptr @gb_gpio_request_handler._entry_ptr.16, ptr @gb_gpio_request_handler._entry_ptr.19, ptr @gb_gpio_request_handler._entry_ptr.22, ptr @gb_gpio_set_value_operation._entry, ptr @gb_gpio_set_value_operation._entry.46, ptr @gb_gpio_set_value_operation._entry_ptr, ptr @gb_gpio_set_value_operation._entry_ptr.48, ptr @gbphy_runtime_get_sync._entry, ptr @gbphy_runtime_get_sync._entry_ptr, ptr @gpio_driver_exit, ptr @gpio_driver, ptr @.str, ptr @.str.1, ptr @gb_gpio_id_table, ptr @.str.2, ptr @gb_gpio_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @gpiochip_add.lock_key, ptr @gpiochip_add.request_key, ptr @switch.table.gb_gpio_irq_set_type], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_id_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_request_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_request_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_request_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_request_handler._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_gpio_irq_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_gpio_irq_unmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbphy_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_deactivate_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_get_direction_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_get_value_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_get_value_operation._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_set_value_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_gpio_set_value_operation._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_add.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_add.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_gpio_irq_set_type to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gb_gbphy_register_driver(ptr noundef nonnull @gpio_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gb_gbphy_deregister_driver(ptr noundef nonnull @gpio_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_gbphy_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_gbphy_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_probe(ptr noundef %gbphy_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %response.i.i = alloca %struct.gb_gpio_line_count_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 592) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bundle = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 2
  %1 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bundle, align 8
  %cport_desc = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 1
  %3 = ptrtoint ptr %cport_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cport_desc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %call2 = tail call ptr @gb_connection_create(ptr noundef %2, i16 noundef zeroext %7, ptr noundef nonnull @gb_gpio_request_handler) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call2 to i32
  br label %exit_ggc_free

if.end6:                                          ; preds = %if.end
  %connection7 = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %connection7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %connection7, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call2, i32 0, i32 17
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private.i, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %gbphy_dev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @gb_connection_enable_tx(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.exit_connection_destroy_crit_edge

if.end6.exit_connection_destroy_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_connection_destroy

if.end12:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response.i.i) #10
  %13 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %response.i.i, align 1, !annotation !114
  %14 = ptrtoint ptr %connection7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %connection7, align 4
  %call.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %15, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i.i, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %gb_gpio_line_count_operation.exit.i

gb_gpio_line_count_operation.exit.i:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i.i) #10
  br label %exit_connection_disable

if.end.i:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %response.i.i, align 1
  %line_max.i.i = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %line_max.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %line_max.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i.i) #10
  %conv.i = zext i8 %17 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %19 = add nuw nsw i32 %add.i, 8
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #14
  %lines.i = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %lines.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i, ptr %lines.i, align 4
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.exit_connection_disable_crit_edge, label %if.end16

if.end.i.exit_connection_disable_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_connection_disable

if.end16:                                         ; preds = %if.end.i
  %irqc17 = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5
  %irq_mask = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gb_gpio_irq_mask, ptr %irq_mask, align 8
  %irq_unmask = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5, i32 9
  %22 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gb_gpio_irq_unmask, ptr %irq_unmask, align 8
  %irq_set_type = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5, i32 13
  %23 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gb_gpio_irq_set_type, ptr %irq_set_type, align 8
  %irq_bus_lock = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5, i32 15
  %24 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gb_gpio_irq_bus_lock, ptr %irq_bus_lock, align 8
  %irq_bus_sync_unlock = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5, i32 16
  %25 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gb_gpio_irq_bus_sync_unlock, ptr %irq_bus_sync_unlock, align 4
  %name = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.2, ptr %name, align 8
  %irq_lock = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @gb_gpio_probe.__key) #10
  %chip = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.2, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %parent = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %parent, align 8
  %owner = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner, align 8
  %request = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gb_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gb_gpio_free, ptr %free, align 8
  %get_direction = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gb_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @gb_gpio_direction_input, ptr %direction_input, align 8
  %direction_output = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 9
  %34 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @gb_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 10
  %35 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @gb_gpio_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 12
  %36 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @gb_gpio_set, ptr %set, align 8
  %set_config = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 14
  %37 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gb_gpio_set_config, ptr %set_config, align 8
  %base = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 19
  %38 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %base, align 4
  %39 = ptrtoint ptr %line_max.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %line_max.i.i, align 8
  %conv = zext i8 %40 to i16
  %add = add nuw nsw i16 %conv, 1
  %ngpio = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 20
  %41 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %add, ptr %ngpio, align 8
  %can_sleep = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 23
  %42 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %can_sleep, align 8
  %irq = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 37
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %irqc17, ptr %irq, align 8
  %parent_handler = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 37, i32 13
  %44 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 37, i32 15
  %45 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 37, i32 16
  %46 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %parents, align 8
  %default_type = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 37, i32 10
  %47 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %default_type, align 8
  %handler = getelementptr inbounds %struct.gb_gpio_controller, ptr %call7.i.i, i32 0, i32 4, i32 37, i32 9
  %48 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @handle_level_irq, ptr %handler, align 4
  %call20 = call i32 @gb_connection_enable(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.exit_line_free_crit_edge

if.end16.exit_line_free_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_line_free

if.end23:                                         ; preds = %if.end16
  %call.i = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef null, ptr noundef nonnull @gpiochip_add.lock_key, ptr noundef nonnull @gpiochip_add.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call.i) #15
  br label %exit_line_free

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 22
  %49 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i3.i = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  br label %cleanup

exit_line_free:                                   ; preds = %do.end29, %if.end16.exit_line_free_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end16.exit_line_free_crit_edge ], [ %call.i, %do.end29 ]
  %50 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lines.i, align 4
  call void @kfree(ptr noundef %51) #10
  br label %exit_connection_disable

exit_connection_disable:                          ; preds = %exit_line_free, %if.end.i.exit_connection_disable_crit_edge, %gb_gpio_line_count_operation.exit.i
  %ret.1 = phi i32 [ %ret.0, %exit_line_free ], [ %call.i.i.i, %gb_gpio_line_count_operation.exit.i ], [ -12, %if.end.i.exit_connection_disable_crit_edge ]
  call void @gb_connection_disable(ptr noundef %call2) #10
  br label %exit_connection_destroy

exit_connection_destroy:                          ; preds = %exit_connection_disable, %if.end6.exit_connection_destroy_crit_edge
  %ret.2 = phi i32 [ %call9, %if.end6.exit_connection_destroy_crit_edge ], [ %ret.1, %exit_connection_disable ]
  call void @gb_connection_destroy(ptr noundef %call2) #10
  br label %exit_ggc_free

exit_ggc_free:                                    ; preds = %exit_connection_destroy, %if.then4
  %ret.3 = phi i32 [ %8, %if.then4 ], [ %ret.2, %exit_connection_destroy ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %exit_ggc_free, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %exit_ggc_free ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_gpio_remove(ptr noundef %gbphy_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %connection1 = getelementptr inbounds %struct.gb_gpio_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.31, i32 noundef %call.i.i) #15
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !116
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @gb_connection_disable_rx(ptr noundef %3) #10
  %chip = getelementptr inbounds %struct.gb_gpio_controller, ptr %1, i32 0, i32 4
  tail call void @gpiochip_remove(ptr noundef %chip) #10
  tail call void @gb_connection_disable(ptr noundef %3) #10
  tail call void @gb_connection_destroy(ptr noundef %3) #10
  %lines = getelementptr inbounds %struct.gb_gpio_controller, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lines, align 4
  tail call void @kfree(ptr noundef %7) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_request_handler(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.gbphy_device, ptr %5, i32 0, i32 4
  %type3 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %6 = ptrtoint ptr %type3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %7)
  %cmp.not = icmp eq i8 %7, 14
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %request6 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %request6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request6, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %payload = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %payload, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv15 = zext i8 %15 to i32
  %line_max = getelementptr inbounds %struct.gb_gpio_controller, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %line_max to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %line_max, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp17 = icmp ugt i8 %15, %17
  br i1 %cmp17, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15, i32 noundef %conv15) #15
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %domain = getelementptr inbounds %struct.gb_gpio_controller, ptr %3, i32 0, i32 4, i32 37, i32 1
  %18 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #10
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %irq.i, align 4, !annotation !114
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %19, i32 noundef %conv15, ptr noundef nonnull %irq.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  br label %do.end33

irq_find_mapping.exit:                            ; preds = %if.end25
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.do.end33_crit_edge, label %do.body35

irq_find_mapping.exit.do.end33_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end33:                                         ; preds = %irq_find_mapping.exit.do.end33_crit_edge, %irq_find_mapping.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18) #15
  br label %cleanup

do.body35:                                        ; preds = %irq_find_mapping.exit
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !119
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !120
  br i1 %tobool37.not, label %if.then39, label %do.body35.if.end40_crit_edge

do.body35.if.end40_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  call void @trace_hardirqs_off() #10
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %do.body35.if.end40_crit_edge
  %call43 = call i32 @generic_handle_irq(i32 noundef %22) #10
  call void @trace_hardirqs_on() #10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool47.not = icmp eq i32 %call43, 0
  br i1 %tobool47.not, label %if.end40.cleanup_crit_edge, label %do.end51

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end40.cleanup_crit_edge, %do.end33, %do.end22, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end22 ], [ -22, %do.end33 ], [ %call43, %do.end51 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gb_gpio_irq_mask(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %lines = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %masked = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 4
  %8 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %masked, align 2
  %masked_pending = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 5
  %9 = ptrtoint ptr %masked_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %masked_pending, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gb_gpio_irq_unmask(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %lines = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %masked = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 4
  %8 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %masked, align 2
  %masked_pending = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 5
  %9 = ptrtoint ptr %masked_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %masked_pending, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %lines = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %8 = icmp ult i32 %type, 9
  br i1 %8, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.gbphy_device, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %type) #15
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %type to i16
  %switch.shifted = lshr i16 287, %switch.maskindex
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.gb_gpio_irq_set_type, i32 0, i32 %type
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %12)
  %switch.load = load i8, ptr %switch.gep, align 1
  %irq_type7 = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 2
  %13 = ptrtoint ptr %irq_type7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %switch.load, ptr %irq_type7, align 2
  %irq_type_pending = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 3
  %14 = ptrtoint ptr %irq_type_pending to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %irq_type_pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_gpio_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %irq_lock = getelementptr i8, ptr %3, i32 484
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_gpio_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %request.i33 = alloca %struct.gb_gpio_irq_unmask_request, align 1
  %request.i27 = alloca %struct.gb_gpio_irq_mask_request, align 1
  %request.i = alloca %struct.gb_gpio_irq_type_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %lines = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %irq_type_pending = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 3
  %8 = ptrtoint ptr %irq_type_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_type_pending, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = trunc i32 %7 to i8
  %irq_type = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 2
  %10 = ptrtoint ptr %irq_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq_type, align 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #10
  %14 = getelementptr inbounds %struct.gb_gpio_irq_type_request, ptr %request.i, i32 0, i32 1
  %15 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %request.i, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %14, align 1
  %connection.i = getelementptr i8, ptr %3, i32 -12
  %17 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %18, i32 noundef 11, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then._gb_gpio_irq_set_type.exit_crit_edge, label %do.end.i

if.then._gb_gpio_irq_set_type.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %_gb_gpio_irq_set_type.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #15
  br label %_gb_gpio_irq_set_type.exit

_gb_gpio_irq_set_type.exit:                       ; preds = %do.end.i, %if.then._gb_gpio_irq_set_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %19 = ptrtoint ptr %irq_type_pending to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %irq_type_pending, align 1
  br label %if.end

if.end:                                           ; preds = %_gb_gpio_irq_set_type.exit, %entry.if.end_crit_edge
  %masked_pending = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 5
  %20 = ptrtoint ptr %masked_pending to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %masked_pending, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not = icmp eq i8 %21, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %masked = getelementptr %struct.gb_gpio_line, ptr %5, i32 %7, i32 4
  %22 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %masked, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwirq, align 4
  %conv10 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i27) #10
  %28 = ptrtoint ptr %request.i27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv10, ptr %request.i27, align 1
  %connection.i28 = getelementptr i8, ptr %3, i32 -12
  %29 = ptrtoint ptr %connection.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %connection.i28, align 4
  %call.i.i29 = call i32 @gb_operation_sync_timeout(ptr noundef %30, i32 noundef 12, ptr noundef nonnull %request.i27, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool.not.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool.not.i30, label %if.then6._gb_gpio_irq_mask.exit_crit_edge, label %do.end.i32

if.then6._gb_gpio_irq_mask.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %_gb_gpio_irq_mask.exit

do.end.i32:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i31 = getelementptr inbounds %struct.gbphy_device, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i31, ptr noundef nonnull @.str.27, i32 noundef %call.i.i29) #15
  br label %_gb_gpio_irq_mask.exit

_gb_gpio_irq_mask.exit:                           ; preds = %do.end.i32, %if.then6._gb_gpio_irq_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i27) #10
  br label %if.end11

if.else:                                          ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i33) #10
  %31 = ptrtoint ptr %request.i33 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10, ptr %request.i33, align 1
  %connection.i34 = getelementptr i8, ptr %3, i32 -12
  %32 = ptrtoint ptr %connection.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connection.i34, align 4
  %call.i.i35 = call i32 @gb_operation_sync_timeout(ptr noundef %33, i32 noundef 13, ptr noundef nonnull %request.i33, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool.not.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i36, label %if.else._gb_gpio_irq_unmask.exit_crit_edge, label %do.end.i38

if.else._gb_gpio_irq_unmask.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %_gb_gpio_irq_unmask.exit

do.end.i38:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i37 = getelementptr inbounds %struct.gbphy_device, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i37, ptr noundef nonnull @.str.29, i32 noundef %call.i.i35) #15
  br label %_gb_gpio_irq_unmask.exit

_gb_gpio_irq_unmask.exit:                         ; preds = %do.end.i38, %if.else._gb_gpio_irq_unmask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i33) #10
  br label %if.end11

if.end11:                                         ; preds = %_gb_gpio_irq_unmask.exit, %_gb_gpio_irq_mask.exit
  %34 = ptrtoint ptr %masked_pending to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %masked_pending, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end.if.end13_crit_edge
  %irq_lock = getelementptr i8, ptr %3, i32 484
  call void @mutex_unlock(ptr noundef %irq_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_request(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_activate_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i

do.end.i.i:                                       ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.31, i32 noundef %call.i.i.i) #15
  %usage_count.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_gpio_activate_operation.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_gpio_activate_operation.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_gpio_activate_operation.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  br label %gb_gpio_activate_operation.exit

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %offset to i8
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i17.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i.i17.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %dev1.i.i, i32 noundef 13) #10
  br label %gb_gpio_activate_operation.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %7 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %8, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %arrayidx.i, align 2
  br label %gb_gpio_activate_operation.exit

gb_gpio_activate_operation.exit:                  ; preds = %if.end6.i, %if.then5.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_gpio_activate_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then5.i ], [ 0, %if.end6.i ], [ %call.i.i.i, %do.end.i.i.gb_gpio_activate_operation.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_gpio_free(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_deactivate_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -16
  %conv = trunc i32 %offset to i8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #10
  %2 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %3 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  %conv.i = and i32 %offset, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.34, i32 noundef %conv.i) #15
  br label %gb_gpio_deactivate_operation.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %5 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %6, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %arrayidx.i, align 2
  br label %gb_gpio_deactivate_operation.exit

gb_gpio_deactivate_operation.exit:                ; preds = %if.end.i, %do.end.i
  %dev1.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  %call.i.i.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %dev1.i.i, i32 noundef 13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_get_direction(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_get_direction_request, align 1
  %response.i = alloca %struct.gb_gpio_get_direction_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -16
  %conv = trunc i32 %offset to i8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response.i) #10
  %2 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %response.i, align 1, !annotation !114
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef nonnull %response.i, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %gb_gpio_get_direction_operation.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.end.i [
    i8 0, label %if.end.i.if.end_crit_edge
    i8 1, label %if.end10.fold.split.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %7 to i32
  %conv8.i = and i32 %offset, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.36, i32 noundef %conv8.i, i32 noundef %conv.i) #15
  br label %if.end

if.end10.fold.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

gb_gpio_get_direction_operation.exit:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end10.fold.split.i, %do.end.i, %if.end.i.if.end_crit_edge
  %bf.shl.i = phi i8 [ 64, %do.end.i ], [ %7, %if.end.i.if.end_crit_edge ], [ 64, %if.end10.fold.split.i ]
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %9 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %10, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %arrayidx.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  %12 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lines.i, align 4
  %arrayidx = getelementptr %struct.gb_gpio_line, ptr %13, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 2
  %15 = lshr i8 %bf.load, 6
  %.lobit = and i8 %15, 1
  %16 = zext i8 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gb_gpio_get_direction_operation.exit
  %retval.0 = phi i32 [ %16, %if.end ], [ %call.i.i, %gb_gpio_get_direction_operation.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_direction_in_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %offset to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #10
  %0 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %1 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.gb_gpio_direction_in_operation.exit_crit_edge

entry.gb_gpio_direction_in_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_gpio_direction_in_operation.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %3 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %4, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %arrayidx.i, align 2
  br label %gb_gpio_direction_in_operation.exit

gb_gpio_direction_in_operation.exit:              ; preds = %if.then.i, %entry.gb_gpio_direction_in_operation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_direction_output(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_direction_out_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %offset to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #10
  %0 = getelementptr inbounds %struct.gb_gpio_direction_out_request, ptr %request.i, i32 0, i32 1
  %1 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %request.i, align 1
  %conv.i = zext i1 %tobool to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %0, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %3 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 7, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %entry.gb_gpio_direction_out_operation.exit_crit_edge

entry.gb_gpio_direction_out_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_gpio_direction_out_operation.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %5 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %6, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %arrayidx.i, align 2
  br label %gb_gpio_direction_out_operation.exit

gb_gpio_direction_out_operation.exit:             ; preds = %if.then.i, %entry.gb_gpio_direction_out_operation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_get(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_get_value_request, align 1
  %response.i = alloca %struct.gb_gpio_get_value_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -16
  %conv = trunc i32 %offset to i8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response.i) #10
  %2 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %response.i, align 1, !annotation !114
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef nonnull %response.i, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %gb_gpio_get_value_operation.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %7, label %do.end11.i [
    i8 0, label %if.end.i.if.end_crit_edge
    i8 1, label %if.end14.fold.split.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = zext i8 %7 to i32
  %conv12.i = and i32 %offset, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.42, i32 noundef %conv12.i, i32 noundef %conv4.i) #15
  br label %if.end

if.end14.fold.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

gb_gpio_get_value_operation.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = and i32 %offset, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.39, i32 noundef %conv.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end14.fold.split.i, %do.end11.i, %if.end.i.if.end_crit_edge
  %bf.shl.i = phi i8 [ 32, %do.end11.i ], [ %7, %if.end.i.if.end_crit_edge ], [ 32, %if.end14.fold.split.i ]
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %9 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %10, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %bf.clear.i = and i8 %bf.load.i, -33
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %arrayidx.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  %12 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lines.i, align 4
  %arrayidx = getelementptr %struct.gb_gpio_line, ptr %13, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 2
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %conv1 = zext i8 %bf.clear to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gb_gpio_get_value_operation.exit
  %retval.0 = phi i32 [ %conv1, %if.end ], [ %call.i.i, %gb_gpio_get_value_operation.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_gpio_set(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_set_value_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #10
  %2 = getelementptr inbounds %struct.gb_gpio_set_value_request, ptr %request.i, i32 0, i32 1
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %3 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.gb_gpio_line, ptr %4, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %arrayidx.i, align 2
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.44, i32 noundef %idxprom.i) #15
  br label %gb_gpio_set_value_operation.exit

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %offset to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %7 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %request.i, align 1
  %conv6.i = zext i1 %tobool to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6.i, ptr %2, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %9 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %10, i32 noundef 9, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.47, i32 noundef %idxprom.i) #15
  br label %gb_gpio_set_value_operation.exit

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %13 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lines.i, align 4
  %arrayidx17.i = getelementptr %struct.gb_gpio_line, ptr %14, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load18.i = load i8, ptr %arrayidx17.i, align 2
  %bf.value.i = shl i8 %12, 5
  %bf.shl.i = and i8 %bf.value.i, 32
  %bf.clear19.i = and i8 %bf.load18.i, -33
  %bf.set.i = or i8 %bf.clear19.i, %bf.shl.i
  store i8 %bf.set.i, ptr %arrayidx17.i, align 2
  br label %gb_gpio_set_value_operation.exit

gb_gpio_set_value_operation.exit:                 ; preds = %if.end13.i, %do.end11.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_gpio_set_config(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_gpio_set_debounce_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %config)
  %cmp2 = icmp ugt i32 %config, 16777215
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %shr.i = lshr i32 %config, 8
  %conv = trunc i32 %offset to i8
  %conv5 = trunc i32 %shr.i to i16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %request.i) #10
  %0 = getelementptr inbounds %struct.gb_gpio_set_debounce_request, ptr %request.i, i32 0, i32 1
  %1 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %request.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv5) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %0, align 1
  %connection.i = getelementptr i8, ptr %chip, i32 -12
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 10, ptr noundef nonnull %request.i, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.gb_gpio_set_debounce_operation.exit_crit_edge

if.end4.gb_gpio_set_debounce_operation.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_gpio_set_debounce_operation.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %lines.i = getelementptr i8, ptr %chip, i32 -4
  %6 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %offset, 255
  %debounce_usec2.i = getelementptr %struct.gb_gpio_line, ptr %7, i32 %idxprom.i, i32 1
  %8 = ptrtoint ptr %debounce_usec2.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv5, ptr %debounce_usec2.i, align 2
  br label %gb_gpio_set_debounce_operation.exit

gb_gpio_set_debounce_operation.exit:              ; preds = %if.then.i, %if.end4.gb_gpio_set_debounce_operation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %request.i) #10
  br label %cleanup

cleanup:                                          ; preds = %gb_gpio_set_debounce_operation.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %gb_gpio_set_debounce_operation.exit ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_gb_gpio__229_629_gpio_driver_init6, !1, !"__initcall__kmod_gb_gpio__229_629_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/gpio.c", i32 629, i32 1}
!2 = !{ptr @__exitcall_gpio_driver_exit, !1, !"__exitcall_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file230, !4, !"__UNIQUE_ID_file230", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/gpio.c", i32 630, i32 1}
!5 = !{ptr @__UNIQUE_ID_license231, !4, !"__UNIQUE_ID_license231", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/gpio.c", i32 623, i32 11}
!9 = !{ptr @gpio_driver, !10, !"gpio_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/gpio.c", i32 622, i32 28}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/gpio.c", i32 543, i32 15}
!13 = !{ptr @gb_gpio_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/gpio.c", i32 545, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/gpio.c", i32 580, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gb_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gb_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/greybus/gpio.c", i32 370, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gb_gpio_request_handler._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @gb_gpio_request_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/gpio.c", i32 377, i32 3}
!31 = !{ptr @gb_gpio_request_handler._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gb_gpio_request_handler._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/gpio.c", i32 384, i32 3}
!35 = !{ptr @gb_gpio_request_handler._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gb_gpio_request_handler._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/greybus/gpio.c", i32 390, i32 3}
!39 = !{ptr @gb_gpio_request_handler._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gb_gpio_request_handler._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/greybus/gpio.c", i32 399, i32 3}
!43 = !{ptr @gb_gpio_request_handler._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gb_gpio_request_handler._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/gpio.c", i32 319, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gb_gpio_irq_set_type._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @gb_gpio_irq_set_type._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/greybus/gpio.c", i32 268, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @_gb_gpio_irq_set_type._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @_gb_gpio_irq_set_type._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/greybus/gpio.c", i32 237, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @_gb_gpio_irq_mask._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @_gb_gpio_irq_mask._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/greybus/gpio.c", i32 251, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @_gb_gpio_irq_unmask._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @_gb_gpio_irq_unmask._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/greybus/gbphy.h", i32 76, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gbphy_runtime_get_sync._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @gbphy_runtime_get_sync._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/greybus/gpio.c", i32 95, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @gb_gpio_deactivate_operation._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @gb_gpio_deactivate_operation._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/greybus/gpio.c", i32 123, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @gb_gpio_get_direction_operation._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @gb_gpio_get_direction_operation._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/greybus/gpio.c", i32 173, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @gb_gpio_get_value_operation._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @gb_gpio_get_value_operation._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/greybus/gpio.c", i32 179, i32 3}
!89 = !{ptr @gb_gpio_get_value_operation._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @gb_gpio_get_value_operation._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/greybus/gpio.c", i32 194, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @gb_gpio_set_value_operation._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @gb_gpio_set_value_operation._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/greybus/gpio.c", i32 204, i32 3}
!98 = !{ptr @gb_gpio_set_value_operation._entry.46, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @gb_gpio_set_value_operation._entry_ptr.48, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @gpiochip_add.lock_key, !101, !"lock_key", i1 false, i1 false}
!101 = !{!"../include/linux/gpio/driver.h", i32 563, i32 9}
!102 = !{ptr @gpiochip_add.request_key, !101, !"request_key", i1 false, i1 false}
!103 = !{ptr @gb_gpio_id_table, !104, !"gb_gpio_id_table", i1 false, i1 false}
!104 = !{!"../drivers/staging/greybus/gpio.c", i32 616, i32 37}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"auto-init"}
!115 = !{i64 2148223046}
!116 = !{i64 707869, i64 707894, i64 707916, i64 707932, i64 707944, i64 707964, i64 707988, i64 708004, i64 708016}
!117 = !{i64 2148223234}
!118 = !{i64 2148223627, i64 2148223653, i64 2148223682, i64 2148223716, i64 2148223747, i64 2148223770}
!119 = !{i64 618840}
!120 = !{i64 616543}
!121 = !{i64 616353}
!122 = !{i8 0, i8 2}
