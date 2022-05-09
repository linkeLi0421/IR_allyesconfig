; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_bus.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rmi_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_dbg\09\09\09\09"
module asm "\09.long\09__crc_rmi_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_dbg\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_register_transport_device\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_register_transport_device\09\09\09\09"
module asm "\09.long\09__crc_rmi_register_transport_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_register_transport_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_register_transport_device\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_register_transport_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rmi_unregister_transport_device\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_unregister_transport_device\09\09\09\09"
module asm "\09.long\09__crc_rmi_unregister_transport_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_unregister_transport_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_unregister_transport_device\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_unregister_transport_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__rmi_register_function_handler\22, \22a\22\09"
module asm "\09.weak\09__crc___rmi_register_function_handler\09\09\09\09"
module asm "\09.long\09__crc___rmi_register_function_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rmi_register_function_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22__rmi_register_function_handler\22\09\09\09\09\09"
module asm "__kstrtabns___rmi_register_function_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_unregister_function_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_unregister_function_handler\09\09\09\09"
module asm "\09.long\09__crc_rmi_unregister_function_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_unregister_function_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_unregister_function_handler\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_unregister_function_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_of_property_read_u32\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_of_property_read_u32\09\09\09\09"
module asm "\09.long\09__crc_rmi_of_property_read_u32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_of_property_read_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_of_property_read_u32\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_of_property_read_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }

