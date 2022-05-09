; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_clockmatrix.c_pt.bc'
source_filename = "../drivers/ptp/ptp_clockmatrix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
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
%struct.idtcm = type { [4 x %struct.idtcm_channel], ptr, i8, [16 x i8], i32, i8, %struct.delayed_work, [4 x ptr], ptr, ptr, ptr, i8, i64, i64 }
%struct.idtcm_channel = type { %struct.ptp_clock_info, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, ptr, ptr, ptr, i32, i8, i32, i8, i8, i16 }
%struct.rsmu_ddata = type { ptr, ptr, %struct.mutex, i32, i16 }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.firmware = type { i32, ptr, ptr }
%struct.idtcm_fwrc = type { i8, i8, i8, i8 }
%struct.ptp_clock_request = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.75, %struct.ptp_clock_time, i32, i32, %union.anon.76 }
%union.anon.75 = type { %struct.ptp_clock_time }
%union.anon.76 = type { %struct.ptp_clock_time }

@__UNIQUE_ID_description271 = internal constant [66 x i8] c"ptp_clockmatrix.description=Driver for IDT ClockMatrix(TM) family\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [66 x i8] c"ptp_clockmatrix.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [74 x i8] c"ptp_clockmatrix.author=IDT support-1588 <IDT-support-1588@lm.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version274 = internal constant [28 x i8] c"ptp_clockmatrix.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptp_clockmatrix\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file275 = internal constant [49 x i8] c"ptp_clockmatrix.file=drivers/ptp/ptp_clockmatrix\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [28 x i8] c"ptp_clockmatrix.license=GPL\00", section ".modinfo", align 1
@__param_str_firmware = internal constant [25 x i8] c"ptp_clockmatrix.firmware\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@firmware = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_firmware = internal constant %struct.kernel_param { ptr @__param_str_firmware, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @firmware } }, section "__param", align 4
@__UNIQUE_ID_firmwaretype277 = internal constant [40 x i8] c"ptp_clockmatrix.parmtype=firmware:charp\00", section ".modinfo", align 1
@__initcall__kmod_ptp_clockmatrix__282_2438_idtcm_driver_init6 = internal global ptr @idtcm_driver_init, section ".initcall6.init", align 4
@idtcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @idtcm_probe, ptr @idtcm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_idtcm_driver_exit = internal global ptr @idtcm_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"8a3400x-phc\00", [20 x i8] zeroinitializer }, align 32
@idtcm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&idtcm->extts_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@idtcm_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&idtcm->extts_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@idtcm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2385, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"loading firmware failed with %d\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idtcm_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/ptp/ptp_clockmatrix.c\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idtcm_probe._entry_ptr = internal global ptr @idtcm_probe._entry, section ".printk_index", align 4
@idtcm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 2397, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"idtcm_enable_channel %d failed!\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@idtcm_probe._entry_ptr.15 = internal global ptr @idtcm_probe._entry.12, section ".printk_index", align 4
@idtcm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 2403, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"no PLLs flagged as PHCs, nothing to do\00", [57 x i8] zeroinitializer }, align 32
@idtcm_probe._entry_ptr.18 = internal global ptr @idtcm_probe._entry.16, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@idtcm_set_version_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 2038, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%d.%d.%d, Id: 0x%04x  HW Rev: %d  OTP Config Select: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idtcm_set_version_info\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@idtcm_set_version_info._entry_ptr = internal global ptr @idtcm_set_version_info._entry, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.8.7\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.2.0\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%hhu.%hhu.%hhu\00", [17 x i8] zeroinitializer }, align 32
@__const.idtcm_load_firmware.fname = private unnamed_addr constant [128 x i8] c"idtcm.bin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@idtcm_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.9, i32 1249, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"requesting firmware '%s'\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idtcm_load_firmware\00", [44 x i8] zeroinitializer }, align 32
@idtcm_load_firmware._entry_ptr = internal global ptr @idtcm_load_firmware._entry, section ".printk_index", align 4
@idtcm_load_firmware._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.9, i32 1254, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed at line %d in %s!\00", [39 x i8] zeroinitializer }, align 32
@idtcm_load_firmware._entry_ptr.31 = internal global ptr @idtcm_load_firmware._entry.29, section ".printk_index", align 4
@idtcm_load_firmware.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.9, ptr @.str.32, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware size %zu bytes\00", [40 x i8] zeroinitializer }, align 32
@idtcm_load_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.9, i32 1268, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad firmware, reserved field non-zero\00", [58 x i8] zeroinitializer }, align 32
@idtcm_load_firmware._entry_ptr.35 = internal global ptr @idtcm_load_firmware._entry.33, section ".printk_index", align 4
@idtcm_state_machine_reset.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.9, ptr @.str.37, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"idtcm_state_machine_reset\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SM_RESET completed in %d ms\00", [36 x i8] zeroinitializer }, align 32
@idtcm_state_machine_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.9, i32 1070, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timed out waiting for CM_RESET to complete\00", [53 x i8] zeroinitializer }, align 32
@idtcm_state_machine_reset._entry_ptr = internal global ptr @idtcm_state_machine_reset._entry, section ".printk_index", align 4
@check_and_set_masks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.9, i32 1189, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid TOD mask 0x%02x\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_and_set_masks\00", [44 x i8] zeroinitializer }, align 32
@check_and_set_masks._entry_ptr = internal global ptr @check_and_set_masks._entry, section ".printk_index", align 4
@set_tod_ptp_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.9, i32 1166, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ToD%d not supported\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_tod_ptp_pll\00", [16 x i8] zeroinitializer }, align 32
@set_tod_ptp_pll._entry_ptr = internal global ptr @set_tod_ptp_pll._entry, section ".printk_index", align 4
@set_tod_ptp_pll._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.9, i32 1171, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pll%d not supported\00", [44 x i8] zeroinitializer }, align 32
@set_tod_ptp_pll._entry_ptr.45 = internal global ptr @set_tod_ptp_pll._entry.43, section ".printk_index", align 4
@display_pll_and_masks.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.9, ptr @.str.47, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"display_pll_and_masks\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tod_mask = 0x%02x\00", [46 x i8] zeroinitializer }, align 32
@display_pll_and_masks.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.9, ptr @.str.48, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TOD%d pll = %d    output_mask = 0x%04x\00", [57 x i8] zeroinitializer }, align 32
@wait_for_chip_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.9, i32 367, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BOOT_STATUS != 0xA0\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wait_for_chip_ready\00", [44 x i8] zeroinitializer }, align 32
@wait_for_chip_ready._entry_ptr = internal global ptr @wait_for_chip_ready._entry, section ".printk_index", align 4
@wait_for_chip_ready._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.9, i32 371, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Continuing while SYS APLL/DPLL is not locked\00", [51 x i8] zeroinitializer }, align 32
@wait_for_chip_ready._entry_ptr.53 = internal global ptr @wait_for_chip_ready._entry.51, section ".printk_index", align 4
@wait_for_boot_status_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.9, i32 237, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s timed out\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait_for_boot_status_ready\00", [37 x i8] zeroinitializer }, align 32
@wait_for_boot_status_ready._entry_ptr = internal global ptr @wait_for_boot_status_ready._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_for_sys_apll_dpll_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.9, i32 350, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No wait state: DPLL_SYS_STATE %d\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wait_for_sys_apll_dpll_lock\00", [36 x i8] zeroinitializer }, align 32
@wait_for_sys_apll_dpll_lock._entry_ptr = internal global ptr @wait_for_sys_apll_dpll_lock._entry, section ".printk_index", align 4
@wait_for_sys_apll_dpll_lock._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.9, i32 359, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d ms lock timeout: SYS APLL Loss Lock %d  SYS DPLL state %d\00", [35 x i8] zeroinitializer }, align 32
@wait_for_sys_apll_dpll_lock._entry_ptr.60 = internal global ptr @wait_for_sys_apll_dpll_lock._entry.58, section ".printk_index", align 4
@idtcm_caps_deprecated = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] zeroinitializer, i32 244000, i32 0, i32 4, i32 12, i32 0, i32 0, ptr null, ptr @idtcm_adjfine, ptr null, ptr @idtcm_adjphase, ptr @idtcm_adjtime_deprecated, ptr @idtcm_gettime, ptr null, ptr null, ptr @idtcm_settime_deprecated, ptr @idtcm_enable, ptr null, ptr @idtcm_work_handler }, [52 x i8] zeroinitializer }, align 32
@idtcm_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] zeroinitializer, i32 244000, i32 0, i32 4, i32 12, i32 0, i32 0, ptr null, ptr @idtcm_adjfine, ptr null, ptr @idtcm_adjphase, ptr @idtcm_adjtime, ptr @idtcm_gettime, ptr null, ptr null, ptr @idtcm_settime, ptr @idtcm_enable, ptr null, ptr @idtcm_work_handler }, [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IDT CM TOD%u\00", [19 x i8] zeroinitializer }, align 32
@idtcm_enable_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.62, ptr @.str.9, i32 2258, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idtcm_enable_channel\00", [43 x i8] zeroinitializer }, align 32
@idtcm_enable_channel._entry_ptr = internal global ptr @idtcm_enable_channel._entry, section ".printk_index", align 4
@idtcm_enable_channel._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.9, i32 2276, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PLL%d registered as ptp%d\00", [38 x i8] zeroinitializer }, align 32
@idtcm_enable_channel._entry_ptr.65 = internal global ptr @idtcm_enable_channel._entry.63, section ".printk_index", align 4
@idtcm_adjfine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.66, ptr @.str.9, i32 1933, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtcm_adjfine\00", [18 x i8] zeroinitializer }, align 32
@idtcm_adjfine._entry_ptr = internal global ptr @idtcm_adjfine._entry, section ".printk_index", align 4
@idtcm_adjphase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.67, ptr @.str.9, i32 1910, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idtcm_adjphase\00", [17 x i8] zeroinitializer }, align 32
@idtcm_adjphase._entry_ptr = internal global ptr @idtcm_adjphase._entry, section ".printk_index", align 4
@idtcm_adjtime_deprecated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.68, ptr @.str.9, i32 1858, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"idtcm_adjtime_deprecated\00", [39 x i8] zeroinitializer }, align 32
@idtcm_adjtime_deprecated._entry_ptr = internal global ptr @idtcm_adjtime_deprecated._entry, section ".printk_index", align 4
@_idtcm_settime_deprecated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.9, i32 870, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Set HW ToD failed\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_idtcm_settime_deprecated\00", [38 x i8] zeroinitializer }, align 32
@_idtcm_settime_deprecated._entry_ptr = internal global ptr @_idtcm_settime_deprecated._entry, section ".printk_index", align 4
@idtcm_gettime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.71, ptr @.str.9, i32 1805, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtcm_gettime\00", [18 x i8] zeroinitializer }, align 32
@idtcm_gettime._entry_ptr = internal global ptr @idtcm_gettime._entry, section ".printk_index", align 4
@idtcm_settime_deprecated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.72, ptr @.str.9, i32 1823, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"idtcm_settime_deprecated\00", [39 x i8] zeroinitializer }, align 32
@idtcm_settime_deprecated._entry_ptr = internal global ptr @idtcm_settime_deprecated._entry, section ".printk_index", align 4
@idtcm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.9, i32 1972, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed in %s with err %d!\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idtcm_enable\00", [19 x i8] zeroinitializer }, align 32
@idtcm_enable._entry_ptr = internal global ptr @idtcm_enable._entry, section ".printk_index", align 4
@idtcm_perout_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.9, i32 1374, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to set output enable\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idtcm_perout_enable\00", [44 x i8] zeroinitializer }, align 32
@idtcm_perout_enable._entry_ptr = internal global ptr @idtcm_perout_enable._entry, section ".printk_index", align 4
@idtcm_output_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.9, i32 1319, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - Unsupported out%d\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idtcm_output_enable\00", [44 x i8] zeroinitializer }, align 32
@idtcm_output_enable._entry_ptr = internal global ptr @idtcm_output_enable._entry, section ".printk_index", align 4
@_idtcm_set_dpll_scsr_tod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.9, i32 805, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timed out waiting for the write counter\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_idtcm_set_dpll_scsr_tod\00", [39 x i8] zeroinitializer }, align 32
@_idtcm_set_dpll_scsr_tod._entry_ptr = internal global ptr @_idtcm_set_dpll_scsr_tod._entry, section ".printk_index", align 4
@idtcm_adjtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.81, ptr @.str.9, i32 1893, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtcm_adjtime\00", [18 x i8] zeroinitializer }, align 32
@idtcm_adjtime._entry_ptr = internal global ptr @idtcm_adjtime._entry, section ".printk_index", align 4
@idtcm_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.82, ptr @.str.9, i32 1841, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtcm_settime\00", [18 x i8] zeroinitializer }, align 32
@idtcm_settime._entry_ptr = internal global ptr @idtcm_settime._entry, section ".printk_index", align 4
@initialize_dco_operating_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.9, i32 1679, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to read pll mode!\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"initialize_dco_operating_mode\00", [34 x i8] zeroinitializer }, align 32
@initialize_dco_operating_mode._entry_ptr = internal global ptr @initialize_dco_operating_mode._entry, section ".printk_index", align 4
@initialize_dco_operating_mode._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.9, i32 1686, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to read manual reference!\00", [63 x i8] zeroinitializer }, align 32
@initialize_dco_operating_mode._entry_ptr.87 = internal global ptr @initialize_dco_operating_mode._entry.85, section ".printk_index", align 4
@initialize_operating_mode_with_manual_reference._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.9, i32 1635, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported MANUAL_REFERENCE: 0x%02x\00", [59 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"initialize_operating_mode_with_manual_reference\00", [48 x i8] zeroinitializer }, align 32
@initialize_operating_mode_with_manual_reference._entry_ptr = internal global ptr @initialize_operating_mode_with_manual_reference._entry, section ".printk_index", align 4
@configure_manual_reference_write_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.9, i32 1505, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to set manual reference to write frequency\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"configure_manual_reference_write_frequency\00", [53 x i8] zeroinitializer }, align 32
@configure_manual_reference_write_frequency._entry_ptr = internal global ptr @configure_manual_reference_write_frequency._entry, section ".printk_index", align 4
@configure_manual_reference_write_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.9, i32 1520, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set manual reference to write phase\00", [50 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"configure_manual_reference_write_phase\00", [57 x i8] zeroinitializer }, align 32
@configure_manual_reference_write_phase._entry_ptr = internal global ptr @configure_manual_reference_write_phase._entry, section ".printk_index", align 4
@initialize_operating_mode_with_pll_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.9, i32 1661, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported PLL_MODE: 0x%02x\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"initialize_operating_mode_with_pll_mode\00", [56 x i8] zeroinitializer }, align 32
@initialize_operating_mode_with_pll_mode._entry_ptr = internal global ptr @initialize_operating_mode_with_pll_mode._entry, section ".printk_index", align 4
@configure_dpll_mode_write_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.9, i32 1475, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set pll mode to write frequency\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"configure_dpll_mode_write_frequency\00", [60 x i8] zeroinitializer }, align 32
@configure_dpll_mode_write_frequency._entry_ptr = internal global ptr @configure_dpll_mode_write_frequency._entry, section ".printk_index", align 4
@configure_dpll_mode_write_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.9, i32 1490, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set pll mode to write phase\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"configure_dpll_mode_write_phase\00", [32 x i8] zeroinitializer }, align 32
@configure_dpll_mode_write_phase._entry_ptr = internal global ptr @configure_dpll_mode_write_phase._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 4, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.100 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [15 x i64] [i64 13, i64 16, i64 65445, i64 65448, i64 65449, i64 65450, i64 65451, i64 65456, i64 65457, i64 65458, i64 65459, i64 65460, i64 65461, i64 65462, i64 65463]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 7, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.108 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 28, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 35, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"idtcm_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2430, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2432, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2374, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2385, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2396, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2402, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2030, i32 51 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2035, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 190, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 193, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 169, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1247, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1249, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1253, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1258, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1267, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1062, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1069, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1189, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1166, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1171, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1220, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1226, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 367, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 370, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 237, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 349, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 357, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [22 x i8] c"idtcm_caps_deprecated\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2055, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant [11 x i8] c"idtcm_caps\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2041, i32 36 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2249, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2257, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2275, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1932, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1909, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1857, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 869, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1804, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1822, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1971, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1374, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1318, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 804, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1892, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1840, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1679, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1686, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1634, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1505, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1520, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1660, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1475, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.482 = private constant [33 x i8] c"../drivers/ptp/ptp_clockmatrix.c\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1490, i32 3 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_firmwaretype277, ptr @__UNIQUE_ID_license276, ptr @__UNIQUE_ID_version274, ptr @__exitcall_idtcm_driver_exit, ptr @__initcall__kmod_ptp_clockmatrix__282_2438_idtcm_driver_init6, ptr @__modver_attr, ptr @__param_firmware, ptr @_idtcm_set_dpll_scsr_tod._entry, ptr @_idtcm_set_dpll_scsr_tod._entry_ptr, ptr @_idtcm_settime_deprecated._entry, ptr @_idtcm_settime_deprecated._entry_ptr, ptr @check_and_set_masks._entry, ptr @check_and_set_masks._entry_ptr, ptr @configure_dpll_mode_write_frequency._entry, ptr @configure_dpll_mode_write_frequency._entry_ptr, ptr @configure_dpll_mode_write_phase._entry, ptr @configure_dpll_mode_write_phase._entry_ptr, ptr @configure_manual_reference_write_frequency._entry, ptr @configure_manual_reference_write_frequency._entry_ptr, ptr @configure_manual_reference_write_phase._entry, ptr @configure_manual_reference_write_phase._entry_ptr, ptr @idtcm_adjfine._entry, ptr @idtcm_adjfine._entry_ptr, ptr @idtcm_adjphase._entry, ptr @idtcm_adjphase._entry_ptr, ptr @idtcm_adjtime._entry, ptr @idtcm_adjtime._entry_ptr, ptr @idtcm_adjtime_deprecated._entry, ptr @idtcm_adjtime_deprecated._entry_ptr, ptr @idtcm_driver_exit, ptr @idtcm_enable._entry, ptr @idtcm_enable._entry_ptr, ptr @idtcm_enable_channel._entry, ptr @idtcm_enable_channel._entry.63, ptr @idtcm_enable_channel._entry_ptr, ptr @idtcm_enable_channel._entry_ptr.65, ptr @idtcm_gettime._entry, ptr @idtcm_gettime._entry_ptr, ptr @idtcm_load_firmware._entry, ptr @idtcm_load_firmware._entry.29, ptr @idtcm_load_firmware._entry.33, ptr @idtcm_load_firmware._entry_ptr, ptr @idtcm_load_firmware._entry_ptr.31, ptr @idtcm_load_firmware._entry_ptr.35, ptr @idtcm_output_enable._entry, ptr @idtcm_output_enable._entry_ptr, ptr @idtcm_perout_enable._entry, ptr @idtcm_perout_enable._entry_ptr, ptr @idtcm_probe._entry, ptr @idtcm_probe._entry.12, ptr @idtcm_probe._entry.16, ptr @idtcm_probe._entry_ptr, ptr @idtcm_probe._entry_ptr.15, ptr @idtcm_probe._entry_ptr.18, ptr @idtcm_set_version_info._entry, ptr @idtcm_set_version_info._entry_ptr, ptr @idtcm_settime._entry, ptr @idtcm_settime._entry_ptr, ptr @idtcm_settime_deprecated._entry, ptr @idtcm_settime_deprecated._entry_ptr, ptr @idtcm_state_machine_reset._entry, ptr @idtcm_state_machine_reset._entry_ptr, ptr @initialize_dco_operating_mode._entry, ptr @initialize_dco_operating_mode._entry.85, ptr @initialize_dco_operating_mode._entry_ptr, ptr @initialize_dco_operating_mode._entry_ptr.87, ptr @initialize_operating_mode_with_manual_reference._entry, ptr @initialize_operating_mode_with_manual_reference._entry_ptr, ptr @initialize_operating_mode_with_pll_mode._entry, ptr @initialize_operating_mode_with_pll_mode._entry_ptr, ptr @set_tod_ptp_pll._entry, ptr @set_tod_ptp_pll._entry.43, ptr @set_tod_ptp_pll._entry_ptr, ptr @set_tod_ptp_pll._entry_ptr.45, ptr @wait_for_boot_status_ready._entry, ptr @wait_for_boot_status_ready._entry_ptr, ptr @wait_for_chip_ready._entry, ptr @wait_for_chip_ready._entry.51, ptr @wait_for_chip_ready._entry_ptr, ptr @wait_for_chip_ready._entry_ptr.53, ptr @wait_for_sys_apll_dpll_lock._entry, ptr @wait_for_sys_apll_dpll_lock._entry.58, ptr @wait_for_sys_apll_dpll_lock._entry_ptr, ptr @wait_for_sys_apll_dpll_lock._entry_ptr.60, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @firmware, ptr @idtcm_driver, ptr @.str.3, ptr @idtcm_probe.__key, ptr @.str.4, ptr @idtcm_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @idtcm_caps_deprecated, ptr @idtcm_caps, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_set_version_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_load_firmware._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_load_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_state_machine_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_and_set_masks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tod_ptp_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tod_ptp_pll._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_chip_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_chip_ready._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_boot_status_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_sys_apll_dpll_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_sys_apll_dpll_lock._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_caps_deprecated to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_enable_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_enable_channel._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_adjfine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_adjphase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_adjtime_deprecated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_idtcm_settime_deprecated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_gettime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_settime_deprecated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_perout_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_output_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_idtcm_set_dpll_scsr_tod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_adjtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcm_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_dco_operating_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_dco_operating_mode._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_operating_mode_with_manual_reference._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_manual_reference_write_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_manual_reference_write_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_operating_mode_with_pll_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_dpll_mode_write_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_dpll_mode_write_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @idtcm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idtcm_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @idtcm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mbuf.i.i = alloca [8 x i8], align 8
  %nbuf.i.i = alloca [2 x i8], align 2
  %ts.i.i = alloca %struct.timespec64, align 8
  %cfg.i.i = alloca i8, align 1
  %dpll_manu_ref_cfg.i.i.i = alloca i8, align 1
  %dpll_mode.i.i.i = alloca i8, align 1
  %apll.i.i = alloca i8, align 1
  %dpll.i.i = alloca i8, align 1
  %buf.i.i.i = alloca [4 x i8], align 4
  %ver1.i6.i.i = alloca [3 x i8], align 1
  %ver2.i7.i.i = alloca [3 x i8], align 1
  %ver1.i.i.i = alloca [3 x i8], align 1
  %ver2.i.i.i = alloca [3 x i8], align 1
  %buf.i31.i = alloca [2 x i8], align 2
  %buf.i.i = alloca i8, align 1
  %minor.i = alloca i8, align 1
  %hotfix.i = alloca i8, align 1
  %hw_rev_id.i = alloca i8, align 1
  %config_select.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 856, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev4, align 8
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %mfd = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %mfd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mfd, align 8
  %lock = getelementptr inbounds %struct.rsmu_ddata, ptr %3, i32 0, i32 2
  %lock7 = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %lock7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lock, ptr %lock7, align 4
  %regmap = getelementptr inbounds %struct.rsmu_ddata, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %regmap8 = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %regmap8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regmap8, align 4
  %calculate_overhead_flag = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %calculate_overhead_flag to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %calculate_overhead_flag, align 8
  %extts_work = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %extts_work, i32 noundef 0) #7
  %13 = ptrtoint ptr %extts_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %extts_work, align 8
  %lockdep_map = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @idtcm_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry16 = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @idtcm_extts_check, ptr %func, align 4
  %timer = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @idtcm_probe.__key.5) #7
  %tod_mask.i = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %tod_mask.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %tod_mask.i, align 4
  %extts_mask.i = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %extts_mask.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %extts_mask.i, align 4
  %pll.i = getelementptr inbounds %struct.idtcm_channel, ptr %call.i, i32 0, i32 21
  %19 = ptrtoint ptr %pll.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pll.i, align 1
  %pll3.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 1, i32 21
  %20 = ptrtoint ptr %pll3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %pll3.i, align 1
  %pll6.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 2, i32 21
  %21 = ptrtoint ptr %pll6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %pll6.i, align 1
  %pll9.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 3, i32 21
  %22 = ptrtoint ptr %pll9.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %pll9.i, align 1
  %output_mask.i = getelementptr inbounds %struct.idtcm_channel, ptr %call.i, i32 0, i32 22
  %23 = ptrtoint ptr %output_mask.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 3, ptr %output_mask.i, align 2
  %output_mask14.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 1, i32 22
  %24 = ptrtoint ptr %output_mask14.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12, ptr %output_mask14.i, align 2
  %output_mask17.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 2, i32 22
  %25 = ptrtoint ptr %output_mask17.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 48, ptr %output_mask17.i, align 2
  %output_mask20.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 3, i32 22
  %26 = ptrtoint ptr %output_mask20.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 192, ptr %output_mask20.i, align 2
  %27 = ptrtoint ptr %lock7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock7, align 4
  tail call void @mutex_lock_nested(ptr noundef %28, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %minor.i) #7
  %29 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %minor.i, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hotfix.i) #7
  %30 = ptrtoint ptr %hotfix.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %hotfix.i, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hw_rev_id.i) #7
  %31 = ptrtoint ptr %hw_rev_id.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %hw_rev_id.i, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config_select.i) #7
  %32 = ptrtoint ptr %config_select.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %config_select.i, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #7
  %33 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf.i.i, align 1
  %34 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap8, align 4
  %call.i.i.i = call i32 @regmap_bulk_read(ptr noundef %35, i32 noundef 49188, ptr noundef nonnull %buf.i.i, i32 noundef 1) #7
  %36 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buf.i.i, align 1
  %38 = lshr i8 %37, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #7
  %39 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap8, align 4
  %call.i.i28.i = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef 49189, ptr noundef nonnull %minor.i, i32 noundef 1) #7
  %41 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap8, align 4
  %call.i.i30.i = call i32 @regmap_bulk_read(ptr noundef %42, i32 noundef 49190, ptr noundef nonnull %hotfix.i, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i) #7
  %43 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %buf.i31.i, align 2
  %44 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap8, align 4
  %call.i.i33.i = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef 49202, ptr noundef nonnull %buf.i31.i, i32 noundef 2) #7
  %arrayidx.i.i = getelementptr inbounds [2 x i8], ptr %buf.i31.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  %48 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf.i31.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i) #7
  %50 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap8, align 4
  %call.i.i35.i = call i32 @regmap_bulk_read(ptr noundef %51, i32 noundef 33274, ptr noundef nonnull %hw_rev_id.i, i32 noundef 1) #7
  %52 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap8, align 4
  %call.i.i37.i = call i32 @regmap_bulk_read(ptr noundef %53, i32 noundef 49206, ptr noundef nonnull %config_select.i, i32 noundef 1) #7
  %version.i = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 3
  %conv.i = zext i8 %38 to i32
  %54 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %minor.i, align 1
  %conv6.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %hotfix.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hotfix.i, align 1
  %conv7.i = zext i8 %57 to i32
  %call8.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %version.i, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ver1.i.i.i) #7
  %58 = ptrtoint ptr %ver1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %ver1.i.i.i, align 1, !annotation !249
  %59 = getelementptr inbounds [3 x i8], ptr %ver1.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %59, align 1, !annotation !249
  %61 = getelementptr inbounds [3 x i8], ptr %ver1.i.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %61, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ver2.i.i.i) #7
  %63 = ptrtoint ptr %ver2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %ver2.i.i.i, align 1, !annotation !249
  %64 = getelementptr inbounds [3 x i8], ptr %ver2.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %64, align 1, !annotation !249
  %66 = getelementptr inbounds [3 x i8], ptr %ver2.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %66, align 1, !annotation !249
  %call.i.i38.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %version.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %ver1.i.i.i, ptr noundef %59, ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i38.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i38.i, 3
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.idtcm_strverscmp.exit.thread.i.i_crit_edge

