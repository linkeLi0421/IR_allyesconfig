; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_chardev.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_chardev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.chardev_data = type { ptr, %struct.miscdevice }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.chardev_priv = type { ptr, %struct.notifier_block, %struct.wait_queue_head, i32, %struct.list_head, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ec_event = type { %struct.list_head, i32, i8, [0 x i8] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_readmem = type { i32, i32, [255 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_cros_ec_chardev__230_413_cros_ec_chardev_driver_init6 = internal global ptr @cros_ec_chardev_driver_init, section ".initcall6.init", align 4
@cros_ec_chardev_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_chardev_probe, ptr @cros_ec_chardev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_chardev_driver_exit = internal global ptr @cros_ec_chardev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias231 = internal constant [47 x i8] c"cros_ec_chardev.alias=platform:cros-ec-chardev\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [77 x i8] c"cros_ec_chardev.author=Enric Balletbo i Serra <enric.balletbo@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [71 x i8] c"cros_ec_chardev.description=ChromeOS EC Miscellaneous Character Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [61 x i8] c"cros_ec_chardev.file=drivers/platform/chrome/cros_ec_chardev\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [28 x i8] c"cros_ec_chardev.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros-ec-chardev\00", [16 x i8] zeroinitializer }, align 32
@chardev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @cros_ec_chardev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_chardev_poll, ptr @cros_ec_chardev_ioctl, ptr null, ptr null, i32 0, ptr @cros_ec_chardev_open, ptr null, ptr @cros_ec_chardev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/platform/chrome/cros_ec_chardev.c\00", [54 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ec_get_version.current_image_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read-write\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown EC version, returned error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s\0A%s\0A%s\0A%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cros_ec_chardev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->wait_event\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_chardev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 181, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register event notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_ec_chardev_open\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_chardev_open._entry_ptr = internal global ptr @cros_ec_chardev_open._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 60418, i64 3222596608, i64 3238587393]
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"cros_ec_chardev_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 405, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 407, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"chardev_fops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 363, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 141, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 230, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 214, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 174, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"current_image_name\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 28 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 82, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 82, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 174, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [45 x i8] c"../drivers/platform/chrome/cros_ec_chardev.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 181, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_cros_ec_chardev_driver_exit, ptr @__initcall__kmod_cros_ec_chardev__230_413_cros_ec_chardev_driver_init6, ptr @cros_ec_chardev_driver_exit, ptr @cros_ec_chardev_open._entry, ptr @cros_ec_chardev_open._entry_ptr, ptr @cros_ec_chardev_driver, ptr @.str, ptr @chardev_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ec_get_version.current_image_name, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cros_ec_chardev_open.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_chardev_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chardev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_get_version.current_image_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_chardev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_chardev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_chardev_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_chardev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_chardev_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i, align 4
  %misc = getelementptr inbounds %struct.chardev_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %misc, align 4
  %fops = getelementptr inbounds %struct.chardev_data, ptr %call.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @chardev_fops, ptr %fops, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %name = getelementptr inbounds %struct.chardev_data, ptr %call.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name, align 4
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %parent11 = getelementptr inbounds %struct.chardev_data, ptr %call.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %parent11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %parent11, align 4
  %driver_data.i28 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i28, align 4
  %call14 = tail call i32 @misc_register(ptr noundef %misc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %misc = getelementptr inbounds %struct.chardev_data, ptr %1, i32 0, i32 1
  tail call void @misc_deregister(ptr noundef %misc) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %length, ptr nocapture noundef %offset) #2 align 64 {
entry:
  %msg = alloca [106 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %msg) #11
  %0 = call ptr @memset(ptr %msg, i32 255, i32 106)
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %event_mask = getelementptr inbounds %struct.chardev_priv, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp ne i32 %length, 0
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %call = tail call fastcc ptr @cros_ec_chardev_fetch_event(ptr noundef %2, i1 noundef zeroext %cmp, i1 noundef zeroext %tobool2.not)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call to i32
  br label %cleanup38

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp6 = icmp eq i32 %length, 0
  br i1 %cmp6, label %if.end.cleanup38_crit_edge, label %if.end8

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end8:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.ec_event, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add = add i32 %11, 1
  %12 = tail call i32 @llvm.umin.i32(i32 %add, i32 %length)
  %event_type = getelementptr inbounds %struct.ec_event, ptr %call, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.i.i = icmp slt i32 %12, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !64

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef %event_type, i32 noundef %12, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %12, i32 -1226833920) #14, !srcloc !65
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_type, i32 noundef %12) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %event_type, i32 noundef %12) #11
  br label %copy_to_user.exit