@__param_str_debug_flags = internal constant [21 x i8] c"rmi_core.debug_flags\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_flags = internal constant %struct.kernel_param { ptr @__param_str_debug_flags, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug_flags } }, section "__param", align 4
@__UNIQUE_ID_debug_flagstype232 = internal constant [34 x i8] c"rmi_core.parmtype=debug_flags:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_flags233 = internal constant [56 x i8] c"rmi_core.parm=debug_flags:control debugging information\00", section ".modinfo", align 1
@rmi_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pV\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rmi_dbg\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_bus.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_dbg._entry_ptr = internal global ptr @rmi_dbg._entry, section ".printk_index", align 4
@__kstrtab_rmi_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_dbg to i32), ptr @__kstrtab_rmi_dbg, ptr @__kstrtabns_rmi_dbg }, section "___ksymtab_gpl+rmi_dbg", align 4
@rmi_device_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.18, ptr null, ptr null, ptr null, ptr @rmi_release_device, ptr null }, [40 x i8] zeroinitializer }, align 32
@rmi_register_transport_device.transport_device_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rmi4-%02d\00", [22 x i8] zeroinitializer }, align 32
@rmi_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Registered %s as %s.\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rmi_register_transport_device = private unnamed_addr constant [30 x i8] c"rmi_register_transport_device\00", align 1
@__kstrtab_rmi_register_transport_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_register_transport_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_register_transport_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_register_transport_device to i32), ptr @__kstrtab_rmi_register_transport_device, ptr @__kstrtabns_rmi_register_transport_device }, section "___ksymtab_gpl+rmi_register_transport_device", align 4
@__kstrtab_rmi_unregister_transport_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_unregister_transport_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_unregister_transport_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_unregister_transport_device to i32), ptr @__kstrtab_rmi_unregister_transport_device, ptr @__kstrtabns_rmi_unregister_transport_device }, section "___ksymtab+rmi_unregister_transport_device", align 4
@rmi_function_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.19, ptr null, ptr null, ptr null, ptr @rmi_release_function, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s.fn%02x\00", [22 x i8] zeroinitializer }, align 32
@rmi_register_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 257, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed device_register function device %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rmi_register_function\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rmi_register_function._entry_ptr = internal global ptr @rmi_register_function._entry, section ".printk_index", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Registered F%02X.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unregistering F%02X.\0A\00", [42 x i8] zeroinitializer }, align 32
@__rmi_register_function_handler._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 313, ptr null, ptr null }, align 1
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013driver_register() failed for %s, error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__rmi_register_function_handler\00", [32 x i8] zeroinitializer }, align 32
@__rmi_register_function_handler._entry_ptr = internal global ptr @__rmi_register_function_handler._entry, section ".printk_index", align 4
@__kstrtab___rmi_register_function_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns___rmi_register_function_handler = external dso_local constant [0 x i8], align 1
@__ksymtab___rmi_register_function_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rmi_register_function_handler to i32), ptr @__kstrtab___rmi_register_function_handler, ptr @__kstrtabns___rmi_register_function_handler }, section "___ksymtab_gpl+__rmi_register_function_handler", align 4
@__kstrtab_rmi_unregister_function_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_unregister_function_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_unregister_function_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_unregister_function_handler to i32), ptr @__kstrtab_rmi_unregister_function_handler, ptr @__kstrtabns_rmi_unregister_function_handler }, section "___ksymtab_gpl+rmi_unregister_function_handler", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmi4\00", [27 x i8] zeroinitializer }, align 32
@rmi_of_property_read_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 423, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get %s value: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rmi_of_property_read_u32\00", [39 x i8] zeroinitializer }, align 32
@rmi_of_property_read_u32._entry_ptr = internal global ptr @rmi_of_property_read_u32._entry, section ".printk_index", align 4
@__kstrtab_rmi_of_property_read_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_of_property_read_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_of_property_read_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_of_property_read_u32 to i32), ptr @__kstrtab_rmi_of_property_read_u32, ptr @__kstrtabns_rmi_of_property_read_u32 }, section "___ksymtab_gpl+rmi_of_property_read_u32", align 4
@__initcall__kmod_rmi_core__234_460_rmi_bus_init6 = internal global ptr @rmi_bus_init, section ".initcall6.init", align 4
@__exitcall_rmi_bus_exit = internal global ptr @rmi_bus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"rmi_core.author=Christopher Heiny <cheiny@synaptics.com\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [53 x i8] c"rmi_core.author=Andrew Duggan <aduggan@synaptics.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [29 x i8] c"rmi_core.description=RMI bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [42 x i8] c"rmi_core.file=drivers/input/rmi4/rmi_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [21 x i8] c"rmi_core.license=GPL\00", section ".modinfo", align 1
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rmi4_sensor\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi4_function\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rmi4-f%02x\00", [21 x i8] zeroinitializer }, align 32
@rmi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rmi_create_function_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 195, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d registering IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_create_function_irq\00", [40 x i8] zeroinitializer }, align 32
@rmi_create_function_irq._entry_ptr = internal global ptr @rmi_create_function_irq._entry, section ".printk_index", align 4
@rmi_bus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: error registering the RMI bus: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmi_bus_init\00", [19 x i8] zeroinitializer }, align 32
@rmi_bus_init._entry_ptr = internal global ptr @rmi_bus_init._entry, section ".printk_index", align 4
@rmi_bus_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: error registering the RMI physical driver: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rmi_bus_init._entry_ptr.27 = internal global ptr @rmi_bus_init._entry.25, section ".printk_index", align 4
@fn_handlers = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @rmi_f01_handler, ptr @rmi_f03_handler, ptr @rmi_f11_handler, ptr @rmi_f12_handler, ptr @rmi_f30_handler, ptr @rmi_f34_handler, ptr @rmi_f3a_handler, ptr @rmi_f54_handler, ptr @rmi_f55_handler], [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi_core\00", [23 x i8] zeroinitializer }, align 32
@rmi_register_function_handlers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: error registering the RMI F%02x handler: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmi_register_function_handlers\00", [33 x i8] zeroinitializer }, align 32
@rmi_register_function_handlers._entry_ptr = internal global ptr @rmi_register_function_handlers._entry, section ".printk_index", align 4
@rmi_f01_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f03_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f11_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f12_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f30_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f34_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f3a_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f54_handler = external dso_local global %struct.rmi_function_handler, align 4
@rmi_f55_handler = external dso_local global %struct.rmi_function_handler, align 4
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"debug_flags\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 20, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 35, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"rmi_device_type\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 57, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"transport_device_count\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 76, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 89, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"rmi_bus_type\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 347, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 102, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"rmi_function_type\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 137, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 246, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 255, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 261, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 275, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 312, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 349, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 422, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 58, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 138, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 161, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"rmi_irq_chip\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 170, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 195, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 438, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 449, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"fn_handlers\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 352, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 399, i32 9 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_bus.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 401, i32 4 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_debug_flags233, ptr @__UNIQUE_ID_debug_flagstype232, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_rmi_bus_exit, ptr @__initcall__kmod_rmi_core__234_460_rmi_bus_init6, ptr @__ksymtab___rmi_register_function_handler, ptr @__ksymtab_rmi_dbg, ptr @__ksymtab_rmi_of_property_read_u32, ptr @__ksymtab_rmi_register_transport_device, ptr @__ksymtab_rmi_unregister_function_handler, ptr @__ksymtab_rmi_unregister_transport_device, ptr @__param_debug_flags, ptr @__rmi_register_function_handler._entry, ptr @__rmi_register_function_handler._entry_ptr, ptr @rmi_bus_exit, ptr @rmi_bus_init._entry, ptr @rmi_bus_init._entry.25, ptr @rmi_bus_init._entry_ptr, ptr @rmi_bus_init._entry_ptr.27, ptr @rmi_create_function_irq._entry, ptr @rmi_create_function_irq._entry_ptr, ptr @rmi_dbg._entry, ptr @rmi_dbg._entry_ptr, ptr @rmi_of_property_read_u32._entry, ptr @rmi_of_property_read_u32._entry_ptr, ptr @rmi_register_function._entry, ptr @rmi_register_function._entry_ptr, ptr @rmi_register_function_handlers._entry, ptr @rmi_register_function_handlers._entry_ptr, ptr @debug_flags, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rmi_device_type, ptr @rmi_register_transport_device.transport_device_count, ptr @.str.5, ptr @rmi_bus_type, ptr @.str.6, ptr @rmi_function_type, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rmi_irq_chip, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @fn_handlers, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_register_transport_device.transport_device_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_function_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_register_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_of_property_read_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_create_function_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_bus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_bus_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fn_handlers to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_register_function_handlers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_dbg(i32 noundef %flags, ptr noundef %dev, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !119
  %1 = load i32, ptr @debug_flags, align 4
  %and = and i32 %1, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %2, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rmi_is_physical_device(ptr nocapture noundef readonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @rmi_device_type
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_register_transport_device(ptr noundef %xport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 944) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #11
  %xport1 = getelementptr inbounds %struct.rmi_device, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %xport1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %xport, ptr %xport1, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rmi_register_transport_device.transport_device_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull @rmi_register_transport_device.transport_device_count, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rmi_register_transport_device.transport_device_count, ptr nonnull @rmi_register_transport_device.transport_device_count, i32 1, ptr nonnull elementtype(i32) @rmi_register_transport_device.transport_device_count) #11, !srcloc !121
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !122
  %sub = add i32 %asmresult.i.i.i.i, -1
  %number = getelementptr inbounds %struct.rmi_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %number, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.5, i32 noundef %sub) #11
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rmi_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rmi_device_type, ptr %type, align 4
  %6 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xport, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent, align 8
  %rmi_dev10 = getelementptr inbounds %struct.rmi_transport_dev, ptr %xport, i32 0, i32 1
  %9 = ptrtoint ptr %rmi_dev10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %rmi_dev10, align 4
  %call12 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_put_device

