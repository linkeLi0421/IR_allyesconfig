; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/cros_ec_keyb.c_pt.bc'
source_filename = "../drivers/input/keyboard/cros_ec_keyb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.ec_response_get_next_data = type <{ i64, [5 x i8] }>
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
%struct.cros_ec_keyb = type { i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, [15 x i16], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_mkbp_info = type { i8, i8 }

@__initcall__kmod_cros_ec_keyb__295_741_cros_ec_keyb_driver_init6 = internal global ptr @cros_ec_keyb_driver_init, section ".initcall6.init", align 4
@cros_ec_keyb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_keyb_probe, ptr @cros_ec_keyb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_keyb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_keyb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_keyb_driver_exit = internal global ptr @cros_ec_keyb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file296 = internal constant [54 x i8] c"cros_ec_keyb.file=drivers/input/keyboard/cros_ec_keyb\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [28 x i8] c"cros_ec_keyb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [53 x i8] c"cros_ec_keyb.description=ChromeOS EC keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [41 x i8] c"cros_ec_keyb.alias=platform:cros-ec-keyb\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-keyb\00", [19 x i8] zeroinitializer }, align 32
@cros_ec_keyb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-keyb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_keyb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @cros_ec_keyb_resume, ptr null, ptr @cros_ec_keyb_resume, ptr null, ptr @cros_ec_keyb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_keyb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot register matrix inputs: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros_ec_keyb_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/cros_ec_keyb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_keyb_probe._entry_ptr = internal global ptr @cros_ec_keyb_probe._entry, section ".printk_index", align 4
@cros_ec_keyb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot register non-matrix inputs: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cros_ec_keyb_probe._entry_ptr.8 = internal global ptr @cros_ec_keyb_probe._entry.6, section ".printk_index", align 4
@cros_ec_keyb_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @cros_ec_keyb_attr_is_visible, ptr null, ptr @cros_ec_keyb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cros_ec_keyb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create attributes. err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@cros_ec_keyb_probe._entry_ptr.11 = internal global ptr @cros_ec_keyb_probe._entry.9, section ".printk_index", align 4
@cros_ec_keyb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot register notifier: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cros_ec_keyb_probe._entry_ptr.14 = internal global ptr @cros_ec_keyb_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_ec\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"google,needs-ghost-filter\00", [38 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_matrix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot build key matrix\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cros_ec_keyb_register_matrix\00", [35 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_matrix._entry_ptr = internal global ptr @cros_ec_keyb_register_matrix._entry, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"function-row-physmap\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_matrix._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 599, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only support up to %d top row keys\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_matrix._entry_ptr.24 = internal global ptr @cros_ec_keyb_register_matrix._entry.21, section ".printk_index", align 4
@cros_ec_keyb_register_matrix._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.3, i32 611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot register input device\0A\00", [34 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_matrix._entry_ptr.27 = internal global ptr @cros_ec_keyb_register_matrix._entry.25, section ".printk_index", align 4
@cros_ec_keyb_compute_valid_keys.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros_ec_keyb\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cros_ec_keyb_compute_valid_keys\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"valid_keys[%02d] = 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input1\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros_ec_buttons\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_bs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot query switches\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cros_ec_keyb_register_bs\00", [39 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_bs._entry_ptr = internal global ptr @cros_ec_keyb_register_bs._entry, section ".printk_index", align 4
@cros_ec_keyb_register_bs._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.34, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cros_ec_keyb_register_bs._entry_ptr.36 = internal global ptr @cros_ec_keyb_register_bs._entry.35, section ".printk_index", align 4
@cros_ec_keyb_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 367, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Transfer error %d/%d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_keyb_info\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_keyb_info._entry_ptr = internal global ptr @cros_ec_keyb_info._entry, section ".printk_index", align 4
@cros_ec_keyb_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 371, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wrong size %d/%d: %d != %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@cros_ec_keyb_info._entry_ptr.41 = internal global ptr @cros_ec_keyb_info._entry.39, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cros_ec_keyb_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_function_row_physmap, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_function_row_physmap = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @function_row_physmap_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"function_row_physmap\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%02X\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cros_ec_keyb_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Discarded incomplete key matrix event.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_keyb_work\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_keyb_work._entry_ptr = internal global ptr @cros_ec_keyb_work._entry, section ".printk_index", align 4
@cros_ec_keyb_work.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysrq code from EC: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@cros_ec_keyb_process.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_ec_keyb_process\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ghosting found\0A\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_keyb_process.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"changed: [r%d c%d]: byte %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@cros_ec_keyb_has_ghosting.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cros_ec_keyb_has_ghosting\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ghost found at: B[%02d]:0x%02x & B[%02d]:0x%02x\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 236]
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"cros_ec_keyb_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 731, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 735, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"cros_ec_keyb_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 722, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"cros_ec_keyb_pm_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 729, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 683, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 689, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"cros_ec_keyb_attr_group\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 657, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 695, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 703, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 560, i32 41 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 568, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 578, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 583, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 595, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 598, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 611, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 315, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 479, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 487, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 509, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 515, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 366, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 369, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"cros_ec_keyb_attrs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 638, i32 26 }
@___asan_gen_.188 = private unnamed_addr constant [30 x i8] c"dev_attr_function_row_physmap\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 636, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 629, i32 7 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 629, i32 24 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 629, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 631, i32 51 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 255, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 269, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 179, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 191, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [41 x i8] c"../drivers/input/keyboard/cros_ec_keyb.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 149, i32 5 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_cros_ec_keyb_driver_exit, ptr @__initcall__kmod_cros_ec_keyb__295_741_cros_ec_keyb_driver_init6, ptr @cros_ec_keyb_driver_exit, ptr @cros_ec_keyb_info._entry, ptr @cros_ec_keyb_info._entry.39, ptr @cros_ec_keyb_info._entry_ptr, ptr @cros_ec_keyb_info._entry_ptr.41, ptr @cros_ec_keyb_probe._entry, ptr @cros_ec_keyb_probe._entry.12, ptr @cros_ec_keyb_probe._entry.6, ptr @cros_ec_keyb_probe._entry.9, ptr @cros_ec_keyb_probe._entry_ptr, ptr @cros_ec_keyb_probe._entry_ptr.11, ptr @cros_ec_keyb_probe._entry_ptr.14, ptr @cros_ec_keyb_probe._entry_ptr.8, ptr @cros_ec_keyb_register_bs._entry, ptr @cros_ec_keyb_register_bs._entry.35, ptr @cros_ec_keyb_register_bs._entry_ptr, ptr @cros_ec_keyb_register_bs._entry_ptr.36, ptr @cros_ec_keyb_register_matrix._entry, ptr @cros_ec_keyb_register_matrix._entry.21, ptr @cros_ec_keyb_register_matrix._entry.25, ptr @cros_ec_keyb_register_matrix._entry_ptr, ptr @cros_ec_keyb_register_matrix._entry_ptr.24, ptr @cros_ec_keyb_register_matrix._entry_ptr.27, ptr @cros_ec_keyb_work._entry, ptr @cros_ec_keyb_work._entry_ptr, ptr @cros_ec_keyb_driver, ptr @.str, ptr @cros_ec_keyb_of_match, ptr @cros_ec_keyb_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @cros_ec_keyb_attr_group, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @cros_ec_keyb_attrs, ptr @dev_attr_function_row_physmap, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_register_matrix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_register_matrix._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_register_matrix._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_register_bs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_register_bs._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_function_row_physmap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_keyb_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_keyb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_keyb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_keyb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %event_data.i = alloca %union.ec_response_get_next_data, align 4
  %key_pos.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ec7 = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %ec7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %ec7, align 4
  %dev8 = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev8, align 4
  %driver_data.i70 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i70 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i70, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_pos.i) #8
  %9 = ptrtoint ptr %key_pos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %key_pos.i, align 4, !annotation !131
  %cols.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 1
  %call.i71 = tail call i32 @matrix_keypad_parse_properties(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %cols.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cols.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %11, i32 noundef 3520) #8
  %valid_keys.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %valid_keys.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %valid_keys.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.end_crit_edge, label %if.end7.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cols.i, align 4
  %call.i121.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #8
  %old_kb_state.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %old_kb_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i121.i, ptr %old_kb_state.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i121.i, null
  br i1 %tobool11.not.i, label %if.end7.i.do.end_crit_edge, label %if.end13.i

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end13.i:                                       ; preds = %if.end7.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %call14.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %17) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.do.end_crit_edge, label %if.end17.i

if.end13.i.do.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end17.i:                                       ; preds = %if.end13.i
  %call18.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.do.end_crit_edge, label %if.end21.i

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end21.i:                                       ; preds = %if.end17.i
  %18 = ptrtoint ptr %call18.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.16, ptr %call18.i, align 8
  %phys22.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 1
  %19 = ptrtoint ptr %phys22.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14.i, ptr %phys22.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 5
  %20 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %21, 1048576
  store i32 %or.i.i, ptr %evbit.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 3
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 6, ptr %id.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %version.i, align 2
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %product.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent.i, align 8
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i122.i = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i122.i, null
  %ghost_filter.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 4
  %frombool.i = zext i1 %tobool.i.i to i8
  %28 = ptrtoint ptr %ghost_filter.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool.i, ptr %ghost_filter.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 4
  %31 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cols.i, align 4
  %call29.i = tail call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %30, i32 noundef %32, ptr noundef null, ptr noundef nonnull %call18.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %do.end.i

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %do.end

if.end32.i:                                       ; preds = %if.end21.i
  %33 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i, label %if.end32.i.get_count_order.exit.i_crit_edge, label %if.end.i.i

if.end32.i.get_count_order.exit.i_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_count_order.exit.i

if.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #8, !range !132
  %sub.i.i.i = sub nuw nsw i32 32, %35
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %get_count_order.exit.i

get_count_order.exit.i:                           ; preds = %if.end.i.i, %if.end32.i.get_count_order.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i.i, %if.end.i.i ], [ -1, %if.end32.i.get_count_order.exit.i_crit_edge ]
  %row_shift.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %row_shift.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i, ptr %row_shift.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call18.i, i32 noundef 4, i32 noundef 4) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call18.i, i32 0, i32 40, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %idev35.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %idev35.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call18.i, ptr %idev35.i, align 4
  tail call fastcc void @cros_ec_keyb_compute_valid_keys(ptr noundef nonnull %call.i) #8
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call38.i = tail call ptr @of_find_property(ptr noundef %40, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %call39.i = call ptr @of_prop_next_u32(ptr noundef %call38.i, ptr noundef null, ptr noundef nonnull %key_pos.i) #8
  %tobool40.not123.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not123.i, label %get_count_order.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

get_count_order.exit.i.for.end.i_crit_edge:       ; preds = %get_count_order.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %get_count_order.exit.i
  %function_row_physmap.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 12
  %num_function_row_keys.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %physmap.0125.i = phi ptr [ %function_row_physmap.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end45.i.for.body.i_crit_edge ]
  %p.0124.i = phi ptr [ %call39.i, %for.body.lr.ph.i ], [ %call50.i, %if.end45.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %num_function_row_keys.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_function_row_keys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %42)
  %cmp.i = icmp eq i32 %42, 15
  br i1 %cmp.i, label %do.end44.i, label %if.end45.i

do.end44.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 15) #11
  br label %for.end.i