if.end.idtcm_strverscmp.exit.thread.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end
  %call6.i.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, ptr noundef nonnull %ver2.i.i.i, ptr noundef %64, ptr noundef %66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6.i.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %call6.i.i.i, 3
  br i1 %cmp7.not.i.i.i, label %for.body.preheader.i.i.i, label %if.end.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge

if.end.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i.i
  %68 = ptrtoint ptr %ver1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ver1.i.i.i, align 1
  %70 = ptrtoint ptr %ver2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ver2.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp14.i.i.i = icmp ugt i8 %69, %71
  br i1 %cmp14.i.i.i, label %for.body.preheader.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge, label %if.end17.i.i.i

for.body.preheader.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread31.i.i

for.cond.i.i.i:                                   ; preds = %if.end17.i.i.i
  %72 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %59, align 1
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp14.1.i.i.i = icmp ugt i8 %73, %75
  br i1 %cmp14.1.i.i.i, label %for.cond.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge, label %if.end17.1.i.i.i

for.cond.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread31.i.i

if.end17.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp22.1.i.i.i = icmp ult i8 %73, %75
  br i1 %cmp22.1.i.i.i, label %if.end17.1.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge, label %for.cond.1.i.i.i

if.end17.1.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge: ; preds = %if.end17.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread.i.i

for.cond.1.i.i.i:                                 ; preds = %if.end17.1.i.i.i
  %76 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %61, align 1
  %78 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp14.2.i.i.i = icmp ugt i8 %77, %79
  br i1 %cmp14.2.i.i.i, label %for.cond.1.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge, label %idtcm_strverscmp.exit.i.i

for.cond.1.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread31.i.i

if.end17.i.i.i:                                   ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp22.i.i.i = icmp ult i8 %69, %71
  br i1 %cmp22.i.i.i, label %if.end17.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge, label %for.cond.i.i.i

if.end17.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit.thread.i.i

idtcm_strverscmp.exit.thread.i.i:                 ; preds = %if.end17.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge, %if.end17.1.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge, %if.end.i.i.i.idtcm_strverscmp.exit.thread.i.i_crit_edge, %if.end.idtcm_strverscmp.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver1.i.i.i) #7
  br label %81

idtcm_strverscmp.exit.thread31.i.i:               ; preds = %for.cond.1.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge, %for.cond.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge, %for.body.preheader.i.i.i.idtcm_strverscmp.exit.thread31.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver1.i.i.i) #7
  br label %80

idtcm_strverscmp.exit.i.i:                        ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp22.2.i.not.i.i = icmp ult i8 %77, %79
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver1.i.i.i) #7
  br i1 %cmp22.2.i.not.i.i, label %idtcm_strverscmp.exit.i.i._crit_edge, label %idtcm_strverscmp.exit.i.i._crit_edge302

idtcm_strverscmp.exit.i.i._crit_edge302:          ; preds = %idtcm_strverscmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %80

idtcm_strverscmp.exit.i.i._crit_edge:             ; preds = %idtcm_strverscmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %81

80:                                               ; preds = %idtcm_strverscmp.exit.i.i._crit_edge302, %idtcm_strverscmp.exit.thread31.i.i
  br label %81

81:                                               ; preds = %80, %idtcm_strverscmp.exit.i.i._crit_edge, %idtcm_strverscmp.exit.thread.i.i
  %82 = phi i32 [ 1, %80 ], [ 0, %idtcm_strverscmp.exit.i.i._crit_edge ], [ 0, %idtcm_strverscmp.exit.thread.i.i ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ver1.i6.i.i) #7
  %83 = ptrtoint ptr %ver1.i6.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %ver1.i6.i.i, align 1, !annotation !249
  %84 = getelementptr inbounds [3 x i8], ptr %ver1.i6.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %84, align 1, !annotation !249
  %86 = getelementptr inbounds [3 x i8], ptr %ver1.i6.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %86, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ver2.i7.i.i) #7
  %88 = ptrtoint ptr %ver2.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %ver2.i7.i.i, align 1, !annotation !249
  %89 = getelementptr inbounds [3 x i8], ptr %ver2.i7.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %89, align 1, !annotation !249
  %91 = getelementptr inbounds [3 x i8], ptr %ver2.i7.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %91, align 1, !annotation !249
  %call.i8.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %version.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %ver1.i6.i.i, ptr noundef %84, ptr noundef %86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i8.i.i)
  %cmp.not.i9.i.i = icmp eq i32 %call.i8.i.i, 3
  br i1 %cmp.not.i9.i.i, label %if.end.i12.i.i, label %.idtcm_strverscmp.exit27.thread.i.i_crit_edge

.idtcm_strverscmp.exit27.thread.i.i_crit_edge:    ; preds = %81
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread.i.i

if.end.i12.i.i:                                   ; preds = %81
  %call6.i10.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull %ver2.i7.i.i, ptr noundef %89, ptr noundef %91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6.i10.i.i)
  %cmp7.not.i11.i.i = icmp eq i32 %call6.i10.i.i, 3
  br i1 %cmp7.not.i11.i.i, label %for.body.preheader.i14.i.i, label %if.end.i12.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge

if.end.i12.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge: ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread.i.i

for.body.preheader.i14.i.i:                       ; preds = %if.end.i12.i.i
  %93 = ptrtoint ptr %ver1.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ver1.i6.i.i, align 1
  %95 = ptrtoint ptr %ver2.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ver2.i7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp14.i13.i.i = icmp ugt i8 %94, %96
  br i1 %cmp14.i13.i.i, label %for.body.preheader.i14.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge, label %if.end17.i25.i.i

for.body.preheader.i14.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge: ; preds = %for.body.preheader.i14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread37.i.i

for.cond.i16.i.i:                                 ; preds = %if.end17.i25.i.i
  %97 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %84, align 1
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %89, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %98, i8 %100)
  %cmp14.1.i15.i.i = icmp ugt i8 %98, %100
  br i1 %cmp14.1.i15.i.i, label %for.cond.i16.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge, label %if.end17.1.i18.i.i

for.cond.i16.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge: ; preds = %for.cond.i16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread37.i.i

if.end17.1.i18.i.i:                               ; preds = %for.cond.i16.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %98, i8 %100)
  %cmp22.1.i17.i.i = icmp ult i8 %98, %100
  br i1 %cmp22.1.i17.i.i, label %if.end17.1.i18.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge, label %for.cond.1.i20.i.i

if.end17.1.i18.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge: ; preds = %if.end17.1.i18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread.i.i

for.cond.1.i20.i.i:                               ; preds = %if.end17.1.i18.i.i
  %101 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %86, align 1
  %103 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %91, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp14.2.i19.i.i = icmp ugt i8 %102, %104
  br i1 %cmp14.2.i19.i.i, label %for.cond.1.i20.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge, label %idtcm_strverscmp.exit27.i.i

for.cond.1.i20.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge: ; preds = %for.cond.1.i20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread37.i.i

if.end17.i25.i.i:                                 ; preds = %for.body.preheader.i14.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp22.i24.i.i = icmp ult i8 %94, %96
  br i1 %cmp22.i24.i.i, label %if.end17.i25.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge, label %for.cond.i16.i.i

if.end17.i25.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge: ; preds = %if.end17.i25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_strverscmp.exit27.thread.i.i

idtcm_strverscmp.exit27.thread.i.i:               ; preds = %if.end17.i25.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge, %if.end17.1.i18.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge, %if.end.i12.i.i.idtcm_strverscmp.exit27.thread.i.i_crit_edge, %.idtcm_strverscmp.exit27.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver2.i7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver1.i6.i.i) #7
  br label %idtcm_set_version_info.exit

idtcm_strverscmp.exit27.thread37.i.i:             ; preds = %for.cond.1.i20.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge, %for.cond.i16.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge, %for.body.preheader.i14.i.i.idtcm_strverscmp.exit27.thread37.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver2.i7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver1.i6.i.i) #7
  br label %105

idtcm_strverscmp.exit27.i.i:                      ; preds = %for.cond.1.i20.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp22.2.i21.not.i.i = icmp ult i8 %102, %104
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver2.i7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver1.i6.i.i) #7
  br i1 %cmp22.2.i21.not.i.i, label %idtcm_strverscmp.exit27.i.i.idtcm_set_version_info.exit_crit_edge, label %idtcm_strverscmp.exit27.i.i._crit_edge

idtcm_strverscmp.exit27.i.i._crit_edge:           ; preds = %idtcm_strverscmp.exit27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %105

idtcm_strverscmp.exit27.i.i.idtcm_set_version_info.exit_crit_edge: ; preds = %idtcm_strverscmp.exit27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_set_version_info.exit

105:                                              ; preds = %idtcm_strverscmp.exit27.i.i._crit_edge, %idtcm_strverscmp.exit27.thread37.i.i
  br label %idtcm_set_version_info.exit

idtcm_set_version_info.exit:                      ; preds = %105, %idtcm_strverscmp.exit27.i.i.idtcm_set_version_info.exit_crit_edge, %idtcm_strverscmp.exit27.thread.i.i
  %106 = phi i32 [ 2, %105 ], [ %82, %idtcm_strverscmp.exit27.i.i.idtcm_set_version_info.exit_crit_edge ], [ %82, %idtcm_strverscmp.exit27.thread.i.i ]
  %conv.i.i = zext i8 %47 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %conv2.i.i = zext i8 %49 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %fw_ver.i = getelementptr inbounds %struct.idtcm, ptr %call.i, i32 0, i32 4
  %107 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %fw_ver.i, align 8
  %108 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev4, align 8
  %110 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %minor.i, align 1
  %conv13.i = zext i8 %111 to i32
  %112 = ptrtoint ptr %hotfix.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hotfix.i, align 1
  %conv14.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %hw_rev_id.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hw_rev_id.i, align 1
  %conv16.i = zext i8 %115 to i32
  %116 = ptrtoint ptr %config_select.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %config_select.i, align 1
  %conv17.i = zext i8 %117 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.20, i32 noundef %conv.i, i32 noundef %conv13.i, i32 noundef %conv14.i, i32 noundef %or.i.i, i32 noundef %conv16.i, i32 noundef %conv17.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config_select.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_rev_id.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hotfix.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %minor.i) #7
  %call27 = call fastcc i32 @idtcm_load_firmware(ptr noundef nonnull %call.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %idtcm_set_version_info.exit.if.end34_crit_edge, label %do.end32

idtcm_set_version_info.exit.if.end34_crit_edge:   ; preds = %idtcm_set_version_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end32:                                         ; preds = %idtcm_set_version_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.7, i32 noundef %call27) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %idtcm_set_version_info.exit.if.end34_crit_edge
  %arrayidx.i.i.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %arrayidx1.i.i.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %arrayidx4.i.i.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end2.i.i.do.body.i.i_crit_edge, %if.end34
  %i.0.i.i = phi i8 [ 30, %if.end34 ], [ %dec.i.i, %if.end2.i.i.do.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #7
  %120 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %buf.i.i.i, align 4
  %121 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap8, align 4
  %call.i.i.i.i = call i32 @regmap_bulk_read(ptr noundef %122, i32 noundef 49172, ptr noundef nonnull %buf.i.i.i, i32 noundef 4) #7
  %123 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.i.i, align 1
  %125 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx1.i.i.i, align 2
  %127 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx4.i.i.i, align 1
  %129 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.do.end.i_crit_edge

do.body.i.i.do.end.i_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %conv2.i.i.i = zext i8 %126 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %conv.i.i.i = zext i8 %124 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %conv5.i.i.i = zext i8 %128 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %conv9.i.i.i = zext i8 %130 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %or10.i.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i.i, 160
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end2.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @msleep(i32 noundef 100) #7
  %dec.i.i = add nsw i8 %i.0.i.i, -1
  %tobool3.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end6.i.i, label %if.end2.i.i.do.body.i.i_crit_edge

if.end2.i.i.do.body.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #10
  br label %do.end.i

do.end.i:                                         ; preds = %do.end6.i.i, %do.body.i.i.do.end.i_crit_edge
  %133 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %134, ptr noundef nonnull @.str.49) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %apll.i.i) #7
  %136 = ptrtoint ptr %apll.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %apll.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll.i.i) #7
  %137 = ptrtoint ptr %dpll.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %dpll.i.i, align 1
  %add.neg.i.i = sub i32 -200, %135
  br label %do.body.i14.i

do.body.i14.i:                                    ; preds = %if.end30.i.i.do.body.i14.i_crit_edge, %if.end.i
  %138 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap8, align 4
  %call.i.i.i12.i = call i32 @regmap_bulk_read(ptr noundef %139, i32 noundef 49245, ptr noundef nonnull %apll.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i.i.i12.i, 0
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %do.body.i14.i.do.end5.i_crit_edge

do.body.i14.i.do.end5.i_crit_edge:                ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

if.end.i16.i:                                     ; preds = %do.body.i14.i
  %140 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap8, align 4
  %call.i.i51.i.i = call i32 @regmap_bulk_read(ptr noundef %141, i32 noundef 49244, ptr noundef nonnull %dpll.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i.i)
  %tobool3.not.i15.i = icmp eq i32 %call.i.i51.i.i, 0
  br i1 %tobool3.not.i15.i, label %if.end5.i.i, label %if.end.i16.i.do.end5.i_crit_edge

if.end.i16.i.do.end5.i_crit_edge:                 ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

if.end5.i.i:                                      ; preds = %if.end.i16.i
  %142 = ptrtoint ptr %apll.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %apll.i.i, align 1
  %144 = and i8 %143, 1
  store i8 %144, ptr %apll.i.i, align 1
  %145 = ptrtoint ptr %dpll.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %dpll.i.i, align 1
  %147 = and i8 %146, 15
  store i8 %147, ptr %dpll.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp.i17.i = icmp eq i8 %144, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %147)
  %cmp13.i.i = icmp eq i8 %147, 3
  %or.cond.i.i = select i1 %cmp.i17.i, i1 %cmp13.i.i, i1 false
  br i1 %or.cond.i.i, label %wait_for_sys_apll_dpll_lock.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  %trunc.i.i = trunc i8 %146 to i4
  %148 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i.i, label %if.end30.i.i [
    i4 0, label %if.else.i.i.do.end.i.i_crit_edge
    i4 4, label %if.else.i.i.do.end.i.i_crit_edge303
    i4 5, label %if.else.i.i.do.end.i.i_crit_edge304
  ]

if.else.i.i.do.end.i.i_crit_edge304:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.else.i.i.do.end.i.i_crit_edge303:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.else.i.i.do.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i.i.do.end.i.i_crit_edge, %if.else.i.i.do.end.i.i_crit_edge303, %if.else.i.i.do.end.i.i_crit_edge304
  %149 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev4, align 8
  %conv28.i.i = zext i8 %147 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %150, ptr noundef nonnull @.str.56, i32 noundef %conv28.i.i) #10
  br label %do.end5.i

if.end30.i.i:                                     ; preds = %if.else.i.i
  call void @msleep(i32 noundef 10) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %151
  %cmp32.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp32.i.i, label %if.end30.i.i.do.body.i14.i_crit_edge, label %do.end37.i.i

if.end30.i.i.do.body.i14.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i14.i

do.end37.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev4, align 8
  %154 = ptrtoint ptr %apll.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %apll.i.i, align 1
  %conv39.i.i = zext i8 %155 to i32
  %156 = ptrtoint ptr %dpll.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %dpll.i.i, align 1
  %conv40.i.i = zext i8 %157 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %153, ptr noundef nonnull @.str.59, i32 noundef 2000, i32 noundef %conv39.i.i, i32 noundef %conv40.i.i) #10
  br label %do.end5.i

wait_for_sys_apll_dpll_lock.exit.i:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %apll.i.i) #7
  br label %wait_for_chip_ready.exit

do.end5.i:                                        ; preds = %do.end37.i.i, %do.end.i.i, %if.end.i16.i.do.end5.i_crit_edge, %do.body.i14.i.do.end5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %apll.i.i) #7
  %158 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %159, ptr noundef nonnull @.str.52) #10
  br label %wait_for_chip_ready.exit

wait_for_chip_ready.exit:                         ; preds = %do.end5.i, %wait_for_sys_apll_dpll_lock.exit.i
  %160 = ptrtoint ptr %tod_mask.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %tod_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool35.not = icmp eq i8 %161, 0
  br i1 %tobool35.not, label %do.end59, label %for.cond.preheader

for.cond.preheader:                               ; preds = %wait_for_chip_ready.exit
  %tod_read_primary49.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 3, i32 8
  %tod_write54.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 3, i32 9
  %tod_read_primary32.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 2, i32 8
  %tod_write37.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 2, i32 9
  %tod_read_primary15.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 1, i32 8
  %tod_write20.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 1, i32 9
  %tod_read_primary.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 0, i32 8
  %tod_write.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %162 = ptrtoint ptr %tod_mask.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %tod_mask.i, align 4
  %conv39 = zext i8 %163 to i32
  %shl = shl nuw i32 1, %indvars.iv
  %and = and i32 %shl, %conv39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %for.body
  %arrayidx.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv
  %idtcm2.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 2
  %164 = ptrtoint ptr %idtcm2.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i, ptr %idtcm2.i, align 4
  %current_freq_scaled_ppm.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 17
  %165 = ptrtoint ptr %current_freq_scaled_ppm.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %current_freq_scaled_ppm.i, align 4
  %pll.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 21
  %166 = ptrtoint ptr %pll.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %pll.i.i, align 1
  %168 = zext i8 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %167, label %if.then42.do.end52_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb2.i.i
    i8 2, label %sw.bb9.i.i
    i8 3, label %sw.bb18.i.i
    i8 4, label %sw.bb25.i.i
    i8 5, label %sw.bb37.i.i
    i8 6, label %sw.bb44.i.i
    i8 7, label %sw.bb56.i.i
  ]

if.then42.do.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

sw.bb.i.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %169 = ptrtoint ptr %dpll_freq.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -14280, ptr %dpll_freq.i.i, align 2
  br label %if.end4.i

sw.bb2.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq3.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %170 = ptrtoint ptr %dpll_freq3.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -14272, ptr %dpll_freq3.i.i, align 2
  br label %if.end4.i

sw.bb9.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq10.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %171 = ptrtoint ptr %dpll_freq10.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -14264, ptr %dpll_freq10.i.i, align 2
  %172 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %173)
  %cmp.i.i111 = icmp ult i32 %173, 2
  %conv12.i.i = select i1 %cmp.i.i111, i16 -15304, i16 -15300
  br label %if.end4.i

sw.bb18.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq19.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %174 = ptrtoint ptr %dpll_freq19.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -14256, ptr %dpll_freq19.i.i, align 2
  br label %if.end4.i

sw.bb25.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq26.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %175 = ptrtoint ptr %dpll_freq26.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -14248, ptr %dpll_freq26.i.i, align 2
  %176 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %177)
  %cmp28.i.i = icmp ult i32 %177, 2
  %conv31.i.i = select i1 %cmp28.i.i, i16 -15176, i16 -15172
  br label %if.end4.i

sw.bb37.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq38.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %178 = ptrtoint ptr %dpll_freq38.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -14240, ptr %dpll_freq38.i.i, align 2
  br label %if.end4.i

sw.bb44.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq45.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %179 = ptrtoint ptr %dpll_freq45.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -14232, ptr %dpll_freq45.i.i, align 2
  %180 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %181)
  %cmp47.i.i = icmp ult i32 %181, 2
  %conv50.i.i = select i1 %cmp47.i.i, i16 -15048, i16 -15044
  br label %if.end4.i

sw.bb56.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dpll_freq57.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 4
  %182 = ptrtoint ptr %dpll_freq57.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -14224, ptr %dpll_freq57.i.i, align 2
  br label %if.end4.i

if.end4.i:                                        ; preds = %sw.bb56.i.i, %sw.bb44.i.i, %sw.bb37.i.i, %sw.bb25.i.i, %sw.bb18.i.i, %sw.bb9.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %.sink117.i.i = phi i16 [ -14976, %sw.bb56.i.i ], [ %conv50.i.i, %sw.bb44.i.i ], [ -15104, %sw.bb37.i.i ], [ %conv31.i.i, %sw.bb25.i.i ], [ -15232, %sw.bb18.i.i ], [ %conv12.i.i, %sw.bb9.i.i ], [ -15360, %sw.bb2.i.i ], [ -15440, %sw.bb.i.i ]
  %.sink116.i.i = phi i16 [ -28416, %sw.bb56.i.i ], [ -28672, %sw.bb44.i.i ], [ -28928, %sw.bb37.i.i ], [ -29184, %sw.bb25.i.i ], [ -29440, %sw.bb18.i.i ], [ -29696, %sw.bb9.i.i ], [ -29952, %sw.bb2.i.i ], [ -30208, %sw.bb.i.i ]
  %.sink115.i.i = phi i16 [ -14284, %sw.bb56.i.i ], [ -14288, %sw.bb44.i.i ], [ -14292, %sw.bb37.i.i ], [ -14296, %sw.bb25.i.i ], [ -14300, %sw.bb18.i.i ], [ -14304, %sw.bb9.i.i ], [ -14308, %sw.bb2.i.i ], [ -14312, %sw.bb.i.i ]
  %.sink114.i.i = phi i16 [ -14404, %sw.bb56.i.i ], [ -14464, %sw.bb44.i.i ], [ -14532, %sw.bb37.i.i ], [ -14592, %sw.bb25.i.i ], [ -14660, %sw.bb18.i.i ], [ -14720, %sw.bb9.i.i ], [ -14788, %sw.bb2.i.i ], [ -14848, %sw.bb.i.i ]
  %.sink.i.i = phi i16 [ -14152, %sw.bb56.i.i ], [ -14160, %sw.bb44.i.i ], [ -14168, %sw.bb37.i.i ], [ -14176, %sw.bb25.i.i ], [ -14184, %sw.bb18.i.i ], [ -14192, %sw.bb9.i.i ], [ -14200, %sw.bb2.i.i ], [ -14208, %sw.bb.i.i ]
  %dpll_n58.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 5
  %183 = ptrtoint ptr %dpll_n58.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %.sink117.i.i, ptr %dpll_n58.i.i, align 4
  %hw_dpll_n59.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 11
  %184 = ptrtoint ptr %hw_dpll_n59.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %.sink116.i.i, ptr %hw_dpll_n59.i.i, align 4
  %dpll_phase60.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 3
  %185 = ptrtoint ptr %dpll_phase60.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %.sink115.i.i, ptr %dpll_phase60.i.i, align 4
  %dpll_ctrl_n61.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 6
  %186 = ptrtoint ptr %dpll_ctrl_n61.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %.sink114.i.i, ptr %dpll_ctrl_n61.i.i, align 2
  %dpll_phase_pull_in62.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 7
  %187 = ptrtoint ptr %dpll_phase_pull_in62.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %.sink.i.i, ptr %dpll_phase_pull_in62.i.i, align 4
  %188 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %fw_ver.i, align 8
  %trunc = trunc i32 %indvars.iv to i8
  %190 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %trunc, label %if.end4.i.do.end52_crit_edge [
    i8 0, label %sw.bb.i78.i
    i8 1, label %sw.bb10.i.i
    i8 2, label %sw.bb27.i.i
    i8 3, label %sw.bb44.i81.i
  ]

if.end4.i.do.end52_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

sw.bb.i78.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %189)
  %cmp.i77.i = icmp ult i32 %189, 2
  %conv.i.i112 = select i1 %cmp.i77.i, i16 -13248, i16 -13232
  %191 = ptrtoint ptr %tod_read_primary.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv.i.i112, ptr %tod_read_primary.i.i, align 2
  %conv5.i.i = select i1 %cmp.i77.i, i16 -13312, i16 -13296
  %192 = ptrtoint ptr %tod_write.i.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv5.i.i, ptr %tod_write.i.i, align 4
  %conv9.i.i = select i1 %cmp.i77.i, i16 -13364, i16 -13312
  br label %if.end8.i

sw.bb10.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %189)
  %cmp11.i.i = icmp ult i32 %189, 2
  %conv14.i.i = select i1 %cmp11.i.i, i16 -13232, i16 -13216
  %193 = ptrtoint ptr %tod_read_primary15.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv14.i.i, ptr %tod_read_primary15.i.i, align 2
  %conv19.i.i = select i1 %cmp11.i.i, i16 -13296, i16 -13280
  %194 = ptrtoint ptr %tod_write20.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv19.i.i, ptr %tod_write20.i.i, align 4
  %conv24.i.i = select i1 %cmp11.i.i, i16 -13362, i16 -13310
  br label %if.end8.i

sw.bb27.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %189)
  %cmp28.i79.i = icmp ult i32 %189, 2
  %conv31.i80.i = select i1 %cmp28.i79.i, i16 -13216, i16 -13184
  %195 = ptrtoint ptr %tod_read_primary32.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv31.i80.i, ptr %tod_read_primary32.i.i, align 2
  %conv36.i.i = select i1 %cmp28.i79.i, i16 -13280, i16 -13264
  %196 = ptrtoint ptr %tod_write37.i.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv36.i.i, ptr %tod_write37.i.i, align 4
  %conv41.i.i = select i1 %cmp28.i79.i, i16 -13360, i16 -13308
  br label %if.end8.i