if.end15:                                         ; preds = %if.end
  %10 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xport, align 4
  %12 = ptrtoint ptr %xport1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xport1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.end15.dev_name.exit_crit_edge ]
  %init_name.i41 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i41, align 8
  %tobool.not.i42 = icmp eq ptr %21, null
  br i1 %tobool.not.i42, label %if.end.i43, label %dev_name.exit.dev_name.exit45_crit_edge

dev_name.exit.dev_name.exit45_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit45

if.end.i43:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  br label %dev_name.exit45

dev_name.exit45:                                  ; preds = %if.end.i43, %dev_name.exit.dev_name.exit45_crit_edge
  %retval.0.i44 = phi ptr [ %23, %if.end.i43 ], [ %21, %dev_name.exit.dev_name.exit45_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rmi_register_transport_device, ptr noundef %retval.0.i, ptr noundef %retval.0.i44)
  br label %cleanup

err_put_device:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put_device, %dev_name.exit45, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %err_put_device ], [ 0, %dev_name.exit45 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_unregister_transport_device(ptr nocapture noundef readonly %xport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_transport_dev, ptr %xport, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  tail call void @device_del(ptr noundef %1) #11
  tail call void @put_device(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rmi_is_function_device(ptr nocapture noundef readonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @rmi_function_type
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_register_function(ptr noundef %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %dev) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %function_number = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 5
  %6 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %function_number, align 1
  %conv = zext i8 %7 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i, i32 noundef %conv) #11
  %parent = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %parent, align 8
  %type = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rmi_function_type, ptr %type, align 4
  %bus = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rmi_bus_type, ptr %bus, align 8
  %call10 = tail call i32 @device_add(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_name.exit
  %init_name.i34 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %init_name.i34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i34, align 8
  %tobool.not.i35 = icmp eq ptr %12, null
  br i1 %tobool.not.i35, label %if.end.i36, label %do.end.dev_name.exit38_crit_edge

do.end.dev_name.exit38_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit38

if.end.i36:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit38

dev_name.exit38:                                  ; preds = %if.end.i36, %do.end.dev_name.exit38_crit_edge
  %retval.0.i37 = phi ptr [ %14, %if.end.i36 ], [ %12, %do.end.dev_name.exit38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i37) #14
  tail call void @put_device(ptr noundef %dev) #11
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %function_number, align 1
  %conv17 = zext i8 %16 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %conv17)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit38
  ret i32 %call10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_unregister_function(ptr noundef %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %function_number = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 5
  %0 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %function_number, align 1
  %conv = zext i8 %1 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv)
  tail call void @device_del(ptr noundef %dev) #11
  %of_node = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %3) #11
  tail call void @put_device(ptr noundef %dev) #11
  %num_of_irqs = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_of_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rmi_function, ptr %fn, i32 0, i32 5, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @irq_dispose_mapping(i32 noundef %7) #11
  %inc = add nuw i32 %i.014, 1
  %8 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_of_irqs, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__rmi_register_function_handler(ptr noundef %handler, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device_driver, ptr %handler, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rmi_bus_type, ptr %bus, align 4
  %owner2 = getelementptr inbounds %struct.device_driver, ptr %handler, i32 0, i32 2
  %1 = ptrtoint ptr %owner2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %owner, ptr %owner2, align 4
  %mod_name3 = getelementptr inbounds %struct.device_driver, ptr %handler, i32 0, i32 3
  %2 = ptrtoint ptr %mod_name3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mod_name, ptr %mod_name3, align 4
  %probe = getelementptr inbounds %struct.device_driver, ptr %handler, i32 0, i32 8
  %3 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rmi_function_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.device_driver, ptr %handler, i32 0, i32 10
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rmi_function_remove, ptr %remove, align 4
  %call = tail call i32 @driver_register(ptr noundef %handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %6, i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_function_probe(ptr noundef %dev) #0 align 64 {
entry:
  %of_name.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %of_name.i) #11
  %rmi_dev.i = getelementptr i8, ptr %dev, i32 -4
  %2 = call ptr @memset(ptr %of_name.i, i32 255, i32 9)
  %3 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmi_dev.i, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xport.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %function_number.i = getelementptr i8, ptr %dev, i32 -7
  %11 = ptrtoint ptr %function_number.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %function_number.i, align 1
  %conv.i = zext i8 %12 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %of_name.i, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %conv.i) #11
  %call2.i = call ptr @of_get_child_by_name(ptr noundef %10, ptr noundef nonnull %of_name.i) #11
  %of_node4.i = getelementptr i8, ptr %dev, i32 832
  %13 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %of_node4.i, align 8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %of_name.i) #11
  %probe = getelementptr inbounds %struct.rmi_function_handler, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = call i32 %15(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %num_of_irqs = getelementptr i8, ptr %dev, i32 936
  %16 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %attention = getelementptr inbounds %struct.rmi_function_handler, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %attention to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attention, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  %20 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_of_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44.not.i = icmp eq i32 %21, 0
  br i1 %cmp44.not.i, label %if.then10.cleanup_crit_edge, label %for.body.lr.ph.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then10
  %22 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmi_dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %irq_pos.i = getelementptr i8, ptr %dev, i32 964
  %irq_mask.i = getelementptr i8, ptr %dev, i32 968
  %irqdomain.i = getelementptr inbounds %struct.rmi_driver_data, ptr %25, i32 0, i32 14
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  br label %for.body.i

for.cond.i:                                       ; preds = %dev_name.exit.i
  %inc.i = add nuw i32 %i.045.i, 1
  %26 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_of_irqs, align 8
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_pos.i, align 4
  %add.i = add i32 %29, %i.045.i
  call void @_set_bit(i32 noundef %add.i, ptr noundef %irq_mask.i) #11
  %30 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irqdomain.i, align 4
  %32 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq_pos.i, align 4
  %add2.i = add i32 %33, %i.045.i
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %31, i32 noundef %add2.i, ptr noundef null) #11
  %arrayidx.i = getelementptr %struct.rmi_function, ptr %add.ptr, i32 0, i32 5, i32 %i.045.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i.i, ptr %arrayidx.i, align 4
  %call6.i = call i32 @irq_set_chip_data(i32 noundef %call.i.i, ptr noundef %add.ptr) #11
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @irq_set_chip_and_handler_name(i32 noundef %36, ptr noundef nonnull @rmi_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #11
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @irq_modify_status(i32 noundef %38, i32 noundef 0, i32 noundef 32768) #11
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %attention to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %attention, align 4
  %43 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %46, %if.end.i.i ], [ %44, %for.body.i.dev_name.exit.i_crit_edge ]
  %call16.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %40, ptr noundef null, ptr noundef %42, i32 noundef 8192, ptr noundef %retval.0.i.i, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %rmi_create_function_irq.exit

rmi_create_function_irq.exit:                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call16.i) #14
  br label %cleanup

