; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_usbpd_logger.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_usbpd_logger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.logger_data = type { ptr, ptr, [44 x i8], %struct.delayed_work, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.ec_response_pd_log = type { i32, i8, i8, i16, [0 x i8] }
%struct.usb_chg_measures = type { i16, i16, i16, i16 }
%struct.mcdp_info = type { [2 x i8], [2 x i8], %struct.mcdp_version, %struct.mcdp_version }
%struct.mcdp_version = type { i8, i8, i16 }
%struct.__va_list = type { ptr }

@__initcall__kmod_cros_usbpd_logger__228_263_cros_usbpd_logger_driver_init6 = internal global ptr @cros_usbpd_logger_driver_init, section ".initcall6.init", align 4
@cros_usbpd_logger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_usbpd_logger_probe, ptr @cros_usbpd_logger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_usbpd_logger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_usbpd_logger_driver_exit = internal global ptr @cros_usbpd_logger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [65 x i8] c"cros_usbpd_logger.file=drivers/platform/chrome/cros_usbpd_logger\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [33 x i8] c"cros_usbpd_logger.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [76 x i8] c"cros_usbpd_logger.description=Logging driver for ChromeOS EC USBPD Charger.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [51 x i8] c"cros_usbpd_logger.alias=platform:cros-usbpd-logger\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-usbpd-logger\00", [46 x i8] zeroinitializer }, align 32
@cros_usbpd_logger_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_usbpd_logger_suspend, ptr @cros_usbpd_logger_resume, ptr @cros_usbpd_logger_suspend, ptr @cros_usbpd_logger_resume, ptr @cros_usbpd_logger_suspend, ptr @cros_usbpd_logger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_usbpd_logger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&logger->log_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@cros_usbpd_logger_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&logger->log_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cros_usbpd_log\00", [17 x i8] zeroinitializer }, align 32
@cros_usbpd_log_check.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_usbpd_logger\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_usbpd_log_check\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/platform/chrome/cros_usbpd_logger.c\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get PD log %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"override \00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pending_override \00", [46 x i8] zeroinitializer }, align 32
@role_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@chg_type_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s %s %dmV max %dmV / %dmA\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DRP\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Charger\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RW signature check failed\00", [38 x i8] zeroinitializer }, align 32
@fault_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Power supply fault: %s\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DP mode %sabled\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HDMI info: family:%04x chipid:%04x \00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irom:%d.%d.%d fw:%d.%d.%d\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Event %02x (%04x) [\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@cros_usbpd_print_log_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016PDLOG %d/%02d/%02d %02d:%02d:%02d.%03d P%d %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cros_usbpd_print_log_entry\00", [37 x i8] zeroinitializer }, align 32
@cros_usbpd_print_log_entry._entry_ptr = internal global ptr @cros_usbpd_print_log_entry._entry, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SRC\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SNK\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SNK (not charging)\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PD\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Type-C\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Proprietary\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCP\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CDP\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SDP\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Other\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBUS\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"---\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OCP\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fast OCP\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OVP\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Discharge\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 32, i64 64, i64 96, i64 97]
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"cros_usbpd_logger_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 254, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 256, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"cros_usbpd_logger_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 251, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 211, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 212, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 182, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 100, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 103, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"role_names\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 41, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 107, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"chg_type_names\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 36, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 113, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 122, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 124, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 124, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 129, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"fault_names\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 45, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 134, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 137, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 138, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 138, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 142, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 145, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 151, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 155, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 157, i32 31 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 162, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 42, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 42, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 42, i32 25 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 42, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 48 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 37, i32 55 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 38, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 38, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 46, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 46, i32 9 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 46, i32 16 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 46, i32 28 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [47 x i8] c"../drivers/platform/chrome/cros_usbpd_logger.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 46, i32 35 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_cros_usbpd_logger_driver_exit, ptr @__initcall__kmod_cros_usbpd_logger__228_263_cros_usbpd_logger_driver_init6, ptr @cros_usbpd_logger_driver_exit, ptr @cros_usbpd_print_log_entry._entry, ptr @cros_usbpd_print_log_entry._entry_ptr, ptr @cros_usbpd_logger_driver, ptr @.str, ptr @cros_usbpd_logger_pm_ops, ptr @cros_usbpd_logger_probe.__key, ptr @.str.1, ptr @cros_usbpd_logger_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @role_names, ptr @.str.12, ptr @chg_type_names, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @fault_names, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_logger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_logger_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_logger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_logger_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @role_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chg_type_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fault_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_print_log_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_logger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_usbpd_logger_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_usbpd_logger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_usbpd_logger_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_logger_probe(ptr noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 156, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %ec_dev5 = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %ec_dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %ec_dev5, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %log_work = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %log_work, i32 noundef 0) #9
  %7 = ptrtoint ptr %log_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %log_work, align 4
  %lockdep_map = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @cros_usbpd_logger_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry13 = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cros_usbpd_log_check, ptr %func, align 4
  %timer = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @cros_usbpd_logger_probe.__key.2) #9
  %call22 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  %log_workqueue = getelementptr inbounds %struct.logger_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %log_workqueue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %log_workqueue, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i49 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %call22, ptr noundef %log_work, i32 noundef 6000) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_logger_remove(ptr nocapture noundef readonly %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %log_work = getelementptr inbounds %struct.logger_data, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %log_work) #9
  %log_workqueue = getelementptr inbounds %struct.logger_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %log_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_usbpd_log_check(ptr noundef %work) #2 align 64 {
