; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-imxdi.c_pt.bc'
source_filename = "../drivers/rtc/rtc-imxdi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.imxdi_dev = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head, %struct.mutex, %struct.work_struct }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_imxdi__228_862_dryice_rtc_driver_init6 = internal global ptr @dryice_rtc_driver_init, section ".initcall6.init", align 4
@dryice_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.85, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dryice_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dryice_rtc_driver_exit = internal global ptr @dryice_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [47 x i8] c"rtc_imxdi.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [50 x i8] c"rtc_imxdi.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [61 x i8] c"rtc_imxdi.description=IMX DryIce Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [37 x i8] c"rtc_imxdi.file=drivers/rtc/rtc-imxdi\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [22 x i8] c"rtc_imxdi.license=GPL\00", section ".modinfo", align 1
@dryice_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&imxdi->irq_lock\00", [47 x i8] zeroinitializer }, align 32
@dryice_rtc_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&imxdi->write_wait\00", [45 x i8] zeroinitializer }, align 32
@dryice_rtc_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&imxdi->work)\00", [32 x i8] zeroinitializer }, align 32
@dryice_rtc_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&imxdi->write_mutex\00", [44 x i8] zeroinitializer }, align 32
@dryice_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 802, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt not available.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dryice_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-imxdi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dryice_rtc_probe._entry_ptr = internal global ptr @dryice_rtc_probe._entry, section ".printk_index", align 4
@dryice_rtc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 809, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"security violation interrupt not available.\0A\00", [51 x i8] zeroinitializer }, align 32
@dryice_rtc_probe._entry_ptr.14 = internal global ptr @dryice_rtc_probe._entry.12, section ".printk_index", align 4
@dryice_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @dryice_rtc_read_time, ptr @dryice_rtc_set_time, ptr @dryice_rtc_read_alarm, ptr @dryice_rtc_set_alarm, ptr null, ptr @dryice_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@di_write_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 522, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Write-wait timeout val = 0x%08x reg = 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"di_write_wait\00", [18 x i8] zeroinitializer }, align 32
@di_write_wait._entry_ptr = internal global ptr @di_write_wait._entry, section ".printk_index", align 4
@clear_write_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.9, i32 476, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WARNING: Register write error!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clear_write_error\00", [46 x i8] zeroinitializer }, align 32
@clear_write_error._entry_ptr = internal global ptr @clear_write_error._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@clear_write_error._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.9, i32 488, ptr @.str.21, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERROR: Cannot clear write-error flag!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@clear_write_error._entry_ptr.22 = internal global ptr @clear_write_error._entry.19, section ".printk_index", align 4
@di_handle_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.9, i32 419, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid stated unit detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"di_handle_state\00", [16 x i8] zeroinitializer }, align 32
@di_handle_state._entry_ptr = internal global ptr @di_handle_state._entry, section ".printk_index", align 4
@di_handle_state._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.9, i32 423, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failure stated unit detected\0A\00", [34 x i8] zeroinitializer }, align 32
@di_handle_state._entry_ptr.27 = internal global ptr @di_handle_state._entry.25, section ".printk_index", align 4
@di_handle_state._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.9, i32 428, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failure+Invalid stated unit detected\0A\00", [58 x i8] zeroinitializer }, align 32
@di_handle_state._entry_ptr.30 = internal global ptr @di_handle_state._entry.28, section ".printk_index", align 4
@di_handle_state._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.9, i32 432, ptr @.str.33, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unlocked unit detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@di_handle_state._entry_ptr.34 = internal global ptr @di_handle_state._entry.31, section ".printk_index", align 4
@di_handle_invalid_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.9, i32 296, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"The security violation has happened at %u seconds\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"di_handle_invalid_state\00", [40 x i8] zeroinitializer }, align 32
@di_handle_invalid_state._entry_ptr = internal global ptr @di_handle_invalid_state._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@di_what_is_to_be_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.9, i32 239, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Please cycle the %s power supply in order to get the DryIce/RTC unit working again\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"di_what_is_to_be_done\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@di_what_is_to_be_done._entry_ptr = internal global ptr @di_what_is_to_be_done._entry, section ".printk_index", align 4
@di_handle_failure_state.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.9, ptr @.str.44, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_imxdi\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"di_handle_failure_state\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DSR register reports: %08X\0A\00", [36 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.9, i32 190, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DryIce tamper event detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"di_report_tamper_info\00", [42 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr = internal global ptr @di_report_tamper_info._entry, section ".printk_index", align 4
@di_report_tamper_info._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.9, i32 194, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%sVoltage Tamper Event\0A\00", [40 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.49 = internal global ptr @di_report_tamper_info._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Spurious \00", [22 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.9, i32 198, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s32768 Hz Clock Tamper Event\0A\00", [33 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.54 = internal global ptr @di_report_tamper_info._entry.52, section ".printk_index", align 4
@di_report_tamper_info._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.46, ptr @.str.9, i32 202, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%sTemperature Tamper Event\0A\00", [36 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.57 = internal global ptr @di_report_tamper_info._entry.55, section ".printk_index", align 4
@di_report_tamper_info._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.46, ptr @.str.9, i32 207, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%sSecure Controller Alarm Event\0A\00", [63 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.60 = internal global ptr @di_report_tamper_info._entry.58, section ".printk_index", align 4
@di_report_tamper_info._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.46, ptr @.str.9, i32 211, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%sExternal Boot Tamper Event\0A\00", [34 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.63 = internal global ptr @di_report_tamper_info._entry.61, section ".printk_index", align 4
@di_report_tamper_info._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.46, ptr @.str.9, i32 215, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sExternal Tamper A Event\0A\00", [37 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.66 = internal global ptr @di_report_tamper_info._entry.64, section ".printk_index", align 4
@di_report_tamper_info._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.46, ptr @.str.9, i32 219, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sExternal Tamper B Event\0A\00", [37 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.69 = internal global ptr @di_report_tamper_info._entry.67, section ".printk_index", align 4
@di_report_tamper_info._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.46, ptr @.str.9, i32 223, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%sWire-mesh Tamper Event\0A\00", [38 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.72 = internal global ptr @di_report_tamper_info._entry.70, section ".printk_index", align 4
@di_report_tamper_info._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.46, ptr @.str.9, i32 228, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%sMonotonic-counter Overflow Event\0A\00", [60 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.75 = internal global ptr @di_report_tamper_info._entry.73, section ".printk_index", align 4
@di_report_tamper_info._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.46, ptr @.str.9, i32 232, ptr @.str.41, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%sTimer-counter Overflow Event\0A\00", [32 x i8] zeroinitializer }, align 32
@di_report_tamper_info._entry_ptr.78 = internal global ptr @di_report_tamper_info._entry.76, section ".printk_index", align 4
@di_handle_invalid_and_failure_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.9, i32 385, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"There are still some sources of pain in DSR: %08x!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"di_handle_invalid_and_failure_state\00", [60 x i8] zeroinitializer }, align 32
@di_handle_invalid_and_failure_state._entry_ptr = internal global ptr @di_handle_invalid_and_failure_state._entry, section ".printk_index", align 4
@di_handle_invalid_and_failure_state._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.9, i32 397, ptr @.str.83, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Cannot clear the security violation flag. We are ending up in an endless loop!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@di_handle_invalid_and_failure_state._entry_ptr.84 = internal global ptr @di_handle_invalid_and_failure_state._entry.81, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imxdi_rtc\00", [22 x i8] zeroinitializer }, align 32
@dryice_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"dryice_rtc_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 854, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 758, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 771, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 773, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 775, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 802, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 809, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"dryice_rtc_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 649, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 520, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 476, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 487, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 419, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 423, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 427, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 432, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 294, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 305, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 309, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 238, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 246, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 190, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 193, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 197, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 201, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 205, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 210, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 214, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 218, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 222, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 226, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 231, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 382, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 396, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 856, i32 14 }
@___asan_gen_.329 = private unnamed_addr constant [14 x i8] c"dryice_dt_ids\00", align 1
@___asan_gen_.330 = private constant [27 x i8] c"../drivers/rtc/rtc-imxdi.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 847, i32 34 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_dryice_rtc_driver_exit, ptr @__initcall__kmod_rtc_imxdi__228_862_dryice_rtc_driver_init6, ptr @clear_write_error._entry, ptr @clear_write_error._entry.19, ptr @clear_write_error._entry_ptr, ptr @clear_write_error._entry_ptr.22, ptr @di_handle_invalid_and_failure_state._entry, ptr @di_handle_invalid_and_failure_state._entry.81, ptr @di_handle_invalid_and_failure_state._entry_ptr, ptr @di_handle_invalid_and_failure_state._entry_ptr.84, ptr @di_handle_invalid_state._entry, ptr @di_handle_invalid_state._entry_ptr, ptr @di_handle_state._entry, ptr @di_handle_state._entry.25, ptr @di_handle_state._entry.28, ptr @di_handle_state._entry.31, ptr @di_handle_state._entry_ptr, ptr @di_handle_state._entry_ptr.27, ptr @di_handle_state._entry_ptr.30, ptr @di_handle_state._entry_ptr.34, ptr @di_report_tamper_info._entry, ptr @di_report_tamper_info._entry.47, ptr @di_report_tamper_info._entry.52, ptr @di_report_tamper_info._entry.55, ptr @di_report_tamper_info._entry.58, ptr @di_report_tamper_info._entry.61, ptr @di_report_tamper_info._entry.64, ptr @di_report_tamper_info._entry.67, ptr @di_report_tamper_info._entry.70, ptr @di_report_tamper_info._entry.73, ptr @di_report_tamper_info._entry.76, ptr @di_report_tamper_info._entry_ptr, ptr @di_report_tamper_info._entry_ptr.49, ptr @di_report_tamper_info._entry_ptr.54, ptr @di_report_tamper_info._entry_ptr.57, ptr @di_report_tamper_info._entry_ptr.60, ptr @di_report_tamper_info._entry_ptr.63, ptr @di_report_tamper_info._entry_ptr.66, ptr @di_report_tamper_info._entry_ptr.69, ptr @di_report_tamper_info._entry_ptr.72, ptr @di_report_tamper_info._entry_ptr.75, ptr @di_report_tamper_info._entry_ptr.78, ptr @di_what_is_to_be_done._entry, ptr @di_what_is_to_be_done._entry_ptr, ptr @di_write_wait._entry, ptr @di_write_wait._entry_ptr, ptr @dryice_rtc_driver_exit, ptr @dryice_rtc_probe._entry, ptr @dryice_rtc_probe._entry.12, ptr @dryice_rtc_probe._entry_ptr, ptr @dryice_rtc_probe._entry_ptr.14, ptr @dryice_rtc_remove, ptr @dryice_rtc_driver, ptr @dryice_rtc_probe.__key, ptr @.str, ptr @dryice_rtc_probe.__key.1, ptr @.str.2, ptr @dryice_rtc_probe.__key.3, ptr @.str.4, ptr @dryice_rtc_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @dryice_rtc_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @dryice_dt_ids], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_write_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_write_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_write_error._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_state._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_state._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_state._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_invalid_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_what_is_to_be_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_report_tamper_info._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_invalid_and_failure_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_handle_invalid_and_failure_state._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dryice_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 8
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %work) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !164
  %clk = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @dryice_rtc_driver, ptr noundef nonnull @dryice_rtc_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dryice_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dryice_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 252, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %ioaddr, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %irq_lock = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str, ptr noundef nonnull @dryice_rtc_probe.__key, i16 noundef signext 3) #6
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  %spec.store.select = select i1 %cmp14, i32 -2147483648, i32 %call13
  %write_wait = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @dryice_rtc_probe.__key.1) #6
  %work = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @dryice_rtc_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry24 = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dryice_work, ptr %func, align 4
  %write_mutex = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %write_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @dryice_rtc_probe.__key.5) #6
  %call32 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call32, ptr %rtc, align 4
  %cmp.i147 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end12
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.imxdi_dev, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call40, ptr %clk, align 4
  %cmp.i148 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %call.i149 = tail call i32 @clk_prepare(ptr noundef %call40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end46
  %call1.i = tail call i32 @clk_enable(ptr noundef %call40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body52, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call40) #6
  br label %cleanup

do.body52:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !164
  %call56 = tail call fastcc i32 @di_handle_state(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end59, label %do.body52.err_crit_edge

do.body52.err_crit_edge:                          ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end59:                                         ; preds = %do.body52
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %call.i150 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call10, ptr noundef nonnull @dryice_irq, ptr noundef null, i32 noundef 128, ptr noundef %14, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool62.not = icmp eq i32 %call.i150, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err

if.end68:                                         ; preds = %if.end59
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call.i151 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %spec.store.select, ptr noundef nonnull @dryice_irq, ptr noundef null, i32 noundef 128, ptr noundef %16, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool72.not = icmp eq i32 %call.i151, 0
  br i1 %tobool72.not, label %if.end68.if.end78_crit_edge, label %do.end76

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %if.end78

if.end78:                                         ; preds = %do.end76, %if.end68.if.end78_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call80 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call82 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %call10) #6
  %18 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dryice_rtc_ops, ptr %ops, align 8
  %21 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 4294967295, ptr %range_max, align 8
  %23 = load ptr, ptr %rtc, align 4
  %call86 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end78.cleanup_crit_edge, label %if.end78.err_crit_edge

if.end78.err_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err:                                              ; preds = %if.end78.err_crit_edge, %do.end66, %do.body52.err_crit_edge
  %rc.0 = phi i32 [ %call56, %do.body52.err_crit_edge ], [ %call.i150, %do.end66 ], [ %call86, %if.end78.err_crit_edge ]
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end78.cleanup_crit_edge, %if.then3.i, %if.end46.cleanup_crit_edge, %if.then43, %if.then35, %do.body.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %8, %if.then35 ], [ %10, %if.then43 ], [ %rc.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %do.body.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i149, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dryice_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -208
  %call = tail call fastcc i32 @di_write_wait(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 20)
  %rtc = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @di_handle_state(ptr nocapture noundef readonly %imxdi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !166
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end19 [
    i32 2, label %do.end
    i32 1, label %do.end6
    i32 3, label %do.end13
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %imxdi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  %call2 = tail call fastcc i32 @di_handle_invalid_state(ptr noundef %imxdi)
  br label %sw.epilog

do.end6:                                          ; preds = %entry
  %7 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %imxdi, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.26) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @di_handle_failure_state.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@di_handle_state, %di_handle_failure_state.exit)) #6
          to label %if.then.i [label %di_handle_failure_state.exit], !srcloc !168

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %imxdi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @di_handle_failure_state.__UNIQUE_ID_ddebug227, ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %3) #6
  br label %di_handle_failure_state.exit

