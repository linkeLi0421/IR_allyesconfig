; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_debugfs.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.71 = type { %struct.cros_ec_command, %struct.ec_response_uptime_info }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_response_uptime_info = type { i32, i32, i32, [4 x %struct.ap_reset_log_entry] }
%struct.ap_reset_log_entry = type { i16, i16, i32 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_debugfs = type { ptr, ptr, %struct.circ_buf, ptr, %struct.mutex, %struct.wait_queue_head, %struct.delayed_work, %struct.debugfs_blob_wrapper }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.anon.69 = type <{ %struct.cros_ec_command, %union.anon.70 }>
%union.anon.70 = type { %struct.ec_response_usb_pd_control_v1 }
%struct.ec_response_usb_pd_control_v1 = type { i8, i8, i8, [32 x i8] }
%struct.ec_params_usb_pd_control = type { i8, i8, i8, i8 }
%struct.anon.72 = type { %struct.cros_ec_command, %struct.ec_response_uptime_info }

@__initcall__kmod_cros_ec_debugfs__229_526_cros_ec_debugfs_driver_init6 = internal global ptr @cros_ec_debugfs_driver_init, section ".initcall6.init", align 4
@cros_ec_debugfs_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_debugfs_probe, ptr @cros_ec_debugfs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_debugfs_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_debugfs_driver_exit = internal global ptr @cros_ec_debugfs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [61 x i8] c"cros_ec_debugfs.file=drivers/platform/chrome/cros_ec_debugfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"cros_ec_debugfs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [55 x i8] c"cros_ec_debugfs.description=Debug logs for ChromeOS EC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [47 x i8] c"cros_ec_debugfs.alias=platform:cros-ec-debugfs\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros-ec-debugfs\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_debugfs_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_debugfs_suspend, ptr @cros_ec_debugfs_resume, ptr @cros_ec_debugfs_suspend, ptr @cros_ec_debugfs_resume, ptr @cros_ec_debugfs_suspend, ptr @cros_ec_debugfs_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pdinfo\00", [25 x i8] zeroinitializer }, align 32
@cros_ec_pdinfo_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @cros_ec_pdinfo_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uptime\00", [25 x i8] zeroinitializer }, align 32
@cros_ec_uptime_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @cros_ec_uptime_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last_resume_result\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"panicinfo\00", [22 x i8] zeroinitializer }, align 32
@cros_ec_create_console_log.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&debug_info->log_mutex\00", [41 x i8] zeroinitializer }, align 32
@cros_ec_create_console_log.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&debug_info->log_wq\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"console_log\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_console_log_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @cros_ec_console_log_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_console_log_poll, ptr null, ptr null, ptr null, i32 0, ptr @cros_ec_console_log_open, ptr null, ptr @cros_ec_console_log_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cros_ec_create_console_log.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&debug_info->log_poll_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@cros_ec_create_console_log.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&debug_info->log_poll_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/platform/chrome/cros_ec_debugfs.c\00", [54 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cros_ec_console_log_work.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@cros_ec_console_log_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 87, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Some logs may have been dropped...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cros_ec_console_log_work\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_console_log_work._entry_ptr = internal global ptr @cros_ec_console_log_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"p%d: %s en:%.2x role:%.2x pol:%.2x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"cros_ec_debugfs_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 517, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 519, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"cros_ec_debugfs_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 514, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 463, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"cros_ec_pdinfo_fops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 301, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 467, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"cros_ec_uptime_fops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 308, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 470, i32 21 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 430, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 379, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 380, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 382, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"cros_ec_console_log_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 292, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 385, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 144, i32 9 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 230, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 214, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 174, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 86, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 236, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [45 x i8] c"../drivers/platform/chrome/cros_ec_debugfs.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 286, i32 46 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_cros_ec_debugfs_driver_exit, ptr @__initcall__kmod_cros_ec_debugfs__229_526_cros_ec_debugfs_driver_init6, ptr @cros_ec_console_log_work._entry, ptr @cros_ec_console_log_work._entry_ptr, ptr @cros_ec_debugfs_driver_exit, ptr @cros_ec_debugfs_driver, ptr @.str, ptr @cros_ec_debugfs_pm_ops, ptr @.str.1, ptr @cros_ec_pdinfo_fops, ptr @.str.2, ptr @cros_ec_uptime_fops, ptr @.str.3, ptr @.str.4, ptr @cros_ec_create_console_log.__key, ptr @.str.5, ptr @cros_ec_create_console_log.__key.6, ptr @.str.7, ptr @.str.8, ptr @cros_ec_console_log_fops, ptr @cros_ec_create_console_log.__key.9, ptr @.str.10, ptr @cros_ec_create_console_log.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_debugfs_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_debugfs_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pdinfo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_uptime_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_create_console_log.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_create_console_log.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_console_log_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_create_console_log.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_create_console_log.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_console_log_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_debugfs_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_debugfs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_debugfs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_probe(ptr nocapture noundef %pd) #2 align 64 {
entry:
  %msg.i = alloca %struct.anon.71, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 276, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %call.i, align 4
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef %9, ptr noundef null) #8
  %dir = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %dir, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %ec_dev1.i = getelementptr inbounds %struct.cros_ec_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ec_dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec_dev1.i, align 8
  %max_response.i = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %max_response.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_response.i, align 2
  %conv.i = zext i16 %17 to i32
  %dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %add.i = add nuw nsw i32 %conv.i, 20
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %add.i, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.remove_debugfs_crit_edge, label %if.end.i