if.end45.i:                                       ; preds = %for.body.i
  %43 = ptrtoint ptr %key_pos.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %key_pos.i, align 4
  %shr.i = lshr i32 %44, 24
  %shr46.i = lshr i32 %44, 16
  %and47.i = and i32 %shr46.i, 255
  %45 = ptrtoint ptr %row_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %row_shift.i, align 4
  %shl.i = shl i32 %shr.i, %46
  %add.i = add i32 %shl.i, %and47.i
  %conv.i = trunc i32 %add.i to i16
  %47 = ptrtoint ptr %physmap.0125.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %physmap.0125.i, align 2
  %incdec.ptr.i = getelementptr i16, ptr %physmap.0125.i, i32 1
  %48 = ptrtoint ptr %num_function_row_keys.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_function_row_keys.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %num_function_row_keys.i, align 4
  %call50.i = call ptr @of_prop_next_u32(ptr noundef %call38.i, ptr noundef nonnull %p.0124.i, ptr noundef nonnull %key_pos.i) #8
  %tobool40.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool40.not.i, label %if.end45.i.for.end.i_crit_edge, label %if.end45.i.for.body.i_crit_edge

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end45.i.for.end.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end45.i.for.end.i_crit_edge, %do.end44.i, %get_count_order.exit.i.for.end.i_crit_edge
  %50 = ptrtoint ptr %idev35.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %idev35.i, align 4
  %call52.i = call i32 @input_register_device(ptr noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end12, label %do.end57.i

do.end57.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %do.end

do.end:                                           ; preds = %do.end57.i, %do.end.i, %if.end17.i.do.end_crit_edge, %if.end13.i.do.end_crit_edge, %if.end7.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end6.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end17.i.do.end_crit_edge ], [ -12, %if.end13.i.do.end_crit_edge ], [ -12, %if.end7.i.do.end_crit_edge ], [ -12, %if.end.i.do.end_crit_edge ], [ %call.i71, %if.end6.do.end_crit_edge ], [ %call52.i, %do.end57.i ], [ %call29.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_pos.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end12:                                         ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_pos.i) #8
  %52 = ptrtoint ptr %ec7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ec7, align 4
  %54 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev8, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %event_data.i) #8
  %56 = call ptr @memset(ptr %event_data.i, i32 0, i32 13)
  %call.i74 = call fastcc i32 @cros_ec_keyb_info(ptr noundef %53, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %event_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i76, label %if.end12.do.end18_crit_edge

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end.i76:                                       ; preds = %if.end12
  %57 = ptrtoint ptr %event_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %event_data.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #8
  %call3.i = call fastcc i32 @cros_ec_keyb_info(ptr noundef %53, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %event_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i76.do.end18_crit_edge

if.end.i76.do.end18_crit_edge:                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end6.i:                                        ; preds = %if.end.i76
  %60 = ptrtoint ptr %event_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %event_data.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool8.not.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool9.not.i = icmp eq i32 %61, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 %tobool9.not.i, i1 false
  br i1 %or.cond.i, label %if.end6.i.if.end19_crit_edge, label %if.end11.i

if.end6.i.if.end19_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end11.i:                                       ; preds = %if.end6.i
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %53, align 8
  %call12.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %55, i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %64) #8
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.do.end18_crit_edge, label %if.end15.i

if.end11.i.do.end18_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = call ptr @devm_input_allocate_device(ptr noundef %55) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.do.end18_crit_edge, label %land.lhs.true25.i

if.end15.i.do.end18_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true25.i:                                ; preds = %if.end15.i
  %65 = ptrtoint ptr %call16.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.32, ptr %call16.i, align 8
  %phys20.i = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 1
  %66 = ptrtoint ptr %phys20.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call12.i, ptr %phys20.i, align 4
  %evbit.i77 = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 5
  %67 = ptrtoint ptr %evbit.i77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %evbit.i77, align 4
  %or.i.i78 = or i32 %68, 1048576
  store i32 %or.i.i78, ptr %evbit.i77, align 4
  %id.i79 = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 3
  %69 = ptrtoint ptr %id.i79 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 6, ptr %id.i79, align 4
  %version.i80 = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %version.i80 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %version.i80, align 2
  %product.i81 = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %product.i81 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %product.i81, align 4
  %parent.i82 = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 40, i32 1
  %72 = ptrtoint ptr %parent.i82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %55, ptr %parent.i82, align 8
  %driver_data.i.i.i83 = getelementptr inbounds %struct.input_dev, ptr %call16.i, i32 0, i32 40, i32 8
  %73 = ptrtoint ptr %driver_data.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %driver_data.i.i.i83, align 4
  %bs_idev.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 10
  %74 = ptrtoint ptr %bs_idev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call16.i, ptr %bs_idev.i, align 4
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true25.i.land.lhs.true25.1.i_crit_edge, label %if.then36.i

land.lhs.true25.i.land.lhs.true25.1.i_crit_edge:  ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true25.1.i

if.then36.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call16.i, i32 noundef 1, i32 noundef 116) #8
  br label %land.lhs.true25.1.i