di_handle_failure_state.exit:                     ; preds = %if.then.i, %do.end6
  tail call fastcc void @di_report_tamper_info(ptr noundef %imxdi, i32 noundef %3) #6
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %imxdi, align 4
  %dev.i1.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %.str.38..str.37.i = select i1 %tobool7.not.i, ptr @.str.38, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i1.i, ptr noundef nonnull @.str.39, ptr noundef nonnull %.str.38..str.37.i) #9
  br label %sw.epilog

do.end13:                                         ; preds = %entry
  %17 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %imxdi, align 4
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.29) #9
  %and.i = and i32 %3, 16711692
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end13.if.end8.i_crit_edge, label %if.then.i37

do.end13.if.end8.i_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i37:                                      ; preds = %do.end13
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i36 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #6, !srcloc !166
  %and1.i = and i32 %21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %imxdi, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #9
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i37
  %and4.i = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %imxdi, align 4
  %dev.i52.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i52.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #9
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %do.end13.if.end8.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %29 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %28) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  %34 = and i32 %33, 2096693247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %if.end8.i.if.end17.i_crit_edge, label %do.end.i

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %imxdi, align 4
  %dev.i38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i38, ptr noundef nonnull @.str.79, i32 noundef %35) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %if.end8.i.if.end17.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 16777216) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 4
  %add.ptr21.i = getelementptr i8, ptr %41, i32 20
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool26.not.i = icmp eq i32 %43, 0
  br i1 %tobool26.not.i, label %if.end33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %imxdi, align 4
  %dev32.i = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev32.i, ptr noundef nonnull @.str.82) #9
  %46 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %imxdi, align 4
  %dev.i57.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i57.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #9
  br label %sw.epilog