sw.bb44.i81.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %189)
  %cmp45.i.i = icmp ult i32 %189, 2
  %conv48.i.i = select i1 %cmp45.i.i, i16 -13184, i16 -13168
  %197 = ptrtoint ptr %tod_read_primary49.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv48.i.i, ptr %tod_read_primary49.i.i, align 2
  %conv53.i.i = select i1 %cmp45.i.i, i16 -13264, i16 -13248
  %198 = ptrtoint ptr %tod_write54.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv53.i.i, ptr %tod_write54.i.i, align 4
  %conv58.i.i = select i1 %cmp45.i.i, i16 -13358, i16 -13306
  br label %if.end8.i

if.end8.i:                                        ; preds = %sw.bb44.i81.i, %sw.bb27.i.i, %sw.bb10.i.i, %sw.bb.i78.i
  %conv9.sink.i.i = phi i16 [ %conv9.i.i, %sw.bb.i78.i ], [ %conv24.i.i, %sw.bb10.i.i ], [ %conv41.i.i, %sw.bb27.i.i ], [ %conv58.i.i, %sw.bb44.i81.i ]
  %.sink.i82.i = phi i8 [ 20, %sw.bb.i78.i ], [ 21, %sw.bb10.i.i ], [ 22, %sw.bb27.i.i ], [ 23, %sw.bb44.i81.i ]
  %tod_n.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 10
  %199 = ptrtoint ptr %tod_n.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv9.sink.i.i, ptr %tod_n.i.i, align 2
  %sync_src.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 12
  %200 = ptrtoint ptr %sync_src.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %.sink.i82.i, ptr %sync_src.i.i, align 2
  %201 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp9.i = icmp eq i32 %202, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %203 = call ptr @memcpy(ptr %arrayidx.i, ptr @idtcm_caps_deprecated, i32 108)
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %204 = call ptr @memcpy(ptr %arrayidx.i, ptr @idtcm_caps, i32 108)
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then10.i
  %name.i = getelementptr inbounds %struct.ptp_clock_info, ptr %arrayidx.i, i32 0, i32 1
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv) #7
  %205 = ptrtoint ptr %idtcm2.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %idtcm2.i, align 4
  %mode2.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 13
  %207 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 2, ptr %mode2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_mode.i.i.i) #7
  %208 = ptrtoint ptr %dpll_mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 -1, ptr %dpll_mode.i.i.i, align 1, !annotation !249
  %209 = ptrtoint ptr %dpll_n58.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %dpll_n58.i.i, align 4
  %fw_ver.i.i.i = getelementptr inbounds %struct.idtcm, ptr %206, i32 0, i32 4
  %211 = ptrtoint ptr %fw_ver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %fw_ver.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %212)
  %cmp.i.i.i = icmp ult i32 %212, 2
  %regmap.i.i.i.i113 = getelementptr inbounds %struct.idtcm, ptr %206, i32 0, i32 10
  %213 = ptrtoint ptr %regmap.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regmap.i.i.i.i113, align 4
  %conv.i.i.i.i = zext i16 %210 to i32
  %conv1.i.i.i.i = select i1 %cmp.i.i.i, i32 55, i32 59
  %add.i.i.i.i = add nuw nsw i32 %conv1.i.i.i.i, %conv.i.i.i.i
  %call.i.i.i.i114 = call i32 @regmap_bulk_read(ptr noundef %214, i32 noundef %add.i.i.i.i, ptr noundef nonnull %dpll_mode.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i114)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i114, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i117, label %do.end.i.i116

do.end.i.i116:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i.i.i) #7
  %dev.i.i115 = getelementptr inbounds %struct.idtcm, ptr %206, i32 0, i32 1
  %215 = ptrtoint ptr %dev.i.i115 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i.i115, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.83) #10
  br label %do.end52

if.end.i.i117:                                    ; preds = %if.end12.i
  %217 = ptrtoint ptr %dpll_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %dpll_mode.i.i.i, align 1
  %219 = lshr i8 %218, 3
  %220 = and i8 %219, 7
  %and.i.i.i = zext i8 %220 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp.i84.i = icmp eq i8 %220, 0
  %221 = ptrtoint ptr %idtcm2.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %idtcm2.i, align 4
  br i1 %cmp.i84.i, label %if.then3.i.i, label %if.else.i.i118

if.then3.i.i:                                     ; preds = %if.end.i.i117
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i.i.i) #7
  %223 = ptrtoint ptr %dpll_manu_ref_cfg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -1, ptr %dpll_manu_ref_cfg.i.i.i, align 1, !annotation !249
  %224 = ptrtoint ptr %dpll_ctrl_n61.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %dpll_ctrl_n61.i.i, align 2
  %regmap.i.i37.i.i = getelementptr inbounds %struct.idtcm, ptr %222, i32 0, i32 10
  %226 = ptrtoint ptr %regmap.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regmap.i.i37.i.i, align 4
  %conv.i.i38.i.i = zext i16 %225 to i32
  %add.i.i39.i.i = add nuw nsw i32 %conv.i.i38.i.i, 1
  %call.i.i40.i.i = call i32 @regmap_bulk_read(ptr noundef %227, i32 noundef %add.i.i39.i.i, ptr noundef nonnull %dpll_manu_ref_cfg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i.i)
  %tobool.not.i41.i.i = icmp eq i32 %call.i.i40.i.i, 0
  br i1 %tobool.not.i41.i.i, label %if.end11.i.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i.i.i) #7
  %dev10.i.i = getelementptr inbounds %struct.idtcm, ptr %206, i32 0, i32 1
  %228 = ptrtoint ptr %dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev10.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.86) #10
  br label %do.end52

if.end11.i.i:                                     ; preds = %if.then3.i.i
  %230 = ptrtoint ptr %dpll_manu_ref_cfg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %dpll_manu_ref_cfg.i.i.i, align 1
  %232 = and i8 %231, 31
  %conv3.i.i.i = zext i8 %232 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i.i.i) #7
  %233 = ptrtoint ptr %idtcm2.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %idtcm2.i, align 4
  %235 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 2, ptr %mode2.i.i, align 4
  %configure_write_frequency.i.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 14
  %236 = ptrtoint ptr %configure_write_frequency.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @configure_manual_reference_write_frequency, ptr %configure_write_frequency.i.i.i, align 4
  %configure_write_phase.i.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 15
  %237 = ptrtoint ptr %configure_write_phase.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr @configure_manual_reference_write_phase, ptr %configure_write_phase.i.i.i, align 4
  %do_phase_pull_in.i.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 16
  %238 = ptrtoint ptr %do_phase_pull_in.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @do_phase_pull_in_sw, ptr %do_phase_pull_in.i.i.i, align 4
  %239 = zext i32 %conv3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %conv3.i.i.i, label %do.end.i.i.i [
    i32 16, label %if.end11.i.i.if.then17.sink.split.i.i_crit_edge
    i32 17, label %if.end11.i.i.if.end18.sink.split.i_crit_edge
  ]

if.end11.i.i.if.end18.sink.split.i_crit_edge:     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split.i

if.end11.i.i.if.then17.sink.split.i.i_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.sink.split.i.i

do.end.i.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.idtcm, ptr %234, i32 0, i32 1
  %240 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.88, i32 noundef %conv3.i.i.i) #10
  br label %if.end14.i.i

if.else.i.i118:                                   ; preds = %if.end.i.i117
  %242 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 2, ptr %mode2.i.i, align 4
  %configure_write_frequency.i45.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 14
  %243 = ptrtoint ptr %configure_write_frequency.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @configure_dpll_mode_write_frequency, ptr %configure_write_frequency.i45.i.i, align 4
  %configure_write_phase.i46.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 15
  %244 = ptrtoint ptr %configure_write_phase.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @configure_dpll_mode_write_phase, ptr %configure_write_phase.i46.i.i, align 4
  %do_phase_pull_in.i47.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 16
  %245 = ptrtoint ptr %do_phase_pull_in.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @do_phase_pull_in_fw, ptr %do_phase_pull_in.i47.i.i, align 4
  %246 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %and.i.i.i, label %do.end.i50.i.i [
    i32 1, label %if.else.i.i118.if.then17.sink.split.i.i_crit_edge
    i32 2, label %if.else.i.i118.if.end18.sink.split.i_crit_edge
  ]

if.else.i.i118.if.end18.sink.split.i_crit_edge:   ; preds = %if.else.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split.i

if.else.i.i118.if.then17.sink.split.i.i_crit_edge: ; preds = %if.else.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.sink.split.i.i

do.end.i50.i.i:                                   ; preds = %if.else.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i49.i.i = getelementptr inbounds %struct.idtcm, ptr %222, i32 0, i32 1
  %247 = ptrtoint ptr %dev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i49.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.94, i32 noundef %and.i.i.i) #10
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.end.i50.i.i, %do.end.i.i.i
  %err.0.ph.i.i = phi i32 [ -22, %do.end.i50.i.i ], [ 0, %do.end.i.i.i ]
  %249 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %.pr.i.i = load i32, ptr %mode2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp16.i.i = icmp eq i32 %.pr.i.i, 1
  br i1 %cmp16.i.i, label %if.end14.i.i.if.then17.i.i_crit_edge, label %if.end14.i.i.initialize_dco_operating_mode.exit.i_crit_edge

if.end14.i.i.initialize_dco_operating_mode.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %initialize_dco_operating_mode.exit.i

if.end14.i.i.if.then17.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i.i

if.then17.sink.split.i.i:                         ; preds = %if.else.i.i118.if.then17.sink.split.i.i_crit_edge, %if.end11.i.i.if.then17.sink.split.i.i_crit_edge
  %250 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %mode2.i.i, align 4
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.then17.sink.split.i.i, %if.end14.i.i.if.then17.i.i_crit_edge
  %err.057.i.i = phi i32 [ %err.0.ph.i.i, %if.end14.i.i.if.then17.i.i_crit_edge ], [ 0, %if.then17.sink.split.i.i ]
  %configure_write_frequency.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 14
  %251 = ptrtoint ptr %configure_write_frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %configure_write_frequency.i.i, align 4
  %call18.i.i = call i32 %252(ptr noundef %arrayidx.i) #7
  br label %initialize_dco_operating_mode.exit.i

initialize_dco_operating_mode.exit.i:             ; preds = %if.then17.i.i, %if.end14.i.i.initialize_dco_operating_mode.exit.i_crit_edge
  %retval.0.i85.i = phi i32 [ %err.057.i.i, %if.then17.i.i ], [ %err.0.ph.i.i, %if.end14.i.i.initialize_dco_operating_mode.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i85.i)
  %tobool16.not.i = icmp eq i32 %retval.0.i85.i, 0
  br i1 %tobool16.not.i, label %initialize_dco_operating_mode.exit.i.if.end18.i_crit_edge, label %initialize_dco_operating_mode.exit.i.do.end52_crit_edge

initialize_dco_operating_mode.exit.i.do.end52_crit_edge: ; preds = %initialize_dco_operating_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

initialize_dco_operating_mode.exit.i.if.end18.i_crit_edge: ; preds = %initialize_dco_operating_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end18.sink.split.i:                            ; preds = %if.else.i.i118.if.end18.sink.split.i_crit_edge, %if.end11.i.i.if.end18.sink.split.i_crit_edge
  %253 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %mode2.i.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %initialize_dco_operating_mode.exit.i.if.end18.i_crit_edge
  %254 = ptrtoint ptr %idtcm2.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %idtcm2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #7
  %256 = call ptr @memset(ptr %ts.i.i, i32 0, i32 16)
  %fw_ver.i87.i = getelementptr inbounds %struct.idtcm, ptr %255, i32 0, i32 4
  %257 = ptrtoint ptr %fw_ver.i87.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %fw_ver.i87.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %258)
  %cmp.i88.i = icmp ugt i32 %258, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cfg.i.i) #7
  %259 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 -1, ptr %cfg.i.i, align 1, !annotation !249
  %260 = ptrtoint ptr %tod_n.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %tod_n.i.i, align 2
  %regmap.i.i.i119 = getelementptr inbounds %struct.idtcm, ptr %255, i32 0, i32 10
  %262 = ptrtoint ptr %regmap.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regmap.i.i.i119, align 4
  %conv.i.i.i120 = zext i16 %261 to i32
  %conv1.i.i.i = zext i1 %cmp.i88.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i120, %conv1.i.i.i
  %call.i.i.i121 = call i32 @regmap_bulk_read(ptr noundef %263, i32 noundef %add.i.i.i, ptr noundef nonnull %cfg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i121)
  %tobool.not.i.i122 = icmp eq i32 %call.i.i.i121, 0
  br i1 %tobool.not.i.i122, label %if.end.i90.i, label %if.end18.i.idtcm_enable_tod.exit.thread.i_crit_edge

if.end18.i.idtcm_enable_tod.exit.thread.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_enable_tod.exit.thread.i

if.end.i90.i:                                     ; preds = %if.end18.i
  %264 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %cfg.i.i, align 1
  %266 = or i8 %265, 1
  store i8 %266, ptr %cfg.i.i, align 1
  %267 = ptrtoint ptr %tod_n.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %tod_n.i.i, align 2
  %269 = ptrtoint ptr %regmap.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regmap.i.i.i119, align 4
  %conv.i31.i.i = zext i16 %268 to i32
  %add.i33.i.i = add nuw nsw i32 %conv.i31.i.i, %conv1.i.i.i
  %call.i34.i.i = call i32 @regmap_bulk_write(ptr noundef %270, i32 noundef %add.i33.i.i, ptr noundef nonnull %cfg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i34.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i90.i.idtcm_enable_tod.exit.thread.i_crit_edge

if.end.i90.i.idtcm_enable_tod.exit.thread.i_crit_edge: ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_enable_tod.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end.i90.i
  %271 = ptrtoint ptr %fw_ver.i87.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %fw_ver.i87.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp10.i.i = icmp eq i32 %272, 0
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else.i91.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = call fastcc i32 @_idtcm_settime_deprecated(ptr noundef %arrayidx.i, ptr noundef nonnull %ts.i.i) #7
  br label %idtcm_enable_tod.exit.i

if.else.i91.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i.i = call fastcc i32 @_idtcm_settime(ptr noundef %arrayidx.i, ptr noundef nonnull %ts.i.i, i32 noundef 0) #7
  br label %idtcm_enable_tod.exit.i

idtcm_enable_tod.exit.thread.i:                   ; preds = %if.end.i90.i.idtcm_enable_tod.exit.thread.i_crit_edge, %if.end18.i.idtcm_enable_tod.exit.thread.i_crit_edge
  %retval.0.i92.ph.i = phi i32 [ %call.i34.i.i, %if.end.i90.i.idtcm_enable_tod.exit.thread.i_crit_edge ], [ %call.i.i.i121, %if.end18.i.idtcm_enable_tod.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cfg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #7
  br label %do.end.i124

idtcm_enable_tod.exit.i:                          ; preds = %if.else.i91.i, %if.then12.i.i
  %retval.0.i92.i = phi i32 [ %call13.i.i, %if.then12.i.i ], [ %call14.i.i, %if.else.i91.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cfg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92.i)
  %tobool20.not.i = icmp eq i32 %retval.0.i92.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %idtcm_enable_tod.exit.i.do.end.i124_crit_edge

idtcm_enable_tod.exit.i.do.end.i124_crit_edge:    ; preds = %idtcm_enable_tod.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i124

do.end.i124:                                      ; preds = %idtcm_enable_tod.exit.i.do.end.i124_crit_edge, %idtcm_enable_tod.exit.thread.i
  %retval.0.i92116.i = phi i32 [ %retval.0.i92.ph.i, %idtcm_enable_tod.exit.thread.i ], [ %retval.0.i92.i, %idtcm_enable_tod.exit.i.do.end.i124_crit_edge ]
  %273 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.30, i32 noundef 2258, ptr noundef nonnull @.str.62) #10
  br label %do.end52

if.end22.i:                                       ; preds = %idtcm_enable_tod.exit.i
  %275 = ptrtoint ptr %idtcm2.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %idtcm2.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mbuf.i.i) #7
  %277 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 0, ptr %mbuf.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nbuf.i.i) #7
  %278 = ptrtoint ptr %nbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 0, ptr %nbuf.i.i, align 2
  %279 = ptrtoint ptr %dpll_ctrl_n61.i.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %dpll_ctrl_n61.i.i, align 2
  %regmap.i.i94.i = getelementptr inbounds %struct.idtcm, ptr %276, i32 0, i32 10
  %281 = ptrtoint ptr %regmap.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regmap.i.i94.i, align 4
  %conv.i.i95.i = zext i16 %280 to i32
  %add.i.i96.i = add nuw nsw i32 %conv.i.i95.i, 28
  %call.i.i97.i = call i32 @regmap_bulk_read(ptr noundef %282, i32 noundef %add.i.i96.i, ptr noundef nonnull %mbuf.i.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call.i.i97.i, 0
  br i1 %tobool.not.i98.i, label %if.end.i99.i, label %if.end22.i.idtcm_get_dco_delay.exit.i_crit_edge

if.end22.i.idtcm_get_dco_delay.exit.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_get_dco_delay.exit.i

if.end.i99.i:                                     ; preds = %if.end22.i
  %283 = ptrtoint ptr %dpll_ctrl_n61.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %dpll_ctrl_n61.i.i, align 2
  %285 = ptrtoint ptr %regmap.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regmap.i.i94.i, align 4
  %conv.i37.i.i = zext i16 %284 to i32
  %add.i38.i.i = add nuw nsw i32 %conv.i37.i.i, 34
  %call.i39.i.i = call i32 @regmap_bulk_read(ptr noundef %286, i32 noundef %add.i38.i.i, ptr noundef nonnull %nbuf.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i39.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i99.i.idtcm_get_dco_delay.exit.i_crit_edge

if.end.i99.i.idtcm_get_dco_delay.exit.i_crit_edge: ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_get_dco_delay.exit.i

if.end7.i.i:                                      ; preds = %if.end.i99.i
  %287 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %mbuf.i.i, align 8
  %289 = call i64 @llvm.bswap.i64(i64 %288) #7
  %290 = ptrtoint ptr %nbuf.i.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %nbuf.i.i, align 2
  %292 = call i16 @llvm.bswap.i16(i16 %291) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %291)
  %cmp.i100.i = icmp eq i16 %291, 0
  %spec.store.select.i.i = select i1 %cmp.i100.i, i16 1, i16 %292
  %conv15.i.i = zext i16 %spec.store.select.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %289)
  %cmp164.i.i.i.i = icmp ult i64 %289, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !250

if.then168.i.i.i.i:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i.i = trunc i64 %289 to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %conv15.i.i
  br label %div_u64.exit.i.i

if.else174.i.i.i.i:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %293 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv15.i.i, i64 %289) #11, !srcloc !251
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %293, 1
  %extract.t153.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %div_u64.exit.i.i

div_u64.exit.i.i:                                 ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t153.i.i, %if.else174.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999999, i32 %dividend.addr.0.i.i.off0.i.i)
  %cmp18.i.i = icmp ugt i32 %dividend.addr.0.i.i.off0.i.i, 499999999
  br i1 %cmp18.i.i, label %div_u64.exit149.i.i, label %div_u64.exit.i.i.idtcm_get_dco_delay.exit.i_crit_edge

div_u64.exit.i.i.idtcm_get_dco_delay.exit.i_crit_edge: ; preds = %div_u64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_get_dco_delay.exit.i

div_u64.exit149.i.i:                              ; preds = %div_u64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div172.i.i145.i.i = udiv i32 1000000000, %dividend.addr.0.i.i.off0.i.i
  %mul.i.i = mul i32 %div172.i.i145.i.i, 18
  br label %idtcm_get_dco_delay.exit.i

idtcm_get_dco_delay.exit.i:                       ; preds = %div_u64.exit149.i.i, %div_u64.exit.i.i.idtcm_get_dco_delay.exit.i_crit_edge, %if.end.i99.i.idtcm_get_dco_delay.exit.i_crit_edge, %if.end22.i.idtcm_get_dco_delay.exit.i_crit_edge
  %retval.0.i102.i = phi i32 [ %mul.i.i, %div_u64.exit149.i.i ], [ 0, %if.end22.i.idtcm_get_dco_delay.exit.i_crit_edge ], [ 0, %if.end.i99.i.idtcm_get_dco_delay.exit.i_crit_edge ], [ 0, %div_u64.exit.i.i.idtcm_get_dco_delay.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nbuf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbuf.i.i) #7
  %dco_delay.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 19
  %294 = ptrtoint ptr %dco_delay.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %retval.0.i102.i, ptr %dco_delay.i, align 4
  %call25.i = call ptr @ptp_clock_register(ptr noundef %arrayidx.i, ptr noundef null) #7
  %ptp_clock.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 1
  %295 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call25.i, ptr %ptp_clock.i, align 4
  %cmp.i103.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103.i, label %if.end47, label %if.end32.i

if.end32.i:                                       ; preds = %idtcm_get_dco_delay.exit.i
  %tobool34.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool34.not.i, label %if.end32.i.do.end52_crit_edge, label %do.end39.i

if.end32.i.do.end52_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %296 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dev4, align 8
  %index42.i = getelementptr inbounds %struct.ptp_clock, ptr %call25.i, i32 0, i32 4
  %298 = ptrtoint ptr %index42.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %index42.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %297, ptr noundef nonnull @.str.64, i32 noundef %indvars.iv, i32 noundef %299) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %idtcm2.i125 = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 2
  %300 = ptrtoint ptr %idtcm2.i125 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %call.i, ptr %idtcm2.i125, align 4
  %301 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %fw_ver.i, align 8
  %trunc201 = trunc i32 %indvars.iv to i8
  %303 = zext i8 %trunc201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %trunc201, label %if.else.do.end52_crit_edge [
    i8 0, label %sw.bb.i.i133
    i8 1, label %sw.bb10.i.i140
    i8 2, label %sw.bb27.i.i147
    i8 3, label %sw.bb44.i.i154
  ]

if.else.do.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

sw.bb.i.i133:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp.i.i127 = icmp ult i32 %302, 2
  %conv.i.i128 = select i1 %cmp.i.i127, i16 -13248, i16 -13232
  %304 = ptrtoint ptr %tod_read_primary.i.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 %conv.i.i128, ptr %tod_read_primary.i.i, align 2
  %conv5.i.i130 = select i1 %cmp.i.i127, i16 -13312, i16 -13296
  %305 = ptrtoint ptr %tod_write.i.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %conv5.i.i130, ptr %tod_write.i.i, align 4
  %conv9.i.i132 = select i1 %cmp.i.i127, i16 -13364, i16 -13312
  br label %if.end4.i159

sw.bb10.i.i140:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp11.i.i134 = icmp ult i32 %302, 2
  %conv14.i.i135 = select i1 %cmp11.i.i134, i16 -13232, i16 -13216
  %306 = ptrtoint ptr %tod_read_primary15.i.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %conv14.i.i135, ptr %tod_read_primary15.i.i, align 2
  %conv19.i.i137 = select i1 %cmp11.i.i134, i16 -13296, i16 -13280
  %307 = ptrtoint ptr %tod_write20.i.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %conv19.i.i137, ptr %tod_write20.i.i, align 4
  %conv24.i.i139 = select i1 %cmp11.i.i134, i16 -13362, i16 -13310
  br label %if.end4.i159

sw.bb27.i.i147:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp28.i.i141 = icmp ult i32 %302, 2
  %conv31.i.i142 = select i1 %cmp28.i.i141, i16 -13216, i16 -13184
  %308 = ptrtoint ptr %tod_read_primary32.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %conv31.i.i142, ptr %tod_read_primary32.i.i, align 2
  %conv36.i.i144 = select i1 %cmp28.i.i141, i16 -13280, i16 -13264
  %309 = ptrtoint ptr %tod_write37.i.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %conv36.i.i144, ptr %tod_write37.i.i, align 4
  %conv41.i.i146 = select i1 %cmp28.i.i141, i16 -13360, i16 -13308
  br label %if.end4.i159

sw.bb44.i.i154:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp45.i.i148 = icmp ult i32 %302, 2
  %conv48.i.i149 = select i1 %cmp45.i.i148, i16 -13184, i16 -13168
  %310 = ptrtoint ptr %tod_read_primary49.i.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %conv48.i.i149, ptr %tod_read_primary49.i.i, align 2
  %conv53.i.i151 = select i1 %cmp45.i.i148, i16 -13264, i16 -13248
  %311 = ptrtoint ptr %tod_write54.i.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv53.i.i151, ptr %tod_write54.i.i, align 4
  %conv58.i.i153 = select i1 %cmp45.i.i148, i16 -13358, i16 -13306
  br label %if.end4.i159

if.end4.i159:                                     ; preds = %sw.bb44.i.i154, %sw.bb27.i.i147, %sw.bb10.i.i140, %sw.bb.i.i133
  %conv9.sink.i.i155 = phi i16 [ %conv9.i.i132, %sw.bb.i.i133 ], [ %conv24.i.i139, %sw.bb10.i.i140 ], [ %conv41.i.i146, %sw.bb27.i.i147 ], [ %conv58.i.i153, %sw.bb44.i.i154 ]
  %.sink.i.i156 = phi i8 [ 20, %sw.bb.i.i133 ], [ 21, %sw.bb10.i.i140 ], [ 22, %sw.bb27.i.i147 ], [ 23, %sw.bb44.i.i154 ]
  %tod_n.i.i157 = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 10
  %312 = ptrtoint ptr %tod_n.i.i157 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %conv9.sink.i.i155, ptr %tod_n.i.i157, align 2
  %sync_src.i.i158 = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 %indvars.iv, i32 12
  %313 = ptrtoint ptr %sync_src.i.i158 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %.sink.i.i156, ptr %sync_src.i.i158, align 2
  %314 = ptrtoint ptr %idtcm2.i125 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %call.i, ptr %idtcm2.i125, align 4
  br label %for.inc

if.end47:                                         ; preds = %idtcm_get_dco_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %315 = ptrtoint ptr %call25.i to i32
  %316 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %ptp_clock.i, align 4
  br label %do.end52

do.end52:                                         ; preds = %if.end47, %if.else.do.end52_crit_edge, %if.end32.i.do.end52_crit_edge, %do.end.i124, %initialize_dco_operating_mode.exit.i.do.end52_crit_edge, %do.end9.i.i, %do.end.i.i116, %if.end4.i.do.end52_crit_edge, %if.then42.do.end52_crit_edge
  %err.1165 = phi i32 [ %315, %if.end47 ], [ %call.i.i.i.i114, %do.end.i.i116 ], [ %call.i.i40.i.i, %do.end9.i.i ], [ %retval.0.i92116.i, %do.end.i124 ], [ %retval.0.i85.i, %initialize_dco_operating_mode.exit.i.do.end52_crit_edge ], [ -524, %if.end32.i.do.end52_crit_edge ], [ -22, %if.then42.do.end52_crit_edge ], [ -22, %if.end4.i.do.end52_crit_edge ], [ -22, %if.else.do.end52_crit_edge ]
  %317 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.13, i32 noundef %indvars.iv) #10
  br label %if.then64