if.end.remove_debugfs_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_debugfs

if.end.i:                                         ; preds = %if.end
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 211, ptr %command.i, align 4
  %insize3.i = getelementptr inbounds %struct.cros_ec_command, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %insize3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %insize3.i, align 4
  %call4.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %22 = icmp slt i32 %call4.i, 1
  br i1 %22, label %free.i, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call.i.i, i32 0, i32 5
  %panicinfo_blob.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %panicinfo_blob.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i, ptr %panicinfo_blob.i, align 4
  %size.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call4.i, ptr %size.i, align 4
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dir, align 4
  %call15.i = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.4, i16 noundef zeroext -32476, ptr noundef %26, ptr noundef %panicinfo_blob.i) #8
  br label %if.end10

free.i:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %dev17.i = getelementptr inbounds %struct.cros_ec_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev17.i, align 4
  tail call void @devm_kfree(ptr noundef %30, ptr noundef nonnull %call.i.i) #8
  br label %if.end10

if.end10:                                         ; preds = %free.i, %if.end11.i
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end10.if.end14_crit_edge, label %if.end.i.i

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i:                                       ; preds = %if.end10
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %32, i32 0, i32 5
  %34 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %35 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i.i, ptr %command.i.i, align 4
  %outsize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %outsize.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %outsize.i.i, align 8
  %insize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %insize.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %insize.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 152, ptr %data.i.i, align 4
  %ec_dev.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %ec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ec_dev.i.i, align 8
  %call3.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %41, ptr noundef nonnull %call7.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i)
  %cmp.i.i = icmp sgt i32 %call3.i.i, -1
  br i1 %cmp.i.i, label %ec_read_version_supported.exit.i, label %ec_read_version_supported.exit.thread82.i

ec_read_version_supported.exit.thread82.i:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.end14

ec_read_version_supported.exit.i:                 ; preds = %if.end.i.i
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i51 = icmp eq i32 %44, 0
  br i1 %tobool.not.i51, label %ec_read_version_supported.exit.i.if.end14_crit_edge, label %if.end.i54

ec_read_version_supported.exit.i.if.end14_crit_edge: ; preds = %ec_read_version_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i54:                                       ; preds = %ec_read_version_supported.exit.i
  %dev.i52 = getelementptr inbounds %struct.cros_ec_dev, ptr %32, i32 0, i32 2
  %45 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i52, align 4
  %call.i.i53 = tail call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef 16384, i32 noundef 3520) #8
  %tobool3.not.i = icmp eq ptr %call.i.i53, null
  br i1 %tobool3.not.i, label %if.end.i54.remove_debugfs_crit_edge, label %if.end5.i

if.end.i54.remove_debugfs_crit_edge:              ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_debugfs

if.end5.i:                                        ; preds = %if.end.i54
  %47 = ptrtoint ptr %ec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ec_dev.i.i, align 8
  %max_response.i55 = getelementptr inbounds %struct.cros_ec_device, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %max_response.i55 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %max_response.i55, align 2
  %conv.i56 = zext i16 %50 to i32
  %51 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp.i = icmp eq i16 %50, 0
  %phi.bo.i = add nuw nsw i32 %conv.i56, 20
  %cond.i = select i1 %cmp.i, i32 21, i32 %phi.bo.i
  %call.i79.i = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef %cond.i, i32 noundef 3520) #8
  %read_msg.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 3
  %53 = ptrtoint ptr %read_msg.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i79.i, ptr %read_msg.i, align 4
  %tobool10.not.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool10.not.i, label %if.end5.i.remove_debugfs_crit_edge, label %if.end12.i

if.end5.i.remove_debugfs_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_debugfs