copy_to_user.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup38

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %12, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %12, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool11.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool11.not, label %if.end13, label %copy_to_user.exit.cleanup38_crit_edge

copy_to_user.exit.cleanup38_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end13:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %12 to i64
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %offset, align 8
  br label %cleanup38

if.end14:                                         ; preds = %entry
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp15.not = icmp eq i64 %16, 0
  br i1 %cmp15.not, label %if.end18, label %if.end14.cleanup38_crit_edge

if.end14.cleanup38_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end18:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 120) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end18.cleanup38_crit_edge, label %if.end.i

if.end18.cleanup38_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end.i:                                         ; preds = %if.end18
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 5
  %18 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %command.i, align 4
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %insize.i, align 4
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ec_dev.i, align 8
  %call1.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %23, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i90 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i90, label %ec_get_version.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %current_image.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 5, i32 4
  %24 = ptrtoint ptr %current_image.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_image.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp6.i = icmp ugt i32 %25, 3
  br i1 %cmp6.i, label %if.then8.i, label %if.end5.i.if.end22_crit_edge

if.end5.i.if.end22_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %current_image.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %current_image.i, align 4
  br label %if.end22

ec_get_version.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %result.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result.i, align 8
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %msg, i32 noundef 106, ptr noundef nonnull @.str.9, i32 noundef %28) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup38

if.end22:                                         ; preds = %if.then8.i, %if.end5.i.if.end22_crit_edge
  %version_string_rw.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 2, i32 3
  %29 = ptrtoint ptr %current_image.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %current_image.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @ec_get_version.current_image_name, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %msg, i32 noundef 106, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %data.i, ptr noundef %version_string_rw.i, ptr noundef %32) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %call24 = call i32 @strlen(ptr noundef nonnull %msg) #16
  %33 = tail call i32 @llvm.umin.i32(i32 %call24, i32 %length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %33)
  %cmp1.i.i68 = icmp ugt i32 %33, 106
  br i1 %cmp1.i.i68, label %if.then3.i.i71, label %if.then.i.i.i79, !prof !66

if.then3.i.i71:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 106, i32 noundef %33) #11
  br label %cleanup38

if.then.i.i.i79:                                  ; preds = %if.end22
  call void @__check_object_size(ptr noundef nonnull %msg, i32 noundef %33, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #11
  %call.i.i80 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i80, label %if.then.i.i.i79.copy_to_user.exit89_crit_edge, label %if.end.i.i84

if.then.i.i.i79.copy_to_user.exit89_crit_edge:    ; preds = %if.then.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit89

if.end.i.i84:                                     ; preds = %if.then.i.i.i79
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %33, i32 -1226833920) #14, !srcloc !65
  %asmresult.i.i82 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i82)
  %cmp.i6.i83 = icmp eq i32 %asmresult.i.i82, 0
  br i1 %cmp.i6.i83, label %if.then2.i.i87, label %if.end.i.i84.copy_to_user.exit89_crit_edge

if.end.i.i84.copy_to_user.exit89_crit_edge:       ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit89

if.then2.i.i87:                                   ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i85 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msg, i32 noundef %33) #11
  %call.i12.i.i86 = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %msg, i32 noundef %33) #11
  br label %copy_to_user.exit89

copy_to_user.exit89:                              ; preds = %if.then2.i.i87, %if.end.i.i84.copy_to_user.exit89_crit_edge, %if.then.i.i.i79.copy_to_user.exit89_crit_edge
  %n.addr.0.i88 = phi i32 [ %33, %if.then.i.i.i79.copy_to_user.exit89_crit_edge ], [ %call.i12.i.i86, %if.then2.i.i87 ], [ %33, %if.end.i.i84.copy_to_user.exit89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i88)
  %tobool34.not = icmp eq i32 %n.addr.0.i88, 0
  br i1 %tobool34.not, label %if.end36, label %copy_to_user.exit89.cleanup38_crit_edge