entry:
  %buf.i = alloca [81 x i8], align 1
  %rem.i = alloca i32, align 4
  %tmp.i = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ec_dev1.i = getelementptr i8, ptr %work, i32 -48
  %ec_buffer.i = getelementptr i8, ptr %work, i32 -44
  %command.i = getelementptr i8, ptr %work, i32 -40
  %insize.i = getelementptr i8, ptr %work, i32 -32
  %data.i = getelementptr i8, ptr %work, i32 -24
  %rt.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 4
  %rt.sroa.6.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %rt.sroa.7.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 12
  %rt.sroa.8.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 16
  %rt.sroa.9.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 20
  br label %while.body

while.body:                                       ; preds = %cros_usbpd_print_log_entry.exit.while.body_crit_edge, %entry
  %inc32 = phi i32 [ 1, %entry ], [ %inc, %cros_usbpd_print_log_entry.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %ec_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev1.i, align 4
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 277
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %command.i, align 4
  %7 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %insize.i, align 4
  %ec_dev2.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ec_dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ec_dev2.i, align 8
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %9, ptr noundef %ec_buffer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %10 = inttoptr i32 %call.i to ptr
  %retval.0.i24 = select i1 %cmp.i, ptr %10, ptr %data.i
  %call.i25 = call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %cmp.i26 = icmp ugt ptr %retval.0.i24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %do.body, label %if.end11

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_usbpd_log_check.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_usbpd_log_check, %if.then9)) #9
          to label %while.end [label %if.then9], !srcloc !120

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %retval.0.i24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_usbpd_log_check.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %11) #9
  br label %while.end