land.lhs.true25.1.i:                              ; preds = %if.then36.i, %land.lhs.true25.i.land.lhs.true25.1.i_crit_edge
  %and.1.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool26.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool26.not.1.i, label %land.lhs.true25.1.i.land.lhs.true25.2.i_crit_edge, label %if.then36.1.i

land.lhs.true25.1.i.land.lhs.true25.2.i_crit_edge: ; preds = %land.lhs.true25.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true25.2.i

if.then36.1.i:                                    ; preds = %land.lhs.true25.1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call16.i, i32 noundef 1, i32 noundef 115) #8
  br label %land.lhs.true25.2.i

land.lhs.true25.2.i:                              ; preds = %if.then36.1.i, %land.lhs.true25.1.i.land.lhs.true25.2.i_crit_edge
  %and.2.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool26.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool26.not.2.i, label %land.lhs.true25.2.i.land.lhs.true30.3.i_crit_edge, label %if.then36.2.i

land.lhs.true25.2.i.land.lhs.true30.3.i_crit_edge: ; preds = %land.lhs.true25.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true30.3.i

if.then36.2.i:                                    ; preds = %land.lhs.true25.2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call16.i, i32 noundef 1, i32 noundef 114) #8
  br label %land.lhs.true30.3.i

land.lhs.true30.3.i:                              ; preds = %if.then36.2.i, %land.lhs.true25.2.i.land.lhs.true30.3.i_crit_edge
  %and34.3.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.3.i)
  %tobool35.not.3.i = icmp eq i32 %and34.3.i, 0
  br i1 %tobool35.not.3.i, label %land.lhs.true30.3.i.land.lhs.true30.4.i_crit_edge, label %if.then36.3.i