copy_to_user.exit89.cleanup38_crit_edge:          ; preds = %copy_to_user.exit89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end36:                                         ; preds = %copy_to_user.exit89
  call void @__sanitizer_cov_trace_pc() #13
  %conv37 = zext i32 %33 to i64
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv37, ptr %offset, align 8
  br label %cleanup38

cleanup38:                                        ; preds = %if.end36, %copy_to_user.exit89.cleanup38_crit_edge, %if.then3.i.i71, %ec_get_version.exit, %if.end18.cleanup38_crit_edge, %if.end14.cleanup38_crit_edge, %if.end13, %copy_to_user.exit.cleanup38_crit_edge, %copy_to_user.exit.thread, %if.end.cleanup38_crit_edge, %if.then4
  %retval.1 = phi i32 [ %33, %if.end36 ], [ %9, %if.then4 ], [ %12, %if.end13 ], [ 0, %if.end.cleanup38_crit_edge ], [ -14, %copy_to_user.exit.cleanup38_crit_edge ], [ 0, %if.end14.cleanup38_crit_edge ], [ %call1.i, %ec_get_version.exit ], [ -14, %copy_to_user.exit89.cleanup38_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ -12, %if.end18.cleanup38_crit_edge ], [ -14, %if.then3.i.i71 ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %msg) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait_event = getelementptr inbounds %struct.chardev_priv, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait_event, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %wait_event, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %events = getelementptr inbounds %struct.chardev_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %events, align 4
  %cmp.i.not = icmp eq ptr %5, %events
  %. = select i1 %cmp.i.not, i32 0, i32 65
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %s_mem.i = alloca %struct.cros_ec_readmem, align 4
  %u_cmd.i = alloca %struct.cros_ec_command, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 60416, i32 %4)
  %cmp.not = icmp eq i32 %4, 60416
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 -1072370688, label %sw.bb
    i32 -1056379903, label %sw.bb1
    i32 60418, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %6 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %u_cmd.i) #11
  %7 = getelementptr inbounds %struct.cros_ec_command, ptr %u_cmd.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.cros_ec_command, ptr %u_cmd.i, i32 0, i32 3
  %9 = call ptr @memset(ptr %u_cmd.i, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 20, i32 -1226833920) #14, !srcloc !67
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !64

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u_cmd.i, i32 noundef 20) #11
  %11 = call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !68
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %u_cmd.i, ptr noundef %6, i32 noundef 20) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !64

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i106.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 20, %sw.bb.if.then11.i.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 20, %res.0.i.i106.i
  %add.ptr.i.i.i = getelementptr i8, ptr %u_cmd.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i106.i)
  br label %cros_ec_chardev_ioctl_xcmd.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp.i = icmp ugt i32 %16, 65536
  br i1 %cmp.i, label %if.end.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge, label %lor.lhs.false.i

if.end.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cros_ec_chardev_ioctl_xcmd.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %18)
  %cmp1.i = icmp ugt i32 %18, 65536
  br i1 %cmp1.i, label %lor.lhs.false.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge, label %if.end8.i.i

lor.lhs.false.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cros_ec_chardev_ioctl_xcmd.exit

if.end8.i.i:                                      ; preds = %lor.lhs.false.i
  %19 = call i32 @llvm.umax.i32(i32 %16, i32 %18) #11
  %add.i = add nuw nsw i32 %19, 20
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #17
  %tobool8.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not.i, label %if.end8.i.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge, label %if.end10.i

if.end8.i.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cros_ec_chardev_ioctl_xcmd.exit

if.end10.i:                                       ; preds = %if.end8.i.i
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 4
  %add12.i = add i32 %21, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i)
  %cmp9.i.i.i = icmp slt i32 %add12.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end10.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.exit.i_crit_edge, label %if.then27.i.i.i, !prof !64

land.rhs16.i.i.i.exit.i_crit_edge:                ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %exit.i

if.then.i.i.i.i:                                  ; preds = %if.end10.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %add12.i, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #11
  %call.i.i62.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i62.i, label %if.then.i.i.i.i.if.end.i.i76.i_crit_edge, label %land.lhs.true.i.i66.i

if.then.i.i.i.i.if.end.i.i76.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i76.i