if.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call.i79.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %call.i79.i, align 4
  %55 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cmd_offset.i.i, align 2
  %conv14.i = zext i16 %56 to i32
  %add15.i = add nuw nsw i32 %conv14.i, 152
  %command.i57 = getelementptr inbounds %struct.cros_ec_command, ptr %call.i79.i, i32 0, i32 1
  %57 = ptrtoint ptr %command.i57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add15.i, ptr %command.i57, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call.i79.i, i32 0, i32 2
  %58 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %outsize.i, align 4
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call.i79.i, i32 0, i32 3
  %59 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i56, ptr %insize.i, align 4
  %log_buffer.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 2
  %60 = ptrtoint ptr %log_buffer.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i53, ptr %log_buffer.i, align 4
  %head.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 2, i32 2
  %62 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tail.i, align 4
  %log_mutex.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %log_mutex.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @cros_ec_create_console_log.__key) #8
  %log_wq.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %log_wq.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @cros_ec_create_console_log.__key.6) #8
  %63 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dir, align 4
  %call25.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext -32476, ptr noundef %64, ptr noundef nonnull %call.i, ptr noundef nonnull @cros_ec_console_log_fops) #8
  %log_poll_work.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %log_poll_work.i, i32 noundef 0) #8
  %65 = ptrtoint ptr %log_poll_work.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -64, ptr %log_poll_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @cros_ec_create_console_log.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry34.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %66 = ptrtoint ptr %entry34.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %entry34.i, ptr %entry34.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entry34.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %68 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @cros_ec_console_log_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @cros_ec_create_console_log.__key.11) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %69 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %69, ptr noundef %log_poll_work.i, i32 noundef 0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end12.i, %ec_read_version_supported.exit.i.if.end14_crit_edge, %ec_read_version_supported.exit.thread82.i, %if.end10.if.end14_crit_edge
  %70 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dir, align 4
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %71, ptr noundef nonnull %call.i, ptr noundef nonnull @cros_ec_pdinfo_fops) #8
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ec_dev, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg.i) #8
  %74 = call ptr @memset(ptr %msg.i, i32 0, i32 64)
  %command.i60 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 1
  %75 = ptrtoint ptr %command.i60 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 289, ptr %command.i60, align 1
  %insize.i61 = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 3
  %76 = ptrtoint ptr %insize.i61 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 44, ptr %insize.i61, align 1
  %call.i62 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %73, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %call.i62)
  %cmp.i63 = icmp eq i32 %call.i62, -71
  br i1 %cmp.i63, label %land.lhs.true.i, label %if.end14.if.then18_crit_edge

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

land.lhs.true.i:                                  ; preds = %if.end14
  %result.i = getelementptr inbounds %struct.cros_ec_command, ptr %msg.i, i32 0, i32 4
  %77 = ptrtoint ptr %result.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %result.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp4.i = icmp eq i32 %78, 1
  br i1 %cmp4.i, label %cros_ec_uptime_is_supported.exit, label %land.lhs.true.i.if.then18_crit_edge

land.lhs.true.i.if.then18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

cros_ec_uptime_is_supported.exit:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i) #8
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true.i.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i) #8
  %79 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dir, align 4
  %call20 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %80, ptr noundef nonnull %call.i, ptr noundef nonnull @cros_ec_uptime_fops) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %cros_ec_uptime_is_supported.exit
  %81 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dir, align 4
  %83 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ec_dev, align 8
  %last_resume_result = getelementptr inbounds %struct.cros_ec_device, ptr %84, i32 0, i32 26
  call void @debugfs_create_x32(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %82, ptr noundef %last_resume_result) #8
  %debug_info24 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 3
  %85 = ptrtoint ptr %debug_info24 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %debug_info24, align 8
  %driver_data.i66 = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %86 = ptrtoint ptr %driver_data.i66 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %3, ptr %driver_data.i66, align 4
  br label %cleanup

remove_debugfs:                                   ; preds = %if.end5.i.remove_debugfs_crit_edge, %if.end.i54.remove_debugfs_crit_edge, %if.end.remove_debugfs_crit_edge
  %87 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dir, align 4
  tail call void @debugfs_remove(ptr noundef %88) #8
  br label %cleanup

cleanup:                                          ; preds = %remove_debugfs, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %remove_debugfs ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_remove(ptr nocapture noundef readonly %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %debug_info = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug_info, align 8
  %dir = getelementptr inbounds %struct.cros_ec_debugfs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dir, align 4
  tail call void @debugfs_remove(ptr noundef %7) #8
  %8 = ptrtoint ptr %debug_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debug_info, align 8
  %log_buffer.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %log_buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.cros_ec_cleanup_console_log.exit_crit_edge, label %if.then.i

entry.cros_ec_cleanup_console_log.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cros_ec_cleanup_console_log.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %log_poll_work.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %9, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %log_poll_work.i) #8
  %log_mutex.i = getelementptr inbounds %struct.cros_ec_debugfs, ptr %9, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %log_mutex.i) #8
  br label %cros_ec_cleanup_console_log.exit