land.lhs.true30.3.i.land.lhs.true30.4.i_crit_edge: ; preds = %land.lhs.true30.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true30.4.i

if.then36.3.i:                                    ; preds = %land.lhs.true30.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call16.i, i32 noundef 5, i32 noundef 0) #8
  br label %land.lhs.true30.4.i

land.lhs.true30.4.i:                              ; preds = %if.then36.3.i, %land.lhs.true30.3.i.land.lhs.true30.4.i_crit_edge
  %and34.4.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.4.i)
  %tobool35.not.4.i = icmp eq i32 %and34.4.i, 0
  br i1 %tobool35.not.4.i, label %land.lhs.true30.4.i.if.end38.4.i_crit_edge, label %if.then36.4.i

land.lhs.true30.4.i.if.end38.4.i_crit_edge:       ; preds = %land.lhs.true30.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.4.i

if.then36.4.i:                                    ; preds = %land.lhs.true30.4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call16.i, i32 noundef 5, i32 noundef 1) #8
  br label %if.end38.4.i

if.end38.4.i:                                     ; preds = %if.then36.4.i, %land.lhs.true30.4.i.if.end38.4.i_crit_edge
  %call39.i84 = call fastcc i32 @cros_ec_keyb_query_switches(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i84)
  %tobool40.not.i85 = icmp eq i32 %call39.i84, 0
  br i1 %tobool40.not.i85, label %if.end42.i, label %if.end38.4.i.cleanup.sink.split.i_crit_edge

if.end38.4.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end38.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end42.i:                                       ; preds = %if.end38.4.i
  %75 = ptrtoint ptr %bs_idev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bs_idev.i, align 4
  %call44.i = call i32 @input_register_device(ptr noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end19_crit_edge, label %if.end42.i.cleanup.sink.split.i_crit_edge

if.end42.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end42.i.if.end19_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

cleanup.sink.split.i:                             ; preds = %if.end42.i.cleanup.sink.split.i_crit_edge, %if.end38.4.i.cleanup.sink.split.i_crit_edge
  %.str.26.sink.i = phi ptr [ @.str.33, %if.end38.4.i.cleanup.sink.split.i_crit_edge ], [ @.str.26, %if.end42.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call39.i84, %if.end38.4.i.cleanup.sink.split.i_crit_edge ], [ %call44.i, %if.end42.i.cleanup.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull %.str.26.sink.i) #11
  br label %do.end18

do.end18:                                         ; preds = %cleanup.sink.split.i, %if.end15.i.do.end18_crit_edge, %if.end11.i.do.end18_crit_edge, %if.end.i76.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %retval.0.i86.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -12, %if.end15.i.do.end18_crit_edge ], [ -12, %if.end11.i.do.end18_crit_edge ], [ %call3.i, %if.end.i76.do.end18_crit_edge ], [ %call.i74, %if.end12.do.end18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %event_data.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i86.ph) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end42.i.if.end19_crit_edge, %if.end6.i.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %event_data.i) #8
  %call20 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @cros_ec_keyb_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call20) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %notifier = getelementptr inbounds %struct.cros_ec_keyb, ptr %call.i, i32 0, i32 11
  %77 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @cros_ec_keyb_work, ptr %notifier, align 4
  %78 = ptrtoint ptr %ec7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ec7, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %79, i32 0, i32 22
  %call29 = call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call29) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev8, align 4
  %call37 = call i32 @device_init_wakeup(ptr noundef %81, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end34, %do.end25, %do.end18, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i86.ph, %do.end18 ], [ %call20, %do.end25 ], [ %call29, %do.end34 ], [ 0, %if.end35 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ec = getelementptr inbounds %struct.cros_ec_keyb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %notifier = getelementptr inbounds %struct.cros_ec_keyb, ptr %1, i32 0, i32 11
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %notifier) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_work(ptr nocapture noundef readonly %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queued_during_suspend)
  %tobool.not = icmp eq i32 %queued_during_suspend, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev = getelementptr i8, ptr %nb, i32 -16
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %device_may_wakeup.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ec = getelementptr i8, ptr %nb, i32 -12
  %5 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ec, align 4
  %event_data = getelementptr inbounds %struct.cros_ec_device, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %event_data, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 6, label %sw.bb11
    i8 3, label %if.end.sw.bb28_crit_edge
    i8 4, label %if.end.sw.bb28_crit_edge71
  ]