for.inc:                                          ; preds = %if.end4.i159, %do.end39.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %if.end65, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end59:                                         ; preds = %wait_for_chip_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  %319 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %320, ptr noundef nonnull @.str.17) #10
  br label %if.then64

if.then64:                                        ; preds = %do.end59, %do.end52
  %err.2.ph = phi i32 [ -19, %do.end59 ], [ %err.1165, %do.end52 ]
  %321 = ptrtoint ptr %lock7 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %lock7, align 4
  call void @mutex_unlock(ptr noundef %322) #7
  %ptp_clock.i161 = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 0, i32 1
  %323 = ptrtoint ptr %ptp_clock.i161 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %ptp_clock.i161, align 4
  %tobool.not.i = icmp eq ptr %324, null
  br i1 %tobool.not.i, label %if.then64.for.inc.i_crit_edge, label %if.then.i

if.then64.for.inc.i_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %call.i162 = call i32 @ptp_clock_unregister(ptr noundef nonnull %324) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then64.for.inc.i_crit_edge
  %ptp_clock.1.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 1, i32 1
  %325 = ptrtoint ptr %ptp_clock.1.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ptp_clock.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %326, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.1.i = call i32 @ptp_clock_unregister(ptr noundef nonnull %326) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %ptp_clock.2.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 2, i32 1
  %327 = ptrtoint ptr %ptp_clock.2.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ptp_clock.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %328, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.2.i = call i32 @ptp_clock_unregister(ptr noundef nonnull %328) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %ptp_clock.3.i = getelementptr [4 x %struct.idtcm_channel], ptr %call.i, i32 0, i32 3, i32 1
  %329 = ptrtoint ptr %ptp_clock.3.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ptp_clock.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %330, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.cleanup_crit_edge, label %if.then.3.i

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.3.i = call i32 @ptp_clock_unregister(ptr noundef nonnull %330) #7
  br label %cleanup

if.end65:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %331 = ptrtoint ptr %lock7 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %lock7, align 4
  call void @mutex_unlock(ptr noundef %332) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %333 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then.3.i, %for.inc.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -12, %entry.cleanup_crit_edge ], [ %err.2.ph, %for.inc.2.i.cleanup_crit_edge ], [ %err.2.ph, %if.then.3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ptp_clock.i = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %ptp_clock.1.i = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ptp_clock.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_clock.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.1.i = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %5) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %ptp_clock.2.i = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %ptp_clock.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_clock.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %7, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.2.i = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %7) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %ptp_clock.3.i = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %ptp_clock.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_clock.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %9, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.ptp_clock_unregister_all.exit_crit_edge, label %if.then.3.i

for.inc.2.i.ptp_clock_unregister_all.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptp_clock_unregister_all.exit

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.3.i = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %9) #7
  br label %ptp_clock_unregister_all.exit

ptp_clock_unregister_all.exit:                    ; preds = %if.then.3.i, %for.inc.2.i.ptp_clock_unregister_all.exit_crit_edge
  %extts_work = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %extts_work) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idtcm_extts_check(ptr noundef %work) #2 align 64 {
entry:
  %event.i = alloca %struct.ptp_clock_event, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -704
  %extts_mask = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %extts_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extts_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 116
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %4 = getelementptr inbounds i8, ptr %event.i, i32 16
  %index.i = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i, i32 0, i32 1
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %if.end
  %i.040 = phi i32 [ 0, %if.end ], [ %inc, %if.end19.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.040
  %6 = ptrtoint ptr %extts_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extts_mask, align 4
  %conv6 = zext i8 %7 to i32
  %and = and i32 %shl, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end19_crit_edge, label %if.then8

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then8:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event.i) #7
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %9 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %arrayidx.i = getelementptr [4 x %struct.idtcm_channel], ptr %add.ptr, i32 0, i32 %i.040
  %arrayidx2.i = getelementptr %struct.idtcm, ptr %add.ptr, i32 0, i32 7, i32 %i.040
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i, align 4
  %cmp.i = icmp eq ptr %arrayidx.i, %11
  br i1 %cmp.i, label %if.then.i, label %if.then8.if.end.i_crit_edge

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %dco_delay3.i = getelementptr [4 x %struct.idtcm_channel], ptr %add.ptr, i32 0, i32 %i.040, i32 19
  %12 = ptrtoint ptr %dco_delay3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dco_delay3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  %dco_delay.0.i = phi i32 [ %13, %if.then.i ], [ 0, %if.then8.if.end.i_crit_edge ]
  %call.i = call fastcc i32 @_idtcm_gettime(ptr noundef %arrayidx.i, ptr noundef nonnull %ts.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %idtcm_extts_check_channel.exit

if.then5.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %event.i, align 8
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.040, ptr %index.i, align 4
  %16 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %17)
  %cmp.i.i = icmp sgt i64 %17, 9223372035
  br i1 %cmp.i.i, label %if.then5.i.if.then12_crit_edge, label %if.end.i.i

if.then5.i.if.then12_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %17)
  %cmp2.i.i = icmp slt i64 %17, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.if.then12_crit_edge, label %if.end4.i.i

if.end.i.i.if.then12_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nsw i64 %17, 1000000000
  %18 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %19 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %if.then12

idtcm_extts_check_channel.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event.i) #7
  br label %if.end19

if.then12:                                        ; preds = %if.end4.i.i, %if.end.i.i.if.then12_crit_edge, %if.then5.i.if.then12_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.then5.i.if.then12_crit_edge ], [ -9223372036854775808, %if.end.i.i.if.then12_crit_edge ]
  %conv7.i = zext i32 %dco_delay.0.i to i64
  %sub.i = sub i64 %retval.0.i.i, %conv7.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub.i, ptr %5, align 8
  %ptp_clock.i = getelementptr inbounds %struct.idtcm_channel, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp_clock.i, align 4
  call void @ptp_clock_event(ptr noundef %22, ptr noundef nonnull %event.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event.i) #7
  %23 = ptrtoint ptr %extts_mask to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %extts_mask, align 4
  %25 = trunc i32 %shl to i8
  %26 = xor i8 %25, -1
  %conv17 = and i8 %24, %26
  store i8 %conv17, ptr %extts_mask, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %idtcm_extts_check_channel.exit, %for.body.if.end19_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end19
  %27 = ptrtoint ptr %extts_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %extts_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool21.not = icmp eq i8 %28, 0
  br i1 %tobool21.not, label %for.end.if.end25_crit_edge, label %if.then22

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef 10) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.end.if.end25_crit_edge
  %30 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idtcm_load_firmware(ptr noundef %idtcm, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %fname = alloca [128 x i8], align 1
  %fw = alloca ptr, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ver = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 4
  %0 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fname) #7
  %2 = call ptr @memcpy(ptr %fname, ptr @__const.idtcm_load_firmware.fname, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !249
  %5 = load ptr, ptr @firmware, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fname, i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef nonnull %5)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dev1 = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull %fname) #10
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fname, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body12, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef 1254, ptr noundef nonnull @.str.28) #10
  br label %cleanup

do.body12:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtcm_load_firmware.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idtcm_load_firmware, %if.then17)) #7
          to label %do.end21 [label %if.then17], !srcloc !252

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 8
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idtcm_load_firmware.__UNIQUE_ID_ddebug281, ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef %15) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body12
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp ult i32 %21, 2
  %conv1.i = select i1 %cmp.i, i32 53072, i32 53068
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp550.i = icmp sgt i32 %23, 0
  br i1 %cmp550.i, label %do.end21.for.body.i_crit_edge, label %do.end21.if.end26_crit_edge

do.end21.if.end26_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end21.for.body.i_crit_edge:                    ; preds = %do.end21
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end21.for.body.i_crit_edge
  %len.053.i = phi i32 [ %sub33.i, %for.body.i.for.body.i_crit_edge ], [ %23, %do.end21.for.body.i_crit_edge ]
  %count.052.i = phi i32 [ %count.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end21.for.body.i_crit_edge ]
  %rec.051.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %19, %do.end21.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %rec.051.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rec.051.i, align 1
  %conv7.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv7.i, 8
  %loaddr9.i = getelementptr inbounds %struct.idtcm_fwrc, ptr %rec.051.i, i32 0, i32 1
  %26 = ptrtoint ptr %loaddr9.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %loaddr9.i, align 1
  %conv10.i = zext i8 %27 to i32
  %or.i = or i32 %shl.i, %conv10.i
  %incdec.ptr.i = getelementptr %struct.idtcm_fwrc, ptr %rec.051.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49503, i32 %or.i)
  %cmp15.i = icmp ugt i32 %or.i, 49503
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv1.i)
  %cmp19.not.i = icmp ult i32 %or.i, %conv1.i
  %or.cond.i = select i1 %cmp15.i, i1 %cmp19.not.i, i1 false
  %28 = and i8 %27, 124
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %28)
  %29 = icmp ne i8 %28, 124
  %narrow.i = select i1 %or.cond.i, i1 %29, i1 false
  %spec.select.i = zext i1 %narrow.i to i32
  %count.1.i = add i32 %count.052.i, %spec.select.i
  %sub33.i = add nsw i32 %len.053.i, -4
  %cmp5.i = icmp ugt i32 %len.053.i, 4
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %contains_full_configuration.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

contains_full_configuration.exit:                 ; preds = %for.body.i
  %sub4.i = add nsw i32 %conv1.i, -49616
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.i, i32 %sub4.i)
  %cmp34.i.not = icmp slt i32 %count.1.i, %sub4.i
  br i1 %cmp34.i.not, label %contains_full_configuration.exit.if.end26_crit_edge, label %if.then24

contains_full_configuration.exit.if.end26_crit_edge: ; preds = %contains_full_configuration.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %contains_full_configuration.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @idtcm_state_machine_reset(ptr noundef %idtcm)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %contains_full_configuration.exit.if.end26_crit_edge, %do.end21.if.end26_crit_edge
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp28149 = icmp sgt i32 %33, 0
  br i1 %cmp28149, label %for.body.lr.ph, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %output_mask84.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 3, i32 22
  %output_mask59.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 2, i32 22
  %output_mask34.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 1, i32 22
  %output_mask10.i.i = getelementptr inbounds %struct.idtcm_channel, ptr %idtcm, i32 0, i32 22
  %pll12.i49.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 3, i32 21
  %pll12.i41.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 2, i32 21
  %pll12.i33.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 1, i32 21
  %pll12.i.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 0, i32 21
  %tod_mask.i = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 2
  %conv48 = select i1 %cmp, i32 53072, i32 53068
  %regmap.i = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %len.0151 = phi i32 [ %33, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %rec.0150 = phi ptr [ %19, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %reserved = getelementptr inbounds %struct.idtcm_fwrc, ptr %rec.0150, i32 0, i32 3
  %34 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool30.not = icmp eq i8 %35, 0
  br i1 %tobool30.not, label %if.else, label %do.end34

do.end34:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.34) #10
  br label %out

if.else:                                          ; preds = %for.body
  %38 = ptrtoint ptr %rec.0150 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rec.0150, align 1
  %conv36 = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv36, 8
  %loaddr37 = getelementptr inbounds %struct.idtcm_fwrc, ptr %rec.0150, i32 0, i32 1
  %40 = ptrtoint ptr %loaddr37 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %loaddr37, align 1
  %conv38 = zext i8 %41 to i32
  %or = or i32 %shl, %conv38
  %value = getelementptr inbounds %struct.idtcm_fwrc, ptr %rec.0150, i32 0, i32 2
  %42 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %value, align 1
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %val, align 1
  %incdec.ptr = getelementptr %struct.idtcm_fwrc, ptr %rec.0150, i32 1
  %conv40 = trunc i32 %or to i16
  %45 = zext i16 %conv40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %conv40, label %if.else.if.then45_crit_edge [
    i16 -91, label %sw.bb.i
    i16 -88, label %sw.bb6.i
    i16 -87, label %sw.bb7.i
    i16 -86, label %sw.bb9.i
    i16 -85, label %sw.bb11.i
    i16 -80, label %sw.bb.i.i
    i16 -79, label %sw.bb7.i.i
    i16 -78, label %sw.bb19.i.i
    i16 -77, label %sw.bb31.i.i
    i16 -76, label %sw.bb44.i.i
    i16 -75, label %sw.bb56.i.i
    i16 -74, label %sw.bb69.i.i
    i16 -73, label %sw.bb81.i.i
  ]

if.else.if.then45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

sw.bb.i:                                          ; preds = %if.else
  %conv1.i106 = zext i8 %43 to i32
  %and.i = and i32 %conv1.i106, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv1.i106, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i107 = or i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond.i107, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i106.le = zext i8 %43 to i32
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.39, i32 noundef %conv1.i106.le) #10
  br label %out

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %tod_mask.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %43, ptr %tod_mask.i, align 4
  br label %if.then45

sw.bb6.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp4.i.i = icmp ugt i8 %43, 7
  br i1 %cmp4.i.i, label %do.end8.i.i, label %if.end11.i.i

do.end8.i.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = zext i8 %43 to i32
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.44, i32 noundef %conv3.i.i) #10
  br label %out

if.end11.i.i:                                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %pll12.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %43, ptr %pll12.i.i, align 1
  br label %if.then45

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp4.i29.i = icmp ugt i8 %43, 7
  br i1 %cmp4.i29.i, label %do.end8.i32.i, label %if.end11.i34.i

do.end8.i32.i:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i30.i = zext i8 %43 to i32
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.44, i32 noundef %conv3.i30.i) #10
  br label %out

if.end11.i34.i:                                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %pll12.i33.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %43, ptr %pll12.i33.i, align 1
  br label %if.then45

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp4.i37.i = icmp ugt i8 %43, 7
  br i1 %cmp4.i37.i, label %do.end8.i40.i, label %if.end11.i42.i

do.end8.i40.i:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i38.i = zext i8 %43 to i32
  %55 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.44, i32 noundef %conv3.i38.i) #10
  br label %out

if.end11.i42.i:                                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %pll12.i41.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %43, ptr %pll12.i41.i, align 1
  br label %if.then45

sw.bb11.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp4.i45.i = icmp ugt i8 %43, 7
  br i1 %cmp4.i45.i, label %do.end8.i48.i, label %if.end11.i50.i

do.end8.i48.i:                                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i46.i = zext i8 %43 to i32
  %58 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.44, i32 noundef %conv3.i46.i) #10
  br label %out

if.end11.i50.i:                                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %pll12.i49.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %43, ptr %pll12.i49.i, align 1
  br label %if.then45

sw.bb.i.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %output_mask10.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %output_mask10.i.i, align 2
  %63 = and i16 %62, -256
  %conv2.i.i = zext i8 %43 to i16
  %or.i.i = or i16 %63, %conv2.i.i
  store i16 %or.i.i, ptr %output_mask10.i.i, align 2
  br label %if.then45

sw.bb7.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %output_mask10.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %output_mask10.i.i, align 2
  %66 = and i16 %65, 255
  %conv13.i.i = zext i8 %43 to i16
  %shl.i.i = shl nuw i16 %conv13.i.i, 8
  %or14.i.i = or i16 %66, %shl.i.i
  store i16 %or14.i.i, ptr %output_mask10.i.i, align 2
  br label %if.then45

sw.bb19.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %output_mask34.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %output_mask34.i.i, align 2
  %69 = and i16 %68, -256
  %conv25.i.i = zext i8 %43 to i16
  %or26.i.i = or i16 %69, %conv25.i.i
  store i16 %or26.i.i, ptr %output_mask34.i.i, align 2
  br label %if.then45

sw.bb31.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %output_mask34.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %output_mask34.i.i, align 2
  %72 = and i16 %71, 255
  %conv37.i.i = zext i8 %43 to i16
  %shl38.i.i = shl nuw i16 %conv37.i.i, 8
  %or39.i.i = or i16 %72, %shl38.i.i
  store i16 %or39.i.i, ptr %output_mask34.i.i, align 2
  br label %if.then45

sw.bb44.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %output_mask59.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %output_mask59.i.i, align 2
  %75 = and i16 %74, -256
  %conv50.i.i = zext i8 %43 to i16
  %or51.i.i = or i16 %75, %conv50.i.i
  store i16 %or51.i.i, ptr %output_mask59.i.i, align 2
  br label %if.then45

sw.bb56.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %output_mask59.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %output_mask59.i.i, align 2
  %78 = and i16 %77, 255
  %conv62.i.i = zext i8 %43 to i16
  %shl63.i.i = shl nuw i16 %conv62.i.i, 8
  %or64.i.i = or i16 %78, %shl63.i.i
  store i16 %or64.i.i, ptr %output_mask59.i.i, align 2
  br label %if.then45

sw.bb69.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %output_mask84.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %output_mask84.i.i, align 2
  %81 = and i16 %80, -256
  %conv75.i.i = zext i8 %43 to i16
  %or76.i.i = or i16 %81, %conv75.i.i
  store i16 %or76.i.i, ptr %output_mask84.i.i, align 2
  br label %if.then45

sw.bb81.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %output_mask84.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %output_mask84.i.i, align 2
  %84 = and i16 %83, 255
  %conv87.i.i = zext i8 %43 to i16
  %shl88.i.i = shl nuw i16 %conv87.i.i, 8
  %or89.i.i = or i16 %84, %shl88.i.i
  store i16 %or89.i.i, ptr %output_mask84.i.i, align 2
  br label %if.then45

if.then45:                                        ; preds = %sw.bb81.i.i, %sw.bb69.i.i, %sw.bb56.i.i, %sw.bb44.i.i, %sw.bb31.i.i, %sw.bb19.i.i, %sw.bb7.i.i, %sw.bb.i.i, %if.end11.i50.i, %if.end11.i42.i, %if.end11.i34.i, %if.end11.i.i, %if.else.i, %if.else.if.then45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 49504, i32 %or)
  %cmp46 = icmp ult i32 %or, 49504
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv48)
  %cmp49.not = icmp uge i32 %or, %conv48
  %or.cond = select i1 %cmp46, i1 true, i1 %cmp49.not
  %85 = and i8 %41, 124
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %85)
  %86 = icmp eq i8 %85, 124
  %or.cond141 = select i1 %or.cond, i1 true, i1 %86
  br i1 %or.cond141, label %if.then45.for.inc_crit_edge, label %if.end67

if.then45.for.inc_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end67:                                         ; preds = %if.then45
  %87 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %88, i32 noundef %or, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %if.end67.for.inc_crit_edge, label %if.end67.out_crit_edge

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end67.for.inc_crit_edge, %if.then45.for.inc_crit_edge
  %sub = add nsw i32 %len.0151, -4
  %cmp28 = icmp sgt i32 %len.0151, 4
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @display_pll_and_masks.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idtcm_load_firmware, %if.then.i)) #7
          to label %do.end.i111 [label %if.then.i], !srcloc !252

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1, align 8
  %tod_mask.i109 = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 2
  %91 = ptrtoint ptr %tod_mask.i109 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tod_mask.i109, align 4
  %conv.i110 = zext i8 %92 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @display_pll_and_masks.__UNIQUE_ID_ddebug279, ptr noundef %90, ptr noundef nonnull @.str.47, i32 noundef %conv.i110) #7
  br label %do.end.i111

do.end.i111:                                      ; preds = %if.then.i, %for.end
  %tod_mask8.i = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 2
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i.for.body.i114_crit_edge, %do.end.i111
  %indvars.iv.i = phi i32 [ 0, %do.end.i111 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i114_crit_edge ]
  %shl.i112 = shl nuw i32 1, %indvars.iv.i
  %93 = ptrtoint ptr %tod_mask8.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %tod_mask8.i, align 4
  %conv9.i = zext i8 %94 to i32
  %and.i113 = and i32 %shl.i112, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool10.not.i = icmp eq i32 %and.i113, 0
  br i1 %tobool10.not.i, label %for.body.i114.for.inc.i_crit_edge, label %do.body12.i

for.body.i114.for.inc.i_crit_edge:                ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body12.i:                                      ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @display_pll_and_masks.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idtcm_load_firmware, %if.then24.i)) #7
          to label %for.inc.i [label %if.then24.i], !srcloc !252

if.then24.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev1, align 8
  %pll.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 %indvars.iv.i, i32 21
  %97 = ptrtoint ptr %pll.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pll.i, align 1
  %conv27.i = zext i8 %98 to i32
  %output_mask.i = getelementptr [4 x %struct.idtcm_channel], ptr %idtcm, i32 0, i32 %indvars.iv.i, i32 22
  %99 = ptrtoint ptr %output_mask.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %output_mask.i, align 2
  %conv31.i = zext i16 %100 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @display_pll_and_masks.__UNIQUE_ID_ddebug280, ptr noundef %96, ptr noundef nonnull @.str.48, i32 noundef %indvars.iv.i, i32 noundef %conv27.i, i32 noundef %conv31.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %do.body12.i, %for.body.i114.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i114_crit_edge

for.inc.i.for.body.i114_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i114

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.i.out_crit_edge, %if.end67.out_crit_edge, %do.end8.i48.i, %do.end8.i40.i, %do.end8.i32.i, %do.end8.i.i, %do.end.i, %do.end34
  %err.4 = phi i32 [ -22, %do.end8.i48.i ], [ -22, %do.end8.i40.i ], [ -22, %do.end8.i32.i ], [ -22, %do.end8.i.i ], [ -22, %do.end.i ], [ -22, %do.end34 ], [ 0, %for.inc.i.out_crit_edge ], [ %call.i, %if.end67.out_crit_edge ]
  %101 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %102) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end9
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ %err.4, %out ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fname) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idtcm_gettime(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %ts, i8 noundef zeroext %timeout) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  %trigger = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %fw_ver = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 6
  %10 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 7
  %11 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 8
  %12 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 9
  %13 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 10
  %14 = call ptr @memset(ptr %buf, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %trigger) #7
  %15 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %trigger, align 1, !annotation !249
  %calculate_overhead_flag = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 11
  %start_time = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 13
  %tod_read_primary = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 8
  %regmap.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %conv1.i = select i1 %cmp, i32 14, i32 15
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %timeout.addr.0 = phi i8 [ %timeout, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %dec = add i8 %timeout.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %timeout.addr.0)
  %cmp3 = icmp eq i8 %timeout.addr.0, 0
  br i1 %cmp3, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  %16 = ptrtoint ptr %calculate_overhead_flag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %calculate_overhead_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i64 @ktime_get_raw() #7
  %18 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call, ptr %start_time, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %19 = ptrtoint ptr %tod_read_primary to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tod_read_primary, align 2
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i16 %20 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %call.i = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef %add.i, ptr noundef nonnull %trigger, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %do.cond, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond:                                          ; preds = %if.end6
  %23 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %trigger, align 1
  %25 = and i8 %24, 15
  %tobool12.not = icmp eq i8 %25, 0
  br i1 %tobool12.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.cond
  %26 = ptrtoint ptr %tod_read_primary to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tod_read_primary, align 2
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %conv.i35 = zext i16 %27 to i32
  %call.i36 = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef %conv.i35, ptr noundef nonnull %buf, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool15.not = icmp eq i32 %call.i36, 0
  br i1 %tobool15.not, label %if.end17, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %7, align 1
  %conv2.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %conv8.i = zext i8 %33 to i32
  %34 = shl nuw nsw i32 %conv2.i, 16
  %35 = shl nuw nsw i32 %conv8.i, 8
  %shl.1.i = or i32 %35, %34
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %conv8.1.i = zext i8 %37 to i32
  %or.1.i = or i32 %shl.1.i, %conv8.1.i
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %4, align 1
  %conv8.2.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %13, align 1
  %conv10.i = zext i8 %41 to i64
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %12, align 1
  %conv20.i = zext i8 %43 to i64
  %44 = shl nuw nsw i64 %conv10.i, 16
  %45 = shl nuw nsw i64 %conv20.i, 8
  %shl16.1.i = or i64 %45, %44
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %11, align 1
  %conv20.1.i = zext i8 %47 to i64
  %or21.1.i = or i64 %shl16.1.i, %conv20.1.i
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %10, align 1
  %conv20.2.i = zext i8 %49 to i64
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %9, align 1
  %conv20.3.i = zext i8 %51 to i64
  %52 = shl nuw nsw i64 %or21.1.i, 24
  %53 = shl nuw nsw i64 %conv20.2.i, 16
  %54 = shl nuw nsw i64 %conv20.3.i, 8
  %55 = or i64 %53, %54
  %shl16.4.i = or i64 %52, %55
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %8, align 1
  %conv20.4.i = zext i8 %57 to i64
  %or21.4.i = or i64 %shl16.4.i, %conv20.4.i
  %shl.2.i = shl nuw i32 %or.1.i, 8
  %or.2.i = or i32 %shl.2.i, %conv8.2.i
  %58 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %or21.4.i, ptr %ts, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %59 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.2.i, ptr %tv_nsec.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call.i36, %do.end.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %trigger) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idtcm_state_machine_reset(ptr nocapture noundef readonly %idtcm) unnamed_addr #2 align 64 {
entry:
  %buf.i1 = alloca [4 x i8], align 4
  %buf.i = alloca [4 x i8], align 4
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #7
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 90, ptr %byte, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %buf.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 10
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 49172, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %fw_ver = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 4
  %4 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %add.i = select i1 %cmp, i32 49170, i32 49171
  %call.i = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull %byte, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

for.cond.preheader:                               ; preds = %entry
  %arrayidx.i = getelementptr inbounds [4 x i8], ptr %buf.i1, i32 0, i32 3
  %arrayidx1.i = getelementptr inbounds [4 x i8], ptr %buf.i1, i32 0, i32 2
  %arrayidx4.i = getelementptr inbounds [4 x i8], ptr %buf.i1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.010 = phi i8 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %call5 = call i32 @msleep_interruptible(i32 noundef 100) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i1) #7
  %8 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %buf.i1, align 4
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i3 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 49172, ptr noundef nonnull %buf.i1, i32 noundef 4) #7
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %13 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.i, align 2
  %conv2.i = zext i8 %14 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %16 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %17 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.i1, align 4
  %conv9.i = zext i8 %18 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %or10.i)
  %cmp7 = icmp eq i32 %or10.i, 160
  br i1 %cmp7, label %do.body, label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtcm_state_machine_reset.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idtcm_state_machine_reset, %for.end.thread)) #7
          to label %if.end24 [label %for.end.thread], !srcloc !252

for.end.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.le = zext i8 %i.010 to i32
  %dev = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %mul = mul nuw nsw i32 %conv2.le, 100
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idtcm_state_machine_reset.__UNIQUE_ID_ddebug278, ptr noundef %20, ptr noundef nonnull @.str.37, i32 noundef %mul) #7
  br label %if.end24

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i8 %i.010, 1
  %cmp3 = icmp ult i8 %i.010, 29
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i)
  %phi.cmp = icmp eq i32 %or10.i, 0
  br i1 %phi.cmp, label %do.end21, label %for.end.loopexit.if.end24_crit_edge