cros_ec_cleanup_console_log.exit:                 ; preds = %if.then.i, %entry.cros_ec_cleanup_console_log.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_console_log_work(ptr noundef %__work) #2 align 64 {
entry:
  %snapshot_msg = alloca %struct.cros_ec_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %__work, i32 -168
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %log_buffer = getelementptr i8, ptr %__work, i32 -160
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %snapshot_msg) #8
  %2 = getelementptr inbounds %struct.cros_ec_command, ptr %snapshot_msg, i32 0, i32 1
  %3 = call ptr @memset(ptr %snapshot_msg, i32 0, i32 20)
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_offset, align 2
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 151
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %2, align 4
  %read_msg = getelementptr i8, ptr %__work, i32 -148
  %7 = ptrtoint ptr %read_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_msg, align 4
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %8, i32 0, i32 5
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ec_dev, align 8
  %call5 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %10, ptr noundef nonnull %snapshot_msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.resched_crit_edge, label %if.end

entry.resched_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %resched

if.end:                                           ; preds = %entry
  %log_mutex = getelementptr i8, ptr %__work, i32 -144
  call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #8
  %tail = getelementptr i8, ptr %__work, i32 -152
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %head = getelementptr i8, ptr %__work, i32 -156
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %add7.neg = xor i32 %14, -1
  %sub = add i32 %12, %add7.neg
  %and = and i32 %sub, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not85 = icmp eq i32 %and, 0
  br i1 %tobool.not85, label %if.end.do.body_crit_edge, label %if.end15.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end15.lr.ph:                                   ; preds = %if.end
  %log_wq = getelementptr i8, ptr %__work, i32 -52
  br label %if.end15

do.body:                                          ; preds = %while.end.do.body_crit_edge, %if.end.do.body_crit_edge
  %.b79 = load i1, ptr @cros_ec_console_log_work.__print_once, align 1
  br i1 %.b79, label %do.body.while.end47_crit_edge, label %if.then10

do.body.while.end47_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end47

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cros_ec_console_log_work.__print_once, align 1
  %dev = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.17) #12
  br label %while.end47

if.end15:                                         ; preds = %while.end.if.end15_crit_edge, %if.end15.lr.ph
  %buf_space.086 = phi i32 [ %and, %if.end15.lr.ph ], [ %buf_space.1.lcssa, %while.end.if.end15_crit_edge ]
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %data, align 1
  %18 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ec_dev, align 8
  %20 = ptrtoint ptr %read_msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_msg, align 4
  %call18 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %19, ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %22 = icmp slt i32 %call18, 1
  br i1 %22, label %if.end15.while.end47_crit_edge, label %lor.lhs.false

if.end15.while.end47_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end47

lor.lhs.false:                                    ; preds = %if.end15
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp26 = icmp eq i8 %24, 0
  br i1 %cmp26, label %lor.lhs.false.while.end47_crit_edge, label %land.lhs.true.preheader

lor.lhs.false.while.end47_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end47

land.lhs.true.preheader:                          ; preds = %lor.lhs.false
  %25 = sub i32 %buf_space.086, %call18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body39.land.lhs.true_crit_edge, %land.lhs.true.preheader
  %buf_space.183 = phi i32 [ %dec, %while.body39.land.lhs.true_crit_edge ], [ %buf_space.086, %land.lhs.true.preheader ]
  %idx.082 = phi i32 [ %inc, %while.body39.land.lhs.true_crit_edge ], [ 0, %land.lhs.true.preheader ]
  %arrayidx33 = getelementptr i8, ptr %data, i32 %idx.082
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp35.not = icmp ne i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_space.183)
  %cmp37 = icmp sgt i32 %buf_space.183, 0
  %or.cond80 = select i1 %cmp35.not, i1 %cmp37, i1 false
  br i1 %or.cond80, label %while.body39, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body39:                                     ; preds = %land.lhs.true
  %28 = ptrtoint ptr %log_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %log_buffer, align 4
  %30 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %head, align 4
  %arrayidx42 = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %27, ptr %arrayidx42, align 1
  %33 = load i32, ptr %head, align 4
  %add44 = add i32 %33, 1
  %and45 = and i32 %add44, 16383
  store i32 %and45, ptr %head, align 4
  %inc = add nuw nsw i32 %idx.082, 1
  %dec = add nsw i32 %buf_space.183, -1
  %exitcond.not = icmp eq i32 %inc, %call18
  br i1 %exitcond.not, label %while.body39.while.end_crit_edge, label %while.body39.land.lhs.true_crit_edge