cleanup:                                          ; preds = %rmi_create_function_irq.exit, %for.cond.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call16.i, %rmi_create_function_irq.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_function_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr inbounds %struct.rmi_function_handler, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void %3(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_unregister_function_handler(ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %handler) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_bus_match(ptr nocapture noundef readonly %dev, ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @rmi_device_type
  %call1 = tail call zeroext i1 @rmi_is_physical_driver(ptr noundef %drv) #11
  %2 = xor i1 %cmp.i, %call1
  %brmerge = or i1 %cmp.i, %call1
  %not. = xor i1 %2, true
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %lor.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %function_number.i = getelementptr i8, ptr %dev, i32 -7
  %3 = ptrtoint ptr %function_number.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %function_number.i, align 1
  %func.i = getelementptr inbounds %struct.rmi_function_handler, ptr %drv, i32 0, i32 1
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %func.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.i11 = icmp eq i8 %4, %6
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %entry.cleanup_crit_edge
  %retval.0.in = phi i1 [ %not., %entry.cleanup_crit_edge ], [ %cmp.i11, %lor.rhs ]
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr nocapture noundef writeonly %result, ptr noundef %prop, i1 noundef zeroext %optional) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef %prop, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #11
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  %brmerge = or i1 %tobool.not, %optional
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %3)
  %cmp = icmp eq i32 %3, -22
  %or.cond = select i1 %brmerge.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %prop, i32 noundef -22) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_bus_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @rmi_bus_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f01_handler, i32 0, i32 0, i32 10), align 4
  %call.i.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f01_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.7.i.do.end.i_crit_edge, %for.inc.6.i.do.end.i_crit_edge, %for.inc.5.i.do.end.i_crit_edge, %for.inc.4.i.do.end.i_crit_edge, %for.inc.3.i.do.end.i_crit_edge, %for.inc.2.i.do.end.i_crit_edge, %for.inc.1.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %if.end.do.end.i_crit_edge ], [ 1, %for.inc.i.do.end.i_crit_edge ], [ 2, %for.inc.1.i.do.end.i_crit_edge ], [ 3, %for.inc.2.i.do.end.i_crit_edge ], [ 4, %for.inc.3.i.do.end.i_crit_edge ], [ 5, %for.inc.4.i.do.end.i_crit_edge ], [ 6, %for.inc.5.i.do.end.i_crit_edge ], [ 7, %for.inc.6.i.do.end.i_crit_edge ], [ 8, %for.inc.7.i.do.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ @rmi_f01_handler, %if.end.do.end.i_crit_edge ], [ @rmi_f03_handler, %for.inc.i.do.end.i_crit_edge ], [ @rmi_f11_handler, %for.inc.1.i.do.end.i_crit_edge ], [ @rmi_f12_handler, %for.inc.2.i.do.end.i_crit_edge ], [ @rmi_f30_handler, %for.inc.3.i.do.end.i_crit_edge ], [ @rmi_f34_handler, %for.inc.4.i.do.end.i_crit_edge ], [ @rmi_f3a_handler, %for.inc.5.i.do.end.i_crit_edge ], [ @rmi_f54_handler, %for.inc.6.i.do.end.i_crit_edge ], [ @rmi_f55_handler, %for.inc.7.i.do.end.i_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end.do.end.i_crit_edge ], [ %call.i.1.i, %for.inc.i.do.end.i_crit_edge ], [ %call.i.2.i, %for.inc.1.i.do.end.i_crit_edge ], [ %call.i.3.i, %for.inc.2.i.do.end.i_crit_edge ], [ %call.i.4.i, %for.inc.3.i.do.end.i_crit_edge ], [ %call.i.5.i, %for.inc.4.i.do.end.i_crit_edge ], [ %call.i.6.i, %for.inc.5.i.do.end.i_crit_edge ], [ %call.i.7.i, %for.inc.6.i.do.end.i_crit_edge ], [ %call.i.8.i, %for.inc.7.i.do.end.i_crit_edge ]
  %0 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %.lcssa.i, align 4
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef %call.i.lcssa.i) #14
  %func.i = getelementptr inbounds %struct.rmi_function_handler, ptr %.lcssa.i, i32 0, i32 1
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %func.i, align 4
  %conv.i = zext i8 %3 to i32
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv.i, i32 noundef %call.i.lcssa.i) #14
  br i1 %tobool.not.i.i, label %do.end.i.for.body.i.i_crit_edge, label %do.end.i.err_unregister_bus_crit_edge