for.end.loopexit.if.end24_crit_edge:              ; preds = %for.end.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end21:                                         ; preds = %for.end.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.idtcm, ptr %idtcm, i32 0, i32 1
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %for.end.loopexit.if.end24_crit_edge, %for.end.thread, %do.body, %entry.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #2 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %phase_pull_in = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 18
  %2 = ptrtoint ptr %phase_pull_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phase_pull_in, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_freq_scaled_ppm = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 17
  %4 = ptrtoint ptr %current_freq_scaled_ppm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_freq_scaled_ppm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %scaled_ppm)
  %cmp3 = icmp eq i32 %5, %scaled_ppm
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #7
  %8 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %mode.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 13
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.end6._idtcm_adjfine.exit_crit_edge, label %if.then.i

if.end6._idtcm_adjfine.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjfine.exit

if.then.i:                                        ; preds = %if.end6
  %configure_write_frequency.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 14
  %12 = ptrtoint ptr %configure_write_frequency.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %configure_write_frequency.i, align 4
  %call.i = tail call i32 %13(ptr noundef %ptp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i._idtcm_adjfine.exit_crit_edge, label %_idtcm_adjfine.exit.thread

if.then.i._idtcm_adjfine.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjfine.exit

_idtcm_adjfine.exit.thread:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %15) #7
  br label %do.end

_idtcm_adjfine.exit:                              ; preds = %if.then.i._idtcm_adjfine.exit_crit_edge, %if.end6._idtcm_adjfine.exit_crit_edge
  %conv.i = sext i32 %scaled_ppm to i64
  %mul.i = mul nsw i64 %conv.i, 244140625
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %16 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !249
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul.i, i32 noundef 1776, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %conv8.i = trunc i64 %call.i.i to i8
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv8.i, ptr %buf.i, align 1
  %18 = lshr i64 %call.i.i, 8
  %conv8.1.i = trunc i64 %18 to i8
  %arrayidx.1.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8.1.i, ptr %arrayidx.1.i, align 1
  %20 = lshr i64 %call.i.i, 16
  %conv8.2.i = trunc i64 %20 to i8
  %arrayidx.2.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8.2.i, ptr %arrayidx.2.i, align 1
  %22 = lshr i64 %call.i.i, 24
  %conv8.3.i = trunc i64 %22 to i8
  %arrayidx.3.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8.3.i, ptr %arrayidx.3.i, align 1
  %24 = lshr i64 %call.i.i, 32
  %conv8.4.i = trunc i64 %24 to i8
  %arrayidx.4.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv8.4.i, ptr %arrayidx.4.i, align 1
  %26 = lshr i64 %call.i.i, 40
  %conv8.5.i = trunc i64 %26 to i8
  %arrayidx.5.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv8.5.i, ptr %arrayidx.5.i, align 1
  %dpll_freq.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 4
  %28 = ptrtoint ptr %dpll_freq.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dpll_freq.i, align 2
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %9, i32 0, i32 10
  %30 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  %call.i24.i = call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef %conv.i.i, ptr noundef nonnull %buf.i, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool8.not = icmp eq i32 %call.i24.i, 0
  br i1 %tobool8.not, label %if.else, label %_idtcm_adjfine.exit.do.end_crit_edge

_idtcm_adjfine.exit.do.end_crit_edge:             ; preds = %_idtcm_adjfine.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %_idtcm_adjfine.exit.do.end_crit_edge, %_idtcm_adjfine.exit.thread
  %retval.0.i25 = phi i32 [ %call.i, %_idtcm_adjfine.exit.thread ], [ %call.i24.i, %_idtcm_adjfine.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.30, i32 noundef 1933, ptr noundef nonnull @.str.66) #10
  br label %cleanup

if.else:                                          ; preds = %_idtcm_adjfine.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %current_freq_scaled_ppm to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %scaled_ppm, ptr %current_freq_scaled_ppm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ %retval.0.i25, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_adjphase(ptr noundef %ptp, i32 noundef %delta) #2 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %4 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %mode.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 13
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %entry._idtcm_adjphase.exit_crit_edge, label %if.then.i

entry._idtcm_adjphase.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjphase.exit

if.then.i:                                        ; preds = %entry
  %configure_write_phase.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 15
  %8 = ptrtoint ptr %configure_write_phase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %configure_write_phase.i, align 4
  %call.i = tail call i32 %9(ptr noundef %ptp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i._idtcm_adjphase.exit_crit_edge, label %_idtcm_adjphase.exit.thread

if.then.i._idtcm_adjphase.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjphase.exit

_idtcm_adjphase.exit.thread:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %11) #7
  br label %do.end

_idtcm_adjphase.exit:                             ; preds = %if.then.i._idtcm_adjphase.exit_crit_edge, %entry._idtcm_adjphase.exit_crit_edge
  %conv.i = sext i32 %delta to i64
  %mul.i = mul nsw i64 %conv.i, 1000
  %12 = tail call i64 @llvm.smax.i64(i64 %mul.i, i64 -107374182350) #7
  %13 = tail call i64 @llvm.smin.i64(i64 %12, i64 107374182350) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %14 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !249
  %call.i.i = call i64 @div_s64_rem(i64 noundef %13, i32 noundef 50, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %conv17.i = trunc i64 %call.i.i to i8
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17.i, ptr %buf.i, align 4
  %16 = lshr i64 %call.i.i, 8
  %conv17.1.i = trunc i64 %16 to i8
  %arrayidx.1.i = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv17.1.i, ptr %arrayidx.1.i, align 1
  %18 = lshr i64 %call.i.i, 16
  %conv17.2.i = trunc i64 %18 to i8
  %arrayidx.2.i = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv17.2.i, ptr %arrayidx.2.i, align 2
  %20 = lshr i64 %call.i.i, 24
  %conv17.3.i = trunc i64 %20 to i8
  %arrayidx.3.i = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17.3.i, ptr %arrayidx.3.i, align 1
  %dpll_phase.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 3
  %22 = ptrtoint ptr %dpll_phase.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dpll_phase.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %23 to i32
  %call.i35.i = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef %conv.i.i, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool.not = icmp eq i32 %call.i35.i, 0
  br i1 %tobool.not, label %_idtcm_adjphase.exit.if.end_crit_edge, label %_idtcm_adjphase.exit.do.end_crit_edge

_idtcm_adjphase.exit.do.end_crit_edge:            ; preds = %_idtcm_adjphase.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

_idtcm_adjphase.exit.if.end_crit_edge:            ; preds = %_idtcm_adjphase.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %_idtcm_adjphase.exit.do.end_crit_edge, %_idtcm_adjphase.exit.thread
  %retval.0.i9 = phi i32 [ %call.i, %_idtcm_adjphase.exit.thread ], [ %call.i35.i, %_idtcm_adjphase.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef 1910, ptr noundef nonnull @.str.67) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %_idtcm_adjphase.exit.if.end_crit_edge
  %retval.0.i10 = phi i32 [ %retval.0.i9, %do.end ], [ 0, %_idtcm_adjphase.exit.if.end_crit_edge ]
  ret i32 %retval.0.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_adjtime_deprecated(ptr noundef %ptp, i64 noundef %delta) #2 align 64 {
entry:
  %buf.i.i = alloca [11 x i8], align 1
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %4 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %6 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %7 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 150000, i64 %7)
  %cmp2.i = icmp slt i64 %7, 150000
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %do_phase_pull_in.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 16
  %8 = ptrtoint ptr %do_phase_pull_in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %do_phase_pull_in.i, align 4
  %conv.i = trunc i64 %delta to i32
  %call.i = tail call i32 %9(ptr noundef %ptp, i32 noundef %conv.i, i32 noundef 0) #7
  br label %_idtcm_adjtime_deprecated.exit

if.else.i:                                        ; preds = %entry
  %calculate_overhead_flag.i = getelementptr inbounds %struct.idtcm, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %calculate_overhead_flag.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %calculate_overhead_flag.i, align 8
  %11 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i.i) #7
  %13 = call ptr @memset(ptr %buf.i.i, i32 0, i32 11)
  %hw_dpll_n.i.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 11
  %14 = ptrtoint ptr %hw_dpll_n.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_dpll_n.i.i, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.idtcm, ptr %12, i32 0, i32 10
  %16 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 152
  %call.i.i.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %add.i.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 11) #7
  %call3.i.i = call i64 @ktime_get_raw() #7
  %18 = ptrtoint ptr %hw_dpll_n.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hw_dpll_n.i.i, align 4
  %20 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i38.i.i = zext i16 %19 to i32
  %add.i39.i.i = add nuw nsw i32 %conv.i38.i.i, 152
  %call.i40.i.i = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef %add.i39.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i40.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.set_tod_write_overhead.exit.thread.i_crit_edge

if.else.i.set_tod_write_overhead.exit.thread.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_tod_write_overhead.exit.thread.i

if.end.i.i:                                       ; preds = %if.else.i
  %call7.i.i = call i64 @ktime_get_raw() #7
  %call3.1.i.i = call i64 @ktime_get_raw() #7
  %22 = ptrtoint ptr %hw_dpll_n.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hw_dpll_n.i.i, align 4
  %24 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i38.1.i.i = zext i16 %23 to i32
  %add.i39.1.i.i = add nuw nsw i32 %conv.i38.1.i.i, 152
  %call.i40.1.i.i = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef %add.i39.1.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.i40.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.end.i, label %if.end.i.i.set_tod_write_overhead.exit.thread.i_crit_edge

if.end.i.i.set_tod_write_overhead.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_tod_write_overhead.exit.thread.i

set_tod_write_overhead.exit.thread.i:             ; preds = %if.end.i.i.set_tod_write_overhead.exit.thread.i_crit_edge, %if.else.i.set_tod_write_overhead.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i40.1.i.i, %if.end.i.i.set_tod_write_overhead.exit.thread.i_crit_edge ], [ %call.i40.i.i, %if.else.i.set_tod_write_overhead.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i.i) #7
  br label %_idtcm_adjtime_deprecated.exit.thread

if.end.i:                                         ; preds = %if.end.i.i
  %sub.i.i = sub i64 %call7.i.i, %call3.i.i
  %call7.1.i.i = call i64 @ktime_get_raw() #7
  %sub.1.i.i = sub i64 %call7.1.i.i, %call3.1.i.i
  %26 = call i64 @llvm.smin.i64(i64 %sub.1.i.i, i64 %sub.i.i) #7
  %tod_write_overhead_ns.i.i = getelementptr inbounds %struct.idtcm, ptr %12, i32 0, i32 12
  %27 = ptrtoint ptr %tod_write_overhead_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tod_write_overhead_ns.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i.i) #7
  %call5.i = call fastcc i32 @_idtcm_gettime_immediate(ptr noundef %ptp, ptr noundef nonnull %ts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i._idtcm_adjtime_deprecated.exit.thread_crit_edge

if.end.i._idtcm_adjtime_deprecated.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjtime_deprecated.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %29)
  %cmp.i.i = icmp sgt i64 %29, 9223372035
  br i1 %cmp.i.i, label %if.end8.i.timespec64_to_ns.exit.i_crit_edge, label %if.end.i30.i

if.end8.i.timespec64_to_ns.exit.i_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i

if.end.i30.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %29)
  %cmp2.i.i = icmp slt i64 %29, -9223372035
  br i1 %cmp2.i.i, label %if.end.i30.i.timespec64_to_ns.exit.i_crit_edge, label %if.end4.i.i

if.end.i30.i.timespec64_to_ns.exit.i_crit_edge:   ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i

if.end4.i.i:                                      ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nsw i64 %29, 1000000000
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %30 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %31 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %timespec64_to_ns.exit.i

timespec64_to_ns.exit.i:                          ; preds = %if.end4.i.i, %if.end.i30.i.timespec64_to_ns.exit.i_crit_edge, %if.end8.i.timespec64_to_ns.exit.i_crit_edge
  %retval.0.i31.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.end8.i.timespec64_to_ns.exit.i_crit_edge ], [ -9223372036854775808, %if.end.i30.i.timespec64_to_ns.exit.i_crit_edge ]
  %add.i = add i64 %retval.0.i31.i, %delta
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %add.i) #7
  %call11.i = call fastcc i32 @_idtcm_settime_deprecated(ptr noundef %ptp, ptr noundef nonnull %ts.i) #7
  br label %_idtcm_adjtime_deprecated.exit

_idtcm_adjtime_deprecated.exit.thread:            ; preds = %if.end.i._idtcm_adjtime_deprecated.exit.thread_crit_edge, %set_tod_write_overhead.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %set_tod_write_overhead.exit.thread.i ], [ %call5.i, %if.end.i._idtcm_adjtime_deprecated.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %33) #7
  br label %do.end

_idtcm_adjtime_deprecated.exit:                   ; preds = %timespec64_to_ns.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call11.i, %timespec64_to_ns.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  %34 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %_idtcm_adjtime_deprecated.exit.if.end_crit_edge, label %_idtcm_adjtime_deprecated.exit.do.end_crit_edge

_idtcm_adjtime_deprecated.exit.do.end_crit_edge:  ; preds = %_idtcm_adjtime_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

_idtcm_adjtime_deprecated.exit.if.end_crit_edge:  ; preds = %_idtcm_adjtime_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %_idtcm_adjtime_deprecated.exit.do.end_crit_edge, %_idtcm_adjtime_deprecated.exit.thread
  %retval.0.i9 = phi i32 [ %retval.0.i.ph, %_idtcm_adjtime_deprecated.exit.thread ], [ %retval.0.i, %_idtcm_adjtime_deprecated.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.30, i32 noundef 1858, ptr noundef nonnull @.str.68) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %_idtcm_adjtime_deprecated.exit.if.end_crit_edge
  %retval.0.i10 = phi i32 [ %retval.0.i9, %do.end ], [ 0, %_idtcm_adjtime_deprecated.exit.if.end_crit_edge ]
  ret i32 %retval.0.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %call = tail call fastcc i32 @_idtcm_gettime_immediate(ptr noundef %ptp, ptr noundef %ts)
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 1805, ptr noundef nonnull @.str.71) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_settime_deprecated(ptr nocapture noundef readonly %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %call = tail call fastcc i32 @_idtcm_settime_deprecated(ptr noundef %ptp, ptr noundef %ts)
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 1823, ptr noundef nonnull @.str.72) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %5, label %entry.sw.epilog.thread_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb11
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @idtcm_perout_enable(ptr noundef %ptp, ptr noundef %7, i1 noundef zeroext false)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.else.sw.epilog.thread_crit_edge

if.else.sw.epilog.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

lor.lhs.false:                                    ; preds = %if.else
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %11)
  %cmp.not = icmp eq i64 %11, 1
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.sw.epilog.thread_crit_edge

lor.lhs.false.sw.epilog.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nsec5 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %nsec5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsec5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.else8, label %lor.lhs.false3.sw.epilog.thread_crit_edge

lor.lhs.false3.sw.epilog.thread_crit_edge:        ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.else8:                                         ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @idtcm_perout_enable(ptr noundef %ptp, ptr noundef %7, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %14 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %rsv = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %rsv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rsv, align 8
  %conv12 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idtcm1, align 4
  %extts_mask.i = getelementptr inbounds %struct.idtcm, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %extts_mask.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %extts_mask.i, align 4
  %conv.i = and i32 %16, 255
  %shl.i = shl nuw i32 1, %conv.i
  %23 = and i32 %16, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 0
  br i1 %cmp.i.not, label %if.end.i, label %sw.bb11.sw.epilog.thread_crit_edge

sw.bb11.sw.epilog.thread_crit_edge:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool13.not = icmp eq i32 %on, 0
  br i1 %tobool13.not, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv12)
  %cmp7.i = icmp ugt i8 %conv12, 15
  br i1 %cmp7.i, label %if.then5.i.sw.epilog.thread_crit_edge, label %if.end10.i

if.then5.i.sw.epilog.thread_crit_edge:            ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end10.i:                                       ; preds = %if.then5.i
  %conv12.i = zext i8 %22 to i32
  %and.i = and i32 %shl.i, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %sw.epilog.thread39

sw.epilog.thread39:                               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %25) #7
  br label %if.end19

if.end16.i:                                       ; preds = %if.end10.i
  %arrayidx.i = getelementptr [4 x %struct.idtcm_channel], ptr %20, i32 0, i32 %conv.i
  %call.i = tail call fastcc i32 @_idtcm_set_scsr_read_trig(ptr noundef %arrayidx.i, i32 noundef 3, i8 noundef zeroext %conv12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp eq i32 %call.i, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end16.i.if.end36.i_crit_edge

if.end16.i.if.end36.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %extts_mask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %extts_mask.i, align 4
  %28 = trunc i32 %shl.i to i8
  %conv24.i = or i8 %27, %28
  store i8 %conv24.i, ptr %extts_mask.i, align 4
  %arrayidx26.i = getelementptr %struct.idtcm, ptr %20, i32 0, i32 7, i32 %conv.i
  %29 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ptp, ptr %arrayidx26.i, align 4
  %refn.i = getelementptr [4 x %struct.idtcm_channel], ptr %20, i32 0, i32 %conv.i, i32 20
  %30 = ptrtoint ptr %refn.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv12, ptr %refn.i, align 4
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = trunc i32 %shl.i to i8
  %32 = xor i8 %31, -1
  %conv35.i = and i8 %22, %32
  %33 = ptrtoint ptr %extts_mask.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv35.i, ptr %extts_mask.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then20.i, %if.end16.i.if.end36.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.then20.i ], [ %call.i, %if.end16.i.if.end36.i_crit_edge ], [ 0, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp38.i = icmp eq i8 %22, 0
  br i1 %cmp38.i, label %land.lhs.true.i, label %if.end36.i.sw.epilog_crit_edge

if.end36.i.sw.epilog_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.end36.i
  %34 = ptrtoint ptr %extts_mask.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %extts_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool42.not.i = icmp eq i8 %35, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %if.then43.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %extts_work.i = getelementptr inbounds %struct.idtcm, ptr %20, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %extts_work.i, i32 noundef 10) #7
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.then5.i.sw.epilog.thread_crit_edge, %sw.bb11.sw.epilog.thread_crit_edge, %lor.lhs.false3.sw.epilog.thread_crit_edge, %lor.lhs.false.sw.epilog.thread_crit_edge, %if.else.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  %err.0.ph = phi i32 [ -22, %if.then5.i.sw.epilog.thread_crit_edge ], [ -22, %sw.bb11.sw.epilog.thread_crit_edge ], [ -34, %if.else.sw.epilog.thread_crit_edge ], [ -34, %lor.lhs.false.sw.epilog.thread_crit_edge ], [ -34, %lor.lhs.false3.sw.epilog.thread_crit_edge ], [ -95, %entry.sw.epilog.thread_crit_edge ]
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %38) #7
  br label %do.end

sw.epilog:                                        ; preds = %if.then43.i, %land.lhs.true.i.sw.epilog_crit_edge, %if.end36.i.sw.epilog_crit_edge, %if.else8, %if.then
  %err.0 = phi i32 [ %call9, %if.else8 ], [ %call, %if.then ], [ %err.0.i, %if.then43.i ], [ %err.0.i, %land.lhs.true.i.sw.epilog_crit_edge ], [ %err.0.i, %if.end36.i.sw.epilog_crit_edge ]
  %39 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool16.not = icmp eq i32 %err.0, 0
  br i1 %tobool16.not, label %sw.epilog.if.end19_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %sw.epilog.thread
  %err.037 = phi i32 [ %err.0.ph, %sw.epilog.thread ], [ %err.0, %sw.epilog.do.end_crit_edge ]
  %41 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %idtcm1, align 4
  %dev = getelementptr inbounds %struct.idtcm, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %err.037) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end, %sw.epilog.if.end19_crit_edge, %sw.epilog.thread39
  %err.038 = phi i32 [ %err.037, %do.end ], [ 0, %sw.epilog.if.end19_crit_edge ], [ 0, %sw.epilog.thread39 ]
  ret i32 %err.038
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_work_handler(ptr noundef %ptp) #2 align 64 {
entry:
  %remainder.i.i.i = alloca i32, align 4
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %current_freq_scaled_ppm.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 17
  %4 = ptrtoint ptr %current_freq_scaled_ppm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_freq_scaled_ppm.i, align 4
  %6 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %mode.i.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 13
  %8 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %entry._idtcm_adjfine.exit.i_crit_edge, label %if.then.i.i

entry._idtcm_adjfine.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjfine.exit.i

if.then.i.i:                                      ; preds = %entry
  %configure_write_frequency.i.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 14
  %10 = ptrtoint ptr %configure_write_frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %configure_write_frequency.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %ptp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i._idtcm_adjfine.exit.i_crit_edge, label %_idtcm_adjfine.exit.thread.i

if.then.i.i._idtcm_adjfine.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjfine.exit.i

_idtcm_adjfine.exit.thread.i:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br label %idtcm_stop_phase_pull_in.exit

_idtcm_adjfine.exit.i:                            ; preds = %if.then.i.i._idtcm_adjfine.exit.i_crit_edge, %entry._idtcm_adjfine.exit.i_crit_edge
  %conv.i.i = sext i32 %5 to i64
  %mul.i.i = mul nsw i64 %conv.i.i, 244140625
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %12 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !249
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %mul.i.i, i32 noundef 1776, ptr noundef nonnull %remainder.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %conv8.i.i = trunc i64 %call.i.i.i to i8
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8.i.i, ptr %buf.i.i, align 1
  %14 = lshr i64 %call.i.i.i, 8
  %conv8.1.i.i = trunc i64 %14 to i8
  %arrayidx.1.i.i = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8.1.i.i, ptr %arrayidx.1.i.i, align 1
  %16 = lshr i64 %call.i.i.i, 16
  %conv8.2.i.i = trunc i64 %16 to i8
  %arrayidx.2.i.i = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv8.2.i.i, ptr %arrayidx.2.i.i, align 1
  %18 = lshr i64 %call.i.i.i, 24
  %conv8.3.i.i = trunc i64 %18 to i8
  %arrayidx.3.i.i = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8.3.i.i, ptr %arrayidx.3.i.i, align 1
  %20 = lshr i64 %call.i.i.i, 32
  %conv8.4.i.i = trunc i64 %20 to i8
  %arrayidx.4.i.i = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8.4.i.i, ptr %arrayidx.4.i.i, align 1
  %22 = lshr i64 %call.i.i.i, 40
  %conv8.5.i.i = trunc i64 %22 to i8
  %arrayidx.5.i.i = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8.5.i.i, ptr %arrayidx.5.i.i, align 1
  %dpll_freq.i.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 4
  %24 = ptrtoint ptr %dpll_freq.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dpll_freq.i.i, align 2
  %regmap.i.i.i = getelementptr inbounds %struct.idtcm, ptr %7, i32 0, i32 10
  %26 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i.i = zext i16 %25 to i32
  %call.i24.i.i = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef %conv.i.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.i)
  %tobool.not.i = icmp eq i32 %call.i24.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %_idtcm_adjfine.exit.i.idtcm_stop_phase_pull_in.exit_crit_edge

_idtcm_adjfine.exit.i.idtcm_stop_phase_pull_in.exit_crit_edge: ; preds = %_idtcm_adjfine.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_stop_phase_pull_in.exit

if.end.i:                                         ; preds = %_idtcm_adjfine.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %phase_pull_in.i = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 18
  %28 = ptrtoint ptr %phase_pull_in.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %phase_pull_in.i, align 4
  br label %idtcm_stop_phase_pull_in.exit