land.lhs.true.i.i66.i:                            ; preds = %if.then.i.i.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %add12.i, i32 -1226833920) #14, !srcloc !67
  %asmresult.i.i64.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i64.i)
  %cmp.i6.i65.i = icmp eq i32 %asmresult.i.i64.i, 0
  br i1 %cmp.i6.i65.i, label %if.then.i7.i73.i, label %land.lhs.true.i.i66.i.if.end.i.i76.i_crit_edge, !prof !64

land.lhs.true.i.i66.i.if.end.i.i76.i_crit_edge:   ; preds = %land.lhs.true.i.i66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i76.i

if.then.i7.i73.i:                                 ; preds = %land.lhs.true.i.i66.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i67.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef %add12.i) #11
  %23 = call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i.i68.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i68.i to ptr
  %cpu_domain.i.i.i.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i69.i) #5, !srcloc !68
  %and.i.i.i.i70.i = and i32 %25, -13
  %or.i.i.i.i71.i = or i32 %and.i.i.i.i70.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i71.i) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  %call1.i.i.i72.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef %6, i32 noundef %add12.i) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  br label %if.end.i.i76.i

if.end.i.i76.i:                                   ; preds = %if.then.i7.i73.i, %land.lhs.true.i.i66.i.if.end.i.i76.i_crit_edge, %if.then.i.i.i.i.if.end.i.i76.i_crit_edge
  %res.0.i.i74.i = phi i32 [ %add12.i, %if.then.i.i.i.i.if.end.i.i76.i_crit_edge ], [ %call1.i.i.i72.i, %if.then.i7.i73.i ], [ %add12.i, %land.lhs.true.i.i66.i.if.end.i.i76.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i74.i)
  %tobool4.not.i.i75.i = icmp eq i32 %res.0.i.i74.i, 0
  br i1 %tobool4.not.i.i75.i, label %if.end16.i, label %if.then11.i.i79.i, !prof !64

if.then11.i.i79.i:                                ; preds = %if.end.i.i76.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i77.i = sub i32 %add12.i, %res.0.i.i74.i
  %add.ptr.i.i78.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i.i77.i
  %26 = call ptr @memset(ptr %add.ptr.i.i78.i, i32 0, i32 %res.0.i.i74.i)
  br label %exit.i

if.end16.i:                                       ; preds = %if.end.i.i76.i
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 4
  %outsize18.i = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %outsize18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %outsize18.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp19.not.i = icmp eq i32 %28, %30
  br i1 %cmp19.not.i, label %lor.lhs.false20.i, label %if.end16.i.exit.i_crit_edge

if.end16.i.exit.i_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.i

lor.lhs.false20.i:                                ; preds = %if.end16.i
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %8, align 4
  %insize22.i = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %insize22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %insize22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp23.not.i = icmp eq i32 %32, %34
  br i1 %cmp23.not.i, label %if.end25.i, label %lor.lhs.false20.i.exit.i_crit_edge

lor.lhs.false20.i.exit.i_crit_edge:               ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.i

if.end25.i:                                       ; preds = %lor.lhs.false20.i
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %36 to i32
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call9.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %command.i, align 4
  %add26.i = add i32 %38, %conv.i
  store i32 %add26.i, ptr %command.i, align 4
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ec_dev.i, align 8
  %call27.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %40, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end25.i.exit.i_crit_edge, label %if.end31.i

if.end25.i.exit.i_crit_edge:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.i

if.end31.i:                                       ; preds = %if.end25.i
  %41 = ptrtoint ptr %insize22.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %insize22.i, align 4
  %add33.i = add i32 %42, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add33.i)
  %cmp9.i.i89.i = icmp slt i32 %add33.i, 0
  br i1 %cmp9.i.i89.i, label %land.rhs16.i.i92.i, label %if.then.i.i.i95.i

land.rhs16.i.i92.i:                               ; preds = %if.end31.i
  %.b71.i.i91.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i91.i, label %land.rhs16.i.i92.i.exit.i_crit_edge, label %if.then27.i.i93.i, !prof !64

land.rhs16.i.i92.i.exit.i_crit_edge:              ; preds = %land.rhs16.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.i

if.then27.i.i93.i:                                ; preds = %land.rhs16.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %exit.i

