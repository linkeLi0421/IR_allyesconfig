; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/dprc-driver.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/dprc-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dprc_remove_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_dprc_remove_devices\09\09\09\09"
module asm "\09.long\09__crc_dprc_remove_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dprc_remove_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22dprc_remove_devices\22\09\09\09\09\09"
module asm "__kstrtabns_dprc_remove_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dprc_scan_container\22, \22a\22\09"
module asm "\09.weak\09__crc_dprc_scan_container\09\09\09\09"
module asm "\09.long\09__crc_dprc_scan_container\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dprc_scan_container:\09\09\09\09\09"
module asm "\09.asciz \09\22dprc_scan_container\22\09\09\09\09\09"
module asm "__kstrtabns_dprc_scan_container:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dprc_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_dprc_setup\09\09\09\09"
module asm "\09.long\09__crc_dprc_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dprc_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22dprc_setup\22\09\09\09\09\09"
module asm "__kstrtabns_dprc_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dprc_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_dprc_cleanup\09\09\09\09"
module asm "\09.long\09__crc_dprc_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dprc_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22dprc_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_dprc_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsl_mc_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_device_id = type { i16, [16 x i8] }
%struct.fsl_mc_child_objs = type { i32, ptr }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
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
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.fsl_mc_bus = type { %struct.fsl_mc_device, [4 x %struct.fsl_mc_resource_pool], ptr, %struct.mutex, %struct.dprc_attributes, %struct.fsl_mc_uapi, i32 }
%struct.fsl_mc_resource_pool = type { i32, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.dprc_attributes = type { i32, i32, i32, i64 }
%struct.fsl_mc_uapi = type { %struct.miscdevice, ptr, %struct.mutex, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_dprc_remove_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_dprc_remove_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_dprc_remove_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dprc_remove_devices to i32), ptr @__kstrtab_dprc_remove_devices, ptr @__kstrtabns_dprc_remove_devices }, section "___ksymtab_gpl+dprc_remove_devices", align 4
@dprc_scan_objects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dprc_get_obj_count() failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dprc_scan_objects\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/bus/fsl-mc/dprc-driver.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dprc_scan_objects._entry_ptr = internal global ptr @dprc_scan_objects._entry, section ".printk_index", align 4
@dprc_scan_objects._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dprc_get_obj(i=%d) failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dprc_scan_objects._entry_ptr.7 = internal global ptr @dprc_scan_objects._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpseci\00", [25 x i8] zeroinitializer }, align 32
@dprc_scan_objects.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mc_bus_driver\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Discovered object: type %s, id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dprc_scan_objects._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d out of %d devices could not be retrieved\0A\00", [51 x i8] zeroinitializer }, align 32
@dprc_scan_objects._entry_ptr.13 = internal global ptr @dprc_scan_objects._entry.11, section ".printk_index", align 4
@dprc_scan_objects._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 326, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IRQs needed (%u) exceed IRQs preallocated (%u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dprc_scan_objects._entry_ptr.17 = internal global ptr @dprc_scan_objects._entry.14, section ".printk_index", align 4
@__kstrtab_dprc_scan_container = external dso_local constant [0 x i8], align 1
@__kstrtabns_dprc_scan_container = external dso_local constant [0 x i8], align 1
@__ksymtab_dprc_scan_container = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dprc_scan_container to i32), ptr @__kstrtab_dprc_scan_container, ptr @__kstrtabns_dprc_scan_container }, section "___ksymtab_gpl+dprc_scan_container", align 4
@disable_dprc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Disabling DPRC IRQ failed: dprc_set_irq_enable() failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable_dprc_irq\00", [47 x i8] zeroinitializer }, align 32
@disable_dprc_irq._entry_ptr = internal global ptr @disable_dprc_irq._entry, section ".printk_index", align 4
@disable_dprc_irq._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Disabling DPRC IRQ failed: dprc_set_irq_mask() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@disable_dprc_irq._entry_ptr.22 = internal global ptr @disable_dprc_irq._entry.20, section ".printk_index", align 4
@disable_dprc_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Disabling DPRC IRQ failed: dprc_clear_irq_status() failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@disable_dprc_irq._entry_ptr.25 = internal global ptr @disable_dprc_irq._entry.23, section ".printk_index", align 4
@enable_dprc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Enabling DPRC IRQ failed: dprc_set_irq_mask() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable_dprc_irq\00", [16 x i8] zeroinitializer }, align 32
@enable_dprc_irq._entry_ptr = internal global ptr @enable_dprc_irq._entry, section ".printk_index", align 4
@enable_dprc_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Enabling DPRC IRQ failed: dprc_set_irq_enable() failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@enable_dprc_irq._entry_ptr.30 = internal global ptr @enable_dprc_irq._entry.28, section ".printk_index", align 4
@fsl_mc_bus_type = external dso_local global %struct.bus_type, align 4
@dprc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 664, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"WARNING: MC bus without interrupt support\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dprc_setup\00", [21 x i8] zeroinitializer }, align 32
@dprc_setup._entry_ptr = internal global ptr @dprc_setup._entry, section ".printk_index", align 4
@dprc_setup._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 673, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dprc_open() failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dprc_setup._entry_ptr.35 = internal global ptr @dprc_setup._entry.33, section ".printk_index", align 4
@dprc_setup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 681, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dprc_get_attributes() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dprc_setup._entry_ptr.38 = internal global ptr @dprc_setup._entry.36, section ".printk_index", align 4
@dprc_setup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 690, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dprc_get_api_version() failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dprc_setup._entry_ptr.41 = internal global ptr @dprc_setup._entry.39, section ".printk_index", align 4
@dprc_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 697, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ERROR: DPRC version %d.%d not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@dprc_setup._entry_ptr.44 = internal global ptr @dprc_setup._entry.42, section ".printk_index", align 4
@__kstrtab_dprc_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dprc_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_dprc_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dprc_setup to i32), ptr @__kstrtab_dprc_setup, ptr @__kstrtabns_dprc_setup }, section "___ksymtab_gpl+dprc_setup", align 4
@dprc_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 810, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mc_io is NULL, tear down cannot be performed in firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dprc_cleanup\00", [19 x i8] zeroinitializer }, align 32
@dprc_cleanup._entry_ptr = internal global ptr @dprc_cleanup._entry, section ".printk_index", align 4
@dprc_cleanup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dprc_close() failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dprc_cleanup._entry_ptr.49 = internal global ptr @dprc_cleanup._entry.47, section ".printk_index", align 4
@__kstrtab_dprc_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dprc_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_dprc_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dprc_cleanup to i32), ptr @__kstrtab_dprc_cleanup, ptr @__kstrtabns_dprc_cleanup }, section "___ksymtab_gpl+dprc_cleanup", align 4
@dprc_driver = internal global { %struct.fsl_mc_driver, [60 x i8] } { %struct.fsl_mc_driver { %struct.device_driver { ptr @.str.55, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @match_id_table, ptr @dprc_probe, ptr @dprc_remove, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpmcp\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpcon\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpbp\00", [27 x i8] zeroinitializer }, align 32
@check_plugged_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_attach() failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"check_plugged_state_change\00", [37 x i8] zeroinitializer }, align 32
@check_plugged_state_change._entry_ptr = internal global ptr @check_plugged_state_change._entry, section ".printk_index", align 4
@fsl_mc_bus_dprc_type = external dso_local global %struct.device_type, align 4
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_mc_dprc\00", [20 x i8] zeroinitializer }, align 32
@match_id_table = internal constant { [2 x %struct.fsl_mc_device_id], [60 x i8] } { [2 x %struct.fsl_mc_device_id] [%struct.fsl_mc_device_id { i16 6487, [16 x i8] c"dprc\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_mc_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@dprc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 755, ptr @.str.58, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DPRC device bound to driver\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dprc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dprc_probe._entry_ptr = internal global ptr @dprc_probe._entry, section ".printk_index", align 4
@register_dprc_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"devm_request_threaded_irq() failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_dprc_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@register_dprc_irq_handler._entry_ptr = internal global ptr @register_dprc_irq_handler._entry, section ".printk_index", align 4
@dprc_irq0_handler_thread.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dprc_irq0_handler_thread\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DPRC IRQ %d triggered on CPU %u\0A\00", [63 x i8] zeroinitializer }, align 32
@dprc_irq0_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dprc_get_irq_status() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dprc_irq0_handler_thread._entry_ptr = internal global ptr @dprc_irq0_handler_thread._entry, section ".printk_index", align 4
@dprc_irq0_handler_thread._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dprc_clear_irq_status() failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dprc_irq0_handler_thread._entry_ptr.66 = internal global ptr @dprc_irq0_handler_thread._entry.64, section ".printk_index", align 4
@dprc_irq0_handler_thread._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.61, ptr @.str.2, i32 448, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dprc_scan_objects() failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dprc_irq0_handler_thread._entry_ptr.69 = internal global ptr @dprc_irq0_handler_thread._entry.67, section ".printk_index", align 4
@dprc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 856, ptr @.str.58, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DPRC device unbound from driver\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dprc_remove\00", [20 x i8] zeroinitializer }, align 32
@dprc_remove._entry_ptr = internal global ptr @dprc_remove._entry, section ".printk_index", align 4
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 255, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 283, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 300, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 306, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 312, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 324, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 474, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 485, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 496, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 551, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 563, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 663, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 673, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 680, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 689, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 695, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 810, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 816, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [12 x i8] c"dprc_driver\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 867, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 35, i32 24 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 36, i32 24 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 37, i32 24 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 153, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 869, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"match_id_table\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 860, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 755, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 531, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 405, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 419, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 427, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 447, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [36 x i8] c"../drivers/bus/fsl-mc/dprc-driver.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 856, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__ksymtab_dprc_cleanup, ptr @__ksymtab_dprc_remove_devices, ptr @__ksymtab_dprc_scan_container, ptr @__ksymtab_dprc_setup, ptr @check_plugged_state_change._entry, ptr @check_plugged_state_change._entry_ptr, ptr @disable_dprc_irq._entry, ptr @disable_dprc_irq._entry.20, ptr @disable_dprc_irq._entry.23, ptr @disable_dprc_irq._entry_ptr, ptr @disable_dprc_irq._entry_ptr.22, ptr @disable_dprc_irq._entry_ptr.25, ptr @dprc_cleanup._entry, ptr @dprc_cleanup._entry.47, ptr @dprc_cleanup._entry_ptr, ptr @dprc_cleanup._entry_ptr.49, ptr @dprc_irq0_handler_thread._entry, ptr @dprc_irq0_handler_thread._entry.64, ptr @dprc_irq0_handler_thread._entry.67, ptr @dprc_irq0_handler_thread._entry_ptr, ptr @dprc_irq0_handler_thread._entry_ptr.66, ptr @dprc_irq0_handler_thread._entry_ptr.69, ptr @dprc_probe._entry, ptr @dprc_probe._entry_ptr, ptr @dprc_remove._entry, ptr @dprc_remove._entry_ptr, ptr @dprc_scan_objects._entry, ptr @dprc_scan_objects._entry.11, ptr @dprc_scan_objects._entry.14, ptr @dprc_scan_objects._entry.5, ptr @dprc_scan_objects._entry_ptr, ptr @dprc_scan_objects._entry_ptr.13, ptr @dprc_scan_objects._entry_ptr.17, ptr @dprc_scan_objects._entry_ptr.7, ptr @dprc_setup._entry, ptr @dprc_setup._entry.33, ptr @dprc_setup._entry.36, ptr @dprc_setup._entry.39, ptr @dprc_setup._entry.42, ptr @dprc_setup._entry_ptr, ptr @dprc_setup._entry_ptr.35, ptr @dprc_setup._entry_ptr.38, ptr @dprc_setup._entry_ptr.41, ptr @dprc_setup._entry_ptr.44, ptr @enable_dprc_irq._entry, ptr @enable_dprc_irq._entry.28, ptr @enable_dprc_irq._entry_ptr, ptr @enable_dprc_irq._entry_ptr.30, ptr @register_dprc_irq_handler._entry, ptr @register_dprc_irq_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @dprc_driver, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @match_id_table, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_scan_objects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_scan_objects._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_scan_objects._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_scan_objects._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_dprc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_dprc_irq._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_dprc_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_dprc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_dprc_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_setup._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_setup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_setup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_cleanup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_plugged_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_id_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dprc_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_irq0_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_irq0_handler_thread._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_irq0_handler_thread._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dprc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dprc_remove_devices(ptr noundef %mc_bus_dev, ptr noundef %obj_desc_array, i32 noundef %num_child_objects_in_mc) #0 align 64 {
entry:
  %objs = alloca %struct.fsl_mc_child_objs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_child_objects_in_mc)
  %cmp.not = icmp eq i32 %num_child_objects_in_mc, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objs) #11
  %0 = getelementptr inbounds %struct.fsl_mc_child_objs, ptr %objs, i32 0, i32 1
  %1 = ptrtoint ptr %objs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %num_child_objects_in_mc, ptr %objs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %obj_desc_array, ptr %0, align 4
  %call = call i32 @device_for_each_child(ptr noundef %mc_bus_dev, ptr noundef nonnull %objs, ptr noundef nonnull @__fsl_mc_device_remove_if_not_in_mc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objs) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @device_for_each_child(ptr noundef %mc_bus_dev, ptr noundef null, ptr noundef nonnull @__fsl_mc_device_remove) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fsl_mc_device_remove_if_not_in_mc(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_desc1.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19 = icmp sgt i32 %1, 0
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %child_array = getelementptr inbounds %struct.fsl_mc_child_objs, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %child_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child_array, align 4
  %id.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_mc_obj_desc, ptr %3, i32 %i.020
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %char0 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp1.not = icmp eq i8 %char0, 0
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 8
  %id2.i = getelementptr %struct.fsl_mc_obj_desc, ptr %3, i32 %i.020, i32 1
  %7 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp eq i32 %6, %8
  br i1 %cmp.i, label %fsl_mc_device_match.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

fsl_mc_device_match.exit:                         ; preds = %land.lhs.true
  %call.i = tail call i32 @strcmp(ptr noundef %obj_desc1.i, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp eq i32 %call.i, 0
  br i1 %cmp6.i, label %fsl_mc_device_match.exit.for.end_crit_edge, label %fsl_mc_device_match.exit.for.inc_crit_edge

fsl_mc_device_match.exit.for.inc_crit_edge:       ; preds = %fsl_mc_device_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

fsl_mc_device_match.exit.for.end_crit_edge:       ; preds = %fsl_mc_device_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %fsl_mc_device_match.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.if.then5_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.then5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

for.end:                                          ; preds = %fsl_mc_device_match.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.020, %fsl_mc_device_match.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp4 = icmp eq i32 %i.0.lcssa, %1
  br i1 %cmp4, label %for.end.if.then5_crit_edge, label %for.end.if.end6_crit_edge

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

for.end.if.then5_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %for.end.if.then5_crit_edge, %for.inc.if.then5_crit_edge
  tail call void @fsl_mc_device_remove(ptr noundef %dev) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fsl_mc_device_remove(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fsl_mc_device_remove(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsl_mc_device_lookup(ptr noundef %obj_desc, ptr noundef %mc_bus_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_find_child(ptr noundef %mc_bus_dev, ptr noundef %obj_desc, ptr noundef nonnull @__fsl_mc_device_match) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__fsl_mc_device_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  %id2.i = getelementptr inbounds %struct.fsl_mc_obj_desc, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %land.rhs.i, label %entry.fsl_mc_device_match.exit_crit_edge

entry.fsl_mc_device_match.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_mc_device_match.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %obj_desc1.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 6
  %call.i = tail call i32 @strcmp(ptr noundef %obj_desc1.i, ptr noundef %data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp eq i32 %call.i, 0
  %phi.cast = zext i1 %cmp6.i to i32
  br label %fsl_mc_device_match.exit

fsl_mc_device_match.exit:                         ; preds = %land.rhs.i, %entry.fsl_mc_device_match.exit_crit_edge
  %4 = phi i32 [ 0, %entry.fsl_mc_device_match.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dprc_scan_objects(ptr noundef %mc_bus_dev, i1 noundef zeroext %alloc_interrupts) local_unnamed_addr #0 align 64 {
entry:
  %objs.i = alloca %struct.fsl_mc_child_objs, align 4
  %num_child_objects = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_child_objects) #11
  %0 = ptrtoint ptr %num_child_objects to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_child_objects, align 4, !annotation !146
  %irq_count1 = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_bus_dev, i32 0, i32 6, i32 5
  %1 = ptrtoint ptr %irq_count1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %irq_count1, align 2
  %conv = zext i8 %2 to i32
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_bus_dev, i32 0, i32 5
  %3 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_bus_dev, i32 0, i32 4
  %5 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mc_handle, align 8
  %call = call i32 @dprc_get_obj_count(ptr noundef %4, i32 noundef 0, i16 noundef zeroext %6, ptr noundef nonnull %num_child_objects) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_bus_dev, ptr noundef nonnull @.str, i32 noundef %call) #15
  br label %cleanup94

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %num_child_objects to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_child_objects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.not = icmp eq i32 %8, 0
  br i1 %cmp3.not, label %if.end.if.end65_crit_edge, label %if.then5

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then5:                                         ; preds = %if.end
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 52) #11
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.then5.cleanup94_crit_edge, label %devm_kmalloc_array.exit, !prof !147

if.then5.cleanup94_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup94

devm_kmalloc_array.exit:                          ; preds = %if.then5
  %11 = extractvalue { i32, i1 } %9, 0
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %mc_bus_dev, i32 noundef %11, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %devm_kmalloc_array.exit.cleanup94_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup94_crit_edge:      ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup94

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %12 = ptrtoint ptr %num_child_objects to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_child_objects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10157 = icmp sgt i32 %13, 0
  br i1 %cmp10157, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end65_crit_edge

for.cond.preheader.if.end65_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dprc_get_obj_failures.0162 = phi i32 [ %dprc_get_obj_failures.1, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0159 = phi i32 [ %inc53, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %irq_count.0158 = phi i32 [ %irq_count.1, %cleanup.for.body_crit_edge ], [ %conv, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_mc_obj_desc, ptr %call5.i, i32 %i.0159
  %14 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_io, align 4
  %16 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mc_handle, align 8
  %call15 = call i32 @dprc_get_obj(ptr noundef %15, i32 noundef 0, i16 noundef zeroext %17, i32 noundef %i.0159, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.end24

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_bus_dev, ptr noundef nonnull @.str.6, i32 noundef %i.0159, i32 noundef %call15) #15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 4
  %id = getelementptr %struct.fsl_mc_obj_desc, ptr %call5.i, i32 %i.0159, i32 1
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call15, ptr %id, align 4
  %inc = add i32 %dprc_get_obj_failures.0162, 1
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %call26 = call i32 @strcmp(ptr noundef %arrayidx, ptr noundef nonnull dereferenceable(7) @.str.8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end24.if.end35_crit_edge

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end24
  %ver_major = getelementptr %struct.fsl_mc_obj_desc, ptr %call5.i, i32 %i.0159, i32 3
  %20 = ptrtoint ptr %ver_major to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ver_major, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %21)
  %cmp30 = icmp ult i16 %21, 4
  br i1 %cmp30, label %if.then32, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr %struct.fsl_mc_obj_desc, ptr %call5.i, i32 %i.0159, i32 9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 4
  %24 = or i16 %23, 1
  store i16 %24, ptr %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %irq_count36 = getelementptr %struct.fsl_mc_obj_desc, ptr %call5.i, i32 %i.0159, i32 5
  %25 = ptrtoint ptr %irq_count36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %irq_count36, align 2
  %conv37 = zext i8 %26 to i32
  %add = add i32 %irq_count.0158, %conv37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dprc_scan_objects.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dprc_scan_objects, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !148

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %id49 = getelementptr %struct.fsl_mc_obj_desc, ptr %call5.i, i32 %i.0159, i32 1
  %27 = ptrtoint ptr %id49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id49, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dprc_scan_objects.__UNIQUE_ID_ddebug187, ptr noundef %mc_bus_dev, ptr noundef nonnull @.str.10, ptr noundef %arrayidx, i32 noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end35, %do.end21
  %irq_count.1 = phi i32 [ %irq_count.0158, %do.end21 ], [ %add, %if.then45 ], [ %add, %if.end35 ]
  %dprc_get_obj_failures.1 = phi i32 [ %inc, %do.end21 ], [ %dprc_get_obj_failures.0162, %if.then45 ], [ %dprc_get_obj_failures.0162, %if.end35 ]
  %inc53 = add nuw nsw i32 %i.0159, 1
  %29 = ptrtoint ptr %num_child_objects to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_child_objects, align 4
  %cmp10 = icmp slt i32 %inc53, %30
  br i1 %cmp10, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dprc_get_obj_failures.1)
  %cmp54.not = icmp eq i32 %dprc_get_obj_failures.1, 0
  br i1 %cmp54.not, label %for.end.if.end65_crit_edge, label %do.end59

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

do.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_bus_dev, ptr noundef nonnull @.str.12, i32 noundef %dprc_get_obj_failures.1, i32 noundef %30) #15
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %for.end.if.end65_crit_edge, %for.cond.preheader.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %child_obj_desc_array.0 = phi ptr [ null, %if.end.if.end65_crit_edge ], [ %call5.i, %do.end59 ], [ %call5.i, %for.end.if.end65_crit_edge ], [ %call5.i, %for.cond.preheader.if.end65_crit_edge ]
  %irq_count.3 = phi i32 [ %conv, %if.end.if.end65_crit_edge ], [ %irq_count.1, %do.end59 ], [ %irq_count.1, %for.end.if.end65_crit_edge ], [ %conv, %for.cond.preheader.if.end65_crit_edge ]
  %msi.i = getelementptr inbounds %struct.device, ptr %mc_bus_dev, i32 0, i32 16
  %31 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msi.i, align 4
  %tobool68.not = icmp eq ptr %32, null
  br i1 %tobool68.not, label %if.end65.if.end89_crit_edge, label %if.then69

if.end65.if.end89_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %irq_count.3)
  %cmp70 = icmp ugt i32 %irq_count.3, 256
  br i1 %cmp70, label %do.end75, label %if.then69.if.end77_crit_edge

if.then69.if.end77_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %mc_bus_dev, ptr noundef nonnull @.str.15, i32 noundef %irq_count.3, i32 noundef 256) #15
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.then69.if.end77_crit_edge
  br i1 %alloc_interrupts, label %land.lhs.true80, label %if.end77.if.end89_crit_edge

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

land.lhs.true80:                                  ; preds = %if.end77
  %irq_resources = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus_dev, i32 0, i32 2
  %33 = ptrtoint ptr %irq_resources to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_resources, align 8
  %tobool81.not = icmp eq ptr %34, null
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true80.if.end89_crit_edge

land.lhs.true80.if.end89_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then82:                                        ; preds = %land.lhs.true80
  %call83 = call i32 @fsl_mc_populate_irq_pool(ptr noundef %mc_bus_dev, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then82.cleanup94_crit_edge, label %if.then82.if.end89_crit_edge

if.then82.if.end89_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then82.cleanup94_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup94

if.end89:                                         ; preds = %if.then82.if.end89_crit_edge, %land.lhs.true80.if.end89_crit_edge, %if.end77.if.end89_crit_edge, %if.end65.if.end89_crit_edge
  %35 = ptrtoint ptr %num_child_objects to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_child_objects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objs.i) #11
  %37 = getelementptr inbounds %struct.fsl_mc_child_objs, ptr %objs.i, i32 0, i32 1
  %38 = ptrtoint ptr %objs.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %objs.i, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %child_obj_desc_array.0, ptr %37, align 4
  %call.i = call i32 @device_for_each_child(ptr noundef %mc_bus_dev, ptr noundef nonnull %objs.i, ptr noundef nonnull @__fsl_mc_device_remove_if_not_in_mc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objs.i) #11
  br label %dprc_remove_devices.exit

if.else.i:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 @device_for_each_child(ptr noundef %mc_bus_dev, ptr noundef null, ptr noundef nonnull @__fsl_mc_device_remove) #11
  br label %dprc_remove_devices.exit

dprc_remove_devices.exit:                         ; preds = %if.else.i, %if.then.i
  %40 = ptrtoint ptr %num_child_objects to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_child_objects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp44.i = icmp sgt i32 %41, 0
  br i1 %cmp44.i, label %dprc_remove_devices.exit.for.body.i_crit_edge, label %dprc_remove_devices.exit.dprc_add_new_devices.exit_crit_edge

dprc_remove_devices.exit.dprc_add_new_devices.exit_crit_edge: ; preds = %dprc_remove_devices.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dprc_add_new_devices.exit

dprc_remove_devices.exit.for.body.i_crit_edge:    ; preds = %dprc_remove_devices.exit
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i148.for.body.i_crit_edge, %dprc_remove_devices.exit.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %if.end.i148.for.body.i_crit_edge ], [ 0, %dprc_remove_devices.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fsl_mc_obj_desc, ptr %child_obj_desc_array.0, i32 %i.045.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %char031.i = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char031.i)
  %cmp1.not.i = icmp eq i8 %char031.i, 0
  br i1 %cmp1.not.i, label %for.body.i.if.end.i148_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i148_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i148

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i.i = call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef nonnull dereferenceable(6) @.str.50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then.i147_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.if.then.i147_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i147

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %call3.i.i = call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef nonnull dereferenceable(6) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.if.then.i147_crit_edge, label %fsl_mc_obj_desc_is_allocatable.exit.i

lor.lhs.false.i.i.if.then.i147_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i147

fsl_mc_obj_desc_is_allocatable.exit.i:            ; preds = %lor.lhs.false.i.i
  %call8.i.i = call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef nonnull dereferenceable(5) @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %fsl_mc_obj_desc_is_allocatable.exit.i.if.then.i147_crit_edge, label %fsl_mc_obj_desc_is_allocatable.exit.i.if.end.i148_crit_edge

fsl_mc_obj_desc_is_allocatable.exit.i.if.end.i148_crit_edge: ; preds = %fsl_mc_obj_desc_is_allocatable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i148

fsl_mc_obj_desc_is_allocatable.exit.i.if.then.i147_crit_edge: ; preds = %fsl_mc_obj_desc_is_allocatable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i147

if.then.i147:                                     ; preds = %fsl_mc_obj_desc_is_allocatable.exit.i.if.then.i147_crit_edge, %lor.lhs.false.i.i.if.then.i147_crit_edge, %land.lhs.true.i.if.then.i147_crit_edge
  call fastcc void @fsl_mc_obj_device_add(ptr noundef %mc_bus_dev, ptr noundef %arrayidx.i) #11
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.then.i147, %fsl_mc_obj_desc_is_allocatable.exit.i.if.end.i148_crit_edge, %for.body.i.if.end.i148_crit_edge
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %41
  br i1 %exitcond.not.i, label %if.end.i148.for.body5.i_crit_edge, label %if.end.i148.for.body.i_crit_edge

if.end.i148.for.body.i_crit_edge:                 ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i148.for.body5.i_crit_edge:                ; preds = %if.end.i148
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end15.i.for.body5.i_crit_edge, %if.end.i148.for.body5.i_crit_edge
  %i.147.i = phi i32 [ %inc17.i, %if.end15.i.for.body5.i_crit_edge ], [ 0, %if.end.i148.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.fsl_mc_obj_desc, ptr %child_obj_desc_array.0, i32 %i.147.i
  %43 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %char0.i = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %cmp11.not.i = icmp eq i8 %char0.i, 0
  br i1 %cmp11.not.i, label %for.body5.i.if.end15.i_crit_edge, label %land.lhs.true12.i

for.body5.i.if.end15.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true12.i:                                ; preds = %for.body5.i
  %call.i32.i = call i32 @strcmp(ptr noundef %arrayidx7.i, ptr noundef nonnull dereferenceable(6) @.str.50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %cmp.i33.i, label %land.lhs.true12.i.if.end15.i_crit_edge, label %lor.lhs.false.i36.i

land.lhs.true12.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

lor.lhs.false.i36.i:                              ; preds = %land.lhs.true12.i
  %call3.i34.i = call i32 @strcmp(ptr noundef %arrayidx7.i, ptr noundef nonnull dereferenceable(6) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i34.i)
  %cmp4.i35.i = icmp eq i32 %call3.i34.i, 0
  br i1 %cmp4.i35.i, label %lor.lhs.false.i36.i.if.end15.i_crit_edge, label %fsl_mc_obj_desc_is_allocatable.exit41.i

lor.lhs.false.i36.i.if.end15.i_crit_edge:         ; preds = %lor.lhs.false.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

fsl_mc_obj_desc_is_allocatable.exit41.i:          ; preds = %lor.lhs.false.i36.i
  %call8.i37.i = call i32 @strcmp(ptr noundef %arrayidx7.i, ptr noundef nonnull dereferenceable(5) @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i37.i)
  %cmp9.i38.i = icmp eq i32 %call8.i37.i, 0
  br i1 %cmp9.i38.i, label %fsl_mc_obj_desc_is_allocatable.exit41.i.if.end15.i_crit_edge, label %if.then14.i

fsl_mc_obj_desc_is_allocatable.exit41.i.if.end15.i_crit_edge: ; preds = %fsl_mc_obj_desc_is_allocatable.exit41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then14.i:                                      ; preds = %fsl_mc_obj_desc_is_allocatable.exit41.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @fsl_mc_obj_device_add(ptr noundef %mc_bus_dev, ptr noundef %arrayidx7.i) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %fsl_mc_obj_desc_is_allocatable.exit41.i.if.end15.i_crit_edge, %lor.lhs.false.i36.i.if.end15.i_crit_edge, %land.lhs.true12.i.if.end15.i_crit_edge, %for.body5.i.if.end15.i_crit_edge
  %inc17.i = add nuw nsw i32 %i.147.i, 1
  %exitcond48.not.i = icmp eq i32 %inc17.i, %41
  br i1 %exitcond48.not.i, label %if.end15.i.dprc_add_new_devices.exit_crit_edge, label %if.end15.i.for.body5.i_crit_edge

if.end15.i.for.body5.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

if.end15.i.dprc_add_new_devices.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dprc_add_new_devices.exit

dprc_add_new_devices.exit:                        ; preds = %if.end15.i.dprc_add_new_devices.exit_crit_edge, %dprc_remove_devices.exit.dprc_add_new_devices.exit_crit_edge
  %tobool90.not = icmp eq ptr %child_obj_desc_array.0, null
  br i1 %tobool90.not, label %dprc_add_new_devices.exit.cleanup94_crit_edge, label %if.then91

dprc_add_new_devices.exit.cleanup94_crit_edge:    ; preds = %dprc_add_new_devices.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup94

if.then91:                                        ; preds = %dprc_add_new_devices.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @devm_kfree(ptr noundef %mc_bus_dev, ptr noundef nonnull %child_obj_desc_array.0) #11
  br label %cleanup94

cleanup94:                                        ; preds = %if.then91, %dprc_add_new_devices.exit.cleanup94_crit_edge, %if.then82.cleanup94_crit_edge, %devm_kmalloc_array.exit.cleanup94_crit_edge, %if.then5.cleanup94_crit_edge, %do.end
  %retval.1 = phi i32 [ %call, %do.end ], [ %call83, %if.then82.cleanup94_crit_edge ], [ 0, %if.then91 ], [ 0, %dprc_add_new_devices.exit.cleanup94_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup94_crit_edge ], [ -12, %if.then5.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_child_objects) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_get_obj_count(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_get_obj(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_populate_irq_pool(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dprc_scan_container(ptr noundef %mc_bus_dev, i1 noundef zeroext %alloc_interrupts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fsl_mc_init_all_resource_pools(ptr noundef %mc_bus_dev) #11
  %scan_mutex = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_bus_dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #11
  %call = tail call i32 @dprc_scan_objects(ptr noundef %mc_bus_dev, i1 noundef zeroext %alloc_interrupts)
  tail call void @mutex_unlock(ptr noundef %scan_mutex) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_init_all_resource_pools(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @disable_dprc_irq(ptr noundef %mc_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_io1 = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %0 = ptrtoint ptr %mc_io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_io1, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %2 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dprc_set_irq_enable(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.18, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mc_handle, align 8
  %call3 = tail call i32 @dprc_set_irq_mask(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %5, i8 noundef zeroext 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.21, i32 noundef %call3) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mc_handle, align 8
  %call12 = tail call i32 @dprc_clear_irq_status(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %7, i8 noundef zeroext 0, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.24, i32 noundef %call12) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %irq_enabled = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 6
  %8 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ %call12, %do.end17 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_set_irq_enable(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_set_irq_mask(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_clear_irq_status(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_dprc_irq_state(ptr nocapture noundef readonly %mc_dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 6
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_enabled, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enable_dprc_irq(ptr noundef %mc_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %0 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %2 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dprc_set_irq_mask(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.26, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  %6 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mc_handle, align 8
  %call3 = tail call i32 @dprc_set_irq_enable(ptr noundef %5, i32 noundef 0, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.29, i32 noundef %call3) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_enabled = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 6
  %8 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %irq_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dprc_setup(ptr noundef %mc_dev) #0 align 64 {
entry:
  %major_ver = alloca i16, align 2
  %minor_ver = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %major_ver) #11
  %2 = ptrtoint ptr %major_ver to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %major_ver, align 2, !annotation !146
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %minor_ver) #11
  %3 = ptrtoint ptr %minor_ver to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %minor_ver, align 2, !annotation !146
  %type.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 4
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %5, @fsl_mc_bus_dprc_type
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %msi.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 16
  %6 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %8 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc_io, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %bus = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %11, @fsl_mc_bus_type
  br i1 %cmp, label %if.end8, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then6
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %region_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9 = icmp eq i8 %13, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %regions = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 7
  %14 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regions, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %sub.i = add i32 %17, 1
  %add.i = sub i32 %sub.i, %19
  %call17 = tail call i32 @fsl_create_mc_io(ptr noundef %mc_dev, i32 noundef %19, i32 noundef %add.i, ptr noundef null, i32 noundef 1, ptr noundef %mc_io) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end12.cleanup_crit_edge, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %call22 = tail call i32 @fsl_mc_uapi_create_device_file(ptr noundef %mc_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.end12.if.end27_crit_edge
  %call29 = tail call ptr @fsl_mc_find_msi_domain(ptr noundef %mc_dev) #11
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end, label %if.else33

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %mc_dev, ptr noundef nonnull @.str.31) #15
  br label %if.end35

if.else33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %msi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call29, ptr %msi.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %do.end
  %21 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mc_io, align 4
  %id = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %call38 = tail call i32 @dprc_open(ptr noundef %22, i32 noundef 0, i32 noundef %24, ptr noundef %mc_handle) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.34, i32 noundef %call38) #15
  br label %error_cleanup_msi_domain

if.end46:                                         ; preds = %if.end35
  %25 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_io, align 4
  %27 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mc_handle, align 8
  %dprc_attr = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 4
  %call49 = tail call i32 @dprc_get_attributes(ptr noundef %26, i32 noundef 0, i16 noundef zeroext %28, ptr noundef %dprc_attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.37, i32 noundef %call49) #15
  br label %error_cleanup_open

if.end57:                                         ; preds = %if.end46
  %29 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc_io, align 4
  %call59 = call i32 @dprc_get_api_version(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %major_ver, ptr noundef nonnull %minor_ver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end65, label %if.end67

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.40, i32 noundef %call59) #15
  br label %error_cleanup_open

if.end67:                                         ; preds = %if.end57
  %31 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %32)
  %cmp69 = icmp ult i16 %32, 6
  br i1 %cmp69, label %do.end74, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %conv68 = zext i16 %32 to i32
  %33 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %minor_ver, align 2
  %conv77 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.43, i32 noundef %conv68, i32 noundef %conv77) #15
  br label %error_cleanup_open

error_cleanup_open:                               ; preds = %do.end74, %do.end65, %do.end55
  %error.0 = phi i32 [ %call49, %do.end55 ], [ %call59, %do.end65 ], [ -524, %do.end74 ]
  %35 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mc_io, align 4
  %37 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mc_handle, align 8
  %call81 = call i32 @dprc_close(ptr noundef %36, i32 noundef 0, i16 noundef zeroext %38) #11
  br label %error_cleanup_msi_domain

error_cleanup_msi_domain:                         ; preds = %error_cleanup_open, %do.end44
  %error.1 = phi i32 [ %call38, %do.end44 ], [ %error.0, %error_cleanup_open ]
  br i1 %tobool30.not, label %error_cleanup_msi_domain.if.end85_crit_edge, label %if.then83

error_cleanup_msi_domain.if.end85_crit_edge:      ; preds = %error_cleanup_msi_domain
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then83:                                        ; preds = %error_cleanup_msi_domain
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %msi.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %msi.i, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %error_cleanup_msi_domain.if.end85_crit_edge
  br i1 %tobool5.not, label %if.then87, label %if.then92.critedge

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mc_io, align 4
  call void @fsl_destroy_mc_io(ptr noundef %41) #11
  %42 = ptrtoint ptr %mc_io to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %mc_io, align 4
  br label %cleanup

if.then92.critedge:                               ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  call void @fsl_mc_uapi_remove_device_file(ptr noundef %mc_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then92.critedge, %if.then87, %if.end67.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call17, %if.end12.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ %error.1, %if.then87 ], [ %error.1, %if.then92.critedge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %minor_ver) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %major_ver) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_create_mc_io(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_uapi_create_device_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_mc_find_msi_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_get_api_version(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_destroy_mc_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_uapi_remove_device_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dprc_cleanup(ptr noundef %mc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @fsl_mc_bus_dprc_type
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %msi.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 16
  %2 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fsl_mc_cleanup_irq_pool(ptr noundef %mc_dev) #11
  %4 = ptrtoint ptr %msi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %msi.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @fsl_mc_cleanup_all_resource_pools(ptr noundef %mc_dev) #11
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %5 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mc_io, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.45) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %7 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mc_handle, align 8
  %call10 = tail call i32 @dprc_close(ptr noundef nonnull %6, i32 noundef 0, i16 noundef zeroext %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.48, i32 noundef %call10) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end8.if.end16_crit_edge
  %call18 = tail call zeroext i1 @fsl_mc_is_root_dprc(ptr noundef %mc_dev) #11
  br i1 %call18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mc_io, align 4
  tail call void @fsl_destroy_mc_io(ptr noundef %10) #11
  %11 = ptrtoint ptr %mc_io to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mc_io, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fsl_mc_uapi_remove_device_file(ptr noundef %mc_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_cleanup_irq_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_cleanup_all_resource_pools(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fsl_mc_is_root_dprc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dprc_driver_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__fsl_mc_driver_register(ptr noundef nonnull @dprc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsl_mc_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dprc_driver_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fsl_mc_driver_unregister(ptr noundef nonnull @dprc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_device_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_mc_obj_device_add(ptr noundef %mc_bus_dev, ptr noundef %obj_desc) unnamed_addr #0 align 64 {
entry:
  %child_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_dev) #11
  %call.i = tail call ptr @device_find_child(ptr noundef %mc_bus_dev, ptr noundef %obj_desc, ptr noundef nonnull @__fsl_mc_device_match) #11
  %0 = ptrtoint ptr %child_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %child_dev, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.fsl_mc_obj_desc, ptr %obj_desc, i32 0, i32 7
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  %and.i = and i32 %2, 2
  %state2.i = getelementptr inbounds %struct.fsl_mc_device, ptr %call.i, i32 0, i32 6, i32 7
  %3 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state2.i, align 4
  %and3.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and3.i)
  %cmp.not.i = icmp eq i32 %and.i, %and3.i
  br i1 %cmp.not.i, label %if.then.check_plugged_state_change.exit_crit_edge, label %if.then.i

if.then.check_plugged_state_change.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_plugged_state_change.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %or.i = or i32 %4, 2
  %5 = ptrtoint ptr %state2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %state2.i, align 4
  %call.i9 = tail call i32 @device_attach(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp7.i = icmp slt i32 %call.i9, 0
  br i1 %cmp7.i, label %do.end.i, label %if.then4.i.check_plugged_state_change.exit_crit_edge

if.then4.i.check_plugged_state_change.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_plugged_state_change.exit

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.53, i32 noundef %call.i9) #15
  br label %check_plugged_state_change.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and12.i = and i32 %4, -3
  %6 = ptrtoint ptr %state2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and12.i, ptr %state2.i, align 4
  tail call void @device_release_driver(ptr noundef nonnull %call.i) #11
  br label %check_plugged_state_change.exit

check_plugged_state_change.exit:                  ; preds = %if.else.i, %do.end.i, %if.then4.i.check_plugged_state_change.exit_crit_edge, %if.then.check_plugged_state_change.exit_crit_edge
  %7 = ptrtoint ptr %child_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %child_dev, align 4
  tail call void @put_device(ptr noundef %8) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 @fsl_mc_device_add(ptr noundef %obj_desc, ptr noundef null, ptr noundef %mc_bus_dev, ptr noundef nonnull %child_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %check_plugged_state_change.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_device_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dprc_probe(ptr noundef %mc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dprc_setup(ptr noundef %mc_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @fsl_mc_init_all_resource_pools(ptr noundef %mc_dev) #11
  %scan_mutex.i = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex.i, i32 noundef 0) #11
  %call.i = tail call i32 @dprc_scan_objects(ptr noundef %mc_dev, i1 noundef zeroext true) #11
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.dprc_cleanup_crit_edge, label %if.end4

if.end.dprc_cleanup_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dprc_cleanup

if.end4:                                          ; preds = %if.end
  %call.i21 = tail call i32 @fsl_mc_allocate_irqs(ptr noundef %mc_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i = icmp slt i32 %call.i21, 0
  br i1 %cmp.i, label %if.end4.scan_cleanup_crit_edge, label %if.end.i

if.end4.scan_cleanup_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %scan_cleanup

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @disable_dprc_irq(ptr noundef %mc_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.error_free_irqs.i_crit_edge, label %if.end4.i

if.end.i.error_free_irqs.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free_irqs.i

if.end4.i:                                        ; preds = %if.end.i
  %irqs.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 8
  %0 = ptrtoint ptr %irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end4.i.dev_name.exit.i.i_crit_edge

if.end4.i.dev_name.exit.i.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %mc_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc_dev, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end4.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %if.end4.i.dev_name.exit.i.i_crit_edge ]
  %call3.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %mc_dev, i32 noundef %5, ptr noundef nonnull @dprc_irq0_handler, ptr noundef nonnull @dprc_irq0_handler_thread, i32 noundef 24576, ptr noundef %retval.0.i.i.i, ptr noundef %mc_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %register_dprc_irq_handler.exit.thread.i, label %if.end8.i

register_dprc_irq_handler.exit.thread.i:          ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.59, i32 noundef %call3.i.i) #15
  br label %error_free_irqs.i

if.end8.i:                                        ; preds = %dev_name.exit.i.i
  %mc_io.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %10 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io.i.i, align 4
  %mc_handle.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %12 = ptrtoint ptr %mc_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mc_handle.i.i, align 8
  %call.i.i = tail call i32 @dprc_set_irq_mask(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %13, i8 noundef zeroext 0, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i22.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i22.i, label %do.end.i23.i, label %if.end.i.i

do.end.i23.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.26, i32 noundef %call.i.i) #15
  br label %error_free_irqs.i

if.end.i.i:                                       ; preds = %if.end8.i
  %14 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_io.i.i, align 4
  %16 = ptrtoint ptr %mc_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mc_handle.i.i, align 8
  %call3.i24.i = tail call i32 @dprc_set_irq_enable(ptr noundef %15, i32 noundef 0, i16 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i24.i)
  %cmp4.i.i = icmp slt i32 %call3.i24.i, 0
  br i1 %cmp4.i.i, label %do.end8.i.i, label %do.end

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.29, i32 noundef %call3.i24.i) #15
  br label %error_free_irqs.i

error_free_irqs.i:                                ; preds = %do.end8.i.i, %do.end.i23.i, %register_dprc_irq_handler.exit.thread.i, %if.end.i.error_free_irqs.i_crit_edge
  %error.0.i = phi i32 [ %call1.i, %if.end.i.error_free_irqs.i_crit_edge ], [ %call3.i.i, %register_dprc_irq_handler.exit.thread.i ], [ %call3.i24.i, %do.end8.i.i ], [ %call.i.i, %do.end.i23.i ]
  tail call void @fsl_mc_free_irqs(ptr noundef %mc_dev) #11
  br label %scan_cleanup

do.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %irq_enabled.i.i = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 6
  %18 = ptrtoint ptr %irq_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %irq_enabled.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mc_dev, ptr noundef nonnull @.str.56) #15
  br label %cleanup

scan_cleanup:                                     ; preds = %error_free_irqs.i, %if.end4.scan_cleanup_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i21, %if.end4.scan_cleanup_crit_edge ], [ %error.0.i, %error_free_irqs.i ]
  %call10 = tail call i32 @device_for_each_child(ptr noundef %mc_dev, ptr noundef null, ptr noundef nonnull @__fsl_mc_device_remove) #11
  br label %dprc_cleanup

dprc_cleanup:                                     ; preds = %scan_cleanup, %if.end.dprc_cleanup_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end.dprc_cleanup_crit_edge ], [ %retval.0.i.ph, %scan_cleanup ]
  %call11 = tail call i32 @dprc_cleanup(ptr noundef %mc_dev)
  br label %cleanup

cleanup:                                          ; preds = %dprc_cleanup, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %dprc_cleanup ], [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dprc_remove(ptr noundef %mc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @fsl_mc_bus_dprc_type
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_resources = getelementptr inbounds %struct.fsl_mc_bus, ptr %mc_dev, i32 0, i32 2
  %2 = ptrtoint ptr %irq_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_resources, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %msi.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 16
  %4 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msi.i, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end2.if.end6_crit_edge, label %if.then5

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dprc_teardown_irq(ptr noundef %mc_dev)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2.if.end6_crit_edge
  %call8 = tail call i32 @device_for_each_child(ptr noundef %mc_dev, ptr noundef null, ptr noundef nonnull @__fsl_mc_device_remove) #11
  %call9 = tail call i32 @dprc_cleanup(ptr noundef %mc_dev)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mc_dev, ptr noundef nonnull @.str.70) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_allocate_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_free_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dprc_irq0_handler(i32 noundef %irq_num, ptr nocapture noundef readnone %arg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dprc_irq0_handler_thread(i32 noundef %irq_num, ptr noundef %arg) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !146
  %mc_io4 = getelementptr inbounds %struct.fsl_mc_device, ptr %arg, i32 0, i32 5
  %1 = ptrtoint ptr %mc_io4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mc_io4, align 4
  %irqs = getelementptr inbounds %struct.fsl_mc_device, ptr %arg, i32 0, i32 8
  %3 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irqs, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dprc_irq0_handler_thread.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dprc_irq0_handler_thread, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dprc_irq0_handler_thread.__UNIQUE_ID_ddebug188, ptr noundef %arg, ptr noundef nonnull @.str.62, i32 noundef %irq_num, i32 noundef %12) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.fsl_mc_device, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 8
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool9.not = icmp eq i16 %15, 0
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %scan_mutex = getelementptr inbounds %struct.fsl_mc_bus, ptr %arg, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %irq_num)
  %cmp.not = icmp eq i32 %8, %irq_num
  br i1 %cmp.not, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %status, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mc_handle, align 8
  %call15 = call i32 @dprc_get_irq_status(ptr noundef %2, i32 noundef 0, i16 noundef zeroext %18, i8 noundef zeroext 0, ptr noundef nonnull %status) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %arg, ptr noundef nonnull @.str.63, i32 noundef %call15) #15
  br label %out

if.end22:                                         ; preds = %if.end14
  %19 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mc_handle, align 8
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %call24 = call i32 @dprc_clear_irq_status(ptr noundef %2, i32 noundef 0, i16 noundef zeroext %20, i8 noundef zeroext 0, i32 noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %arg, ptr noundef nonnull @.str.65, i32 noundef %call24) #15
  br label %out

if.end31:                                         ; preds = %if.end22
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and32 = and i32 %24, 115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.out_crit_edge, label %if.then34

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then34:                                        ; preds = %if.end31
  %call35 = call i32 @dprc_scan_objects(ptr noundef %arg, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp36 = icmp sgt i32 %call35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call35)
  %cmp39.not = icmp eq i32 %call35, -6
  %or.cond = or i1 %cmp36, %cmp39.not
  br i1 %or.cond, label %if.then34.out_crit_edge, label %do.end44

if.then34.out_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end44:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %arg, ptr noundef nonnull @.str.68, i32 noundef %call35) #15
  br label %out

out:                                              ; preds = %do.end44, %if.then34.out_crit_edge, %if.end31.out_crit_edge, %do.end30, %do.end21, %if.end11.out_crit_edge
  call void @mutex_unlock(ptr noundef %scan_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_get_irq_status(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dprc_teardown_irq(ptr noundef %mc_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irqs = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 8
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @disable_dprc_irq(ptr noundef %mc_dev)
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void @devm_free_irq(ptr noundef %mc_dev, i32 noundef %5, ptr noundef %mc_dev) #11
  tail call void @fsl_mc_free_irqs(ptr noundef %mc_dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__ksymtab_dprc_remove_devices, !1, !"__ksymtab_dprc_remove_devices", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 108, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 255, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dprc_scan_objects._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dprc_scan_objects._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 283, i32 5}
!12 = !{ptr @dprc_scan_objects._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dprc_scan_objects._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 300, i32 32}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 306, i32 4}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dprc_scan_objects.__UNIQUE_ID_ddebug187, !17, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 312, i32 4}
!22 = !{ptr @dprc_scan_objects._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dprc_scan_objects._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 324, i32 4}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dprc_scan_objects._entry.14, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dprc_scan_objects._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_dprc_scan_container, !30, !"__ksymtab_dprc_scan_container", i1 false, i1 false}
!30 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 376, i32 1}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 474, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @disable_dprc_irq._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @disable_dprc_irq._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 485, i32 3}
!38 = !{ptr @disable_dprc_irq._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @disable_dprc_irq._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 496, i32 3}
!42 = !{ptr @disable_dprc_irq._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @disable_dprc_irq._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 551, i32 3}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @enable_dprc_irq._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @enable_dprc_irq._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 563, i32 3}
!51 = !{ptr @enable_dprc_irq._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @enable_dprc_irq._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 663, i32 3}
!55 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dprc_setup._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dprc_setup._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 673, i32 3}
!60 = !{ptr @dprc_setup._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dprc_setup._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 680, i32 3}
!64 = !{ptr @dprc_setup._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dprc_setup._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 689, i32 3}
!68 = !{ptr @dprc_setup._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dprc_setup._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 695, i32 3}
!72 = !{ptr @dprc_setup._entry.42, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dprc_setup._entry_ptr.44, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__ksymtab_dprc_setup, !75, !"__ksymtab_dprc_setup", i1 false, i1 false}
!75 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 721, i32 1}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 810, i32 3}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dprc_cleanup._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dprc_cleanup._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 816, i32 3}
!83 = !{ptr @dprc_cleanup._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dprc_cleanup._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__ksymtab_dprc_cleanup, !86, !"__ksymtab_dprc_cleanup", i1 false, i1 false}
!86 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 827, i32 1}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 35, i32 24}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 36, i32 24}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 37, i32 24}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 153, i32 5}
!95 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @check_plugged_state_change._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @check_plugged_state_change._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 869, i32 14}
!100 = !{ptr @dprc_driver, !101, !"dprc_driver", i1 false, i1 false}
!101 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 867, i32 29}
!102 = !{ptr @match_id_table, !103, !"match_id_table", i1 false, i1 false}
!103 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 860, i32 38}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 755, i32 2}
!106 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dprc_probe._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @dprc_probe._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 531, i32 3}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @register_dprc_irq_handler._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @register_dprc_irq_handler._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 405, i32 2}
!117 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @dprc_irq0_handler_thread.__UNIQUE_ID_ddebug188, !116, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 419, i32 3}
!121 = !{ptr @dprc_irq0_handler_thread._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @dprc_irq0_handler_thread._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 427, i32 3}
!125 = !{ptr @dprc_irq0_handler_thread._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @dprc_irq0_handler_thread._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 447, i32 5}
!129 = !{ptr @dprc_irq0_handler_thread._entry.67, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @dprc_irq0_handler_thread._entry_ptr.69, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/bus/fsl-mc/dprc-driver.c", i32 856, i32 2}
!133 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dprc_remove._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @dprc_remove._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2148973920, i64 2148973925, i64 2148973938, i64 2148973982, i64 2148974016, i64 2148974037}