idtcm_stop_phase_pull_in.exit:                    ; preds = %if.end.i, %_idtcm_adjfine.exit.i.idtcm_stop_phase_pull_in.exit_crit_edge, %_idtcm_adjfine.exit.thread.i
  %29 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %30) #7
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idtcm_gettime_immediate(ptr noundef %channel, ptr nocapture noundef writeonly %ts) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %extts_mask2 = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extts_mask2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extts_mask2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc zeroext i8 @idtcm_enable_extts_mask(ptr noundef %channel, i8 noundef zeroext %3, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %extts_mask.0 = phi i8 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idtcm1, align 4
  %fw_ver.i = getelementptr inbounds %struct.idtcm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ult i32 %7, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !249
  %tod_read_primary16.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 8
  %9 = ptrtoint ptr %tod_read_primary16.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tod_read_primary16.i, align 2
  %regmap.i57.i = getelementptr inbounds %struct.idtcm, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %regmap.i57.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i57.i, align 4
  %conv.i58.i = zext i16 %10 to i32
  %conv1.i.i = select i1 %cmp.i, i32 14, i32 15
  %add.i59.i = add nuw nsw i32 %conv1.i.i, %conv.i58.i
  %call.i60.i = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %add.i59.i, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool18.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool18.not.i, label %_idtcm_set_scsr_read_trig.exit, label %_idtcm_set_scsr_read_trig.exit.thread

_idtcm_set_scsr_read_trig.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %if.end7

_idtcm_set_scsr_read_trig.exit:                   ; preds = %if.end
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 1
  %15 = and i8 %14, -32
  %16 = or i8 %15, 1
  store i8 %16, ptr %val.i, align 1
  %17 = ptrtoint ptr %tod_read_primary16.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tod_read_primary16.i, align 2
  %19 = ptrtoint ptr %regmap.i57.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i57.i, align 4
  %conv.i62.i = zext i16 %18 to i32
  %add.i64.i = add nuw nsw i32 %conv1.i.i, %conv.i62.i
  %call.i65.i = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef %add.i64.i, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp = icmp eq i32 %call.i65.i, 0
  br i1 %cmp, label %if.then5, label %_idtcm_set_scsr_read_trig.exit.if.end7_crit_edge

_idtcm_set_scsr_read_trig.exit.if.end7_crit_edge: ; preds = %_idtcm_set_scsr_read_trig.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %_idtcm_set_scsr_read_trig.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call fastcc i32 @_idtcm_gettime(ptr noundef %channel, ptr noundef %ts, i8 noundef zeroext 10)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %_idtcm_set_scsr_read_trig.exit.if.end7_crit_edge, %_idtcm_set_scsr_read_trig.exit.thread
  %err.0 = phi i32 [ %call6, %if.then5 ], [ %call.i65.i, %_idtcm_set_scsr_read_trig.exit.if.end7_crit_edge ], [ %call.i60.i, %_idtcm_set_scsr_read_trig.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extts_mask.0)
  %tobool8.not = icmp eq i8 %extts_mask.0, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call fastcc zeroext i8 @idtcm_enable_extts_mask(ptr noundef %channel, i8 noundef zeroext %extts_mask.0, i1 noundef zeroext true)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idtcm_settime_deprecated(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  %sync_src.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %temp.i.i = alloca i8, align 1
  %temp.i = alloca i8, align 1
  %dividend.addr.i.i.i = alloca i64, align 8
  %buf.i = alloca [11 x i8], align 1
  %cmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 3
  %5 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 4
  %6 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 5
  %7 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 6
  %8 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 7
  %9 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 8
  %10 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 9
  %11 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #7
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cmd.i, align 1, !annotation !249
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %local_ts.sroa.0.0.copyload17.i = load i64, ptr %ts, align 8
  %local_ts.sroa.7.0.ts.sroa_idx.i = getelementptr inbounds i8, ptr %ts, i32 8
  %14 = ptrtoint ptr %local_ts.sroa.7.0.ts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %local_ts.sroa.7.0.copyload18.i = load i32, ptr %local_ts.sroa.7.0.ts.sroa_idx.i, align 8
  %hw_dpll_n.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 11
  %15 = ptrtoint ptr %hw_dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_dpll_n.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i, align 4
  %conv.i1.i = zext i16 %16 to i32
  %add.i2.i = add nuw nsw i32 %conv.i1.i, 137
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef %add.i2.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry._idtcm_set_dpll_hw_tod.exit.thread_crit_edge

entry._idtcm_set_dpll_hw_tod.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_hw_tod.exit.thread

if.end.i:                                         ; preds = %entry
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd.i, align 1
  %21 = and i8 %20, -16
  %22 = or i8 %21, 8
  store i8 %22, ptr %cmd.i, align 1
  %23 = ptrtoint ptr %hw_dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_dpll_n.i, align 4
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %conv.i4.i = zext i16 %24 to i32
  %add.i5.i = add nuw nsw i32 %conv.i4.i, 137
  %call.i6.i = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %add.i5.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool8.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool8.not.i, label %if.end23.i, label %if.end.i._idtcm_set_dpll_hw_tod.exit.thread_crit_edge

if.end.i._idtcm_set_dpll_hw_tod.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_hw_tod.exit.thread

if.end23.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cmd.i, align 1
  %29 = and i8 %28, -9
  store i8 %29, ptr %cmd.i, align 1
  %30 = ptrtoint ptr %hw_dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_dpll_n.i, align 4
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %conv.i8.i = zext i16 %31 to i32
  %add.i9.i = add nuw nsw i32 %conv.i8.i, 137
  %call.i10.i = call i32 @regmap_bulk_write(ptr noundef %33, i32 noundef %add.i9.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #7
  %calculate_overhead_flag.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %calculate_overhead_flag.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %calculate_overhead_flag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool32.not.i = icmp eq i8 %35, 0
  %extract.t.i = trunc i64 %local_ts.sroa.0.0.copyload17.i to i8
  %extract.i = lshr i64 %local_ts.sroa.0.0.copyload17.i, 8
  %extract.t22.i = trunc i64 %extract.i to i8
  %extract25.i = lshr i64 %local_ts.sroa.0.0.copyload17.i, 16
  %extract.t26.i = trunc i64 %extract25.i to i8
  %extract29.i = lshr i64 %local_ts.sroa.0.0.copyload17.i, 24
  %extract.t30.i = trunc i64 %extract29.i to i8
  %extract33.i = lshr i64 %local_ts.sroa.0.0.copyload17.i, 32
  %extract.t34.i = trunc i64 %extract33.i to i8
  %extract37.i = lshr i64 %local_ts.sroa.0.0.copyload17.i, 40
  %extract.t38.i = trunc i64 %extract37.i to i8
  br i1 %tobool32.not.i, label %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge, label %if.then33.i

if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_hw_tod.exit

if.then33.i:                                      ; preds = %if.end23.i
  %call34.i = call i64 @ktime_get_raw() #7
  %start_time.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start_time.i, align 8
  %tod_write_overhead_ns.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %tod_write_overhead_ns.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tod_write_overhead_ns.i, align 8
  %conv.i.i = sext i32 %local_ts.sroa.7.0.copyload18.i to i64
  %sub.i = add i64 %call34.i, %conv.i.i
  %add.i = sub i64 %sub.i, %37
  %add.i.i = add i64 %add.i, %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #7
  %40 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add.i.i, ptr %dividend.addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i.i)
  %cmp1.i.i.i = icmp ugt i64 %add.i.i, 999999999
  %extract.t.i.i = trunc i64 %add.i.i to i32
  br i1 %cmp1.i.i.i, label %if.then33.i.while.body.i.i.i_crit_edge, label %if.then33.i.timespec64_add_ns.exit.i_crit_edge

if.then33.i.timespec64_add_ns.exit.i_crit_edge:   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_add_ns.exit.i

if.then33.i.while.body.i.i.i_crit_edge:           ; preds = %if.then33.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then33.i.while.body.i.i.i_crit_edge
  %ret.02.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.then33.i.while.body.i.i.i_crit_edge ]
  %41 = phi i64 [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i, %if.then33.i.while.body.i.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i, i64 %41) #7, !srcloc !254
  %42 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dividend.addr.i.i.i, align 8
  %sub.i.i.i = add i64 %43, -1000000000
  store i64 %sub.i.i.i, ptr %dividend.addr.i.i.i, align 8
  %inc.i.i.i = add i32 %ret.02.i.i.i, 1
  %cmp.i.i.i = icmp ugt i64 %sub.i.i.i, 999999999
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

__iter_div_u64_rem.exit.loopexit.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t7.le.i.i = trunc i64 %sub.i.i.i to i32
  br label %timespec64_add_ns.exit.i

timespec64_add_ns.exit.i:                         ; preds = %__iter_div_u64_rem.exit.loopexit.i.i, %if.then33.i.timespec64_add_ns.exit.i_crit_edge
  %.lcssa.i.off0.i.i = phi i32 [ %extract.t.i.i, %if.then33.i.timespec64_add_ns.exit.i_crit_edge ], [ %extract.t7.le.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  %ret.0.lcssa.i.i.i = phi i32 [ 0, %if.then33.i.timespec64_add_ns.exit.i_crit_edge ], [ %inc.i.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #7
  %conv1.i.i = zext i32 %ret.0.lcssa.i.i.i to i64
  %add2.i.i = add i64 %local_ts.sroa.0.0.copyload17.i, %conv1.i.i
  %44 = ptrtoint ptr %calculate_overhead_flag.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %calculate_overhead_flag.i, align 8
  %extract.t21.i = trunc i64 %add2.i.i to i8
  %extract23.i = lshr i64 %add2.i.i, 8
  %extract.t24.i = trunc i64 %extract23.i to i8
  %extract27.i = lshr i64 %add2.i.i, 16
  %extract.t28.i = trunc i64 %extract27.i to i8
  %extract31.i = lshr i64 %add2.i.i, 24
  %extract.t32.i = trunc i64 %extract31.i to i8
  %extract35.i = lshr i64 %add2.i.i, 32
  %extract.t36.i = trunc i64 %extract35.i to i8
  %extract39.i = lshr i64 %add2.i.i, 40
  %extract.t40.i = trunc i64 %extract39.i to i8
  br label %_idtcm_set_dpll_hw_tod.exit

_idtcm_set_dpll_hw_tod.exit.thread:               ; preds = %if.end.i._idtcm_set_dpll_hw_tod.exit.thread_crit_edge, %entry._idtcm_set_dpll_hw_tod.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i6.i, %if.end.i._idtcm_set_dpll_hw_tod.exit.thread_crit_edge ], [ %call.i.i, %entry._idtcm_set_dpll_hw_tod.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #7
  br label %do.end

_idtcm_set_dpll_hw_tod.exit:                      ; preds = %timespec64_add_ns.exit.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge
  %local_ts.sroa.7.0.i = phi i32 [ %local_ts.sroa.7.0.copyload18.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %.lcssa.i.off0.i.i, %timespec64_add_ns.exit.i ]
  %local_ts.sroa.0.0.off0.i = phi i8 [ %extract.t.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %extract.t21.i, %timespec64_add_ns.exit.i ]
  %local_ts.sroa.0.0.off8.i = phi i8 [ %extract.t22.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %extract.t24.i, %timespec64_add_ns.exit.i ]
  %local_ts.sroa.0.0.off16.i = phi i8 [ %extract.t26.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %extract.t28.i, %timespec64_add_ns.exit.i ]
  %local_ts.sroa.0.0.off24.i = phi i8 [ %extract.t30.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %extract.t32.i, %timespec64_add_ns.exit.i ]
  %local_ts.sroa.0.0.off32.i = phi i8 [ %extract.t34.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %extract.t36.i, %timespec64_add_ns.exit.i ]
  %local_ts.sroa.0.0.off40.i = phi i8 [ %extract.t38.i, %if.end23.i._idtcm_set_dpll_hw_tod.exit_crit_edge ], [ %extract.t40.i, %timespec64_add_ns.exit.i ]
  %45 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %buf.i, align 1
  %conv5.i.i = trunc i32 %local_ts.sroa.7.0.i to i8
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv5.i.i, ptr %2, align 1
  %47 = lshr i32 %local_ts.sroa.7.0.i, 8
  %conv5.1.i.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv5.1.i.i, ptr %3, align 1
  %49 = lshr i32 %local_ts.sroa.7.0.i, 16
  %conv5.2.i.i = trunc i32 %49 to i8
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv5.2.i.i, ptr %4, align 1
  %51 = lshr i32 %local_ts.sroa.7.0.i, 24
  %conv5.3.i.i = trunc i32 %51 to i8
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv5.3.i.i, ptr %5, align 1
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %local_ts.sroa.0.0.off0.i, ptr %6, align 1
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %local_ts.sroa.0.0.off8.i, ptr %7, align 1
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %local_ts.sroa.0.0.off16.i, ptr %8, align 1
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %local_ts.sroa.0.0.off24.i, ptr %9, align 1
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %local_ts.sroa.0.0.off32.i, ptr %10, align 1
  %58 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %local_ts.sroa.0.0.off40.i, ptr %11, align 1
  %59 = ptrtoint ptr %hw_dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hw_dpll_n.i, align 4
  %61 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i.i, align 4
  %conv.i13.i = zext i16 %60 to i32
  %add.i14.i = add nuw nsw i32 %conv.i13.i, 152
  %call.i15.i = call i32 @regmap_bulk_write(ptr noundef %62, i32 noundef %add.i14.i, ptr noundef nonnull %buf.i, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not, label %if.end, label %_idtcm_set_dpll_hw_tod.exit.do.end_crit_edge

_idtcm_set_dpll_hw_tod.exit.do.end_crit_edge:     ; preds = %_idtcm_set_dpll_hw_tod.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %_idtcm_set_dpll_hw_tod.exit.do.end_crit_edge, %_idtcm_set_dpll_hw_tod.exit.thread
  %retval.0.i15 = phi i32 [ %retval.0.i.ph, %_idtcm_set_dpll_hw_tod.exit.thread ], [ %call.i15.i, %_idtcm_set_dpll_hw_tod.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #10
  br label %cleanup

if.end:                                           ; preds = %_idtcm_set_dpll_hw_tod.exit
  %65 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #7
  %67 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %temp.i, align 1, !annotation !249
  %output_mask2.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 22
  %68 = ptrtoint ptr %output_mask2.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %output_mask2.i, align 2
  %regmap.i.i8 = getelementptr inbounds %struct.idtcm, ptr %66, i32 0, i32 10
  %70 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i.i8, align 4
  %call.i.i9 = call i32 @regmap_bulk_read(ptr noundef %71, i32 noundef 42964, ptr noundef nonnull %temp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i10, label %if.end.i11, label %if.end.idtcm_sync_pps_output.exit_crit_edge

if.end.idtcm_sync_pps_output.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_sync_pps_output.exit

if.end.i11:                                       ; preds = %if.end
  %72 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %temp.i, align 1
  %74 = and i8 %73, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %74)
  %cmp.i = icmp eq i8 %74, 5
  %75 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i.i8, align 4
  %call.i167.i = call i32 @regmap_bulk_read(ptr noundef %76, i32 noundef 42988, ptr noundef nonnull %temp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i)
  %tobool7.not.i = icmp eq i32 %call.i167.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i11.idtcm_sync_pps_output.exit_crit_edge

if.end.i11.idtcm_sync_pps_output.exit_crit_edge:  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_sync_pps_output.exit

if.end9.i:                                        ; preds = %if.end.i11
  %77 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %temp.i, align 1
  %79 = and i8 %78, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %79)
  %cmp12.i = icmp eq i8 %79, 5
  %80 = zext i1 %cmp.i to i16
  %sync_src.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i
  %output_mask.0180.i = phi i16 [ %69, %if.end9.i ], [ %output_mask.2.i, %for.inc.i.for.body.i_crit_edge ]
  %pll.0177.i = phi i8 [ 0, %if.end9.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %pll.0177.i)
  %cmp20.i = icmp ult i8 %pll.0177.i, 4
  br i1 %cmp20.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = trunc i16 %output_mask.0180.i to i8
  %conv25.i = and i8 %81, 1
  %82 = lshr i8 %81, 1
  %conv30.i = and i8 %82, 1
  %83 = lshr i16 %output_mask.0180.i, 2
  br label %if.end109.i

if.else.i:                                        ; preds = %for.body.i
  %trunc.i = trunc i8 %pll.0177.i to i7
  %84 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.107)
  switch i7 %trunc.i, label %if.then93.i [
    i7 4, label %if.then37.i
    i7 5, label %if.then53.i
    i7 6, label %if.then73.i
  ]

if.then37.i:                                      ; preds = %if.else.i
  br i1 %cmp.i, label %if.then37.i.if.end109.i_crit_edge, label %if.then41.i

if.then37.i.if.end109.i_crit_edge:                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then41.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = trunc i16 %output_mask.0180.i to i8
  %conv44.i = and i8 %85, 1
  %86 = lshr i16 %output_mask.0180.i, 1
  br label %if.end109.i

if.then53.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = trunc i16 %output_mask.0180.i to i8
  %conv58.i = and i8 %87, 1
  %qn_plus_1.0.i = select i1 %cmp.i, i8 %conv58.i, i8 0
  %output_mask.1.i = lshr i16 %output_mask.0180.i, %80
  %88 = trunc i16 %output_mask.1.i to i8
  %conv65.i = and i8 %88, 1
  %89 = lshr i16 %output_mask.1.i, 1
  br label %if.end109.i

if.then73.i:                                      ; preds = %if.else.i
  %90 = trunc i16 %output_mask.0180.i to i8
  %conv76.i = and i8 %90, 1
  %91 = lshr i16 %output_mask.0180.i, 1
  br i1 %cmp12.i, label %if.then81.i, label %if.then73.i.if.end109.i_crit_edge

if.then73.i.if.end109.i_crit_edge:                ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then81.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = trunc i16 %91 to i8
  %conv84.i = and i8 %92, 1
  %93 = lshr i16 %output_mask.0180.i, 2
  br label %if.end109.i

if.then93.i:                                      ; preds = %if.else.i
  br i1 %cmp12.i, label %if.then93.i.if.end109.i_crit_edge, label %if.then97.i

if.then93.i.if.end109.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then97.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = trunc i16 %output_mask.0180.i to i8
  %conv100.i = and i8 %94, 1
  %95 = lshr i16 %output_mask.0180.i, 1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then97.i, %if.then93.i.if.end109.i_crit_edge, %if.then81.i, %if.then73.i.if.end109.i_crit_edge, %if.then53.i, %if.then41.i, %if.then37.i.if.end109.i_crit_edge, %if.then22.i
  %qn.0.i = phi i8 [ %conv25.i, %if.then22.i ], [ %conv44.i, %if.then41.i ], [ 0, %if.then37.i.if.end109.i_crit_edge ], [ %conv65.i, %if.then53.i ], [ %conv76.i, %if.then81.i ], [ %conv76.i, %if.then73.i.if.end109.i_crit_edge ], [ %conv100.i, %if.then97.i ], [ 0, %if.then93.i.if.end109.i_crit_edge ]
  %qn_plus_1.1.i = phi i8 [ %conv30.i, %if.then22.i ], [ 0, %if.then41.i ], [ 0, %if.then37.i.if.end109.i_crit_edge ], [ %qn_plus_1.0.i, %if.then53.i ], [ %conv84.i, %if.then81.i ], [ 0, %if.then73.i.if.end109.i_crit_edge ], [ 0, %if.then97.i ], [ 0, %if.then93.i.if.end109.i_crit_edge ]
  %output_mask.2.i = phi i16 [ %83, %if.then22.i ], [ %86, %if.then41.i ], [ %output_mask.0180.i, %if.then37.i.if.end109.i_crit_edge ], [ %89, %if.then53.i ], [ %93, %if.then81.i ], [ %91, %if.then73.i.if.end109.i_crit_edge ], [ %95, %if.then97.i ], [ %output_mask.0180.i, %if.then93.i.if.end109.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qn.0.i)
  %cmp111.not.i = icmp eq i8 %qn.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qn_plus_1.1.i)
  %cmp114.not.i = icmp eq i8 %qn_plus_1.1.i, 0
  %or.cond.i = select i1 %cmp111.not.i, i1 %cmp114.not.i, i1 false
  br i1 %or.cond.i, label %if.end109.i.for.inc.i_crit_edge, label %if.then116.i

if.end109.i.for.inc.i_crit_edge:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then116.i:                                     ; preds = %if.end109.i
  %96 = ptrtoint ptr %sync_src.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sync_src.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_src.addr.i.i) #7
  %98 = ptrtoint ptr %sync_src.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %sync_src.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i.i) #7
  %99 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %temp.i.i, align 1, !annotation !249
  %100 = or i8 %qn_plus_1.1.i, %qn.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %if.end118.thread173.i, label %if.end.i.i

if.end118.thread173.i:                            ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_src.addr.i.i) #7
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then116.i
  %102 = and i8 %pll.0177.i, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %switch.lookup, label %if.end.i.i.if.end118.thread170.i_crit_edge

if.end.i.i.if.end118.thread170.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

switch.lookup:                                    ; preds = %if.end.i.i
  %104 = shl nuw i8 %pll.0177.i, 1
  %switch.idx.mult17 = zext i8 %104 to i32
  %switch.offset18 = add nuw nsw i32 %switch.idx.mult17, 42817
  %105 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -128, ptr %val.i.i, align 1
  %106 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap.i.i8, align 4
  %call.i.i.i = call i32 @regmap_bulk_write(ptr noundef %107, i32 noundef %switch.offset18, ptr noundef nonnull %val.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %switch.lookup.if.end118.thread170.i_crit_edge

switch.lookup.if.end118.thread170.i_crit_edge:    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end14.i.i:                                     ; preds = %switch.lookup
  %108 = shl nuw i8 %pll.0177.i, 1
  %switch.idx.mult = zext i8 %108 to i32
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 42816
  %109 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i.i8, align 4
  %call.i137.i.i = call i32 @regmap_bulk_write(ptr noundef %110, i32 noundef %switch.offset, ptr noundef nonnull %sync_src.addr.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i.i)
  %tobool16.not.i.i = icmp eq i32 %call.i137.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end14.i.i.if.end118.thread170.i_crit_edge

if.end14.i.i.if.end118.thread170.i_crit_edge:     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %111 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %val.i.i, align 1
  %spec.select.v.i.i = select i1 %cmp111.not.i, i8 12, i8 13
  %spec.select.i.i = or i8 %112, %spec.select.v.i.i
  %113 = or i8 %spec.select.i.i, 2
  %spec.select158.i.i = select i1 %cmp114.not.i, i8 %spec.select.i.i, i8 %113
  store i8 %spec.select158.i.i, ptr %val.i.i, align 1
  %114 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap.i.i8, align 4
  %call.i140.i.i = call i32 @regmap_bulk_write(ptr noundef %115, i32 noundef %switch.offset18, ptr noundef nonnull %val.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i.i)
  %tobool34.not.i.i = icmp eq i32 %call.i140.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %if.end18.i.i.if.end118.thread170.i_crit_edge

if.end18.i.i.if.end118.thread170.i_crit_edge:     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end36.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %pll.0177.i)
  %cmp38.i.i = icmp ne i8 %pll.0177.i, 5
  %or.cond133.i.i = or i1 %cmp38.i.i, %cmp114.not.i
  br i1 %or.cond133.i.i, label %if.end62.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %if.end36.i.i
  %116 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap.i.i8, align 4
  %call.i142.i.i = call i32 @regmap_bulk_read(ptr noundef %117, i32 noundef 42964, ptr noundef nonnull %temp.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i.i)
  %tobool46.not.i.i = icmp eq i32 %call.i142.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end48.i.i, label %if.then44.i.i.if.end118.thread170.i_crit_edge

if.then44.i.i.if.end118.thread170.i_crit_edge:    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end48.i.i:                                     ; preds = %if.then44.i.i
  %118 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %temp.i.i, align 1
  %120 = and i8 %119, -3
  store i8 %120, ptr %temp.i.i, align 1
  %121 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap.i.i8, align 4
  %call.i144.i.i = call i32 @regmap_bulk_write(ptr noundef %122, i32 noundef 42964, ptr noundef nonnull %temp.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i.i)
  %tobool52.not.i.i = icmp eq i32 %call.i144.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end54.i.i, label %if.end48.i.i.if.end118.thread170.i_crit_edge

if.end48.i.i.if.end118.thread170.i_crit_edge:     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end54.i.i:                                     ; preds = %if.end48.i.i
  %123 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %temp.i.i, align 1
  %125 = or i8 %124, 2
  store i8 %125, ptr %temp.i.i, align 1
  %126 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap.i.i8, align 4
  %call.i146.i.i = call i32 @regmap_bulk_write(ptr noundef %127, i32 noundef 42964, ptr noundef nonnull %temp.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i.i)
  %tobool59.not.i.i = icmp eq i32 %call.i146.i.i, 0
  br i1 %tobool59.not.i.i, label %if.end54.i.i.if.end118.i_crit_edge, label %if.end54.i.i.if.end118.thread170.i_crit_edge

if.end54.i.i.if.end118.thread170.i_crit_edge:     ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end54.i.i.if.end118.i_crit_edge:               ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.end62.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %pll.0177.i)
  %cmp64.i.i = icmp ne i8 %pll.0177.i, 6
  %or.cond134.i.i = or i1 %cmp64.i.i, %cmp114.not.i
  br i1 %or.cond134.i.i, label %if.end62.i.i.if.end118.i_crit_edge, label %if.then70.i.i

if.end62.i.i.if.end118.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.then70.i.i:                                    ; preds = %if.end62.i.i
  %128 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap.i.i8, align 4
  %call.i148.i.i = call i32 @regmap_bulk_read(ptr noundef %129, i32 noundef 42988, ptr noundef nonnull %temp.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148.i.i)
  %tobool72.not.i.i = icmp eq i32 %call.i148.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end74.i.i, label %if.then70.i.i.if.end118.thread170.i_crit_edge

if.then70.i.i.if.end118.thread170.i_crit_edge:    ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end74.i.i:                                     ; preds = %if.then70.i.i
  %130 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %temp.i.i, align 1
  %132 = and i8 %131, -3
  store i8 %132, ptr %temp.i.i, align 1
  %133 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap.i.i8, align 4
  %call.i150.i.i = call i32 @regmap_bulk_write(ptr noundef %134, i32 noundef 42988, ptr noundef nonnull %temp.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i.i)
  %tobool79.not.i.i = icmp eq i32 %call.i150.i.i, 0
  br i1 %tobool79.not.i.i, label %if.end81.i.i, label %if.end74.i.i.if.end118.thread170.i_crit_edge

if.end74.i.i.if.end118.thread170.i_crit_edge:     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end81.i.i:                                     ; preds = %if.end74.i.i
  %135 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %temp.i.i, align 1
  %137 = or i8 %136, 2
  store i8 %137, ptr %temp.i.i, align 1
  %138 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap.i.i8, align 4
  %call.i152.i.i = call i32 @regmap_bulk_write(ptr noundef %139, i32 noundef 42988, ptr noundef nonnull %temp.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i.i)
  %tobool86.not.i.i = icmp eq i32 %call.i152.i.i, 0
  br i1 %tobool86.not.i.i, label %if.end81.i.i.if.end118.i_crit_edge, label %if.end81.i.i.if.end118.thread170.i_crit_edge

if.end81.i.i.if.end118.thread170.i_crit_edge:     ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread170.i

if.end81.i.i.if.end118.i_crit_edge:               ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.end118.thread170.i:                            ; preds = %if.end81.i.i.if.end118.thread170.i_crit_edge, %if.end74.i.i.if.end118.thread170.i_crit_edge, %if.then70.i.i.if.end118.thread170.i_crit_edge, %if.end54.i.i.if.end118.thread170.i_crit_edge, %if.end48.i.i.if.end118.thread170.i_crit_edge, %if.then44.i.i.if.end118.thread170.i_crit_edge, %if.end18.i.i.if.end118.thread170.i_crit_edge, %if.end14.i.i.if.end118.thread170.i_crit_edge, %switch.lookup.if.end118.thread170.i_crit_edge, %if.end.i.i.if.end118.thread170.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i152.i.i, %if.end81.i.i.if.end118.thread170.i_crit_edge ], [ %call.i150.i.i, %if.end74.i.i.if.end118.thread170.i_crit_edge ], [ %call.i148.i.i, %if.then70.i.i.if.end118.thread170.i_crit_edge ], [ %call.i146.i.i, %if.end54.i.i.if.end118.thread170.i_crit_edge ], [ %call.i144.i.i, %if.end48.i.i.if.end118.thread170.i_crit_edge ], [ %call.i142.i.i, %if.then44.i.i.if.end118.thread170.i_crit_edge ], [ %call.i140.i.i, %if.end18.i.i.if.end118.thread170.i_crit_edge ], [ %call.i137.i.i, %if.end14.i.i.if.end118.thread170.i_crit_edge ], [ %call.i.i.i, %switch.lookup.if.end118.thread170.i_crit_edge ], [ -22, %if.end.i.i.if.end118.thread170.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_src.addr.i.i) #7
  br label %idtcm_sync_pps_output.exit

if.end118.i:                                      ; preds = %if.end81.i.i.if.end118.i_crit_edge, %if.end62.i.i.if.end118.i_crit_edge, %if.end54.i.i.if.end118.i_crit_edge
  %140 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %val.i.i, align 1
  %142 = and i8 %141, 127
  store i8 %142, ptr %val.i.i, align 1
  %143 = ptrtoint ptr %regmap.i.i8 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap.i.i8, align 4
  %call.i155.i.i = call i32 @regmap_bulk_write(ptr noundef %144, i32 noundef %switch.offset18, ptr noundef nonnull %val.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_src.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i.i)
  %tobool119.not.i = icmp eq i32 %call.i155.i.i, 0
  br i1 %tobool119.not.i, label %if.end118.i.for.inc.i_crit_edge, label %if.end118.i.idtcm_sync_pps_output.exit_crit_edge