if.then.i.i.i95.i:                                ; preds = %if.end31.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %add33.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #11
  %call.i.i96.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i96.i, label %if.then.i.i.i95.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i100.i

if.then.i.i.i95.i.copy_to_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i100.i:                                  ; preds = %if.then.i.i.i95.i
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %add33.i, i32 -1226833920) #14, !srcloc !65
  %asmresult.i.i98.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i98.i)
  %cmp.i6.i99.i = icmp eq i32 %asmresult.i.i98.i, 0
  br i1 %cmp.i6.i99.i, label %if.then2.i.i.i, label %if.end.i.i100.i.copy_to_user.exit.i_crit_edge

if.end.i.i100.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i101.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %add33.i) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %call9.i.i, i32 noundef %add33.i) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i100.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i95.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i102.i = phi i32 [ %add33.i, %if.then.i.i.i95.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %add33.i, %if.end.i.i100.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i102.i)
  %tobool35.not.i = icmp eq i32 %n.addr.0.i102.i, 0
  %spec.select.i = select i1 %tobool35.not.i, i32 %call27.i, i32 -14
  br label %exit.i

exit.i:                                           ; preds = %copy_to_user.exit.i, %if.then27.i.i93.i, %land.rhs16.i.i92.i.exit.i_crit_edge, %if.end25.i.exit.i_crit_edge, %lor.lhs.false20.i.exit.i_crit_edge, %if.end16.i.exit.i_crit_edge, %if.then11.i.i79.i, %if.then27.i.i.i, %land.rhs16.i.i.i.exit.i_crit_edge
  %ret.0.i = phi i32 [ %call27.i, %if.end25.i.exit.i_crit_edge ], [ -22, %lor.lhs.false20.i.exit.i_crit_edge ], [ -22, %if.end16.i.exit.i_crit_edge ], [ -14, %if.then11.i.i79.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.exit.i_crit_edge ], [ -14, %if.then27.i.i93.i ], [ -14, %land.rhs16.i.i92.i.exit.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cros_ec_chardev_ioctl_xcmd.exit

cros_ec_chardev_ioctl_xcmd.exit:                  ; preds = %exit.i, %if.end8.i.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge, %lor.lhs.false.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge, %if.end.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %ret.0.i, %exit.i ], [ -22, %lor.lhs.false.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge ], [ -22, %if.end.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge ], [ -12, %if.end8.i.i.cros_ec_chardev_ioctl_xcmd.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %u_cmd.i) #11
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %44 = inttoptr i32 %arg to ptr
  %ec_dev1.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %ec_dev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ec_dev1.i, align 8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %s_mem.i) #11
  %47 = call ptr @memset(ptr %s_mem.i, i32 0, i32 264)
  %cmd_readmem.i = getelementptr inbounds %struct.cros_ec_device, ptr %46, i32 0, i32 4
  %48 = ptrtoint ptr %cmd_readmem.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmd_readmem.i, align 8
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %sw.bb1.cros_ec_chardev_ioctl_readmem.exit_crit_edge, label %if.end8.i.i.i

sw.bb1.cros_ec_chardev_ioctl_readmem.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cros_ec_chardev_ioctl_readmem.exit

if.end8.i.i.i:                                    ; preds = %sw.bb1
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #11
  %call.i.i.i10 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i10, label %if.end8.i.i.i.if.then11.i.i.i24_crit_edge, label %land.lhs.true.i.i.i13

if.end8.i.i.i.if.then11.i.i.i24_crit_edge:        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i24

land.lhs.true.i.i.i13:                            ; preds = %if.end8.i.i.i
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 264, i32 -1226833920) #14
  %asmresult.i.i.i11 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i11)
  %cmp.i6.i.i12 = icmp eq i32 %asmresult.i.i.i11, 0
  br i1 %cmp.i6.i.i12, label %if.end.i.i.i21, label %land.lhs.true.i.i.i13.if.then11.i.i.i24_crit_edge, !prof !64

land.lhs.true.i.i.i13.if.then11.i.i.i24_crit_edge: ; preds = %land.lhs.true.i.i.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i24