if.end.sw.bb28_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dev1 = getelementptr i8, ptr %nb, i32 -16
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %11, i32 noundef 0, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ec, align 4
  %event_size = getelementptr inbounds %struct.cros_ec_device, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event_size, align 8
  %cols = getelementptr i8, ptr %nb, i32 -40
  %16 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.47) #11
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.cros_ec_device, ptr %13, i32 0, i32 23, i32 1
  tail call fastcc void @cros_ec_keyb_process(ptr noundef %add.ptr, ptr noundef %data)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %dev12 = getelementptr i8, ptr %nb, i32 -16
  %20 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev12, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %21, i32 noundef 0, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ec, align 4
  %data15 = getelementptr inbounds %struct.cros_ec_device, ptr %23, i32 0, i32 23, i32 1
  %24 = ptrtoint ptr %data15 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %data15, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_keyb_work.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_keyb_work, %if.then23)) #8
          to label %do.end27 [label %if.then23], !srcloc !133

if.then23:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_keyb_work.__UNIQUE_ID_ddebug291, ptr noundef %28, ptr noundef nonnull @.str.49, i32 noundef %26) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %sw.bb11
  tail call void @handle_sysrq(i32 noundef %26) #8
  br label %cleanup

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge71
  %dev29 = getelementptr i8, ptr %nb, i32 -16
  %29 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev29, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %30, i32 noundef 0, i1 noundef zeroext false) #8
  %31 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ec, align 4
  %event_data31 = getelementptr inbounds %struct.cros_ec_device, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %event_data31 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %event_data31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp34 = icmp eq i8 %34, 3
  %data39 = getelementptr inbounds %struct.cros_ec_device, ptr %32, i32 0, i32 23, i32 1
  %35 = ptrtoint ptr %data39 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data39, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %bs_idev.i69 = getelementptr i8, ptr %nb, i32 -4
  %38 = ptrtoint ptr %bs_idev.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bs_idev.i69, align 4
  %40 = and i32 %37, 1
  br i1 %cmp34, label %cleanup.3.i, label %if.end.4.i

cleanup.3.i:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %39, i32 noundef 1, i32 noundef 116, i32 noundef %40) #8
  %41 = lshr i32 %37, 1
  %42 = and i32 %41, 1
  tail call void @input_event(ptr noundef %39, i32 noundef 1, i32 noundef 115, i32 noundef %42) #8
  %43 = lshr i32 %37, 2
  %44 = and i32 %43, 1
  tail call void @input_event(ptr noundef %39, i32 noundef 1, i32 noundef 114, i32 noundef %44) #8
  br label %cros_ec_keyb_report_bs.exit

if.end.4.i:                                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %xor.3.i = xor i32 %40, 1
  tail call void @input_event(ptr noundef %39, i32 noundef 5, i32 noundef 0, i32 noundef %xor.3.i) #8
  %45 = lshr i32 %37, 1
  %46 = and i32 %45, 1
  tail call void @input_event(ptr noundef %39, i32 noundef 5, i32 noundef 1, i32 noundef %46) #8
  br label %cros_ec_keyb_report_bs.exit

cros_ec_keyb_report_bs.exit:                      ; preds = %if.end.4.i, %cleanup.3.i
  tail call void @input_event(ptr noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %cros_ec_keyb_report_bs.exit, %do.end27, %if.end6, %do.end, %if.end.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %cros_ec_keyb_report_bs.exit ], [ 1, %do.end27 ], [ 1, %if.end6 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_ec_keyb_compute_valid_keys(ptr nocapture noundef readonly %ckdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %row_shift1 = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 2
  %0 = ptrtoint ptr %row_shift1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %row_shift1, align 4
  %idev = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 9
  %2 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idev, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %keycodesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keycodesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %for.cond.preheader, label %do.body4, !prof !134

for.cond.preheader:                               ; preds = %entry
  %cols = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 1
  %8 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1062.not = icmp eq i32 %9, 0
  br i1 %cmp1062.not, label %for.cond.preheader.for.end41_crit_edge, label %for.cond11.preheader.lr.ph

for.cond.preheader.for.end41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.cond11.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %valid_keys = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 5
  %dev = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 7
  br label %for.cond11.preheader

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/cros_ec_keyb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #8, !srcloc !135
  unreachable

for.cond11.preheader:                             ; preds = %for.inc39.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %col.063 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %inc40, %for.inc39.for.cond11.preheader_crit_edge ]
  %10 = ptrtoint ptr %ckdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ckdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1259.not = icmp eq i32 %11, 0
  br i1 %cmp1259.not, label %for.cond11.preheader.do.body24_crit_edge, label %for.cond11.preheader.for.body13_crit_edge

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.cond11.preheader.do.body24_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %row.060 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %shl = shl i32 %row.060, %1
  %add = add i32 %shl, %col.063
  %arrayidx = getelementptr i16, ptr %5, i32 %add
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %13, label %if.then18 [
    i16 0, label %for.body13.for.inc_crit_edge
    i16 236, label %for.body13.for.inc_crit_edge66
  ]

for.body13.for.inc_crit_edge66:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  %shl19 = shl nuw i32 1, %row.060
  %15 = ptrtoint ptr %valid_keys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %valid_keys, align 4
  %arrayidx20 = getelementptr i8, ptr %16, i32 %col.063
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %19 = trunc i32 %shl19 to i8
  %conv22 = or i8 %18, %19
  store i8 %conv22, ptr %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body13.for.inc_crit_edge, %for.body13.for.inc_crit_edge66
  %inc = add nuw i32 %row.060, 1
  %20 = ptrtoint ptr %ckdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ckdev, align 4
  %cmp12 = icmp ult i32 %inc, %21
  br i1 %cmp12, label %for.inc.for.body13_crit_edge, label %for.inc.do.body24_crit_edge

for.inc.do.body24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

do.body24:                                        ; preds = %for.inc.do.body24_crit_edge, %for.cond11.preheader.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_keyb_compute_valid_keys.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_keyb_compute_valid_keys, %if.then32)) #8
          to label %for.inc39 [label %if.then32], !srcloc !133