if.end11:                                         ; preds = %while.body
  %type = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp12 = icmp eq i8 %13, -1
  br i1 %cmp12, label %if.end11.while.end_crit_edge, label %if.end15

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %buf.i) #9
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i) #9
  %15 = ptrtoint ptr %rem.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rem.i, align 4, !annotation !121
  %16 = ptrtoint ptr %retval.0.i24 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %retval.0.i24, align 1
  %shl.i = shl i32 %17, 10
  %conv.i27 = zext i32 %shl.i to i64
  %mul.neg.i.i = mul nsw i64 %conv.i27, -1000
  %sub.i.i = add i64 %mul.neg.i.i, %call.i25
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp.i) #9
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %tmp.i, i64 noundef %sub.i.i) #9
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %rt.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  %19 = ptrtoint ptr %rt.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %rt.sroa.5.0.copyload.i = load i32, ptr %rt.sroa.5.0.tmp.sroa_idx.i, align 4
  %20 = ptrtoint ptr %rt.sroa.6.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %rt.sroa.6.0.copyload.i = load i32, ptr %rt.sroa.6.0.tmp.sroa_idx.i, align 4
  %21 = ptrtoint ptr %rt.sroa.7.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %rt.sroa.7.0.copyload.i = load i32, ptr %rt.sroa.7.0.tmp.sroa_idx.i, align 4
  %22 = ptrtoint ptr %rt.sroa.8.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %rt.sroa.8.0.copyload.i = load i32, ptr %rt.sroa.8.0.tmp.sroa_idx.i, align 4
  %23 = ptrtoint ptr %rt.sroa.9.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %rt.sroa.9.0.copyload.i = load i32, ptr %rt.sroa.9.0.tmp.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp.i) #9
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 32, label %sw.bb48.i
    i8 64, label %sw.bb52.i
    i8 96, label %sw.bb66.i
    i8 97, label %sw.bb75.i
  ]

sw.bb.i:                                          ; preds = %if.end15
  %data.i28 = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 3
  %27 = ptrtoint ptr %data.i28 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %data.i28, align 1
  %29 = and i16 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.10) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i.if.end.i_crit_edge
  %len.0.i = phi i32 [ %call3.i, %if.then.i ], [ 0, %sw.bb.i.if.end.i_crit_edge ]
  %30 = ptrtoint ptr %data.i28 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %data.i28, align 1
  %32 = and i16 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool7.not.i = icmp eq i16 %32, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef %len.0.i, ptr noundef nonnull @.str.11) #9
  %add11.i = add i32 %call10.i, %len.0.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  %len.1.i = phi i32 [ %add11.i, %if.then8.i ], [ %len.0.i, %if.end.i.if.end12.i_crit_edge ]
  %33 = ptrtoint ptr %data.i28 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %data.i28, align 1
  %35 = and i16 %34, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %35)
  %cmp.i29 = icmp ult i16 %35, 4
  br i1 %cmp.i29, label %cond.true.i, label %if.end12.i.cond.end.i_crit_edge

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %and15.i = zext i16 %35 to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @role_names, i32 0, i32 %and15.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %37, %cond.true.i ], [ @.str.12, %if.end12.i.cond.end.i_crit_edge ]
  %38 = lshr i16 %34, 3
  %39 = and i16 %38, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %39)
  %cmp20.i = icmp ult i16 %39, 9
  br i1 %cmp20.i, label %cond.true22.i, label %cond.end.i.cond.end25.i_crit_edge

cond.end.i.cond.end25.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25.i

cond.true22.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = zext i16 %39 to i32
  %arrayidx23.i = getelementptr [9 x ptr], ptr @chg_type_names, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx23.i, align 4
  br label %cond.end25.i

cond.end25.i:                                     ; preds = %cond.true22.i, %cond.end.i.cond.end25.i_crit_edge
  %cond26.i = phi ptr [ %42, %cond.true22.i ], [ @.str.13, %cond.end.i.cond.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %35)
  %switch.i = icmp ult i16 %35, 2
  br i1 %switch.i, label %if.then31.i, label %if.end35.i

if.then31.i:                                      ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef %len.1.i, ptr noundef nonnull @.str.4, ptr noundef %cond.i) #9
  br label %cros_usbpd_print_log_entry.exit

if.end35.i:                                       ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %payload.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %tobool41.not.i = icmp sgt i16 %34, -1
  %cond42.i = select i1 %tobool41.not.i, ptr @.str.16, ptr @.str.15
  %voltage_now.i = getelementptr inbounds %struct.usb_chg_measures, ptr %payload.i, i32 0, i32 1
  %43 = ptrtoint ptr %voltage_now.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %voltage_now.i, align 1
  %conv43.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %payload.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %payload.i, align 1
  %conv44.i = zext i16 %46 to i32
  %current_max.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 1, i32 1
  %47 = ptrtoint ptr %current_max.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %current_max.i, align 1
  %conv45.i = zext i16 %48 to i32
  %call46.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef %len.1.i, ptr noundef nonnull @.str.14, ptr noundef %cond.i, ptr noundef nonnull %cond42.i, ptr noundef %cond26.i, i32 noundef %conv43.i, i32 noundef %conv44.i, i32 noundef %conv45.i) #9
  br label %cros_usbpd_print_log_entry.exit