while.body39.land.lhs.true_crit_edge:             ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

while.body39.while.end_crit_edge:                 ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body39.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %buf_space.1.lcssa = phi i32 [ %buf_space.183, %land.lhs.true.while.end_crit_edge ], [ %25, %while.body39.while.end_crit_edge ]
  call void @__wake_up(ptr noundef %log_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %tobool.not = icmp eq i32 %buf_space.1.lcssa, 0
  br i1 %tobool.not, label %while.end.do.body_crit_edge, label %while.end.if.end15_crit_edge

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.end47:                                      ; preds = %lor.lhs.false.while.end47_crit_edge, %if.end15.while.end47_crit_edge, %if.then10, %do.body.while.end47_crit_edge
  call void @mutex_unlock(ptr noundef %log_mutex) #8
  br label %resched

resched:                                          ; preds = %while.end47, %entry.resched_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %__work, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %snapshot_msg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_console_log_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %log_buffer = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 2
  %log_mutex = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #8
  %head = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 2, i32 1
  %tail = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %sub112 = sub i32 %3, %5
  %and113 = and i32 %sub112, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool.not114 = icmp eq i32 %and113, 0
  br i1 %tobool.not114, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %log_wq = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and1 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %while.body.error_crit_edge

while.body.error_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %while.body
  call void @mutex_unlock(ptr noundef %log_mutex) #8
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 145) #8
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  %sub9 = sub i32 %9, %11
  %and10 = and i32 %sub9, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call107 = call i32 @prepare_to_wait_event(ptr noundef %log_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head, align 4
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  %sub16108 = sub i32 %14, %16
  %and17109 = and i32 %sub16108, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17109)
  %tobool18.not110 = icmp eq i32 %and17109, 0
  br i1 %tobool18.not110, label %if.then12.if.end20_crit_edge, label %if.then12.if.end25.thread93_crit_edge

if.then12.if.end25.thread93_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.thread93

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  br label %if.end20