if.end118.i.idtcm_sync_pps_output.exit_crit_edge: ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_sync_pps_output.exit

if.end118.i.for.inc.i_crit_edge:                  ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end118.i.for.inc.i_crit_edge, %if.end118.thread173.i, %if.end109.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i8 %pll.0177.i, 1
  %cmp17.i = icmp ult i8 %pll.0177.i, 7
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.idtcm_sync_pps_output.exit_crit_edge

for.inc.i.idtcm_sync_pps_output.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_sync_pps_output.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

idtcm_sync_pps_output.exit:                       ; preds = %for.inc.i.idtcm_sync_pps_output.exit_crit_edge, %if.end118.i.idtcm_sync_pps_output.exit_crit_edge, %if.end118.thread170.i, %if.end.i11.idtcm_sync_pps_output.exit_crit_edge, %if.end.idtcm_sync_pps_output.exit_crit_edge
  %retval.0.i12 = phi i32 [ %call.i.i9, %if.end.idtcm_sync_pps_output.exit_crit_edge ], [ %call.i167.i, %if.end.i11.idtcm_sync_pps_output.exit_crit_edge ], [ %retval.0.i.ph.i, %if.end118.thread170.i ], [ %call.i155.i.i, %if.end118.i.idtcm_sync_pps_output.exit_crit_edge ], [ 0, %for.inc.i.idtcm_sync_pps_output.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #7
  br label %cleanup

cleanup:                                          ; preds = %idtcm_sync_pps_output.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i15, %do.end ], [ %retval.0.i12, %idtcm_sync_pps_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @idtcm_enable_extts_mask(ptr noundef %channel, i8 noundef zeroext %extts_mask, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %event.i = alloca %struct.ptp_clock_event, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %2 = getelementptr inbounds i8, ptr %event.i, i32 16
  %index.i = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i, i32 0, i32 1
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc, %if.end23.for.body_crit_edge ]
  %extts_mask.addr.061 = phi i8 [ %extts_mask, %entry ], [ %extts_mask.addr.2, %if.end23.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.062
  %refn3 = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 %i.062, i32 20
  %4 = ptrtoint ptr %refn3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %refn3, align 4
  %conv4 = zext i8 %extts_mask.addr.061 to i32
  %and = and i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end23_crit_edge, label %if.then

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then:                                          ; preds = %for.body
  br i1 %enable, label %if.end19.thread, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event.i) #7
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %7 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %arrayidx.i = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 %i.062
  %arrayidx2.i = getelementptr %struct.idtcm, ptr %1, i32 0, i32 7, i32 %i.062
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %cmp.i = icmp eq ptr %arrayidx.i, %9
  br i1 %cmp.i, label %if.then.i, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %dco_delay3.i = getelementptr [4 x %struct.idtcm_channel], ptr %1, i32 0, i32 %i.062, i32 19
  %10 = ptrtoint ptr %dco_delay3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dco_delay3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then10.if.end.i_crit_edge
  %dco_delay.0.i = phi i32 [ %11, %if.then.i ], [ 0, %if.then10.if.end.i_crit_edge ]
  %call.i = call fastcc i32 @_idtcm_gettime(ptr noundef %arrayidx.i, ptr noundef nonnull %ts.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %idtcm_extts_check_channel.exit

if.then5.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %event.i, align 8
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.062, ptr %index.i, align 4
  %14 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %15)
  %cmp.i.i = icmp sgt i64 %15, 9223372035
  br i1 %cmp.i.i, label %if.then5.i.if.then14_crit_edge, label %if.end.i.i

if.then5.i.if.then14_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %15)
  %cmp2.i.i = icmp slt i64 %15, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.if.then14_crit_edge, label %if.end4.i.i

if.end.i.i.if.then14_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nsw i64 %15, 1000000000
  %16 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %17 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %if.then14

idtcm_extts_check_channel.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event.i) #7
  br label %if.end19

if.then14:                                        ; preds = %if.end4.i.i, %if.end.i.i.if.then14_crit_edge, %if.then5.i.if.then14_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %if.then5.i.if.then14_crit_edge ], [ -9223372036854775808, %if.end.i.i.if.then14_crit_edge ]
  %conv7.i = zext i32 %dco_delay.0.i to i64
  %sub.i = sub i64 %retval.0.i.i, %conv7.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub.i, ptr %3, align 8
  %ptp_clock.i = getelementptr inbounds %struct.idtcm_channel, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptp_clock.i, align 4
  call void @ptp_clock_event(ptr noundef %20, ptr noundef nonnull %event.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event.i) #7
  %21 = trunc i32 %shl to i8
  %22 = xor i8 %21, -1
  %conv18 = and i8 %extts_mask.addr.061, %22
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %idtcm_extts_check_channel.exit
  %extts_mask.addr.1 = phi i8 [ %conv18, %if.then14 ], [ %extts_mask.addr.061, %idtcm_extts_check_channel.exit ]
  %23 = and i32 %i.062, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i35.not = icmp eq i32 %23, 0
  br i1 %cmp.i35.not, label %if.else.i, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end19.thread:                                  ; preds = %if.then
  %24 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %idtcm1, align 4
  %extts_mask.i42 = getelementptr inbounds %struct.idtcm, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %extts_mask.i42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %extts_mask.i42, align 4
  %28 = and i32 %i.062, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i3545.not = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %cmp7.i = icmp ult i8 %5, 16
  %or.cond = select i1 %cmp.i3545.not, i1 %cmp7.i, i1 false
  %conv12.i = zext i8 %27 to i32
  %and.i = and i32 %shl, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  %or.cond66 = select i1 %or.cond, i1 %tobool14.not.i, i1 false
  br i1 %or.cond66, label %if.end16.i, label %if.end19.thread.if.end23_crit_edge

if.end19.thread.if.end23_crit_edge:               ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end16.i:                                       ; preds = %if.end19.thread
  %arrayidx.i38 = getelementptr [4 x %struct.idtcm_channel], ptr %25, i32 0, i32 %i.062
  %call.i39 = call fastcc i32 @_idtcm_set_scsr_read_trig(ptr noundef %arrayidx.i38, i32 noundef 3, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp18.i = icmp eq i32 %call.i39, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end16.i.if.end36.i_crit_edge

if.end16.i.if.end36.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %extts_mask.i42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %extts_mask.i42, align 4
  %31 = trunc i32 %shl to i8
  %conv24.i = or i8 %30, %31
  store i8 %conv24.i, ptr %extts_mask.i42, align 4
  %arrayidx26.i = getelementptr %struct.idtcm, ptr %25, i32 0, i32 7, i32 %i.062
  %32 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channel, ptr %arrayidx26.i, align 4
  %refn.i = getelementptr [4 x %struct.idtcm_channel], ptr %25, i32 0, i32 %i.062, i32 20
  %33 = ptrtoint ptr %refn.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %5, ptr %refn.i, align 4
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %idtcm1, align 4
  %extts_mask.i = getelementptr inbounds %struct.idtcm, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %extts_mask.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %extts_mask.i, align 4
  %38 = trunc i32 %shl to i8
  %39 = xor i8 %38, -1
  %conv35.i = and i8 %37, %39
  store i8 %conv35.i, ptr %extts_mask.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then20.i, %if.end16.i.if.end36.i_crit_edge
  %extts_mask.addr.14660 = phi i8 [ %extts_mask.addr.1, %if.else.i ], [ %extts_mask.addr.061, %if.then20.i ], [ %extts_mask.addr.061, %if.end16.i.if.end36.i_crit_edge ]
  %40 = phi ptr [ %35, %if.else.i ], [ %25, %if.then20.i ], [ %25, %if.end16.i.if.end36.i_crit_edge ]
  %41 = phi i8 [ %37, %if.else.i ], [ %27, %if.then20.i ], [ %27, %if.end16.i.if.end36.i_crit_edge ]
  %extts_mask.i49 = phi ptr [ %extts_mask.i, %if.else.i ], [ %extts_mask.i42, %if.then20.i ], [ %extts_mask.i42, %if.end16.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp38.i = icmp eq i8 %41, 0
  br i1 %cmp38.i, label %land.lhs.true.i, label %if.end36.i.if.end23_crit_edge

if.end36.i.if.end23_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true.i:                                  ; preds = %if.end36.i
  %42 = ptrtoint ptr %extts_mask.i49 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %extts_mask.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool42.not.i = icmp eq i8 %43, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i.if.end23_crit_edge, label %if.then43.i

land.lhs.true.i.if.end23_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %extts_work.i = getelementptr inbounds %struct.idtcm, ptr %40, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %extts_work.i, i32 noundef 10) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then43.i, %land.lhs.true.i.if.end23_crit_edge, %if.end36.i.if.end23_crit_edge, %if.end19.thread.if.end23_crit_edge, %if.end19.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %extts_mask.addr.2 = phi i8 [ %extts_mask.addr.061, %for.body.if.end23_crit_edge ], [ %extts_mask.addr.061, %if.end19.thread.if.end23_crit_edge ], [ %extts_mask.addr.1, %if.end19.if.end23_crit_edge ], [ %extts_mask.addr.14660, %if.end36.i.if.end23_crit_edge ], [ %extts_mask.addr.14660, %land.lhs.true.i.if.end23_crit_edge ], [ %extts_mask.addr.14660, %if.then43.i ]
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  ret i8 %extts_mask.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idtcm_set_scsr_read_trig(ptr nocapture noundef readonly %channel, i32 noundef %trig, i8 noundef zeroext %ref) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %fw_ver = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %trig)
  %cmp2 = icmp eq i32 %trig, 3
  br i1 %cmp2, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %tod_read_primary = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 8
  %5 = ptrtoint ptr %tod_read_primary to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tod_read_primary, align 2
  %regmap.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %conv.i, 12
  %call.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %11 = and i8 %10, -16
  %or52 = or i8 %11, %ref
  store i8 %or52, ptr %val, align 1
  %12 = ptrtoint ptr %tod_read_primary to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tod_read_primary, align 2
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %conv.i54 = zext i16 %13 to i32
  %add.i55 = add nuw nsw i32 %conv.i54, 12
  %call.i56 = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef %add.i55, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool12.not = icmp eq i32 %call.i56, 0
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %tod_read_primary16 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 8
  %16 = ptrtoint ptr %tod_read_primary16 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tod_read_primary16, align 2
  %regmap.i57 = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %regmap.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i57, align 4
  %conv.i58 = zext i16 %17 to i32
  %conv1.i = select i1 %cmp, i32 14, i32 15
  %add.i59 = add nuw nsw i32 %conv1.i, %conv.i58
  %call.i60 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %add.i59, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool18.not = icmp eq i32 %call.i60, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %22 = and i8 %21, -32
  %23 = trunc i32 %trig to i8
  %.masked = and i8 %23, -17
  %24 = or i8 %22, %.masked
  store i8 %24, ptr %val, align 1
  %25 = ptrtoint ptr %tod_read_primary16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tod_read_primary16, align 2
  %27 = ptrtoint ptr %regmap.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i57, align 4
  %conv.i62 = zext i16 %26 to i32
  %add.i64 = add nuw nsw i32 %conv1.i, %conv.i62
  %call.i65 = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef %add.i64, ptr noundef nonnull %val, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i65, %if.end20 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i56, %if.end.cleanup_crit_edge ], [ %call.i60, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idtcm_perout_enable(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %perout, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %flags2 = getelementptr inbounds %struct.ptp_perout_request, ptr %perout, i32 0, i32 3
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #7
  %4 = call ptr @memset(ptr %ts, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %3)
  %cmp = icmp eq i32 %3, -559038737
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %output_mask.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 22
  %5 = ptrtoint ptr %output_mask.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %output_mask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not16.i = icmp eq i16 %6, 0
  br i1 %tobool.not16.i, label %if.then.if.end7_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %if.end6.i.while.body.i_crit_edge ], [ 0, %if.then.while.body.i_crit_edge ]
  %mask.017.i = phi i16 [ %8, %if.end6.i.while.body.i_crit_edge ], [ %6, %if.then.while.body.i_crit_edge ]
  %7 = and i16 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not.i = icmp eq i16 %7, 0
  br i1 %tobool1.not.i, label %while.body.i.if.end6.i_crit_edge, label %if.then.i

while.body.i.if.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then.i:                                        ; preds = %while.body.i
  %call.i = tail call fastcc i32 @idtcm_output_enable(ptr noundef %channel, i1 noundef zeroext %enable, i32 noundef %indvars.iv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %while.body.i.if.end6.i_crit_edge
  %8 = lshr i16 %mask.017.i, 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %tobool.not.i = icmp ult i16 %mask.017.i, 2
  br i1 %tobool.not.i, label %if.end6.i.if.end7_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end6.i.if.end7_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.ptp_perout_request, ptr %perout, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 8
  %call4 = tail call fastcc i32 @idtcm_output_enable(ptr noundef %channel, i1 noundef zeroext %enable, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %err.023 = phi i32 [ %call4, %if.end.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.75) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end6.i.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %call8 = call fastcc i32 @_idtcm_settime(ptr noundef %channel, ptr noundef nonnull %ts, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ %err.023, %do.end ], [ %call8, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idtcm_output_enable(ptr nocapture noundef readonly %channel, i1 noundef zeroext %enable, i32 noundef %outn) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !249
  %fw_ver = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_ver, align 8
  %conv = trunc i32 %outn to i8
  %5 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %conv, label %do.end [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
    i8 2, label %sw.bb6.i
    i8 3, label %sw.bb10.i
    i8 4, label %sw.bb14.i
    i8 5, label %sw.bb18.i
    i8 6, label %sw.bb22.i
    i8 7, label %sw.bb26.i
    i8 8, label %sw.bb30.i
    i8 9, label %sw.bb34.i
    i8 10, label %sw.bb38.i
    i8 11, label %sw.bb42.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp ult i32 %4, 2
  %cond.i = select i1 %cmp.i, i32 51732, i32 51744
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3.i = icmp ult i32 %4, 2
  %cond5.i = select i1 %cmp3.i, i32 51748, i32 51760
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp7.i = icmp ult i32 %4, 2
  %cond9.i = select i1 %cmp7.i, i32 51764, i32 51776
  br label %if.end

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp11.i = icmp ult i32 %4, 2
  %cond13.i = select i1 %cmp11.i, i32 51780, i32 51792
  br label %if.end

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp15.i = icmp ult i32 %4, 2
  %cond17.i = select i1 %cmp15.i, i32 51796, i32 51808
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp19.i = icmp ult i32 %4, 2
  %cond21.i = select i1 %cmp19.i, i32 51812, i32 51840
  br label %if.end

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp23.i = icmp ult i32 %4, 2
  %cond25.i = select i1 %cmp23.i, i32 51840, i32 51856
  br label %if.end

sw.bb26.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp27.i = icmp ult i32 %4, 2
  %cond29.i = select i1 %cmp27.i, i32 51856, i32 51872
  br label %if.end

sw.bb30.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp31.i = icmp ult i32 %4, 2
  %cond33.i = select i1 %cmp31.i, i32 51872, i32 51888
  br label %if.end

sw.bb34.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp35.i = icmp ult i32 %4, 2
  %cond37.i = select i1 %cmp35.i, i32 51888, i32 51904
  br label %if.end

sw.bb38.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp39.i = icmp ult i32 %4, 2
  %cond41.i = select i1 %cmp39.i, i32 51904, i32 51920
  br label %if.end

sw.bb42.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp43.i = icmp ult i32 %4, 2
  %cond45.i = select i1 %cmp43.i, i32 51920, i32 51936
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %outn) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb42.i, %sw.bb38.i, %sw.bb34.i, %sw.bb30.i, %sw.bb26.i, %sw.bb22.i, %sw.bb18.i, %sw.bb14.i, %sw.bb10.i, %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %base.0.i.ph = phi i32 [ %cond.i, %sw.bb.i ], [ %cond5.i, %sw.bb2.i ], [ %cond9.i, %sw.bb6.i ], [ %cond13.i, %sw.bb10.i ], [ %cond17.i, %sw.bb14.i ], [ %cond21.i, %sw.bb18.i ], [ %cond25.i, %sw.bb22.i ], [ %cond29.i, %sw.bb26.i ], [ %cond33.i, %sw.bb30.i ], [ %cond37.i, %sw.bb34.i ], [ %cond41.i, %sw.bb38.i ], [ %cond45.i, %sw.bb42.i ]
  %regmap.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %add.i = or i32 %base.0.i.ph, 9
  %call.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %add.i, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = and i8 %11, -33
  %masksel = select i1 %enable, i8 32, i8 0
  %storemerge = or i8 %12, %masksel
  store i8 %storemerge, ptr %val, align 1
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i30 = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef %add.i, ptr noundef nonnull %val, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i30, %if.end6 ], [ -22, %do.end ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_idtcm_settime(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %ts, i32 noundef %wr_type) unnamed_addr #2 align 64 {
entry:
  %dividend.addr.i.i.i = alloca i64, align 8
  %buf.i = alloca [11 x i8], align 1
  %cmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 3
  %5 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 4
  %6 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 5
  %7 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 6
  %8 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 7
  %9 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 8
  %10 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 9
  %11 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #7
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cmd.i, align 1, !annotation !249
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %local_ts.sroa.0.0.copyload15.i = load i64, ptr %ts, align 8
  %local_ts.sroa.7.0.ts.sroa_idx.i = getelementptr inbounds i8, ptr %ts, i32 8
  %14 = ptrtoint ptr %local_ts.sroa.7.0.ts.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %local_ts.sroa.7.0.copyload16.i = load i32, ptr %local_ts.sroa.7.0.ts.sroa_idx.i, align 8
  %conv.i.i = sext i32 %local_ts.sroa.7.0.copyload16.i to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #7
  %15 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i.i, ptr %dividend.addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %local_ts.sroa.7.0.copyload16.i)
  %cmp1.i.i.i = icmp ugt i32 %local_ts.sroa.7.0.copyload16.i, 999999999
  br i1 %cmp1.i.i.i, label %entry.while.body.i.i.i_crit_edge, label %entry.timespec64_add_ns.exit.i_crit_edge

entry.timespec64_add_ns.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_add_ns.exit.i

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %ret.02.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %entry.while.body.i.i.i_crit_edge ]
  %16 = phi i64 [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %conv.i.i, %entry.while.body.i.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i, i64 %16) #7, !srcloc !254
  %17 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dividend.addr.i.i.i, align 8
  %sub.i.i.i = add i64 %18, -1000000000
  store i64 %sub.i.i.i, ptr %dividend.addr.i.i.i, align 8
  %inc.i.i.i = add i32 %ret.02.i.i.i, 1
  %cmp.i.i.i = icmp ugt i64 %sub.i.i.i, 999999999
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

__iter_div_u64_rem.exit.loopexit.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t7.le.i.i = trunc i64 %sub.i.i.i to i32
  br label %timespec64_add_ns.exit.i

timespec64_add_ns.exit.i:                         ; preds = %__iter_div_u64_rem.exit.loopexit.i.i, %entry.timespec64_add_ns.exit.i_crit_edge
  %.lcssa.i.off0.i.i = phi i32 [ %local_ts.sroa.7.0.copyload16.i, %entry.timespec64_add_ns.exit.i_crit_edge ], [ %extract.t7.le.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  %ret.0.lcssa.i.i.i = phi i32 [ 0, %entry.timespec64_add_ns.exit.i_crit_edge ], [ %inc.i.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #7
  %conv1.i.i = zext i32 %ret.0.lcssa.i.i.i to i64
  %add2.i.i = add i64 %local_ts.sroa.0.0.copyload15.i, %conv1.i.i
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buf.i, align 1
  %conv5.i.i = trunc i32 %.lcssa.i.off0.i.i to i8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.i.i, ptr %2, align 1
  %21 = lshr i32 %.lcssa.i.off0.i.i, 8
  %conv5.1.i.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv5.1.i.i, ptr %3, align 1
  %23 = lshr i32 %.lcssa.i.off0.i.i, 16
  %conv5.2.i.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv5.2.i.i, ptr %4, align 1
  %25 = lshr i32 %.lcssa.i.off0.i.i, 24
  %conv5.3.i.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5.3.i.i, ptr %5, align 1
  %conv13.i.i = trunc i64 %add2.i.i to i8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv13.i.i, ptr %6, align 1
  %28 = lshr i64 %add2.i.i, 8
  %conv13.1.i.i = trunc i64 %28 to i8
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv13.1.i.i, ptr %7, align 1
  %30 = lshr i64 %add2.i.i, 16
  %conv13.2.i.i = trunc i64 %30 to i8
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv13.2.i.i, ptr %8, align 1
  %32 = lshr i64 %add2.i.i, 24
  %conv13.3.i.i = trunc i64 %32 to i8
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv13.3.i.i, ptr %9, align 1
  %34 = lshr i64 %add2.i.i, 32
  %conv13.4.i.i = trunc i64 %34 to i8
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv13.4.i.i, ptr %10, align 1
  %36 = lshr i64 %add2.i.i, 40
  %conv13.5.i.i = trunc i64 %36 to i8
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv13.5.i.i, ptr %11, align 1
  %tod_write.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 9
  %38 = ptrtoint ptr %tod_write.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tod_write.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  %conv.i2.i = zext i16 %39 to i32
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef %conv.i2.i, ptr noundef nonnull %buf.i, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %timespec64_add_ns.exit.i._idtcm_set_dpll_scsr_tod.exit_crit_edge

timespec64_add_ns.exit.i._idtcm_set_dpll_scsr_tod.exit_crit_edge: ; preds = %timespec64_add_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_scsr_tod.exit

if.end6.i:                                        ; preds = %timespec64_add_ns.exit.i
  %42 = ptrtoint ptr %tod_write.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tod_write.i, align 4
  %44 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i, align 4
  %conv.i4.i = zext i16 %43 to i32
  %add.i.i = add nuw nsw i32 %conv.i4.i, 15
  %call.i5.i = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef %add.i.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool9.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i._idtcm_set_dpll_scsr_tod.exit_crit_edge

if.end6.i._idtcm_set_dpll_scsr_tod.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_scsr_tod.exit

if.end11.i:                                       ; preds = %if.end6.i
  %46 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmd.i, align 1
  %48 = and i8 %47, -64
  %wr_type.tr.i = trunc i32 %wr_type to i8
  %49 = shl i8 %wr_type.tr.i, 4
  %50 = or i8 %49, %48
  %conv21.i = or i8 %50, 1
  store i8 %conv21.i, ptr %cmd.i, align 1
  %51 = ptrtoint ptr %tod_write.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tod_write.i, align 4
  %53 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i.i, align 4
  %conv.i7.i = zext i16 %52 to i32
  %add.i8.i = add nuw nsw i32 %conv.i7.i, 15
  %call.i9.i = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef %add.i8.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool24.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool24.not.i, label %if.end11.i.while.cond.i_crit_edge, label %if.end11.i._idtcm_set_dpll_scsr_tod.exit_crit_edge

if.end11.i._idtcm_set_dpll_scsr_tod.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_scsr_tod.exit

if.end11.i.while.cond.i_crit_edge:                ; preds = %if.end11.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end40.i.while.cond.i_crit_edge, %if.end11.i.while.cond.i_crit_edge
  %count.0.i = phi i32 [ %inc.i, %if.end40.i.while.cond.i_crit_edge ], [ 0, %if.end11.i.while.cond.i_crit_edge ]
  %55 = ptrtoint ptr %tod_write.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %tod_write.i, align 4
  %57 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i.i, align 4
  %conv.i11.i = zext i16 %56 to i32
  %add.i12.i = add nuw nsw i32 %conv.i11.i, 15
  %call.i13.i = call i32 @regmap_bulk_read(ptr noundef %58, i32 noundef %add.i12.i, ptr noundef nonnull %cmd.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool32.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %while.cond.i._idtcm_set_dpll_scsr_tod.exit_crit_edge

while.cond.i._idtcm_set_dpll_scsr_tod.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_scsr_tod.exit

if.end34.i:                                       ; preds = %while.cond.i
  %59 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cmd.i, align 1
  %61 = and i8 %60, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp37.i = icmp eq i8 %61, 0
  br i1 %cmp37.i, label %if.end34.i._idtcm_set_dpll_scsr_tod.exit_crit_edge, label %if.end40.i

if.end34.i._idtcm_set_dpll_scsr_tod.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_set_dpll_scsr_tod.exit

if.end40.i:                                       ; preds = %if.end34.i
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.i, label %do.end.i, label %if.end40.i.while.cond.i_crit_edge

if.end40.i.while.cond.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.end.i:                                         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.79) #10
  br label %_idtcm_set_dpll_scsr_tod.exit

_idtcm_set_dpll_scsr_tod.exit:                    ; preds = %do.end.i, %if.end34.i._idtcm_set_dpll_scsr_tod.exit_crit_edge, %while.cond.i._idtcm_set_dpll_scsr_tod.exit_crit_edge, %if.end11.i._idtcm_set_dpll_scsr_tod.exit_crit_edge, %if.end6.i._idtcm_set_dpll_scsr_tod.exit_crit_edge, %timespec64_add_ns.exit.i._idtcm_set_dpll_scsr_tod.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ %call.i.i, %timespec64_add_ns.exit.i._idtcm_set_dpll_scsr_tod.exit_crit_edge ], [ %call.i5.i, %if.end6.i._idtcm_set_dpll_scsr_tod.exit_crit_edge ], [ %call.i9.i, %if.end11.i._idtcm_set_dpll_scsr_tod.exit_crit_edge ], [ %call.i13.i, %while.cond.i._idtcm_set_dpll_scsr_tod.exit_crit_edge ], [ 0, %if.end34.i._idtcm_set_dpll_scsr_tod.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_adjtime(ptr noundef %ptp, i64 noundef %delta) #2 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #7
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %phase_pull_in = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 18
  %3 = ptrtoint ptr %phase_pull_in to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phase_pull_in, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #7
  %7 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 15000, i64 %7)
  %cmp6 = icmp slt i64 %7, 15000
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %do_phase_pull_in = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 16
  %8 = ptrtoint ptr %do_phase_pull_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %do_phase_pull_in, align 4
  %conv9 = trunc i64 %delta to i32
  %call = tail call i32 %9(ptr noundef %ptp, i32 noundef %conv9, i32 noundef 0) #7
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %delta)
  %cmp10 = icmp sgt i64 %delta, -1
  %10 = call i64 @llvm.abs.i64(i64 %delta, i1 false)
  %. = select i1 %cmp10, i32 1, i32 2
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %10) #7
  %call18 = call fastcc i32 @_idtcm_settime(ptr noundef %ptp, ptr noundef nonnull %ts, i32 noundef %.)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then8
  %err.0 = phi i32 [ %call, %if.then8 ], [ %call18, %if.else ]
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  call void @mutex_unlock(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef 1893, ptr noundef nonnull @.str.81) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.0, %do.end ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcm_settime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  %lock = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %call = tail call fastcc i32 @_idtcm_settime(ptr noundef %ptp, ptr noundef %ts, i32 noundef 0)
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 1841, ptr noundef nonnull @.str.82) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configure_manual_reference_write_frequency(ptr nocapture noundef %channel) #2 align 64 {
entry:
  %dpll_manu_ref_cfg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i) #7
  %2 = ptrtoint ptr %dpll_manu_ref_cfg.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dpll_manu_ref_cfg.i, align 1, !annotation !249
  %dpll_ctrl_n.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 6
  %3 = ptrtoint ptr %dpll_ctrl_n.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dpll_ctrl_n.i, align 2
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %add.i.i, ptr noundef nonnull %dpll_manu_ref_cfg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %idtcm_set_manual_reference.exit, label %idtcm_set_manual_reference.exit.thread