if.end33.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = tail call fastcc i32 @di_handle_invalid_state(ptr noundef %imxdi) #6
  br label %sw.epilog

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %imxdi, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev21, ptr noundef nonnull @.str.32) #9
  tail call fastcc void @di_handle_valid_state(ptr noundef %imxdi, i32 noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end19, %if.end33.i, %do.end30.i, %if.then6.i, %if.then3.i, %di_handle_failure_state.exit, %do.end
  %rc.0 = phi i32 [ 0, %do.end19 ], [ -19, %di_handle_failure_state.exit ], [ %call2, %do.end ], [ -19, %if.then3.i ], [ -19, %if.then6.i ], [ -19, %do.end30.i ], [ %call34.i, %if.end33.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !166
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !166
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and9 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %entry.if.end12_crit_edge, label %if.then11

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq_lock.i = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 4
  %add.ptr12.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %11) #6, !srcloc !164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #6
  tail call fastcc void @di_report_tamper_info(ptr noundef %dev_id, i32 noundef %7)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry.if.end12_crit_edge
  %rc.0 = phi i32 [ 1, %if.then11 ], [ 0, %entry.if.end12_crit_edge ]
  %and13 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end26_crit_edge, label %if.then15

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then15:                                        ; preds = %if.end12
  %write_wait = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 6
  %head = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !177
  %cmp.i.not.i = icmp eq ptr %15, %head
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

list_empty_careful.exit:                          ; preds = %if.then15
  %prev.i = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %17, %head
  br i1 %cmp.i.not, label %list_empty_careful.exit.cleanup_crit_edge, label %list_empty_careful.exit.if.end19_crit_edge

list_empty_careful.exit.if.end19_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

list_empty_careful.exit.cleanup_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %list_empty_careful.exit.if.end19_crit_edge, %if.then15.if.end19_crit_edge
  %and20 = and i32 %7, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end26_crit_edge, label %if.then22

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %irq_lock.i56 = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 5
  %call2.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i59 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %21 = and i32 %20, -65537
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %add.ptr12.i61 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i61, i32 %21) #6, !srcloc !164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i56, i32 noundef %call2.i57) #6
  %dsr23 = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 4
  %24 = ptrtoint ptr %dsr23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsr23, align 4
  %or = or i32 %25, %7
  store i32 %or, ptr %dsr23, align 4
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %rc.1 = phi i32 [ 1, %if.then22 ], [ %rc.0, %if.end19.if.end26_crit_edge ], [ %rc.0, %if.end12.if.end26_crit_edge ]
  %and27 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and30 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond55 = select i1 %tobool28.not, i1 true, i1 %tobool31.not
  br i1 %or.cond55, label %if.end26.cleanup_crit_edge, label %if.then32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %irq_lock.i62 = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 5
  %call2.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i62) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i65 = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %29 = and i32 %28, -268435457
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 4
  %add.ptr12.i67 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i67, i32 %29) #6, !srcloc !164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i62, i32 noundef %call2.i63) #6
  %work = getelementptr inbounds %struct.imxdi_dev, ptr %dev_id, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end26.cleanup_crit_edge, %list_empty_careful.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %list_empty_careful.exit.cleanup_crit_edge ], [ 1, %if.then32 ], [ %rc.1, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @di_write_wait(ptr noundef %imxdi, i32 noundef %val, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write_mutex = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %write_mutex, i32 noundef 0) #6
  %irq_lock.i = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %ioaddr.i = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %3 = or i32 %2, 65536
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %3) #6, !srcloc !164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #6
  %dsr = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 4
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %val)
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !164
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 515) #6
  %10 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsr, align 4
  %and = and i32 %11, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then13, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %write_wait = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 6
  %call16102 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %13 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsr, align 4
  %and19103 = and i32 %14, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19103)
  %tobool20.not104.not = icmp eq i32 %and19103, 0
  br i1 %tobool20.not104.not, label %if.then13.if.end36_crit_edge, label %if.then13.for.end_crit_edge

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  br label %if.end36