if.then32:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %valid_keys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %valid_keys, align 4
  %arrayidx34 = getelementptr i8, ptr %25, i32 %col.063
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_keyb_compute_valid_keys.__UNIQUE_ID_ddebug292, ptr noundef %23, ptr noundef nonnull @.str.30, i32 noundef %col.063, i32 noundef %conv35) #8
  br label %for.inc39

for.inc39:                                        ; preds = %if.then32, %do.body24
  %inc40 = add nuw i32 %col.063, 1
  %28 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cols, align 4
  %cmp10 = icmp ult i32 %inc40, %29
  br i1 %cmp10, label %for.inc39.for.cond11.preheader_crit_edge, label %for.inc39.for.end41_crit_edge

for.inc39.for.end41_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.inc39.for.cond11.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond11.preheader

for.end41:                                        ; preds = %for.inc39.for.end41_crit_edge, %for.cond.preheader.for.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_ec_keyb_info(ptr noundef %ec_dev, i32 noundef %info_type, i32 noundef %event_type, ptr nocapture noundef writeonly %result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 97, ptr %command, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call7.i.i, align 8
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %insize, align 4
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %conv = trunc i32 %info_type to i8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %data, align 4
  %conv2 = trunc i32 %event_type to i8
  %event_type3 = getelementptr inbounds %struct.ec_params_mkbp_info, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %event_type3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %event_type3, align 1
  %call4 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %ec_dev, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -92, i32 %call4)
  %cmp5 = icmp eq i32 %call4, -92
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %result, align 1
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp8 = icmp slt i32 %call4, 0
  br i1 %cmp8, label %do.end, label %if.else11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.37, i32 noundef %info_type, i32 noundef %event_type, i32 noundef %call4) #11
  br label %if.end24

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp12.not = icmp eq i32 %call4, 4
  br i1 %cmp12.not, label %if.else19, label %do.end17

do.end17:                                         ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef %info_type, i32 noundef %event_type, i32 noundef %call4, i32 noundef 4) #11
  br label %if.end24

if.else19:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %14 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %result, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else19, %do.end17, %do.end, %if.then7
  %ret.0 = phi i32 [ 0, %if.then7 ], [ %call4, %do.end ], [ -71, %do.end17 ], [ 0, %if.else19 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_ec_keyb_query_switches(ptr nocapture noundef readonly %ckdev) unnamed_addr #2 align 64 {
entry:
  %event_data = alloca %union.ec_response_get_next_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ec = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 8
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %event_data) #8
  %2 = call ptr @memset(ptr %event_data, i32 0, i32 13)
  %call = call fastcc i32 @cros_ec_keyb_info(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %event_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %event_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_data, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %bs_idev.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 10
  %6 = ptrtoint ptr %bs_idev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bs_idev.i, align 4
  %8 = and i32 %5, 1
  %xor.3.i = xor i32 %8, 1
  tail call void @input_event(ptr noundef %7, i32 noundef 5, i32 noundef 0, i32 noundef %xor.3.i) #8
  %9 = lshr i32 %5, 1
  %10 = and i32 %9, 1
  tail call void @input_event(ptr noundef %7, i32 noundef 5, i32 noundef 1, i32 noundef %10) #8
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %event_data) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @cros_ec_keyb_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_function_row_physmap
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_function_row_keys = getelementptr inbounds %struct.cros_ec_keyb, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %num_function_row_keys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_function_row_keys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @function_row_physmap_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %function_row_physmap = getelementptr inbounds %struct.cros_ec_keyb, ptr %1, i32 0, i32 12
  %num_function_row_keys = getelementptr inbounds %struct.cros_ec_keyb, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %num_function_row_keys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_function_row_keys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %size.020 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %size.020
  %sub = sub i32 4096, %size.020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.020)
  %tobool.not = icmp eq i32 %size.020, 0
  %cond = select i1 %tobool.not, ptr @.str.45, ptr @.str.44
  %arrayidx = getelementptr i16, ptr %function_row_physmap, i32 %i.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, i32 noundef %conv) #8
  %add = add i32 %call1, %size.020
  %inc = add nuw i32 %i.021, 1
  %6 = ptrtoint ptr %num_function_row_keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_function_row_keys, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool2.not = icmp eq i32 %add, 0
  br i1 %tobool2.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %add
  %sub4 = sub i32 4096, %add
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.46) #8
  %add6 = add i32 %call5, %add
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %size.1 = phi i32 [ %add6, %if.then ], [ 0, %for.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %size.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_ec_keyb_process(ptr nocapture noundef readonly %ckdev, ptr nocapture noundef readonly %kb_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idev1 = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 9
  %0 = ptrtoint ptr %idev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev1, align 4
  %ghost_filter = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 4
  %2 = ptrtoint ptr %ghost_filter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ghost_filter, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 7
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %valid_keys2.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 5
  %6 = ptrtoint ptr %valid_keys2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %valid_keys2.i, align 4
  %cols.i = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 1
  %8 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp152.not.i = icmp eq i32 %9, 0
  br i1 %cmp152.not.i, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %10 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cols.i, align 4
  %cmp.i = icmp ult i32 %add.i, %11
  br i1 %cmp.i, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.if.end7_crit_edge

for.cond.loopexit.i.if.end7_crit_edge:            ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %col1.0153.i = phi i32 [ %add.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %kb_state, i32 %col1.0153.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %7, i32 %col1.0153.i
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.i, align 1
  %and137.i = and i8 %15, %13
  %add.i = add nuw i32 %col1.0153.i, 1
  %16 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp7150.i = icmp ult i32 %add.i, %17
  br i1 %cmp7150.i, label %for.body.i.for.body9.i_crit_edge, label %for.body.i.for.cond.loopexit.i_crit_edge

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit.i

for.body.i.for.body9.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %for.body.i.for.body9.i_crit_edge
  %col2.0151.i = phi i32 [ %inc.i, %for.inc.i.for.body9.i_crit_edge ], [ %add.i, %for.body.i.for.body9.i_crit_edge ]
  %arrayidx10.i = getelementptr i8, ptr %kb_state, i32 %col2.0151.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %7, i32 %col2.0151.i
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12.i, align 1
  %and14138.i = and i8 %21, %19
  %and15139.i = and i8 %and14138.i, %and137.i
  %and15.i = zext i8 %and15139.i to i32
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and15.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp84.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp84.i, label %do.body.i, label %for.inc.i

do.body.i:                                        ; preds = %for.body9.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_keyb_has_ghosting.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_keyb_process, %if.then93.i)) #8
          to label %do.body [label %if.then93.i], !srcloc !133

if.then93.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %and14.le.i = zext i8 %and14138.i to i32
  %and.le.i = zext i8 %and137.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_keyb_has_ghosting.__UNIQUE_ID_ddebug288, ptr noundef %5, ptr noundef nonnull @.str.54, i32 noundef %col1.0153.i, i32 noundef %and.le.i, i32 noundef %col2.0151.i, i32 noundef %and14.le.i) #8
  br label %do.body