sw.bb48.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.17) #9
  br label %cros_usbpd_print_log_entry.exit

sw.bb52.i:                                        ; preds = %if.end15
  %data53.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 3
  %49 = ptrtoint ptr %data53.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %data53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %50)
  %cmp55.i = icmp ult i16 %50, 5
  br i1 %cmp55.i, label %cond.true57.i, label %sw.bb52.i.cond.end61.i_crit_edge

sw.bb52.i.cond.end61.i_crit_edge:                 ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end61.i

cond.true57.i:                                    ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv54.i = zext i16 %50 to i32
  %arrayidx59.i = getelementptr [5 x ptr], ptr @fault_names, i32 0, i32 %conv54.i
  %51 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx59.i, align 4
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.true57.i, %sw.bb52.i.cond.end61.i_crit_edge
  %cond62.i = phi ptr [ %52, %cond.true57.i ], [ @.str.13, %sw.bb52.i.cond.end61.i_crit_edge ]
  %call64.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %cond62.i) #9
  br label %cros_usbpd_print_log_entry.exit

sw.bb66.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %data68.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 3
  %53 = ptrtoint ptr %data68.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %data68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp70.i = icmp eq i16 %54, 1
  %cond72.i = select i1 %cmp70.i, ptr @.str.20, ptr @.str.21
  %call73.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond72.i) #9
  br label %cros_usbpd_print_log_entry.exit

sw.bb75.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %payload76.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 4
  %55 = ptrtoint ptr %payload76.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %payload76.i, align 1
  %conv80.i = zext i8 %56 to i32
  %shl81.i = shl nuw nsw i32 %conv80.i, 8
  %arrayidx83.i = getelementptr [2 x i8], ptr %payload76.i, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx83.i, align 1
  %conv84.i = zext i8 %58 to i32
  %or.i = or i32 %shl81.i, %conv84.i
  %chipid.i = getelementptr inbounds %struct.mcdp_info, ptr %payload76.i, i32 0, i32 1
  %59 = ptrtoint ptr %chipid.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %chipid.i, align 1
  %conv86.i = zext i8 %60 to i32
  %shl87.i = shl nuw nsw i32 %conv86.i, 8
  %arrayidx89.i = getelementptr %struct.mcdp_info, ptr %payload76.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx89.i, align 1
  %conv90.i = zext i8 %62 to i32
  %or91.i = or i32 %shl87.i, %conv90.i
  %call92.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %or.i, i32 noundef %or91.i) #9
  %irom.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 1, i32 1
  %63 = ptrtoint ptr %irom.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %irom.i, align 1
  %conv95.i = zext i8 %64 to i32
  %minor.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 1, i32 2
  %65 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %minor.i, align 1
  %conv97.i = zext i8 %66 to i32
  %build.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 1, i32 3
  %67 = ptrtoint ptr %build.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %build.i, align 1
  %conv99.i = zext i16 %68 to i32
  %fw.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 2
  %69 = ptrtoint ptr %fw.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fw.i, align 1
  %conv101.i = zext i8 %70 to i32
  %minor103.i = getelementptr inbounds %struct.mcdp_version, ptr %fw.i, i32 0, i32 1
  %71 = ptrtoint ptr %minor103.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %minor103.i, align 1
  %conv104.i = zext i8 %72 to i32
  %build106.i = getelementptr inbounds %struct.mcdp_version, ptr %fw.i, i32 0, i32 2
  %73 = ptrtoint ptr %build106.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %build106.i, align 1
  %conv107.i = zext i16 %74 to i32
  %call108.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef %call92.i, ptr noundef nonnull @.str.23, i32 noundef %conv95.i, i32 noundef %conv97.i, i32 noundef %conv99.i, i32 noundef %conv101.i, i32 noundef %conv104.i, i32 noundef %conv107.i) #9
  br label %cros_usbpd_print_log_entry.exit