if.end36:                                         ; preds = %cleanup.if.end36_crit_edge, %if.then13.if.end36_crit_edge
  %__ret14.1107 = phi i32 [ %__ret14.1, %cleanup.if.end36_crit_edge ], [ 1, %if.then13.if.end36_crit_edge ]
  %call16106 = phi i32 [ %call16, %cleanup.if.end36_crit_edge ], [ %call16102, %if.then13.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16106)
  %tobool37.not = icmp eq i32 %call16106, 0
  br i1 %tobool37.not, label %cleanup, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

cleanup:                                          ; preds = %if.end36
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret14.1107) #6
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %15 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dsr, align 4
  %and19 = and i32 %16, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool24.not = icmp eq i32 %call40, 0
  %spec.store.select61 = select i1 %tobool24.not, i32 1, i32 %call40
  %__ret14.1 = select i1 %tobool20.not, i32 %call40, i32 %spec.store.select61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool30.not = icmp eq i32 %__ret14.1, 0
  %not.tobool20.not = xor i1 %tobool20.not, true
  %17 = select i1 %not.tobool20.not, i1 true, i1 %tobool30.not
  br i1 %17, label %cleanup.for.end_crit_edge, label %cleanup.if.end36_crit_edge

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then13.for.end_crit_edge
  %__ret14.1.lcssa = phi i32 [ 1, %if.then13.for.end_crit_edge ], [ %__ret14.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #6
  br label %if.end43

if.end43:                                         ; preds = %for.end, %if.end36.if.end43_crit_edge
  %__ret14.289 = phi i32 [ %__ret14.1.lcssa, %for.end ], [ %call16106, %if.end36.if.end43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.289)
  %cmp = icmp slt i32 %__ret14.289, 0
  br i1 %cmp, label %if.end43.out_crit_edge, label %if.else

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.289)
  %cmp46 = icmp eq i32 %__ret14.289, 0
  br i1 %cmp46, label %do.end50, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %imxdi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %val, i32 noundef %reg) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.else.if.end52_crit_edge, %entry.if.end52_crit_edge
  %20 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsr, align 4
  %and54 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.out_crit_edge, label %if.then56

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then56:                                        ; preds = %if.end52
  %22 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %imxdi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %25, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 -2147483648) #6, !srcloc !164
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then56
  %cnt.017.i = phi i32 [ 0, %if.then56 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %27, i32 20
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp7.i = icmp sgt i32 %28, -1
  br i1 %cmp7.i, label %for.body.i.out_crit_edge, label %if.end.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 2147480) #6
  %inc.i = add nuw nsw i32 %cnt.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end10.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %imxdi, align 4
  %dev12.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.20) #9
  br label %out