if.end20:                                         ; preds = %cleanup.if.end20_crit_edge, %if.then12.if.end20_crit_edge
  %call111 = phi i32 [ %call, %cleanup.if.end20_crit_edge ], [ %call107, %if.then12.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool21.not = icmp eq i32 %call111, 0
  br i1 %tobool21.not, label %cleanup, label %if.end25

cleanup:                                          ; preds = %if.end20
  call void @schedule() #8
  %call = call i32 @prepare_to_wait_event(ptr noundef %log_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %head, align 4
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail, align 4
  %sub16 = sub i32 %18, %20
  %and17 = and i32 %sub16, 16383
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %cleanup.if.end20_crit_edge, label %cleanup.if.end25.thread93_crit_edge

cleanup.if.end25.thread93_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.thread93

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end25.thread93:                                ; preds = %cleanup.if.end25.thread93_crit_edge, %if.then12.if.end25.thread93_crit_edge
  call void @finish_wait(ptr noundef %log_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end28

if.end25:                                         ; preds = %if.end20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp = icmp slt i32 %call111, 0
  br i1 %cmp, label %if.end25.cleanup53_crit_edge, label %if.end25.if.end28_crit_edge

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end25.cleanup53_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup53

if.end28:                                         ; preds = %if.end25.if.end28_crit_edge, %if.end25.thread93, %if.end.if.end28_crit_edge
  call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #8
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head, align 4
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail, align 4
  %sub = sub i32 %22, %24
  %and = and i32 %sub, 16383
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28.while.body_crit_edge, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa104 = phi i32 [ %3, %entry.while.end_crit_edge ], [ %22, %if.end28.while.end_crit_edge ]
  %.lcssa = phi i32 [ %5, %entry.while.end_crit_edge ], [ %24, %if.end28.while.end_crit_edge ]
  %sub31 = sub i32 16384, %.lcssa
  %add = add i32 %sub31, %.lcssa104
  %and33 = and i32 %add, 16383
  %25 = call i32 @llvm.smin.i32(i32 %and33, i32 %sub31)
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 %count)
  %27 = ptrtoint ptr %log_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log_buffer, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.i.i = icmp slt i32 %26, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.end
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.error_crit_edge, label %if.then27.i.i, !prof !73

land.rhs16.i.i.error_crit_edge:                   ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %error

if.then.i.i.i:                                    ; preds = %while.end
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %26, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %26, i32 -1226833920) #13, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %26) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %26) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %26, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %26, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool45.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool45.not, label %if.end47, label %copy_to_user.exit.error_crit_edge

copy_to_user.exit.error_crit_edge:                ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end47:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail, align 4
  %add49 = add i32 %31, %26
  %and50 = and i32 %add49, 16383
  store i32 %and50, ptr %tail, align 4
  br label %error

error:                                            ; preds = %if.end47, %copy_to_user.exit.error_crit_edge, %if.then27.i.i, %land.rhs16.i.i.error_crit_edge, %while.body.error_crit_edge
  %ret.0 = phi i32 [ %26, %if.end47 ], [ -14, %copy_to_user.exit.error_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.error_crit_edge ], [ -11, %while.body.error_crit_edge ]
  call void @mutex_unlock(ptr noundef %log_mutex) #8
  br label %cleanup53

cleanup53:                                        ; preds = %error, %if.end25.cleanup53_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call111, %if.end25.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_console_log_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %log_wq = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %log_wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %file, ptr noundef nonnull %log_wq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %log_mutex = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %log_mutex, i32 noundef 0) #8
  %head = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.cros_ec_debugfs, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %sub = sub i32 %5, %7
  %and = and i32 %sub, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %log_mutex) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_console_log_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  %call = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_console_log_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pdinfo_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %read_buf = alloca [320 x i8], align 1
  %ec_buf = alloca %struct.anon.69, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %read_buf) #8
  %0 = call ptr @memset(ptr %read_buf, i32 255, i32 320)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %ec_dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ec_dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ec_dev1, align 8
  call void @llvm.lifetime.start.p0(i64 55, ptr nonnull %ec_buf) #8
  %7 = getelementptr inbounds i8, ptr %ec_buf, i32 16
  %8 = call ptr @memset(ptr %7, i32 255, i32 39)
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %ec_buf, i32 0, i32 5
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %ec_buf, i32 0, i32 1
  %9 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 257, ptr %command, align 4
  %10 = ptrtoint ptr %ec_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ec_buf, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %ec_buf, i32 0, i32 3
  %11 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 35, ptr %insize, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %ec_buf, i32 0, i32 2
  %12 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %outsize, align 4
  %role = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %data, i32 0, i32 1
  %mux = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %data, i32 0, i32 2
  %swap = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %data, i32 0, i32 3
  %add.ptr = getelementptr inbounds i8, ptr %read_buf, i32 320
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %data, align 4
  %call = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 4
  %conv10 = zext i8 %15 to i32
  %16 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %role, align 1
  %conv12 = zext i8 %17 to i32
  %18 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mux, align 2
  %conv13 = zext i8 %19 to i32
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %read_buf, i32 noundef 320, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef %swap, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv13) #8
  %add.ptr15 = getelementptr i8, ptr %read_buf, i32 %call14
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %data, align 4
  %21 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %role, align 1
  %22 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %mux, align 2
  %23 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %swap, align 1
  %call.1 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp6.1 = icmp slt i32 %call.1, 0
  br i1 %cmp6.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.1:                                         ; preds = %if.end
  %gepdiff = sub i32 320, %call14
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 4
  %conv10.1 = zext i8 %25 to i32
  %26 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %role, align 1
  %conv12.1 = zext i8 %27 to i32
  %28 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mux, align 2
  %conv13.1 = zext i8 %29 to i32
  %call14.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %gepdiff, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef %swap, i32 noundef %conv10.1, i32 noundef %conv12.1, i32 noundef %conv13.1) #8
  %add.ptr15.1 = getelementptr i8, ptr %add.ptr15, i32 %call14.1
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %data, align 4
  %31 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %role, align 1
  %32 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %mux, align 2
  %33 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %swap, align 1
  %call.2 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp6.2 = icmp slt i32 %call.2, 0
  br i1 %cmp6.2, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  %sub.ptr.rhs.cast.2 = ptrtoint ptr %add.ptr15.1 to i32
  %sub.ptr.sub.2 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.2
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data, align 4
  %conv10.2 = zext i8 %35 to i32
  %36 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %role, align 1
  %conv12.2 = zext i8 %37 to i32
  %38 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mux, align 2
  %conv13.2 = zext i8 %39 to i32
  %call14.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.1, i32 noundef %sub.ptr.sub.2, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef %swap, i32 noundef %conv10.2, i32 noundef %conv12.2, i32 noundef %conv13.2) #8
  %add.ptr15.2 = getelementptr i8, ptr %add.ptr15.1, i32 %call14.2
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %data, align 4
  %41 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %role, align 1
  %42 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %mux, align 2
  %43 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %swap, align 1
  %call.3 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp6.3 = icmp slt i32 %call.3, 0
  br i1 %cmp6.3, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  %sub.ptr.rhs.cast.3 = ptrtoint ptr %add.ptr15.2 to i32
  %sub.ptr.sub.3 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.3
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data, align 4
  %conv10.3 = zext i8 %45 to i32
  %46 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %role, align 1
  %conv12.3 = zext i8 %47 to i32
  %48 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mux, align 2
  %conv13.3 = zext i8 %49 to i32
  %call14.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.2, i32 noundef %sub.ptr.sub.3, ptr noundef nonnull @.str.21, i32 noundef 3, ptr noundef %swap, i32 noundef %conv10.3, i32 noundef %conv12.3, i32 noundef %conv13.3) #8
  %add.ptr15.3 = getelementptr i8, ptr %add.ptr15.2, i32 %call14.3
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %data, align 4
  %51 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %role, align 1
  %52 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %mux, align 2
  %53 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %swap, align 1
  %call.4 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp6.4 = icmp slt i32 %call.4, 0
  br i1 %cmp6.4, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  %sub.ptr.rhs.cast.4 = ptrtoint ptr %add.ptr15.3 to i32
  %sub.ptr.sub.4 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.4
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data, align 4
  %conv10.4 = zext i8 %55 to i32
  %56 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %role, align 1
  %conv12.4 = zext i8 %57 to i32
  %58 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mux, align 2
  %conv13.4 = zext i8 %59 to i32
  %call14.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.3, i32 noundef %sub.ptr.sub.4, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %swap, i32 noundef %conv10.4, i32 noundef %conv12.4, i32 noundef %conv13.4) #8
  %add.ptr15.4 = getelementptr i8, ptr %add.ptr15.3, i32 %call14.4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %data, align 4
  %61 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %role, align 1
  %62 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %mux, align 2
  %63 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %swap, align 1
  %call.5 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp6.5 = icmp slt i32 %call.5, 0
  br i1 %cmp6.5, label %if.end.4.for.end_crit_edge, label %if.end.5