do.end.i.err_unregister_bus_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unregister_bus

do.end.i.for.body.i.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end.i.for.body.i.i_crit_edge
  %i.04.i.in.i = phi i32 [ %i.04.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %i.012.lcssa.i, %do.end.i.for.body.i.i_crit_edge ]
  %i.04.i.i = add nsw i32 %i.04.i.in.i, -1
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @fn_handlers, i32 0, i32 %i.04.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @driver_unregister(ptr noundef %5) #11
  %cmp.not.i.i = icmp eq i32 %i.04.i.i, 0
  br i1 %cmp.not.i.i, label %rmi_register_function_handlers.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i:                                        ; preds = %if.end
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f03_handler, i32 0, i32 0, i32 10), align 4
  %call.i.1.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f03_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.inc.1.i, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f11_handler, i32 0, i32 0, i32 10), align 4
  %call.i.2.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f11_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %for.inc.2.i, label %for.inc.1.i.do.end.i_crit_edge

for.inc.1.i.do.end.i_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f12_handler, i32 0, i32 0, i32 10), align 4
  %call.i.3.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f12_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %for.inc.3.i, label %for.inc.2.i.do.end.i_crit_edge

for.inc.2.i.do.end.i_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f30_handler, i32 0, i32 0, i32 10), align 4
  %call.i.4.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f30_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %call.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %for.inc.4.i, label %for.inc.3.i.do.end.i_crit_edge