if.end.i.i.i21:                                   ; preds = %land.lhs.true.i.i.i13
  %call.i.i.i.i14 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %s_mem.i, i32 noundef 264) #11
  %51 = call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i.i.i15 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i.i15 to ptr
  %cpu_domain.i.i.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i16) #5, !srcloc !68
  %and.i.i.i.i.i17 = and i32 %53, -13
  %or.i.i.i.i.i18 = or i32 %and.i.i.i.i.i17, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i18) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  %call1.i.i.i.i19 = call i32 @arm_copy_from_user(ptr noundef nonnull %s_mem.i, ptr noundef %44, i32 noundef 264) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i19)
  %tobool4.not.i.i.i20 = icmp eq i32 %call1.i.i.i.i19, 0
  br i1 %tobool4.not.i.i.i20, label %if.end4.i, label %if.end.i.i.i21.if.then11.i.i.i24_crit_edge, !prof !64

if.end.i.i.i21.if.then11.i.i.i24_crit_edge:       ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i24

if.then11.i.i.i24:                                ; preds = %if.end.i.i.i21.if.then11.i.i.i24_crit_edge, %land.lhs.true.i.i.i13.if.then11.i.i.i24_crit_edge, %if.end8.i.i.i.if.then11.i.i.i24_crit_edge
  %res.0.i.i32.i = phi i32 [ %call1.i.i.i.i19, %if.end.i.i.i21.if.then11.i.i.i24_crit_edge ], [ 264, %if.end8.i.i.i.if.then11.i.i.i24_crit_edge ], [ 264, %land.lhs.true.i.i.i13.if.then11.i.i.i24_crit_edge ]
  %sub.i.i.i22 = sub i32 264, %res.0.i.i32.i
  %add.ptr.i.i.i23 = getelementptr i8, ptr %s_mem.i, i32 %sub.i.i.i22
  %54 = call ptr @memset(ptr %add.ptr.i.i.i23, i32 0, i32 %res.0.i.i32.i)
  br label %cros_ec_chardev_ioctl_readmem.exit

if.end4.i:                                        ; preds = %if.end.i.i.i21
  %55 = ptrtoint ptr %cmd_readmem.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmd_readmem.i, align 8
  %57 = ptrtoint ptr %s_mem.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_mem.i, align 4
  %bytes.i = getelementptr inbounds %struct.cros_ec_readmem, ptr %s_mem.i, i32 0, i32 1
  %59 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bytes.i, align 4
  %buffer.i = getelementptr inbounds %struct.cros_ec_readmem, ptr %s_mem.i, i32 0, i32 2
  %call6.i = call i32 %56(ptr noundef %46, i32 noundef %58, i32 noundef %60, ptr noundef %buffer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp.i25 = icmp slt i32 %call6.i, 1
  br i1 %cmp.i25, label %if.end4.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge, label %if.end8.i.i23.i

if.end4.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cros_ec_chardev_ioctl_readmem.exit

if.end8.i.i23.i:                                  ; preds = %if.end4.i
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #11
  %call.i.i24.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i24.i, label %if.end8.i.i23.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge, label %copy_to_user.exit.i28

if.end8.i.i23.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge: ; preds = %if.end8.i.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cros_ec_chardev_ioctl_readmem.exit

copy_to_user.exit.i28:                            ; preds = %if.end8.i.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i28.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %s_mem.i, i32 noundef 264) #11
  %call.i12.i.i.i26 = call i32 @arm_copy_to_user(ptr noundef %44, ptr noundef nonnull %s_mem.i, i32 noundef 264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i26)
  %tobool10.not.i = icmp eq i32 %call.i12.i.i.i26, 0
  %spec.select.i27 = select i1 %tobool10.not.i, i32 %call6.i, i32 -14
  br label %cros_ec_chardev_ioctl_readmem.exit