out:                                              ; preds = %do.end10.i, %for.body.i.out_crit_edge, %if.end52.out_crit_edge, %if.end43.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end52.out_crit_edge ], [ %__ret14.289, %if.end43.out_crit_edge ], [ -5, %do.end10.i ], [ -5, %for.body.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %write_mutex) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @di_handle_invalid_state(ptr nocapture noundef readonly %imxdi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %ioaddr.i = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 32) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imxdi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !166
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then9:                                         ; preds = %if.end
  %and10 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %imxdi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %and14 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %imxdi, align 4
  %dev.i3 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13.if.end18_crit_edge, %if.end.if.end18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 33554432) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 67108864) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  %or = or i32 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %22) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %6) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  %27 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr20 = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !166
  tail call fastcc void @di_handle_valid_state(ptr noundef %imxdi, i32 noundef %29)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -19, %if.then12 ], [ -19, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @di_handle_valid_state(ptr nocapture noundef readonly %imxdi, i32 noundef %dsr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %ioaddr.i = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 0) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  %and = and i32 %dsr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 268435456) #6, !srcloc !164
  tail call void @usleep_range_state(i32 noundef 130, i32 noundef 200, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @di_report_tamper_info(ptr nocapture noundef readonly %imxdi, i32 noundef %dsr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %imxdi, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !166
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %4 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imxdi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  %and = and i32 %dsr, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imxdi, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev6, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond) #9
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  %and9 = and i32 %dsr, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end20_crit_edge, label %do.end14

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imxdi, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %and17 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev16, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond19) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %if.end.if.end20_crit_edge
  %and21 = and i32 %dsr, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end32_crit_edge, label %do.end26

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %imxdi, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %and29 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev28, ptr noundef nonnull @.str.56, ptr noundef nonnull %cond31) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end20.if.end32_crit_edge
  %and33 = and i32 %dsr, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end44_crit_edge, label %do.end38

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %imxdi, align 4
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %and41 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond43 = select i1 %tobool42.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev40, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond43) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end32.if.end44_crit_edge
  %and45 = and i32 %dsr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end56_crit_edge, label %do.end50

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %imxdi, align 4
  %dev52 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %and53 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %cond55 = select i1 %tobool54.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev52, ptr noundef nonnull @.str.62, ptr noundef nonnull %cond55) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end44.if.end56_crit_edge
  %and57 = and i32 %dsr, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end68_crit_edge, label %do.end62

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %imxdi, align 4
  %dev64 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %and65 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %cond67 = select i1 %tobool66.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev64, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond67) #9
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %if.end56.if.end68_crit_edge
  %and69 = and i32 %dsr, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end80_crit_edge, label %do.end74

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %imxdi, align 4
  %dev76 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %and77 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond79 = select i1 %tobool78.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev76, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond79) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end68.if.end80_crit_edge
  %and81 = and i32 %dsr, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end92_crit_edge, label %do.end86

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %imxdi, align 4
  %dev88 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %and89 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %cond91 = select i1 %tobool90.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev88, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond91) #9
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.end80.if.end92_crit_edge
  %and93 = and i32 %dsr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end104_crit_edge, label %do.end98