for.inc.3.i.do.end.i_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f34_handler, i32 0, i32 0, i32 10), align 4
  %call.i.5.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f34_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i)
  %tobool.not.i.5.i = icmp eq i32 %call.i.5.i, 0
  br i1 %tobool.not.i.5.i, label %for.inc.5.i, label %for.inc.4.i.do.end.i_crit_edge

for.inc.4.i.do.end.i_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f3a_handler, i32 0, i32 0, i32 10), align 4
  %call.i.6.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f3a_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6.i)
  %tobool.not.i.6.i = icmp eq i32 %call.i.6.i, 0
  br i1 %tobool.not.i.6.i, label %for.inc.6.i, label %for.inc.5.i.do.end.i_crit_edge

for.inc.5.i.do.end.i_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f54_handler, i32 0, i32 0, i32 10), align 4
  %call.i.7.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f54_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7.i)
  %tobool.not.i.7.i = icmp eq i32 %call.i.7.i, 0
  br i1 %tobool.not.i.7.i, label %for.inc.7.i, label %for.inc.6.i.do.end.i_crit_edge

for.inc.6.i.do.end.i_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 1) to i32))
  store ptr @rmi_bus_type, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 3) to i32))
  store ptr @.str.28, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 8) to i32))
  store ptr @rmi_function_probe, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 10) to i32))
  store ptr @rmi_function_remove, ptr getelementptr inbounds (%struct.rmi_function_handler, ptr @rmi_f55_handler, i32 0, i32 0, i32 10), align 4
  %call.i.8.i = tail call i32 @driver_register(ptr noundef nonnull @rmi_f55_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.8.i)
  %tobool.not.i.8.i = icmp eq i32 %call.i.8.i, 0
  br i1 %tobool.not.i.8.i, label %for.inc.7.i.if.end5_crit_edge, label %for.inc.7.i.do.end.i_crit_edge