if.end.4.for.end_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.5:                                         ; preds = %if.end.4
  %sub.ptr.rhs.cast.5 = ptrtoint ptr %add.ptr15.4 to i32
  %sub.ptr.sub.5 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.5
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %data, align 4
  %conv10.5 = zext i8 %65 to i32
  %66 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %role, align 1
  %conv12.5 = zext i8 %67 to i32
  %68 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mux, align 2
  %conv13.5 = zext i8 %69 to i32
  %call14.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.4, i32 noundef %sub.ptr.sub.5, ptr noundef nonnull @.str.21, i32 noundef 5, ptr noundef %swap, i32 noundef %conv10.5, i32 noundef %conv12.5, i32 noundef %conv13.5) #8
  %add.ptr15.5 = getelementptr i8, ptr %add.ptr15.4, i32 %call14.5
  %70 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 6, ptr %data, align 4
  %71 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %role, align 1
  %72 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %mux, align 2
  %73 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %swap, align 1
  %call.6 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp6.6 = icmp slt i32 %call.6, 0
  br i1 %cmp6.6, label %if.end.5.for.end_crit_edge, label %if.end.6

if.end.5.for.end_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.6:                                         ; preds = %if.end.5
  %sub.ptr.rhs.cast.6 = ptrtoint ptr %add.ptr15.5 to i32
  %sub.ptr.sub.6 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.6
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data, align 4
  %conv10.6 = zext i8 %75 to i32
  %76 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %role, align 1
  %conv12.6 = zext i8 %77 to i32
  %78 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %mux, align 2
  %conv13.6 = zext i8 %79 to i32
  %call14.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.5, i32 noundef %sub.ptr.sub.6, ptr noundef nonnull @.str.21, i32 noundef 6, ptr noundef %swap, i32 noundef %conv10.6, i32 noundef %conv12.6, i32 noundef %conv13.6) #8
  %add.ptr15.6 = getelementptr i8, ptr %add.ptr15.5, i32 %call14.6
  %80 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 7, ptr %data, align 4
  %81 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %role, align 1
  %82 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %mux, align 2
  %83 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %swap, align 1
  %call.7 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %6, ptr noundef nonnull %ec_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp6.7 = icmp slt i32 %call.7, 0
  br i1 %cmp6.7, label %if.end.6.for.end_crit_edge, label %if.end.7

if.end.6.for.end_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.7:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.rhs.cast.7 = ptrtoint ptr %add.ptr15.6 to i32
  %sub.ptr.sub.7 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.7
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %data, align 4
  %conv10.7 = zext i8 %85 to i32
  %86 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %role, align 1
  %conv12.7 = zext i8 %87 to i32
  %88 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mux, align 2
  %conv13.7 = zext i8 %89 to i32
  %call14.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.6, i32 noundef %sub.ptr.sub.7, ptr noundef nonnull @.str.21, i32 noundef 7, ptr noundef %swap, i32 noundef %conv10.7, i32 noundef %conv12.7, i32 noundef %conv13.7) #8
  %add.ptr15.7 = getelementptr i8, ptr %add.ptr15.6, i32 %call14.7
  br label %for.end