if.end92.if.end104_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %imxdi, align 4
  %dev100 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %and101 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %cond103 = select i1 %tobool102.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev100, ptr noundef nonnull @.str.74, ptr noundef nonnull %cond103) #9
  br label %if.end104

if.end104:                                        ; preds = %do.end98, %if.end92.if.end104_crit_edge
  %and105 = and i32 %dsr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end116_crit_edge, label %do.end110

if.end104.if.end116_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %imxdi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %imxdi, align 4
  %dev112 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %and113 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  %cond115 = select i1 %tobool114.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev112, ptr noundef nonnull @.str.77, ptr noundef nonnull %cond115) #9
  br label %if.end116

if.end116:                                        ; preds = %do.end110, %if.end104.if.end116_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !166
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  %conv = zext i32 %5 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !166
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  %and12 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end, label %if.then14

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and15 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond56 = select i1 %tobool16.not, i1 %tobool11.not, i1 false
  br i1 %or.cond56, label %if.end.if.end22_crit_edge, label %if.then20

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev.i57 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev.i57, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  %call23 = tail call fastcc i32 @di_write_wait(ptr noundef %1, i32 noundef 0, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp.not = icmp eq i32 %call23, 0
  br i1 %cmp.not, label %if.end25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %call26 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %conv = trunc i64 %call26 to i32
  %call27 = tail call fastcc i32 @di_write_wait(ptr noundef %1, i32 noundef %conv, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %add.ptr35 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  %17 = or i32 %16, 134217728
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %call39 = tail call fastcc i32 @di_write_wait(ptr noundef %1, i32 noundef %18, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then20, %if.then14
  %retval.0 = phi i32 [ -1, %if.then14 ], [ -1, %if.then20 ], [ %call39, %if.end31 ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alarm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !166
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  %conv = zext i32 %5 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #6
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  %9 = lshr i32 %8, 28
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %alarm, align 4
  %write_mutex = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %write_mutex, i32 noundef 0) #6
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %16 = lshr i32 %15, 28
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %19 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %pending, align 1
  tail call void @mutex_unlock(ptr noundef %write_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alarm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv = trunc i64 %call1 to i32
  %call2 = tail call fastcc i32 @di_write_wait(ptr noundef %1, i32 noundef %conv, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %irq_lock.i11 = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 5
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %ioaddr.i13 = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ioaddr.i13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = or i32 %6, 268435456
  %8 = ptrtoint ptr %ioaddr.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i13, align 4
  %add.ptr12.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %7) #6, !srcloc !164
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = and i32 %6, -268435457
  %11 = ptrtoint ptr %ioaddr.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i13, align 4
  %add.ptr12.i15 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i15, i32 %10) #6, !srcloc !164
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i11, i32 noundef %call2.i12) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dryice_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %irq_lock.i2 = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 5
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %ioaddr.i4 = getelementptr inbounds %struct.imxdi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = or i32 %4, 268435456
  %6 = ptrtoint ptr %ioaddr.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i4, align 4
  %add.ptr12.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %5) #6, !srcloc !164
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = and i32 %4, -268435457
  %9 = ptrtoint ptr %ioaddr.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i4, align 4
  %add.ptr12.i6 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i6, i32 %8) #6, !srcloc !164
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i2, i32 noundef %call2.i3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_rtc_imxdi__228_862_dryice_rtc_driver_init6, !1, !"__initcall__kmod_rtc_imxdi__228_862_dryice_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-imxdi.c", i32 862, i32 1}
!2 = !{ptr @__exitcall_dryice_rtc_driver_exit, !1, !"__exitcall_dryice_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-imxdi.c", i32 864, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-imxdi.c", i32 865, i32 1}
!7 = !{ptr @__UNIQUE_ID_description231, !8, !"__UNIQUE_ID_description231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-imxdi.c", i32 866, i32 1}
!9 = !{ptr @__UNIQUE_ID_file232, !10, !"__UNIQUE_ID_file232", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-imxdi.c", i32 867, i32 1}
!11 = !{ptr @__UNIQUE_ID_license233, !10, !"__UNIQUE_ID_license233", i1 false, i1 false}
!12 = !{ptr @dryice_rtc_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-imxdi.c", i32 758, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dryice_rtc_probe.__key.1, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-imxdi.c", i32 771, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dryice_rtc_probe.__key.3, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-imxdi.c", i32 773, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dryice_rtc_probe.__key.5, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-imxdi.c", i32 775, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-imxdi.c", i32 802, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dryice_rtc_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @dryice_rtc_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-imxdi.c", i32 809, i32 3}
!34 = !{ptr @dryice_rtc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dryice_rtc_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-imxdi.c", i32 520, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @di_write_wait._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @di_write_wait._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-imxdi.c", i32 476, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @clear_write_error._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @clear_write_error._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-imxdi.c", i32 487, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @clear_write_error._entry.19, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @clear_write_error._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-imxdi.c", i32 419, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @di_handle_state._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @di_handle_state._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-imxdi.c", i32 423, i32 3}
!58 = !{ptr @di_handle_state._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @di_handle_state._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-imxdi.c", i32 427, i32 3}
!62 = !{ptr @di_handle_state._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @di_handle_state._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-imxdi.c", i32 432, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @di_handle_state._entry.31, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @di_handle_state._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-imxdi.c", i32 294, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @di_handle_invalid_state._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @di_handle_invalid_state._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-imxdi.c", i32 305, i32 33}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-imxdi.c", i32 309, i32 33}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-imxdi.c", i32 238, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @di_what_is_to_be_done._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @di_what_is_to_be_done._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-imxdi.c", i32 246, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @di_handle_failure_state.__UNIQUE_ID_ddebug227, !85, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-imxdi.c", i32 190, i32 2}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @di_report_tamper_info._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @di_report_tamper_info._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-imxdi.c", i32 193, i32 3}
!96 = !{ptr @di_report_tamper_info._entry.47, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @di_report_tamper_info._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-imxdi.c", i32 197, i32 3}
!102 = !{ptr @di_report_tamper_info._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @di_report_tamper_info._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-imxdi.c", i32 201, i32 3}
!106 = !{ptr @di_report_tamper_info._entry.55, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @di_report_tamper_info._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-imxdi.c", i32 205, i32 3}
!110 = !{ptr @di_report_tamper_info._entry.58, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @di_report_tamper_info._entry_ptr.60, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rtc/rtc-imxdi.c", i32 210, i32 3}
!114 = !{ptr @di_report_tamper_info._entry.61, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @di_report_tamper_info._entry_ptr.63, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/rtc/rtc-imxdi.c", i32 214, i32 3}
!118 = !{ptr @di_report_tamper_info._entry.64, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @di_report_tamper_info._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/rtc/rtc-imxdi.c", i32 218, i32 3}
!122 = !{ptr @di_report_tamper_info._entry.67, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @di_report_tamper_info._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/rtc/rtc-imxdi.c", i32 222, i32 3}
!126 = !{ptr @di_report_tamper_info._entry.70, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @di_report_tamper_info._entry_ptr.72, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/rtc/rtc-imxdi.c", i32 226, i32 3}
!130 = !{ptr @di_report_tamper_info._entry.73, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @di_report_tamper_info._entry_ptr.75, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rtc/rtc-imxdi.c", i32 231, i32 3}
!134 = !{ptr @di_report_tamper_info._entry.76, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @di_report_tamper_info._entry_ptr.78, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.79, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rtc/rtc-imxdi.c", i32 382, i32 3}
!138 = !{ptr @.str.80, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @di_handle_invalid_and_failure_state._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @di_handle_invalid_and_failure_state._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/rtc/rtc-imxdi.c", i32 396, i32 3}
!143 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @di_handle_invalid_and_failure_state._entry.81, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @di_handle_invalid_and_failure_state._entry_ptr.84, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @dryice_rtc_ops, !147, !"dryice_rtc_ops", i1 false, i1 false}
!147 = !{!"../drivers/rtc/rtc-imxdi.c", i32 649, i32 35}
!148 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-imxdi.c", i32 856, i32 14}
!150 = !{ptr @dryice_rtc_driver, !151, !"dryice_rtc_driver", i1 false, i1 false}
!151 = !{!"../drivers/rtc/rtc-imxdi.c", i32 854, i32 31}
!152 = !{ptr @dryice_dt_ids, !153, !"dryice_dt_ids", i1 false, i1 false}
!153 = !{!"../drivers/rtc/rtc-imxdi.c", i32 847, i32 34}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2154025855}
!164 = !{i64 707915}
!165 = !{i64 2154021745}
!166 = !{i64 708333}
!167 = !{i64 2153993211}
!168 = !{i64 2148175072, i64 2148175077, i64 2148175090, i64 2148175134, i64 2148175168, i64 2148175189}
!169 = !{i64 2153984151}
!170 = !{i64 2153959287}
!171 = !{i64 2153987950}
!172 = !{i64 2153990584}
!173 = !{i64 2154018077}
!174 = !{i64 2154018580}
!175 = !{i64 2154003573}
!176 = !{i64 2154004496}
!177 = !{i64 2148847612}
!178 = !{i64 2154001289}
!179 = !{i64 2154002210}
!180 = !{i64 2154009694}
!181 = !{i64 2154006435}
!182 = !{i64 2154007131}
!183 = !{i64 2153984734}
!184 = !{i64 2153987099}
!185 = !{i64 2153959967}
!186 = !{i64 2154014375}
!187 = !{i64 2154014878}
!188 = !{i64 2154015381}
!189 = !{i64 2154015945}
!190 = !{i64 2154016480}
!191 = !{i64 2154016983}
!192 = !{i64 2154017542}