cros_ec_chardev_ioctl_readmem.exit:               ; preds = %copy_to_user.exit.i28, %if.end8.i.i23.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge, %if.end4.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge, %if.then11.i.i.i24, %sw.bb1.cros_ec_chardev_ioctl_readmem.exit_crit_edge
  %retval.0.i29 = phi i32 [ -25, %sw.bb1.cros_ec_chardev_ioctl_readmem.exit_crit_edge ], [ %call6.i, %if.end4.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge ], [ -14, %if.then11.i.i.i24 ], [ -14, %if.end8.i.i23.i.cros_ec_chardev_ioctl_readmem.exit_crit_edge ], [ %spec.select.i27, %copy_to_user.exit.i28 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %s_mem.i) #11
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %event_mask = getelementptr inbounds %struct.chardev_priv, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %arg, ptr %event_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %cros_ec_chardev_ioctl_readmem.exit, %cros_ec_chardev_ioctl_xcmd.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ %retval.0.i29, %cros_ec_chardev_ioctl_readmem.exit ], [ %retval.0.i, %cros_ec_chardev_ioctl_xcmd.exit ], [ -25, %entry.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %parent = getelementptr inbounds %struct.miscdevice, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private_data, align 4
  %events = getelementptr inbounds %struct.chardev_priv, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %events, ptr %events, align 8
  %prev.i = getelementptr inbounds %struct.chardev_priv, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %events, ptr %prev.i, align 4
  %wait_event = getelementptr inbounds %struct.chardev_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait_event, ptr noundef nonnull @.str.12, ptr noundef nonnull @cros_ec_chardev_open.__key) #11
  %call4 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #11
  %notifier = getelementptr inbounds %struct.chardev_priv, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cros_ec_chardev_mkbp_event, ptr %notifier, align 4
  %ec_dev5 = getelementptr inbounds %struct.cros_ec_dev, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %ec_dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ec_dev5, align 8
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %13, i32 0, i32 22
  %call7 = tail call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.cros_ec_dev, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call7, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ec_dev2 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev2, align 8
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 22
  %notifier = getelementptr inbounds %struct.chardev_priv, ptr %1, i32 0, i32 1
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %notifier) #11
  %events = getelementptr inbounds %struct.chardev_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %events, align 4
  %cmp.not23 = icmp eq ptr %7, %events
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %event.024 = phi ptr [ %e.0, %list_del.exit.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %event.024 to i32
  call void @__asan_load4_noabort(i32 %8)
  %e.0 = load ptr, ptr %event.024, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %event.024) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %event.024, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %event.024 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %event.024 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %event.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %event.024, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %event.024) #11
  %cmp.not = icmp eq ptr %e.0, %events
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cros_ec_chardev_fetch_event(ptr noundef %priv, i1 noundef zeroext %fetch, i1 noundef zeroext %block) #2 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_event = getelementptr inbounds %struct.chardev_priv, ptr %priv, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %wait_event) #11
  br i1 %block, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %events = getelementptr inbounds %struct.chardev_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %events, align 4
  %cmp.i.not = icmp eq ptr %1, %events
  %fetch.not = xor i1 %fetch, true
  %brmerge = or i1 %cmp.i.not, %fetch.not
  %.mux = select i1 %cmp.i.not, ptr inttoptr (i32 -11 to ptr), ptr null
  br i1 %brmerge, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  br i1 %fetch, label %if.end.if.end6_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge
  %events7 = getelementptr inbounds %struct.chardev_priv, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %events7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %events7, align 4
  %cmp.i107.not = icmp eq ptr %3, %events7
  br i1 %cmp.i107.not, label %cond.false, label %if.end6.if.end87_crit_edge

if.end6.if.end87_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

cond.false:                                       ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #11
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %__wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @autoremove_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %7, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %cond.false
  %call15 = call i32 @do_wait_intr(ptr noundef %wait_event, ptr noundef nonnull %__wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.cond:                                          ; preds = %do.body
  %17 = ptrtoint ptr %events7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %events7, align 4
  %cmp.i109.not = icmp eq ptr %18, %events7
  br i1 %cmp.i109.not, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i.i, %do.end.cond.end_crit_edge
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@cros_ec_chardev_fetch_event, %cond.end) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %28, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool84.not = icmp eq i32 %call15, 0
  br i1 %tobool84.not, label %cond.end.if.end87_crit_edge, label %if.then85

cond.end.if.end87_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then85:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = inttoptr i32 %call15 to ptr
  br label %out

if.end87:                                         ; preds = %cond.end.if.end87_crit_edge, %if.end6.if.end87_crit_edge
  %31 = ptrtoint ptr %events7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %events7, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end87.list_del.exit_crit_edge