for.end:                                          ; preds = %if.end.7, %if.end.6.for.end_crit_edge, %if.end.5.for.end_crit_edge, %if.end.4.for.end_crit_edge, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %read_buf, %entry.for.end_crit_edge ], [ %add.ptr15, %if.end.for.end_crit_edge ], [ %add.ptr15.1, %if.end.1.for.end_crit_edge ], [ %add.ptr15.2, %if.end.2.for.end_crit_edge ], [ %add.ptr15.3, %if.end.3.for.end_crit_edge ], [ %add.ptr15.4, %if.end.4.for.end_crit_edge ], [ %add.ptr15.5, %if.end.5.for.end_crit_edge ], [ %add.ptr15.6, %if.end.6.for.end_crit_edge ], [ %add.ptr15.7, %if.end.7 ]
  %sub.ptr.lhs.cast18 = ptrtoint ptr %p.0.lcssa to i32
  %sub.ptr.rhs.cast19 = ptrtoint ptr %read_buf to i32
  %sub.ptr.sub20 = sub i32 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %call21 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %read_buf, i32 noundef %sub.ptr.sub20) #8
  call void @llvm.lifetime.end.p0(i64 55, ptr nonnull %ec_buf) #8
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %read_buf) #8
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_uptime_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %msg = alloca %struct.anon.72, align 1
  %read_buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ec_dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg) #8
  %6 = call ptr @memset(ptr %msg, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %read_buf) #8
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 1
  %7 = call ptr @memset(ptr %read_buf, i32 255, i32 32)
  %8 = ptrtoint ptr %command to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 289, ptr %command, align 1
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %insize to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 44, ptr %insize, align 1
  %call = call i32 @cros_ec_cmd_xfer_status(ptr noundef %5, ptr noundef nonnull %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %resp2 = getelementptr inbounds %struct.anon.72, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %resp2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %resp2, align 1
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %read_buf, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %11) #8
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %read_buf, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %read_buf) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %debug_info = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_info, align 8
  %log_buffer = getelementptr inbounds %struct.cros_ec_debugfs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %log_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log_buffer, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %log_poll_work = getelementptr inbounds %struct.cros_ec_debugfs, ptr %3, i32 0, i32 6
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %log_poll_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %debug_info = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_info, align 8
  %log_buffer = getelementptr inbounds %struct.cros_ec_debugfs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %log_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log_buffer, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %log_poll_work = getelementptr inbounds %struct.cros_ec_debugfs, ptr %3, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %log_poll_work, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_cros_ec_debugfs__229_526_cros_ec_debugfs_driver_init6, !1, !"__initcall__kmod_cros_ec_debugfs__229_526_cros_ec_debugfs_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 526, i32 1}
!2 = !{ptr @__exitcall_cros_ec_debugfs_driver_exit, !1, !"__exitcall_cros_ec_debugfs_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file230, !4, !"__UNIQUE_ID_file230", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 528, i32 1}
!5 = !{ptr @__UNIQUE_ID_license231, !4, !"__UNIQUE_ID_license231", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description232, !7, !"__UNIQUE_ID_description232", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 529, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias233, !9, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 530, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 519, i32 11}
!12 = !{ptr @cros_ec_debugfs_driver, !13, !"cros_ec_debugfs_driver", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 517, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 463, i32 22}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 467, i32 23}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 470, i32 21}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 430, i32 22}
!22 = !{ptr @cros_ec_create_console_log.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 379, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cros_ec_create_console_log.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 380, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 382, i32 22}
!30 = !{ptr @cros_ec_create_console_log.__key.9, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 385, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cros_ec_create_console_log.__key.11, !31, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cros_ec_console_log_fops, !36, !"cros_ec_console_log_fops", i1 false, i1 false}
!36 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 292, i32 37}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 144, i32 9}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!46 = distinct !{null, !47, !"__print_once", i1 false, i1 false}
!47 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 86, i32 4}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cros_ec_console_log_work._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @cros_ec_console_log_work._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cros_ec_pdinfo_fops, !55, !"cros_ec_pdinfo_fops", i1 false, i1 false}
!55 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 301, i32 37}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 236, i32 11}
!58 = !{ptr @cros_ec_uptime_fops, !59, !"cros_ec_uptime_fops", i1 false, i1 false}
!59 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 308, i32 37}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 286, i32 46}
!62 = !{ptr @cros_ec_debugfs_pm_ops, !63, !"cros_ec_debugfs_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/platform/chrome/cros_ec_debugfs.c", i32 514, i32 8}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2152189790, i64 2152189815}