sw.default.i:                                     ; preds = %if.end15
  %conv1.i = zext i8 %25 to i32
  %data113.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 3
  %75 = ptrtoint ptr %data113.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %data113.i, align 1
  %conv114.i = zext i16 %76 to i32
  %call115.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %conv1.i, i32 noundef %conv114.i) #9
  %size_port.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 2
  %77 = ptrtoint ptr %size_port.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %size_port.i, align 1
  %79 = and i8 %78, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp119200.not.i = icmp eq i8 %79, 0
  br i1 %cmp119200.not.i, label %sw.default.i.for.end.i_crit_edge, label %sw.default.i.for.body.i_crit_edge

sw.default.i.for.body.i_crit_edge:                ; preds = %sw.default.i
  br label %for.body.i

sw.default.i.for.end.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.default.i.for.body.i_crit_edge
  %i.0202.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.default.i.for.body.i_crit_edge ]
  %len.2201.i = phi i32 [ %add126.i, %for.body.i.for.body.i_crit_edge ], [ %call115.i, %sw.default.i.for.body.i_crit_edge ]
  %arrayidx123.i = getelementptr %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 4, i32 %i.0202.i
  %80 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx123.i, align 1
  %conv124.i = zext i8 %81 to i32
  %call125.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef %len.2201.i, ptr noundef nonnull @.str.25, i32 noundef %conv124.i) #9
  %add126.i = add i32 %call125.i, %len.2201.i
  %inc.i = add nuw nsw i32 %i.0202.i, 1
  %82 = ptrtoint ptr %size_port.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %size_port.i, align 1
  %84 = and i8 %83, 31
  %and118.i = zext i8 %84 to i32
  %cmp119.i = icmp ult i32 %inc.i, %and118.i
  br i1 %cmp119.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.default.i.for.end.i_crit_edge
  %len.2.lcssa.i = phi i32 [ %call115.i, %sw.default.i.for.end.i_crit_edge ], [ %add126.i, %for.body.i.for.end.i_crit_edge ]
  %call128.i = call i32 (ptr, i32, ptr, ...) @append_str(ptr noundef nonnull %buf.i, i32 noundef %len.2.lcssa.i, ptr noundef nonnull @.str.26) #9
  br label %cros_usbpd_print_log_entry.exit

cros_usbpd_print_log_entry.exit:                  ; preds = %for.end.i, %sw.bb75.i, %sw.bb66.i, %cond.end61.i, %sw.bb48.i, %if.end35.i, %if.then31.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i.i, 0
  %85 = call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  %86 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %85) #12, !srcloc !122
  %87 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %85, i64 %86, i32 0) #12, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %87, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %call131.i = call i64 @div_s64_rem(i64 noundef %cond213.i.i.i, i32 noundef 1000, ptr noundef nonnull %rem.i) #9
  %add133.i = add i32 %rt.sroa.9.0.copyload.i, 1900
  %add134.i = add i32 %rt.sroa.8.0.copyload.i, 1
  %88 = ptrtoint ptr %rem.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rem.i, align 4
  %size_port135.i = getelementptr inbounds %struct.ec_response_pd_log, ptr %retval.0.i24, i32 0, i32 2
  %90 = ptrtoint ptr %size_port135.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %size_port135.i, align 1
  %92 = lshr i8 %91, 5
  %93 = zext i8 %92 to i32
  %call139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %add133.i, i32 noundef %add134.i, i32 noundef %rt.sroa.7.0.copyload.i, i32 noundef %rt.sroa.6.0.copyload.i, i32 noundef %rt.sroa.5.0.copyload.i, i32 noundef %rt.sroa.0.0.copyload.i, i32 noundef %89, i32 noundef %93, ptr noundef nonnull %buf.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i) #9
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %buf.i) #9
  %inc = add nuw nsw i32 %inc32, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %cros_usbpd_print_log_entry.exit.while.end_crit_edge, label %cros_usbpd_print_log_entry.exit.while.body_crit_edge