if.end87.list_del.exit_crit_edge:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i111 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i111, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end87.list_del.exit_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %size = getelementptr inbounds %struct.ec_event, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  %event_len = getelementptr inbounds %struct.chardev_priv, ptr %priv, i32 0, i32 5
  %43 = ptrtoint ptr %event_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %event_len, align 4
  %add.neg = sub i32 -16, %42
  %sub = add i32 %add.neg, %44
  store i32 %sub, ptr %event_len, align 4
  br label %out

out:                                              ; preds = %list_del.exit, %if.then85, %if.end.out_crit_edge, %land.lhs.true.out_crit_edge
  %event.0 = phi ptr [ %30, %if.then85 ], [ %32, %list_del.exit ], [ null, %if.end.out_crit_edge ], [ %.mux, %land.lhs.true.out_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %wait_event) #11
  ret ptr %event.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_mkbp_event(ptr noundef %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ec_dev2 = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev2, align 8
  %event_data = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %event_data, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %event_size = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_size, align 8
  %add = add i32 %7, 16
  %event_mask = getelementptr i8, ptr %nb, i32 64
  %8 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event_mask, align 4
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %event_len = getelementptr i8, ptr %nb, i32 76
  %10 = ptrtoint ptr %event_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_len, align 4
  %add3 = add i32 %11, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add3)
  %cmp = icmp ugt i32 %add3, 4096
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end8.i.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %lor.lhs.false
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end7

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_size, align 8
  %size = getelementptr inbounds %struct.ec_event, ptr %call9.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size, align 8
  %15 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %event_data, align 4
  %event_type11 = getelementptr inbounds %struct.ec_event, ptr %call9.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %event_type11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %event_type11, align 4
  %data = getelementptr inbounds %struct.ec_event, ptr %call9.i.i, i32 0, i32 3
  %data13 = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 23, i32 1
  %18 = load i32, ptr %event_size, align 8
  %19 = call ptr @memcpy(ptr %data, ptr %data13, i32 %18)
  %wait_event = getelementptr i8, ptr %nb, i32 12
  tail call void @_raw_spin_lock(ptr noundef %wait_event) #11
  %events = getelementptr i8, ptr %nb, i32 68
  %prev.i = getelementptr i8, ptr %nb, i32 72
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %21, ptr noundef %events) #11
  br i1 %call.i.i, label %if.end.i.i42, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i42:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %23 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %events, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call9.i.i, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i42, %if.end7.list_add_tail.exit_crit_edge
  %26 = ptrtoint ptr %event_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event_len, align 4
  %add16 = add i32 %27, %add
  store i32 %add16, ptr %event_len, align 4
  tail call void @__wake_up_locked(ptr noundef %wait_event, i32 noundef 3, i32 noundef 1) #11
  tail call void @_raw_spin_unlock(ptr noundef %wait_event) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end8.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_add_tail.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_cros_ec_chardev__230_413_cros_ec_chardev_driver_init6, !1, !"__initcall__kmod_cros_ec_chardev__230_413_cros_ec_chardev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 413, i32 1}
!2 = !{ptr @__exitcall_cros_ec_chardev_driver_exit, !1, !"__exitcall_cros_ec_chardev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias231, !4, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 415, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 416, i32 1}
!7 = !{ptr @__UNIQUE_ID_description233, !8, !"__UNIQUE_ID_description233", i1 false, i1 false}
!8 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 417, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 418, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 407, i32 11}
!14 = !{ptr @cros_ec_chardev_driver, !15, !"cros_ec_chardev_driver", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 405, i32 31}
!16 = !{ptr @chardev_fops, !17, !"chardev_fops", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 363, i32 37}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 141, i32 8}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 57, i32 3}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 57, i32 14}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 57, i32 27}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 57, i32 41}
!36 = !{ptr @ec_get_version.current_image_name, !37, !"current_image_name", i1 false, i1 false}
!37 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 56, i32 28}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 73, i32 5}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 82, i32 24}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 82, i32 44}
!44 = !{ptr @cros_ec_chardev_open.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 174, i32 2}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/platform/chrome/cros_ec_chardev.c", i32 181, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cros_ec_chardev_open._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @cros_ec_chardev_open._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2152652237, i64 2152652262}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2152651556, i64 2152651581}
!68 = !{i64 5147111}
!69 = !{i64 5147308}
!70 = !{i64 2152632541}