for.inc.i:                                        ; preds = %for.body9.i
  %inc.i = add nuw i32 %col2.0151.i, 1
  %22 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cols.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %23
  br i1 %cmp7.i, label %for.inc.i.for.body9.i_crit_edge, label %for.inc.i.for.cond.loopexit.i_crit_edge

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit.i

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

do.body:                                          ; preds = %if.then93.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_keyb_process.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_keyb_process, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !133

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_keyb_process.__UNIQUE_ID_ddebug289, ptr noundef %25, ptr noundef nonnull @.str.51) #8
  br label %cleanup

if.end7:                                          ; preds = %for.cond.loopexit.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %cols = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 1
  %26 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp15.not = icmp eq i32 %27, 0
  br i1 %cmp15.not, label %if.end7.for.end44_crit_edge, label %for.cond8.preheader.lr.ph

if.end7.for.end44_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.cond8.preheader.lr.ph:                        ; preds = %if.end7
  %row_shift = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 2
  %keycode = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %old_kb_state = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 6
  %dev32 = getelementptr inbounds %struct.cros_ec_keyb, ptr %ckdev, i32 0, i32 7
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.end.for.cond8.preheader_crit_edge, %for.cond8.preheader.lr.ph
  %col.016 = phi i32 [ 0, %for.cond8.preheader.lr.ph ], [ %inc43, %for.end.for.cond8.preheader_crit_edge ]
  %28 = ptrtoint ptr %ckdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ckdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp911.not = icmp eq i32 %29, 0
  br i1 %cmp911.not, label %for.cond8.preheader.for.end_crit_edge, label %for.body10.lr.ph

for.cond8.preheader.for.end_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %arrayidx = getelementptr i8, ptr %kb_state, i32 %col.016
  br label %for.body10

for.body10:                                       ; preds = %if.end38.for.body10_crit_edge, %for.body10.lr.ph
  %row.012 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %if.end38.for.body10_crit_edge ]
  %30 = ptrtoint ptr %row_shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %row_shift, align 4
  %shl = shl i32 %row.012, %31
  %add = add i32 %shl, %col.016
  %32 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %keycode, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %35 to i32
  %shl11 = shl nuw i32 1, %row.012
  %and = and i32 %shl11, %conv
  %36 = ptrtoint ptr %old_kb_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %old_kb_state, align 4
  %arrayidx12 = getelementptr i8, ptr %37, i32 %col.016
  %38 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %39 to i32
  %and15 = and i32 %shl11, %conv13
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and15)
  %cmp16.not = icmp eq i32 %and, %and15
  br i1 %cmp16.not, label %for.body10.if.end38_crit_edge, label %do.body19