cros_usbpd_print_log_entry.exit.while.body_crit_edge: ; preds = %cros_usbpd_print_log_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cros_usbpd_print_log_entry.exit.while.end_crit_edge: ; preds = %cros_usbpd_print_log_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cros_usbpd_print_log_entry.exit.while.end_crit_edge, %if.end11.while.end_crit_edge, %if.then9, %do.body
  %log_workqueue = getelementptr i8, ptr %work, i32 100
  %94 = ptrtoint ptr %log_workqueue to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %log_workqueue, align 4
  %call.i30 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %95, ptr noundef %work, i32 noundef 6000) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_ktime_to_tm(ptr sret(%struct.rtc_time) align 4, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @append_str(ptr nocapture noundef %buf, i32 noundef %pos, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #4 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !121
  call void @llvm.va_start(ptr nonnull %args)
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos
  %sub = sub i32 80, %pos
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_logger_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %log_work = getelementptr inbounds %struct.logger_data, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %log_work) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_logger_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %log_workqueue = getelementptr inbounds %struct.logger_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %log_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_workqueue, align 4
  %log_work = getelementptr inbounds %struct.logger_data, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %log_work, i32 noundef 6000) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_cros_usbpd_logger__228_263_cros_usbpd_logger_driver_init6, !1, !"__initcall__kmod_cros_usbpd_logger__228_263_cros_usbpd_logger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 263, i32 1}
!2 = !{ptr @__exitcall_cros_usbpd_logger_driver_exit, !1, !"__exitcall_cros_usbpd_logger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file229, !4, !"__UNIQUE_ID_file229", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 265, i32 1}
!5 = !{ptr @__UNIQUE_ID_license230, !4, !"__UNIQUE_ID_license230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description231, !7, !"__UNIQUE_ID_description231", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 266, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias232, !9, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 267, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 256, i32 11}
!12 = !{ptr @cros_usbpd_logger_driver, !13, !"cros_usbpd_logger_driver", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 254, i32 31}
!14 = !{ptr @cros_usbpd_logger_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 211, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cros_usbpd_logger_probe.__key.2, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 212, i32 26}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 182, i32 4}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cros_usbpd_log_check.__UNIQUE_ID_ddebug227, !23, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 100, i32 32}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 103, i32 32}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 107, i32 27}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 113, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 122, i32 31}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 124, i32 7}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 124, i32 15}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 129, i32 31}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 134, i32 31}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 137, i32 31}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 138, i32 7}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 138, i32 14}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 142, i32 31}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 145, i32 31}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 151, i32 31}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 155, i32 32}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 157, i32 31}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 162, i32 2}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cros_usbpd_print_log_entry._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @cros_usbpd_print_log_entry._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 42, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 42, i32 18}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 42, i32 25}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 42, i32 32}
!75 = !{ptr @role_names, !76, !"role_names", i1 false, i1 false}
!76 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 41, i32 27}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 10}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 16}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 26}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 41}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 48}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 37, i32 55}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 38, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 38, i32 11}
!95 = !{ptr @chg_type_names, !96, !"chg_type_names", i1 false, i1 false}
!96 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 36, i32 27}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 46, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 46, i32 9}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 46, i32 16}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 46, i32 28}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 46, i32 35}
!107 = !{ptr @fault_names, !108, !"fault_names", i1 false, i1 false}
!108 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 45, i32 27}
!109 = !{ptr @cros_usbpd_logger_pm_ops, !110, !"cros_usbpd_logger_pm_ops", i1 false, i1 false}
!110 = !{!"../drivers/platform/chrome/cros_usbpd_logger.c", i32 251, i32 8}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148768052, i64 2148768057, i64 2148768070, i64 2148768114, i64 2148768148, i64 2148768169}
!121 = !{!"auto-init"}
!122 = !{i64 522033, i64 522060}
!123 = !{i64 522728, i64 522755, i64 522788, i64 522809, i64 522836, i64 522862}