for.inc.7.i.do.end.i_crit_edge:                   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.inc.7.i.if.end5_crit_edge:                    ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

rmi_register_function_handlers.exit:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i)
  %tobool3.not = icmp eq i32 %call.i.lcssa.i, 0
  br i1 %tobool3.not, label %rmi_register_function_handlers.exit.if.end5_crit_edge, label %rmi_register_function_handlers.exit.err_unregister_bus_crit_edge

rmi_register_function_handlers.exit.err_unregister_bus_crit_edge: ; preds = %rmi_register_function_handlers.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unregister_bus

rmi_register_function_handlers.exit.if.end5_crit_edge: ; preds = %rmi_register_function_handlers.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %rmi_register_function_handlers.exit.if.end5_crit_edge, %for.inc.7.i.if.end5_crit_edge
  %call6 = tail call i32 @rmi_register_physical_driver() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %call6) #14
  br label %err_unregister_bus

err_unregister_bus:                               ; preds = %do.end11, %rmi_register_function_handlers.exit.err_unregister_bus_crit_edge, %do.end.i.err_unregister_bus_crit_edge
  %error.0 = phi i32 [ %call.i.lcssa.i, %rmi_register_function_handlers.exit.err_unregister_bus_crit_edge ], [ %call6, %do.end11 ], [ %call.i.lcssa.i, %do.end.i.err_unregister_bus_crit_edge ]
  tail call void @bus_unregister(ptr noundef nonnull @rmi_bus_type) #11
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_bus, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %error.0, %err_unregister_bus ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmi_bus_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rmi_unregister_physical_driver() #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f55_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f54_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f3a_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f34_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f30_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f12_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f11_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f03_handler) #11
  tail call void @driver_unregister(ptr noundef nonnull @rmi_f01_handler) #11
  tail call void @bus_unregister(ptr noundef nonnull @rmi_bus_type) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_unregister_physical_driver() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_release_function(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rmi_is_physical_driver(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_physical_driver() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__param_debug_flags, !1, !"__param_debug_flags", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_flagstype232, !1, !"__UNIQUE_ID_debug_flagstype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_flags233, !4, !"__UNIQUE_ID_debug_flags233", i1 false, i1 false}
!4 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 22, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 35, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rmi_dbg._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @rmi_dbg._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_rmi_dbg, !14, !"__ksymtab_rmi_dbg", i1 false, i1 false}
!14 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 40, i32 1}
!15 = !{ptr @rmi_register_transport_device.transport_device_count, !16, !"transport_device_count", i1 false, i1 false}
!16 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 76, i32 18}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 89, i32 30}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 102, i32 3}
!21 = !{ptr @__func__.rmi_register_transport_device, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 102, i32 33}
!23 = !{ptr @__ksymtab_rmi_register_transport_device, !24, !"__ksymtab_rmi_register_transport_device", i1 false, i1 false}
!24 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 111, i32 1}
!25 = !{ptr @__ksymtab_rmi_unregister_transport_device, !26, !"__ksymtab_rmi_unregister_transport_device", i1 false, i1 false}
!26 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 125, i32 1}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 246, i32 25}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 255, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rmi_register_function._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @rmi_register_function._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 261, i32 41}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 275, i32 36}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 312, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__rmi_register_function_handler._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @__rmi_register_function_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab___rmi_register_function_handler, !45, !"__ksymtab___rmi_register_function_handler", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 319, i32 1}
!46 = !{ptr @__ksymtab_rmi_unregister_function_handler, !47, !"__ksymtab_rmi_unregister_function_handler", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 332, i32 1}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 349, i32 11}
!50 = !{ptr @rmi_bus_type, !51, !"rmi_bus_type", i1 false, i1 false}
!51 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 347, i32 17}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 422, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rmi_of_property_read_u32._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rmi_of_property_read_u32._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__ksymtab_rmi_of_property_read_u32, !58, !"__ksymtab_rmi_of_property_read_u32", i1 false, i1 false}
!58 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 430, i32 1}
!59 = !{ptr @__initcall__kmod_rmi_core__234_460_rmi_bus_init6, !60, !"__initcall__kmod_rmi_core__234_460_rmi_bus_init6", i1 false, i1 false}
!60 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 460, i32 1}
!61 = !{ptr @__exitcall_rmi_bus_exit, !62, !"__exitcall_rmi_bus_exit", i1 false, i1 false}
!62 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 473, i32 1}
!63 = !{ptr @__UNIQUE_ID_author235, !64, !"__UNIQUE_ID_author235", i1 false, i1 false}
!64 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 475, i32 1}
!65 = !{ptr @__UNIQUE_ID_author236, !66, !"__UNIQUE_ID_author236", i1 false, i1 false}
!66 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 476, i32 1}
!67 = !{ptr @__UNIQUE_ID_description237, !68, !"__UNIQUE_ID_description237", i1 false, i1 false}
!68 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 477, i32 1}
!69 = !{ptr @__UNIQUE_ID_file238, !70, !"__UNIQUE_ID_file238", i1 false, i1 false}
!70 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 478, i32 1}
!71 = !{ptr @__UNIQUE_ID_license239, !70, !"__UNIQUE_ID_license239", i1 false, i1 false}
!72 = !{ptr @debug_flags, !73, !"debug_flags", i1 false, i1 false}
!73 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 20, i32 12}
!74 = !{ptr @__param_str_debug_flags, !1, !"__param_str_debug_flags", i1 false, i1 false}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 58, i32 11}
!77 = !{ptr @rmi_device_type, !78, !"rmi_device_type", i1 false, i1 false}
!78 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 57, i32 33}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 138, i32 11}
!81 = !{ptr @rmi_function_type, !82, !"rmi_function_type", i1 false, i1 false}
!82 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 137, i32 33}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 161, i32 37}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 195, i32 4}
!87 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rmi_create_function_irq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rmi_create_function_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @rmi_irq_chip, !91, !"rmi_irq_chip", i1 false, i1 false}
!91 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 170, i32 24}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 438, i32 3}
!94 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rmi_bus_init._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @rmi_bus_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 449, i32 3}
!99 = !{ptr @rmi_bus_init._entry.25, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rmi_bus_init._entry_ptr.27, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 399, i32 9}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 401, i32 4}
!105 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rmi_register_function_handlers._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @rmi_register_function_handlers._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @fn_handlers, !109, !"fn_handlers", i1 false, i1 false}
!109 = !{!"../drivers/input/rmi4/rmi_bus.c", i32 352, i32 37}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{i64 2148304068}
!121 = !{i64 2148219377, i64 2148219409, i64 2148219438, i64 2148219472, i64 2148219503, i64 2148219526}
!122 = !{i64 2148304297}