for.body10.if.end38_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.body19:                                        ; preds = %for.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_keyb_process.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_keyb_process, %if.then31)) #8
          to label %do.end35 [label %if.then31], !srcloc !133

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_keyb_process.__UNIQUE_ID_ddebug290, ptr noundef %41, ptr noundef nonnull @.str.52, i32 noundef %row.012, i32 noundef %col.016, i32 noundef %and) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body19
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #8
  %arrayidx36 = getelementptr i16, ptr %33, i32 %add
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.i = icmp ne i32 %and, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv37, i32 noundef %lnot.ext.i) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %for.body10.if.end38_crit_edge
  %inc = add nuw i32 %row.012, 1
  %44 = ptrtoint ptr %ckdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ckdev, align 4
  %cmp9 = icmp ult i32 %inc, %45
  br i1 %cmp9, label %if.end38.for.body10_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end38.for.body10_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %for.cond8.preheader.for.end_crit_edge
  %arrayidx39 = getelementptr i8, ptr %kb_state, i32 %col.016
  %46 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx39, align 1
  %48 = ptrtoint ptr %old_kb_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %old_kb_state, align 4
  %arrayidx41 = getelementptr i8, ptr %49, i32 %col.016
  %50 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %arrayidx41, align 1
  %inc43 = add nuw i32 %col.016, 1
  %51 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cols, align 4
  %cmp = icmp ult i32 %inc43, %52
  br i1 %cmp, label %for.end.for.cond8.preheader_crit_edge, label %for.end.for.end44_crit_edge

for.end.for.end44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.end.for.cond8.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.preheader

for.end44:                                        ; preds = %for.end.for.end44_crit_edge, %if.end7.for.end44_crit_edge
  %53 = ptrtoint ptr %idev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %idev1, align 4
  tail call void @input_event(ptr noundef %54, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bs_idev = getelementptr inbounds %struct.cros_ec_keyb, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bs_idev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bs_idev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @cros_ec_keyb_query_switches(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_cros_ec_keyb__295_741_cros_ec_keyb_driver_init6, !1, !"__initcall__kmod_cros_ec_keyb__295_741_cros_ec_keyb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 741, i32 1}
!2 = !{ptr @__exitcall_cros_ec_keyb_driver_exit, !1, !"__exitcall_cros_ec_keyb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file296, !4, !"__UNIQUE_ID_file296", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 743, i32 1}
!5 = !{ptr @__UNIQUE_ID_license297, !4, !"__UNIQUE_ID_license297", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 744, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias299, !9, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 745, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 735, i32 11}
!12 = !{ptr @cros_ec_keyb_driver, !13, !"cros_ec_keyb_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 731, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 683, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_ec_keyb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_ec_keyb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 689, i32 3}
!24 = !{ptr @cros_ec_keyb_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cros_ec_keyb_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 695, i32 3}
!28 = !{ptr @cros_ec_keyb_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cros_ec_keyb_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 703, i32 3}
!32 = !{ptr @cros_ec_keyb_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cros_ec_keyb_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 560, i32 41}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 568, i32 15}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 578, i32 6}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 583, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cros_ec_keyb_register_matrix._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cros_ec_keyb_register_matrix._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 595, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 598, i32 4}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cros_ec_keyb_register_matrix._entry.21, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cros_ec_keyb_register_matrix._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 611, i32 3}
!54 = !{ptr @cros_ec_keyb_register_matrix._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cros_ec_keyb_register_matrix._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 315, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cros_ec_keyb_compute_valid_keys.__UNIQUE_ID_ddebug292, !57, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 479, i32 41}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 487, i32 15}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 509, i32 3}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cros_ec_keyb_register_bs._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cros_ec_keyb_register_bs._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @cros_ec_keyb_register_bs._entry.35, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 515, i32 3}
!72 = !{ptr @cros_ec_keyb_register_bs._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 366, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cros_ec_keyb_info._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @cros_ec_keyb_info._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 369, i32 3}
!80 = !{ptr @cros_ec_keyb_info._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cros_ec_keyb_info._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"cros_ec_keyb_bs", i1 false, i1 false}
!83 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 89, i32 36}
!84 = !{ptr @cros_ec_keyb_attr_group, !85, !"cros_ec_keyb_attr_group", i1 false, i1 false}
!85 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 657, i32 37}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 636, i32 8}
!88 = !{ptr @dev_attr_function_row_physmap, !87, !"dev_attr_function_row_physmap", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 629, i32 7}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 629, i32 24}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 629, i32 30}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 631, i32 51}
!97 = !{ptr @cros_ec_keyb_attrs, !98, !"cros_ec_keyb_attrs", i1 false, i1 false}
!98 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 638, i32 26}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 255, i32 4}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cros_ec_keyb_work._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @cros_ec_keyb_work._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 269, i32 3}
!106 = !{ptr @cros_ec_keyb_work.__UNIQUE_ID_ddebug291, !105, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 179, i32 3}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cros_ec_keyb_process.__UNIQUE_ID_ddebug289, !108, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 191, i32 5}
!113 = !{ptr @cros_ec_keyb_process.__UNIQUE_ID_ddebug290, !112, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 149, i32 5}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cros_ec_keyb_has_ghosting.__UNIQUE_ID_ddebug288, !115, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!118 = !{ptr @cros_ec_keyb_of_match, !119, !"cros_ec_keyb_of_match", i1 false, i1 false}
!119 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 722, i32 34}
!120 = !{ptr @cros_ec_keyb_pm_ops, !121, !"cros_ec_keyb_pm_ops", i1 false, i1 false}
!121 = !{!"../drivers/input/keyboard/cros_ec_keyb.c", i32 729, i32 8}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i32 0, i32 33}
!133 = !{i64 2148971282, i64 2148971287, i64 2148971300, i64 2148971344, i64 2148971378, i64 2148971399}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2155837993, i64 2155838495, i64 2155838030, i64 2155838086, i64 2155838120, i64 2155838144, i64 2155838185, i64 2155838206, i64 2155838234, i64 2155838268}
!136 = !{i8 0, i8 2}