idtcm_set_manual_reference.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i) #7
  br label %do.end

idtcm_set_manual_reference.exit:                  ; preds = %entry
  %7 = ptrtoint ptr %dpll_manu_ref_cfg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpll_manu_ref_cfg.i, align 1
  %9 = and i8 %8, -32
  %conv4.i = or i8 %9, 17
  store i8 %conv4.i, ptr %dpll_manu_ref_cfg.i, align 1
  %10 = ptrtoint ptr %dpll_ctrl_n.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dpll_ctrl_n.i, align 2
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %conv.i15.i = zext i16 %11 to i32
  %add.i16.i = add nuw nsw i32 %conv.i15.i, 1
  %call.i17.i = call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef %add.i16.i, ptr noundef nonnull %dpll_manu_ref_cfg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool.not = icmp eq i32 %call.i17.i, 0
  br i1 %tobool.not, label %if.else, label %idtcm_set_manual_reference.exit.do.end_crit_edge

idtcm_set_manual_reference.exit.do.end_crit_edge: ; preds = %idtcm_set_manual_reference.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %idtcm_set_manual_reference.exit.do.end_crit_edge, %idtcm_set_manual_reference.exit.thread
  %retval.0.i8 = phi i32 [ %call.i.i, %idtcm_set_manual_reference.exit.thread ], [ %call.i17.i, %idtcm_set_manual_reference.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.90) #10
  br label %if.end

if.else:                                          ; preds = %idtcm_set_manual_reference.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 13
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval.0.i7 = phi i32 [ 0, %if.else ], [ %retval.0.i8, %do.end ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configure_manual_reference_write_phase(ptr nocapture noundef %channel) #2 align 64 {
entry:
  %dpll_manu_ref_cfg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i) #7
  %2 = ptrtoint ptr %dpll_manu_ref_cfg.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dpll_manu_ref_cfg.i, align 1, !annotation !249
  %dpll_ctrl_n.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 6
  %3 = ptrtoint ptr %dpll_ctrl_n.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dpll_ctrl_n.i, align 2
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %add.i.i, ptr noundef nonnull %dpll_manu_ref_cfg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %idtcm_set_manual_reference.exit, label %idtcm_set_manual_reference.exit.thread

idtcm_set_manual_reference.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i) #7
  br label %do.end

idtcm_set_manual_reference.exit:                  ; preds = %entry
  %7 = ptrtoint ptr %dpll_manu_ref_cfg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpll_manu_ref_cfg.i, align 1
  %9 = and i8 %8, -32
  %conv4.i = or i8 %9, 16
  store i8 %conv4.i, ptr %dpll_manu_ref_cfg.i, align 1
  %10 = ptrtoint ptr %dpll_ctrl_n.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dpll_ctrl_n.i, align 2
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %conv.i15.i = zext i16 %11 to i32
  %add.i16.i = add nuw nsw i32 %conv.i15.i, 1
  %call.i17.i = call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef %add.i16.i, ptr noundef nonnull %dpll_manu_ref_cfg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_manu_ref_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool.not = icmp eq i32 %call.i17.i, 0
  br i1 %tobool.not, label %if.else, label %idtcm_set_manual_reference.exit.do.end_crit_edge

idtcm_set_manual_reference.exit.do.end_crit_edge: ; preds = %idtcm_set_manual_reference.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %idtcm_set_manual_reference.exit.do.end_crit_edge, %idtcm_set_manual_reference.exit.thread
  %retval.0.i8 = phi i32 [ %call.i.i, %idtcm_set_manual_reference.exit.thread ], [ %call.i17.i, %idtcm_set_manual_reference.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.92) #10
  br label %if.end

if.else:                                          ; preds = %idtcm_set_manual_reference.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 13
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval.0.i7 = phi i32 [ 0, %if.else ], [ %retval.0.i8, %do.end ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_phase_pull_in_sw(ptr noundef %channel, i32 noundef %delta_ns, i32 noundef %max_ffo_ppb) #2 align 64 {
entry:
  %remainder.i.i38 = alloca i32, align 4
  %buf.i = alloca [6 x i8], align 1
  %remainder.i21.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %current_freq_scaled_ppm = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 17
  %0 = ptrtoint ptr %current_freq_scaled_ppm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_freq_scaled_ppm, align 4
  %2 = tail call i32 @llvm.abs.i32(i32 %delta_ns, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_ffo_ppb)
  %cmp2 = icmp eq i32 %max_ffo_ppb, 0
  %spec.store.select = select i1 %cmp2, i32 144000, i32 %max_ffo_ppb
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %spec.store.select)
  %cmp1345 = icmp ugt i32 %2, %spec.store.select
  br i1 %cmp1345, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %ppb.047 = phi i32 [ %div, %while.body.while.body_crit_edge ], [ %delta_ns, %if.end.while.body_crit_edge ]
  %duration_ms.046 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ 1000, %if.end.while.body_crit_edge ]
  %mul = shl i32 %duration_ms.046, 1
  %div = sdiv i32 %ppb.047, 2
  %3 = tail call i32 @llvm.abs.i32(i32 %div, i1 true)
  %cmp13 = icmp ugt i32 %3, %spec.store.select
  br i1 %cmp13, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %duration_ms.0.lcssa = phi i32 [ 1000, %if.end.while.end_crit_edge ], [ %mul, %while.body.while.end_crit_edge ]
  %ppb.0.lcssa = phi i32 [ %delta_ns, %if.end.while.end_crit_edge ], [ %div, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %4 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !249
  %call.i.i = call i64 @div_s64_rem(i64 noundef 1179648000, i32 noundef 125, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %conv.i = sext i32 %ppb.0.lcssa to i64
  %shl.i = shl nsw i64 %conv.i, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i21.i) #7
  %5 = ptrtoint ptr %remainder.i21.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i21.i, align 4, !annotation !249
  %call.i22.i = call i64 @div_s64_rem(i64 noundef %shl.i, i32 noundef 125, ptr noundef nonnull %remainder.i21.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i21.i) #7
  %6 = trunc i64 %call.i22.i to i32
  %conv3.i = add i32 %1, %6
  %conv4.i = sext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %conv4.i)
  %cmp.i37 = icmp slt i64 %call.i.i, %conv4.i
  %conv6.i = trunc i64 %call.i.i to i32
  %sub.i = sub i64 0, %call.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %conv4.i, i64 %sub.i)
  %cmp8.i = icmp slt i64 %conv4.i, %sub.i
  %conv12.i = trunc i64 %sub.i to i32
  %spec.select.i = select i1 %cmp8.i, i32 %conv12.i, i32 %conv3.i
  %current_ppm.addr.0.i = select i1 %cmp.i37, i32 %conv6.i, i32 %spec.select.i
  %idtcm1.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %7 = ptrtoint ptr %idtcm1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idtcm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %mode.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 13
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %while.end._idtcm_adjfine.exit_crit_edge, label %if.then.i39

while.end._idtcm_adjfine.exit_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjfine.exit

if.then.i39:                                      ; preds = %while.end
  %configure_write_frequency.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 14
  %11 = ptrtoint ptr %configure_write_frequency.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %configure_write_frequency.i, align 4
  %call.i = call i32 %12(ptr noundef %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i39._idtcm_adjfine.exit_crit_edge, label %_idtcm_adjfine.exit.thread

if.then.i39._idtcm_adjfine.exit_crit_edge:        ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %_idtcm_adjfine.exit

_idtcm_adjfine.exit.thread:                       ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %cleanup

_idtcm_adjfine.exit:                              ; preds = %if.then.i39._idtcm_adjfine.exit_crit_edge, %while.end._idtcm_adjfine.exit_crit_edge
  %conv.i40 = sext i32 %current_ppm.addr.0.i to i64
  %mul.i = mul nsw i64 %conv.i40, 244140625
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i38) #7
  %13 = ptrtoint ptr %remainder.i.i38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %remainder.i.i38, align 4, !annotation !249
  %call.i.i41 = call i64 @div_s64_rem(i64 noundef %mul.i, i32 noundef 1776, ptr noundef nonnull %remainder.i.i38) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i38) #7
  %conv8.i = trunc i64 %call.i.i41 to i8
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8.i, ptr %buf.i, align 1
  %15 = lshr i64 %call.i.i41, 8
  %conv8.1.i = trunc i64 %15 to i8
  %arrayidx.1.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8.1.i, ptr %arrayidx.1.i, align 1
  %17 = lshr i64 %call.i.i41, 16
  %conv8.2.i = trunc i64 %17 to i8
  %arrayidx.2.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.2.i, ptr %arrayidx.2.i, align 1
  %19 = lshr i64 %call.i.i41, 24
  %conv8.3.i = trunc i64 %19 to i8
  %arrayidx.3.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.3.i, ptr %arrayidx.3.i, align 1
  %21 = lshr i64 %call.i.i41, 32
  %conv8.4.i = trunc i64 %21 to i8
  %arrayidx.4.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv8.4.i, ptr %arrayidx.4.i, align 1
  %23 = lshr i64 %call.i.i41, 40
  %conv8.5.i = trunc i64 %23 to i8
  %arrayidx.5.i = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv8.5.i, ptr %arrayidx.5.i, align 1
  %dpll_freq.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 4
  %25 = ptrtoint ptr %dpll_freq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dpll_freq.i, align 2
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %8, i32 0, i32 10
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %call.i24.i = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef %conv.i.i, ptr noundef nonnull %buf.i, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not, label %if.end16, label %_idtcm_adjfine.exit.cleanup_crit_edge

_idtcm_adjfine.exit.cleanup_crit_edge:            ; preds = %_idtcm_adjfine.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %_idtcm_adjfine.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ptp_clock = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 1
  %29 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptp_clock, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %duration_ms.0.lcssa) #7
  %sub18 = add i32 %call2.i, -1
  %call19 = call i32 @ptp_schedule_worker(ptr noundef %30, i32 noundef %sub18) #7
  %phase_pull_in = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 18
  %31 = ptrtoint ptr %phase_pull_in to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %phase_pull_in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %_idtcm_adjfine.exit.cleanup_crit_edge, %_idtcm_adjfine.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i24.i, %_idtcm_adjfine.exit.cleanup_crit_edge ], [ %call.i, %_idtcm_adjfine.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configure_dpll_mode_write_frequency(ptr nocapture noundef %channel) #2 align 64 {
entry:
  %dpll_mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  %2 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dpll_mode.i, align 1, !annotation !249
  %dpll_n.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 5
  %3 = ptrtoint ptr %dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dpll_n.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp ult i32 %6, 2
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %conv1.i.i = select i1 %cmp.i, i32 55, i32 59
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %add.i.i, ptr noundef nonnull %dpll_mode.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %idtcm_set_pll_mode.exit, label %idtcm_set_pll_mode.exit.thread

idtcm_set_pll_mode.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  br label %do.end

idtcm_set_pll_mode.exit:                          ; preds = %entry
  %9 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dpll_mode.i, align 1
  %11 = and i8 %10, -57
  %conv5.i = or i8 %11, 16
  store i8 %conv5.i, ptr %dpll_mode.i, align 1
  %12 = ptrtoint ptr %dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpll_n.i, align 4
  %14 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp8.i = icmp ult i32 %15, 2
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %conv.i23.i = zext i16 %13 to i32
  %conv1.i24.i = select i1 %cmp8.i, i32 55, i32 59
  %add.i25.i = add nuw nsw i32 %conv1.i24.i, %conv.i23.i
  %call.i26.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %add.i25.i, ptr noundef nonnull %dpll_mode.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool.not = icmp eq i32 %call.i26.i, 0
  br i1 %tobool.not, label %if.else, label %idtcm_set_pll_mode.exit.do.end_crit_edge

idtcm_set_pll_mode.exit.do.end_crit_edge:         ; preds = %idtcm_set_pll_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %idtcm_set_pll_mode.exit.do.end_crit_edge, %idtcm_set_pll_mode.exit.thread
  %retval.0.i8 = phi i32 [ %call.i.i, %idtcm_set_pll_mode.exit.thread ], [ %call.i26.i, %idtcm_set_pll_mode.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.96) #10
  br label %if.end

if.else:                                          ; preds = %idtcm_set_pll_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 13
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval.0.i7 = phi i32 [ 0, %if.else ], [ %retval.0.i8, %do.end ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configure_dpll_mode_write_phase(ptr nocapture noundef %channel) #2 align 64 {
entry:
  %dpll_mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idtcm1 = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  %2 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dpll_mode.i, align 1, !annotation !249
  %dpll_n.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 5
  %3 = ptrtoint ptr %dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dpll_n.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp ult i32 %6, 2
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %conv1.i.i = select i1 %cmp.i, i32 55, i32 59
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %add.i.i, ptr noundef nonnull %dpll_mode.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %idtcm_set_pll_mode.exit, label %idtcm_set_pll_mode.exit.thread

idtcm_set_pll_mode.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  br label %do.end

idtcm_set_pll_mode.exit:                          ; preds = %entry
  %9 = ptrtoint ptr %dpll_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dpll_mode.i, align 1
  %11 = and i8 %10, -57
  %conv5.i = or i8 %11, 8
  store i8 %conv5.i, ptr %dpll_mode.i, align 1
  %12 = ptrtoint ptr %dpll_n.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpll_n.i, align 4
  %14 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp8.i = icmp ult i32 %15, 2
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %conv.i23.i = zext i16 %13 to i32
  %conv1.i24.i = select i1 %cmp8.i, i32 55, i32 59
  %add.i25.i = add nuw nsw i32 %conv1.i24.i, %conv.i23.i
  %call.i26.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %add.i25.i, ptr noundef nonnull %dpll_mode.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpll_mode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool.not = icmp eq i32 %call.i26.i, 0
  br i1 %tobool.not, label %if.else, label %idtcm_set_pll_mode.exit.do.end_crit_edge

idtcm_set_pll_mode.exit.do.end_crit_edge:         ; preds = %idtcm_set_pll_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %idtcm_set_pll_mode.exit.do.end_crit_edge, %idtcm_set_pll_mode.exit.thread
  %retval.0.i8 = phi i32 [ %call.i.i, %idtcm_set_pll_mode.exit.thread ], [ %call.i26.i, %idtcm_set_pll_mode.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.98) #10
  br label %if.end

if.else:                                          ; preds = %idtcm_set_pll_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 13
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval.0.i7 = phi i32 [ 0, %if.else ], [ %retval.0.i8, %do.end ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_phase_pull_in_fw(ptr nocapture noundef readonly %channel, i32 noundef %offset_ns, i32 noundef %max_ffo_ppb) #2 align 64 {
entry:
  %buf.i18 = alloca i8, align 1
  %buf.i12 = alloca [3 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %offset_ns
  %idtcm1.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 2
  %0 = ptrtoint ptr %idtcm1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idtcm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %conv.i = trunc i32 %sub to i8
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %buf.i, align 1
  %6 = lshr i32 %sub, 8
  %conv.1.i = trunc i32 %6 to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.1.i, ptr %2, align 1
  %8 = lshr i32 %sub, 16
  %conv.2.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.2.i, ptr %3, align 1
  %10 = lshr i32 %sub, 24
  %conv.3.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.3.i, ptr %4, align 1
  %dpll_phase_pull_in.i = getelementptr inbounds %struct.idtcm_channel, ptr %channel, i32 0, i32 7
  %12 = ptrtoint ptr %dpll_phase_pull_in.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpll_phase_pull_in.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.idtcm, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %call.i.i = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef %conv.i.i, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %idtcm1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idtcm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i12) #7
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i12, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i12, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %max_ffo_ppb)
  %tobool.not.i = icmp ult i32 %max_ffo_ppb, 16777216
  %spec.store.select.i = select i1 %tobool.not.i, i32 %max_ffo_ppb, i32 0
  %conv4.i = trunc i32 %spec.store.select.i to i8
  %20 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4.i, ptr %buf.i12, align 1
  %shr.i = lshr i32 %spec.store.select.i, 8
  %conv4.1.i = trunc i32 %shr.i to i8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4.1.i, ptr %18, align 1
  %shr.1.i = lshr i32 %spec.store.select.i, 16
  %conv4.2.i = trunc i32 %shr.1.i to i8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.2.i, ptr %19, align 1
  %23 = ptrtoint ptr %dpll_phase_pull_in.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dpll_phase_pull_in.i, align 4
  %regmap.i.i15 = getelementptr inbounds %struct.idtcm, ptr %17, i32 0, i32 10
  %25 = ptrtoint ptr %regmap.i.i15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i15, align 4
  %conv.i.i16 = zext i16 %24 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i16, 4
  %call.i.i17 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %add.i.i, ptr noundef nonnull %buf.i12, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool2.not = icmp eq i32 %call.i.i17, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %27 = ptrtoint ptr %idtcm1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %idtcm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i18) #7
  %29 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %buf.i18, align 1, !annotation !249
  %30 = ptrtoint ptr %dpll_phase_pull_in.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dpll_phase_pull_in.i, align 4
  %regmap.i.i21 = getelementptr inbounds %struct.idtcm, ptr %28, i32 0, i32 10
  %32 = ptrtoint ptr %regmap.i.i21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i21, align 4
  %conv.i.i22 = zext i16 %31 to i32
  %add.i.i23 = add nuw nsw i32 %conv.i.i22, 7
  %call.i.i24 = call i32 @regmap_bulk_read(ptr noundef %33, i32 noundef %add.i.i23, ptr noundef nonnull %buf.i18, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i25, label %if.end.i, label %if.end4.idtcm_start_phase_pull_in.exit_crit_edge

if.end4.idtcm_start_phase_pull_in.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_start_phase_pull_in.exit

if.end.i:                                         ; preds = %if.end4
  %34 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i = icmp eq i8 %35, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.idtcm_start_phase_pull_in.exit_crit_edge

if.end.i.idtcm_start_phase_pull_in.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %idtcm_start_phase_pull_in.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %buf.i18, align 1
  %37 = ptrtoint ptr %dpll_phase_pull_in.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dpll_phase_pull_in.i, align 4
  %39 = ptrtoint ptr %regmap.i.i21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i.i21, align 4
  %conv.i15.i = zext i16 %38 to i32
  %add.i16.i = add nuw nsw i32 %conv.i15.i, 7
  %call.i17.i = call i32 @regmap_bulk_write(ptr noundef %40, i32 noundef %add.i16.i, ptr noundef nonnull %buf.i18, i32 noundef 1) #7
  br label %idtcm_start_phase_pull_in.exit

idtcm_start_phase_pull_in.exit:                   ; preds = %if.then3.i, %if.end.i.idtcm_start_phase_pull_in.exit_crit_edge, %if.end4.idtcm_start_phase_pull_in.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i24, %if.end4.idtcm_start_phase_pull_in.exit_crit_edge ], [ %call.i17.i, %if.then3.i ], [ -16, %if.end.i.idtcm_start_phase_pull_in.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i18) #7
  br label %cleanup

cleanup:                                          ; preds = %idtcm_start_phase_pull_in.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %idtcm_start_phase_pull_in.exit ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i17, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !138, !139, !140, !142, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__UNIQUE_ID_description271, !1, !"__UNIQUE_ID_description271", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_author272, !3, !"__UNIQUE_ID_author272", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_author273, !5, !"__UNIQUE_ID_author273", i1 false, i1 false}
!5 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_version274, !7, !"__UNIQUE_ID_version274", i1 false, i1 false}
!7 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 28, i32 1}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__modver_attr, !7, !"__modver_attr", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file275, !13, !"__UNIQUE_ID_file275", i1 false, i1 false}
!13 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 29, i32 1}
!14 = !{ptr @__UNIQUE_ID_license276, !13, !"__UNIQUE_ID_license276", i1 false, i1 false}
!15 = !{ptr @__param_firmware, !16, !"__param_firmware", i1 false, i1 false}
!16 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 36, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmwaretype277, !16, !"__UNIQUE_ID_firmwaretype277", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_ptp_clockmatrix__282_2438_idtcm_driver_init6, !19, !"__initcall__kmod_ptp_clockmatrix__282_2438_idtcm_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2438, i32 1}
!20 = !{ptr @__exitcall_idtcm_driver_exit, !19, !"__exitcall_idtcm_driver_exit", i1 false, i1 false}
!21 = !{ptr @firmware, !22, !"firmware", i1 false, i1 false}
!22 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 35, i32 14}
!23 = !{ptr @__param_str_firmware, !16, !"__param_str_firmware", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2432, i32 11}
!26 = !{ptr @idtcm_driver, !27, !"idtcm_driver", i1 false, i1 false}
!27 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2430, i32 31}
!28 = !{ptr @idtcm_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2374, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @idtcm_probe.__key.5, !29, !"__key", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2385, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @idtcm_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @idtcm_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2396, i32 5}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @idtcm_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @idtcm_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2402, i32 3}
!48 = !{ptr @idtcm_probe._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @idtcm_probe._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2030, i32 51}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2035, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @idtcm_set_version_info._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @idtcm_set_version_info._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 190, i32 32}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 193, i32 32}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 169, i32 23}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1247, i32 34}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1249, i32 2}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @idtcm_load_firmware._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @idtcm_load_firmware._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1253, i32 3}
!73 = !{ptr @idtcm_load_firmware._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @idtcm_load_firmware._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1258, i32 2}
!77 = !{ptr @idtcm_load_firmware.__UNIQUE_ID_ddebug281, !76, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1267, i32 4}
!80 = !{ptr @idtcm_load_firmware._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @idtcm_load_firmware._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1062, i32 5}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @idtcm_state_machine_reset.__UNIQUE_ID_ddebug278, !83, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1069, i32 4}
!88 = !{ptr @idtcm_state_machine_reset._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @idtcm_state_machine_reset._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1189, i32 4}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @check_and_set_masks._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @check_and_set_masks._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1166, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @set_tod_ptp_pll._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @set_tod_ptp_pll._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1171, i32 3}
!102 = !{ptr @set_tod_ptp_pll._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @set_tod_ptp_pll._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1220, i32 2}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @display_pll_and_masks.__UNIQUE_ID_ddebug279, !105, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1226, i32 4}
!110 = !{ptr @display_pll_and_masks.__UNIQUE_ID_ddebug280, !109, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 367, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @wait_for_chip_ready._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @wait_for_chip_ready._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 370, i32 3}
!118 = !{ptr @wait_for_chip_ready._entry.51, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @wait_for_chip_ready._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 237, i32 2}
!122 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @wait_for_boot_status_ready._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @wait_for_boot_status_ready._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 349, i32 4}
!127 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @wait_for_sys_apll_dpll_lock._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @wait_for_sys_apll_dpll_lock._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 357, i32 2}
!132 = !{ptr @wait_for_sys_apll_dpll_lock._entry.58, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @wait_for_sys_apll_dpll_lock._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2249, i32 4}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2257, i32 3}
!138 = !{ptr @idtcm_enable_channel._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @idtcm_enable_channel._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2275, i32 2}
!142 = !{ptr @idtcm_enable_channel._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @idtcm_enable_channel._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @idtcm_caps_deprecated, !145, !"idtcm_caps_deprecated", i1 false, i1 false}
!145 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2055, i32 36}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1932, i32 3}
!148 = !{ptr @idtcm_adjfine._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @idtcm_adjfine._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1909, i32 3}
!152 = !{ptr @idtcm_adjphase._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @idtcm_adjphase._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1857, i32 3}
!156 = !{ptr @idtcm_adjtime_deprecated._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @idtcm_adjtime_deprecated._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 869, i32 3}
!160 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @_idtcm_settime_deprecated._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @_idtcm_settime_deprecated._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1804, i32 3}
!165 = !{ptr @idtcm_gettime._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @idtcm_gettime._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1822, i32 3}
!169 = !{ptr @idtcm_settime_deprecated._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @idtcm_settime_deprecated._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1971, i32 3}
!173 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @idtcm_enable._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @idtcm_enable._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1374, i32 3}
!178 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @idtcm_perout_enable._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @idtcm_perout_enable._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1318, i32 3}
!183 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @idtcm_output_enable._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @idtcm_output_enable._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 804, i32 4}
!188 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @_idtcm_set_dpll_scsr_tod._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @_idtcm_set_dpll_scsr_tod._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @idtcm_caps, !192, !"idtcm_caps", i1 false, i1 false}
!192 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 2041, i32 36}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1892, i32 3}
!195 = !{ptr @idtcm_adjtime._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @idtcm_adjtime._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.82, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1840, i32 3}
!199 = !{ptr @idtcm_settime._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @idtcm_settime._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1679, i32 3}
!203 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @initialize_dco_operating_mode._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @initialize_dco_operating_mode._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1686, i32 4}
!208 = !{ptr @initialize_dco_operating_mode._entry.85, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @initialize_dco_operating_mode._entry_ptr.87, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1634, i32 3}
!212 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @initialize_operating_mode_with_manual_reference._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @initialize_operating_mode_with_manual_reference._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1505, i32 3}
!217 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @configure_manual_reference_write_frequency._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @configure_manual_reference_write_frequency._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1520, i32 3}
!222 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @configure_manual_reference_write_phase._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @configure_manual_reference_write_phase._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.94, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1660, i32 3}
!227 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @initialize_operating_mode_with_pll_mode._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @initialize_operating_mode_with_pll_mode._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.96, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1475, i32 3}
!232 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @configure_dpll_mode_write_frequency._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @configure_dpll_mode_write_frequency._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/ptp/ptp_clockmatrix.c", i32 1490, i32 3}
!237 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @configure_dpll_mode_write_phase._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @configure_dpll_mode_write_phase._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"auto-init"}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{i64 2148462386, i64 2148462666, i64 2148463000, i64 2148463334}
!252 = !{i64 2148233327, i64 2148233332, i64 2148233345, i64 2148233389, i64 2148233423, i64 2148233444}
!253 = !{i8 0, i8 2}
!254 = !{i64 1480480}
