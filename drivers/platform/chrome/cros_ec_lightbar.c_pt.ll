; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_lightbar.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_lightbar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_lightbar = type { i8, %union.anon.69 }
%union.anon.69 = type <{ %struct.lightbar_params_v1, [65 x i8] }>
%struct.lightbar_params_v1 = type { i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [3 x i8], [2 x [4 x i8]], [2 x [4 x i8]], i8, [8 x %struct.rgb_s] }
%struct.rgb_s = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.kuid_t = type { i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.72 = type { i8, i8, i8, i8 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lightbar_program = type { i8, [192 x i8] }

@__initcall__kmod_cros_ec_lightbar__228_609_cros_ec_lightbar_driver_init6 = internal global ptr @cros_ec_lightbar_driver_init, section ".initcall6.init", align 4
@cros_ec_lightbar_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_lightbar_probe, ptr @cros_ec_lightbar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_lightbar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_lightbar_driver_exit = internal global ptr @cros_ec_lightbar_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [63 x i8] c"cros_ec_lightbar.file=drivers/platform/chrome/cros_ec_lightbar\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [29 x i8] c"cros_ec_lightbar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [81 x i8] c"cros_ec_lightbar.description=Expose the Chromebook Pixel's lightbar to userspace\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [49 x i8] c"cros_ec_lightbar.alias=platform:cros-ec-lightbar\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cros-ec-lightbar\00", [47 x i8] zeroinitializer }, align 32
@cros_ec_lightbar_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_lightbar_suspend, ptr @cros_ec_lightbar_resume, ptr @cros_ec_lightbar_suspend, ptr @cros_ec_lightbar_resume, ptr @cros_ec_lightbar_suspend, ptr @cros_ec_lightbar_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_ec\00", [24 x i8] zeroinitializer }, align 32
@cros_ec_lightbar_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.9, ptr null, ptr null, ptr @__lb_cmds_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cros_ec_lightbar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 559, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create %s attributes. err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cros_ec_lightbar_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/platform/chrome/cros_ec_lightbar.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_lightbar_probe._entry_ptr = internal global ptr @cros_ec_lightbar_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lb_throttle.last_access = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lb_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lb_mutex, i64 52), ptr getelementptr (i8, ptr @lb_mutex, i64 52) }, ptr @lb_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lb_interval_jiffies = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lb_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lb_mutex\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lightbar\00", [23 x i8] zeroinitializer }, align 32
@__lb_cmds_attrs = internal global [8 x ptr] [ptr @dev_attr_interval_msec, ptr @dev_attr_version, ptr @dev_attr_brightness, ptr @dev_attr_led_rgb, ptr @dev_attr_sequence, ptr @dev_attr_program, ptr @dev_attr_userspace_control, ptr null], align 4
@dev_attr_interval_msec = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interval_msec_show, ptr @interval_msec_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_brightness = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @brightness_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_led_rgb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @led_rgb_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sequence = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sequence_show, ptr @sequence_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_program = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @program_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_userspace_control = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @userspace_control_show, ptr @userspace_control_store }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interval_msec\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brightness\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_rgb\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%i\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sequence\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"XFER / EC ERROR %d / %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@seqname = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S5\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S3\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S0\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S5S3\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S3S0\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S0S3\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S3S5\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"STOP\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RUN\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KONAMI\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TAP\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PROGRAM\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"program\00", [24 x i8] zeroinitializer }, align 32
@program_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Program is %u bytes, too long to send (max: %u)\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"program_store\00", [18 x i8] zeroinitializer }, align 32
@program_store._entry_ptr = internal global ptr @program_store._entry, section ".printk_index", align 4
@program_store._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 455, ptr @.str.39, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Copying %zu byte program to EC\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@program_store._entry_ptr.40 = internal global ptr @program_store._entry.37, section ".printk_index", align 4
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"userspace_control\00", [46 x i8] zeroinitializer }, align 32
@userspace_control = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"cros_ec_lightbar_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 600, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 602, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"cros_ec_lightbar_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 597, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 542, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"cros_ec_lightbar_attr_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 526, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 558, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"last_access\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 57, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"lb_mutex\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"lb_interval_jiffies\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 23, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 53, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 527, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"dev_attr_interval_msec\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"dev_attr_version\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"dev_attr_brightness\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"dev_attr_led_rgb\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"dev_attr_sequence\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"dev_attr_program\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"dev_attr_userspace_control\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 507, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 36, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 508, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 171, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 509, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 510, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 237, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 511, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 304, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 311, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 313, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [8 x i8] c"seqname\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 277, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 279, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 279, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 279, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 279, i32 26 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 279, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 280, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 280, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 512, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 441, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 455, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 513, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"userspace_control\00", align 1
@___asan_gen_.215 = private constant [46 x i8] c"../drivers/platform/chrome/cros_ec_lightbar.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 29, i32 13 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_cros_ec_lightbar_driver_exit, ptr @__initcall__kmod_cros_ec_lightbar__228_609_cros_ec_lightbar_driver_init6, ptr @cros_ec_lightbar_driver_exit, ptr @cros_ec_lightbar_probe._entry, ptr @cros_ec_lightbar_probe._entry_ptr, ptr @program_store._entry, ptr @program_store._entry.37, ptr @program_store._entry_ptr, ptr @program_store._entry_ptr.40, ptr @cros_ec_lightbar_driver, ptr @.str, ptr @cros_ec_lightbar_pm_ops, ptr @.str.1, ptr @cros_ec_lightbar_attr_group, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lb_throttle.last_access, ptr @lb_mutex, ptr @lb_interval_jiffies, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dev_attr_interval_msec, ptr @dev_attr_version, ptr @dev_attr_brightness, ptr @dev_attr_led_rgb, ptr @dev_attr_sequence, ptr @dev_attr_program, ptr @dev_attr_userspace_control, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @seqname, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @userspace_control], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_lightbar_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_lightbar_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_lightbar_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_lightbar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_throttle.last_access to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_interval_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interval_msec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_brightness to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_led_rgb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sequence to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_program to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_userspace_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seqname to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @program_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @program_store._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_control to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_lightbar_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_lightbar_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_lightbar_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_probe(ptr noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %call5 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(8) @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 40
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add1.i.i, ptr %command.i.i, align 4
  %outsize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %insize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %insize.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %insize.i.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 12, ptr %data.i, align 4
  %17 = ptrtoint ptr %outsize.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %outsize.i.i, align 8
  %result.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %result.i, align 8
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ec_dev.i, align 8
  %call1.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %20, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, -22
  %or.cond.i = or i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end4.i, label %if.end.i.get_lightbar_version.exit.thread36_crit_edge

if.end.i.get_lightbar_version.exit.thread36_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lightbar_version.exit.thread36

if.end4.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %result.i, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end4.i.get_lightbar_version.exit.thread36_crit_edge [
    i32 3, label %if.end4.i.if.end8_crit_edge
    i32 0, label %if.end4.i.if.end8_crit_edge39
  ]

if.end4.i.if.end8_crit_edge39:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end4.i.if.end8_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end4.i.get_lightbar_version.exit.thread36_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lightbar_version.exit.thread36

get_lightbar_version.exit.thread36:               ; preds = %if.end4.i.get_lightbar_version.exit.thread36_crit_edge, %if.end.i.get_lightbar_version.exit.thread36_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4.i.if.end8_crit_edge, %if.end4.i.if.end8_crit_edge39
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i.i24 = icmp eq ptr %call7.i.i.i23, null
  br i1 %tobool.not.i.i24, label %if.end8.lb_manual_suspend_ctrl.exit_crit_edge, label %if.end.i32

if.end8.lb_manual_suspend_ctrl.exit_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %lb_manual_suspend_ctrl.exit

if.end.i32:                                       ; preds = %if.end8
  %25 = ptrtoint ptr %call7.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %call7.i.i.i23, align 8
  %26 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i26 = zext i16 %27 to i32
  %add1.i.i27 = add nuw nsw i32 %conv.i.i26, 40
  %command.i.i28 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i23, i32 0, i32 1
  %28 = ptrtoint ptr %command.i.i28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add1.i.i27, ptr %command.i.i28, align 4
  %outsize.i.i29 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i23, i32 0, i32 2
  %29 = ptrtoint ptr %outsize.i.i29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 194, ptr %outsize.i.i29, align 8
  %insize.i.i30 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i23, i32 0, i32 3
  %30 = ptrtoint ptr %insize.i.i30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %insize.i.i30, align 4
  %data.i31 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i23, i32 0, i32 5
  %31 = ptrtoint ptr %data.i31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 19, ptr %data.i31, align 4
  %32 = getelementptr inbounds %struct.ec_params_lightbar, ptr %data.i31, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %32, align 1
  %call2.i = tail call fastcc i32 @lb_throttle() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i32.error.i_crit_edge

if.end.i32.error.i_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end5.i:                                        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ec_dev.i, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %35, ptr noundef nonnull %call7.i.i.i23) #11
  br label %error.i

error.i:                                          ; preds = %if.end5.i, %if.end.i32.error.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i23) #11
  br label %lb_manual_suspend_ctrl.exit

lb_manual_suspend_ctrl.exit:                      ; preds = %error.i, %if.end8.lb_manual_suspend_ctrl.exit_crit_edge
  %call10 = tail call i32 @sysfs_create_group(ptr noundef %3, ptr noundef nonnull @cros_ec_lightbar_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end, label %lb_manual_suspend_ctrl.exit.cleanup_crit_edge

lb_manual_suspend_ctrl.exit.cleanup_crit_edge:    ; preds = %lb_manual_suspend_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %lb_manual_suspend_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, i32 noundef %call10) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lb_manual_suspend_ctrl.exit.cleanup_crit_edge, %get_lightbar_version.exit.thread36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call10, %do.end ], [ %call10, %lb_manual_suspend_ctrl.exit.cleanup_crit_edge ], [ -19, %get_lightbar_version.exit.thread36 ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_remove(ptr nocapture noundef readonly %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %3, ptr noundef nonnull @cros_ec_lightbar_attr_group) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.lb_manual_suspend_ctrl.exit_crit_edge, label %if.end.i

entry.lb_manual_suspend_ctrl.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lb_manual_suspend_ctrl.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 40
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add1.i.i, ptr %command.i.i, align 4
  %outsize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %outsize.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 194, ptr %outsize.i.i, align 8
  %insize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %insize.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %insize.i.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 19, ptr %data.i, align 4
  %12 = getelementptr inbounds %struct.ec_params_lightbar, ptr %data.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %call2.i = tail call fastcc i32 @lb_throttle() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.error.i_crit_edge

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec_dev.i, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef nonnull %call7.i.i.i) #11
  br label %error.i

error.i:                                          ; preds = %if.end5.i, %if.end.i.error.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %lb_manual_suspend_ctrl.exit

lb_manual_suspend_ctrl.exit:                      ; preds = %error.i, %entry.lb_manual_suspend_ctrl.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lb_throttle() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @lb_mutex, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @lb_throttle.last_access, align 4
  %2 = load i32, ptr @lb_interval_jiffies, align 4
  %add = add i32 %2, %1
  %sub = sub i32 %0, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %__here, label %entry.if.end66_crit_edge

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

__here:                                           ; preds = %entry
  %sub1 = sub i32 %add, %0
  %3 = tail call i32 @llvm.read_register.i32(metadata !115) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@lb_throttle, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %8, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  %call62 = tail call i32 @schedule_timeout(i32 noundef %sub1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %__here.out_crit_edge, label %if.end65

__here.out_crit_edge:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end65:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %entry.if.end66_crit_edge
  %now.0 = phi i32 [ %10, %if.end65 ], [ %0, %entry.if.end66_crit_edge ]
  store i32 %now.0, ptr @lb_throttle.last_access, align 4
  br label %out

out:                                              ; preds = %if.end66, %__here.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end66 ], [ -4, %__here.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_msec_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lb_interval_jiffies, align 4
  %mul = mul i32 %0, 1000
  %div = udiv i32 %mul, 100
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %div) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_msec_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %msec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msec) #11
  %0 = ptrtoint ptr %msec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msec, align 4, !annotation !126
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %msec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %msec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msec, align 4
  %mul = mul i32 %2, 100
  %div = udiv i32 %mul, 1000
  store i32 %div, ptr @lb_interval_jiffies, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msec) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lb_throttle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 40
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add1.i.i, ptr %command.i.i, align 4
  %outsize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %insize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %insize.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %insize.i.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %data.i, align 4
  %7 = ptrtoint ptr %outsize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %outsize.i.i, align 8
  %result.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %result.i, align 8
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ec_dev.i, align 8
  %call1.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %10, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, -22
  %or.cond.i = or i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end4.i, label %if.end.i.get_lightbar_version.exit.thread14_crit_edge

if.end.i.get_lightbar_version.exit.thread14_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lightbar_version.exit.thread14

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %12, label %if.end4.i.get_lightbar_version.exit.thread14_crit_edge [
    i32 3, label %if.end4.i.if.end4_crit_edge
    i32 0, label %sw.bb12.i
  ]

if.end4.i.if.end4_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4.i.get_lightbar_version.exit.thread14_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lightbar_version.exit.thread14

sw.bb12.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.i, align 4
  %flags.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  br label %if.end4

get_lightbar_version.exit.thread14:               ; preds = %if.end4.i.get_lightbar_version.exit.thread14_crit_edge, %if.end.i.get_lightbar_version.exit.thread14_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end4:                                          ; preds = %sw.bb12.i, %if.end4.i.if.end4_crit_edge
  %version.0 = phi i32 [ %15, %sw.bb12.i ], [ 0, %if.end4.i.if.end4_crit_edge ]
  %.sink.i = phi i32 [ %17, %sw.bb12.i ], [ 0, %if.end4.i.if.end4_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %version.0, i32 noundef %.sink.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %get_lightbar_version.exit.thread14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %get_lightbar_version.exit.thread14 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brightness_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !126
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %call7.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %4 to i32
  %add1.i = add nuw nsw i32 %conv.i, 40
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add1.i, ptr %command.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 194, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %insize.i, align 4
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %data, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %11 = getelementptr inbounds %struct.ec_params_lightbar, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %11, align 1
  %call5 = call fastcc i32 @lb_throttle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.exit_crit_edge

if.end4.exit_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ec_dev, align 8
  %call9 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %14, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  %spec.select = select i1 %cmp, i32 %call9, i32 %count
  br label %exit

exit:                                             ; preds = %if.end8, %if.end4.exit_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.exit_crit_edge ], [ %spec.select, %if.end8 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_rgb_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val) #11
  %0 = getelementptr inbounds [4 x i32], ptr %val, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %val, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %val, i32 0, i32 3
  %3 = call ptr @memset(ptr %val, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %alloc_lightbar_cmd_msg.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

alloc_lightbar_cmd_msg.exit:                      ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %7 to i32
  %add1.i = add nuw nsw i32 %conv.i, 40
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add1.i, ptr %command.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 194, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %insize.i, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not93104 = icmp eq i8 %12, 0
  br i1 %tobool1.not93104, label %alloc_lightbar_cmd_msg.exit.exit_crit_edge, label %land.rhs.lr.ph.lr.ph

alloc_lightbar_cmd_msg.exit.exit_crit_edge:       ; preds = %alloc_lightbar_cmd_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

land.rhs.lr.ph.lr.ph:                             ; preds = %alloc_lightbar_cmd_msg.exit
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %13 = getelementptr inbounds %struct.ec_params_lightbar, ptr %data, i32 0, i32 1
  %red = getelementptr inbounds %struct.anon.72, ptr %13, i32 0, i32 1
  %green = getelementptr inbounds %struct.anon.72, ptr %13, i32 0, i32 2
  %blue = getelementptr inbounds %struct.anon.72, ptr %13, i32 0, i32 3
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  br label %land.rhs.lr.ph

do.body.loopexit:                                 ; preds = %land.rhs43
  %14 = ptrtoint ptr %buf.addr.299 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf.addr.299, align 1
  %tobool1.not93 = icmp eq i8 %15, 0
  br i1 %tobool1.not93, label %do.body.loopexit.exit_crit_edge, label %do.body.loopexit.land.rhs.lr.ph_crit_edge

do.body.loopexit.land.rhs.lr.ph_crit_edge:        ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.lr.ph

do.body.loopexit.exit_crit_edge:                  ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

land.rhs.lr.ph:                                   ; preds = %do.body.loopexit.land.rhs.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph
  %16 = phi i8 [ %12, %land.rhs.lr.ph.lr.ph ], [ %15, %do.body.loopexit.land.rhs.lr.ph_crit_edge ]
  %ok.0108 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %ok.1, %do.body.loopexit.land.rhs.lr.ph_crit_edge ]
  %j.0107 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %j.1, %do.body.loopexit.land.rhs.lr.ph_crit_edge ]
  %i.0106 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %i.1, %do.body.loopexit.land.rhs.lr.ph_crit_edge ]
  %buf.addr.0105 = phi ptr [ %buf, %land.rhs.lr.ph.lr.ph ], [ %buf.addr.299, %do.body.loopexit.land.rhs.lr.ph_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %17 = phi i8 [ %16, %land.rhs.lr.ph ], [ %22, %while.body.land.rhs_crit_edge ]
  %buf.addr.194 = phi ptr [ %buf.addr.0105, %land.rhs.lr.ph ], [ %incdec.ptr, %while.body.land.rhs_crit_edge ]
  %conv = zext i8 %17 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not = icmp eq i8 %20, 0
  br i1 %cmp.not, label %if.end7, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %buf.addr.194, i32 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr, align 1
  %tobool1.not = icmp eq i8 %22, 0
  br i1 %tobool1.not, label %while.body.exit_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end7:                                          ; preds = %land.rhs
  %inc = add i32 %i.0106, 1
  %arrayidx8 = getelementptr [4 x i32], ptr %val, i32 0, i32 %i.0106
  %call9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf.addr.194, ptr noundef nonnull @.str.16, ptr noundef %arrayidx8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.end7.exit_crit_edge, label %if.end13

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp14 = icmp eq i32 %inc, 4
  br i1 %cmp14, label %if.then16, label %if.end13.if.end39_crit_edge

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then16:                                        ; preds = %if.end13
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %data, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv18 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18, ptr %13, align 1
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %conv20 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %red to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv20, ptr %red, align 2
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %conv22 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %green to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv22, ptr %green, align 1
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %2, align 4
  %conv24 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %blue to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv24, ptr %blue, align 8
  %inc25 = add i32 %j.0107, 1
  %36 = and i32 %j.0107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp26 = icmp eq i32 %36, 0
  br i1 %cmp26, label %if.then28, label %if.then16.if.end33_crit_edge

if.then16.if.end33_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.then16
  %call29 = call fastcc i32 @lb_throttle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.exit_crit_edge

if.then28.exit_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.then16.if.end33_crit_edge
  %37 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ec_dev, align 8
  %call34 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %38, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.exit_crit_edge, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end33.exit_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end39:                                         ; preds = %if.end33.if.end39_crit_edge, %if.end13.if.end39_crit_edge
  %i.1 = phi i32 [ %inc, %if.end13.if.end39_crit_edge ], [ 0, %if.end33.if.end39_crit_edge ]
  %j.1 = phi i32 [ %j.0107, %if.end13.if.end39_crit_edge ], [ %inc25, %if.end33.if.end39_crit_edge ]
  %ok.1 = phi i32 [ %ok.0108, %if.end13.if.end39_crit_edge ], [ 1, %if.end33.if.end39_crit_edge ]
  %39 = ptrtoint ptr %buf.addr.194 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %buf.addr.194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool42.not98 = icmp eq i8 %40, 0
  br i1 %tobool42.not98, label %if.end39.exit_crit_edge, label %if.end39.land.rhs43_crit_edge

if.end39.land.rhs43_crit_edge:                    ; preds = %if.end39
  br label %land.rhs43

if.end39.exit_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

land.rhs43:                                       ; preds = %while.body51.land.rhs43_crit_edge, %if.end39.land.rhs43_crit_edge
  %41 = phi i8 [ %46, %while.body51.land.rhs43_crit_edge ], [ %40, %if.end39.land.rhs43_crit_edge ]
  %buf.addr.299 = phi ptr [ %incdec.ptr52, %while.body51.land.rhs43_crit_edge ], [ %buf.addr.194, %if.end39.land.rhs43_crit_edge ]
  %conv41 = zext i8 %41 to i32
  %arrayidx45 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv41
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx45, align 1
  %44 = and i8 %43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp48.not = icmp eq i8 %44, 0
  br i1 %cmp48.not, label %while.body51, label %do.body.loopexit

while.body51:                                     ; preds = %land.rhs43
  %incdec.ptr52 = getelementptr i8, ptr %buf.addr.299, i32 1
  %45 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr52, align 1
  %tobool42.not = icmp eq i8 %46, 0
  br i1 %tobool42.not, label %while.body51.exit_crit_edge, label %while.body51.land.rhs43_crit_edge

while.body51.land.rhs43_crit_edge:                ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs43

while.body51.exit_crit_edge:                      ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

exit:                                             ; preds = %while.body51.exit_crit_edge, %if.end39.exit_crit_edge, %if.end33.exit_crit_edge, %if.then28.exit_crit_edge, %if.end7.exit_crit_edge, %while.body.exit_crit_edge, %do.body.loopexit.exit_crit_edge, %alloc_lightbar_cmd_msg.exit.exit_crit_edge
  %i.2 = phi i32 [ 0, %alloc_lightbar_cmd_msg.exit.exit_crit_edge ], [ %i.1, %while.body51.exit_crit_edge ], [ %i.0106, %while.body.exit_crit_edge ], [ %i.1, %if.end39.exit_crit_edge ], [ %i.1, %do.body.loopexit.exit_crit_edge ], [ 4, %if.end33.exit_crit_edge ], [ 4, %if.then28.exit_crit_edge ], [ %inc, %if.end7.exit_crit_edge ]
  %ok.2 = phi i32 [ 0, %alloc_lightbar_cmd_msg.exit.exit_crit_edge ], [ %ok.1, %while.body51.exit_crit_edge ], [ %ok.0108, %while.body.exit_crit_edge ], [ %ok.1, %if.end39.exit_crit_edge ], [ %ok.1, %do.body.loopexit.exit_crit_edge ], [ %ok.0108, %if.end33.exit_crit_edge ], [ %ok.0108, %if.then28.exit_crit_edge ], [ %ok.0108, %if.end7.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok.2)
  %tobool55.not = icmp ne i32 %ok.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %cmp56 = icmp eq i32 %i.2, 0
  %or.cond = select i1 %tobool55.not, i1 %cmp56, i1 false
  %cond = select i1 %or.cond, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sequence_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %3 to i32
  %add1.i = add nuw nsw i32 %conv.i, 40
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add1.i, ptr %command.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 194, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %insize.i, align 4
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %data, align 4
  %call1 = tail call fastcc i32 @lb_throttle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end4:                                          ; preds = %if.end
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ec_dev, align 8
  %call5 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %9, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %result, align 8
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %call5, i32 noundef %11) #11
  br label %exit

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 4
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %13)
  %cmp11 = icmp ugt i8 %13, 12
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.19, i32 noundef %conv) #11
  br label %exit

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [13 x ptr], ptr @seqname, i32 0, i32 %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef %15) #11
  br label %exit

exit:                                             ; preds = %if.else, %if.then13, %if.then6, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.exit_crit_edge ], [ %call7, %if.then6 ], [ %call16, %if.then13 ], [ %call18, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sequence_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp59.not = icmp eq i32 %count, 0
  br i1 %cmp59.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %len.060 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %len.060
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3.not = icmp eq i8 %4, 0
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %len.060, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.060, %for.body.for.end_crit_edge ], [ %count, %for.inc.for.end_crit_edge ]
  %call = tail call i32 @strncasecmp(ptr noundef nonnull @.str.21, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.end.if.end22.loopexit_crit_edge, label %for.inc12

for.end.if.end22.loopexit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12:                                        ; preds = %for.end
  %call.1 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.22, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc12.if.end22.loopexit_crit_edge, label %for.inc12.1

for.inc12.if.end22.loopexit_crit_edge:            ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.1:                                      ; preds = %for.inc12
  %call.2 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.23, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc12.1.if.end22.loopexit_crit_edge, label %for.inc12.2

for.inc12.1.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.2:                                      ; preds = %for.inc12.1
  %call.3 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.24, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc12.2.if.end22.loopexit_crit_edge, label %for.inc12.3

for.inc12.2.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.3:                                      ; preds = %for.inc12.2
  %call.4 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.25, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc12.3.if.end22.loopexit_crit_edge, label %for.inc12.4

for.inc12.3.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.4:                                      ; preds = %for.inc12.3
  %call.5 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.26, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc12.4.if.end22.loopexit_crit_edge, label %for.inc12.5

for.inc12.4.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.5:                                      ; preds = %for.inc12.4
  %call.6 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.27, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc12.5.if.end22.loopexit_crit_edge, label %for.inc12.6

for.inc12.5.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.6:                                      ; preds = %for.inc12.5
  %call.7 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.28, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc12.6.if.end22.loopexit_crit_edge, label %for.inc12.7

for.inc12.6.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.7:                                      ; preds = %for.inc12.6
  %call.8 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.29, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.inc12.7.if.end22.loopexit_crit_edge, label %for.inc12.8

for.inc12.7.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.8:                                      ; preds = %for.inc12.7
  %call.9 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.30, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.inc12.8.if.end22.loopexit_crit_edge, label %for.inc12.9

for.inc12.8.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.9:                                      ; preds = %for.inc12.8
  %call.10 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.31, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.inc12.9.if.end22.loopexit_crit_edge, label %for.inc12.10

for.inc12.9.if.end22.loopexit_crit_edge:          ; preds = %for.inc12.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.10:                                     ; preds = %for.inc12.9
  %call.11 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.32, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %for.inc12.10.if.end22.loopexit_crit_edge, label %for.inc12.11

for.inc12.10.if.end22.loopexit_crit_edge:         ; preds = %for.inc12.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.11:                                     ; preds = %for.inc12.10
  %call.12 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.33, ptr noundef %buf, i32 noundef %len.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool.not.12, label %for.inc12.11.if.end22.loopexit_crit_edge, label %for.inc12.12

for.inc12.11.if.end22.loopexit_crit_edge:         ; preds = %for.inc12.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.loopexit

for.inc12.12:                                     ; preds = %for.inc12.11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %num, align 4
  %call18 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.inc12.12.if.end22_crit_edge, label %for.inc12.12.cleanup_crit_edge

for.inc12.12.cleanup_crit_edge:                   ; preds = %for.inc12.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc12.12.if.end22_crit_edge:                  ; preds = %for.inc12.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22.loopexit:                                ; preds = %for.inc12.11.if.end22.loopexit_crit_edge, %for.inc12.10.if.end22.loopexit_crit_edge, %for.inc12.9.if.end22.loopexit_crit_edge, %for.inc12.8.if.end22.loopexit_crit_edge, %for.inc12.7.if.end22.loopexit_crit_edge, %for.inc12.6.if.end22.loopexit_crit_edge, %for.inc12.5.if.end22.loopexit_crit_edge, %for.inc12.4.if.end22.loopexit_crit_edge, %for.inc12.3.if.end22.loopexit_crit_edge, %for.inc12.2.if.end22.loopexit_crit_edge, %for.inc12.1.if.end22.loopexit_crit_edge, %for.inc12.if.end22.loopexit_crit_edge, %for.end.if.end22.loopexit_crit_edge
  %storemerge63.lcssa = phi i32 [ 0, %for.end.if.end22.loopexit_crit_edge ], [ 1, %for.inc12.if.end22.loopexit_crit_edge ], [ 2, %for.inc12.1.if.end22.loopexit_crit_edge ], [ 3, %for.inc12.2.if.end22.loopexit_crit_edge ], [ 4, %for.inc12.3.if.end22.loopexit_crit_edge ], [ 5, %for.inc12.4.if.end22.loopexit_crit_edge ], [ 6, %for.inc12.5.if.end22.loopexit_crit_edge ], [ 7, %for.inc12.6.if.end22.loopexit_crit_edge ], [ 8, %for.inc12.7.if.end22.loopexit_crit_edge ], [ 9, %for.inc12.8.if.end22.loopexit_crit_edge ], [ 10, %for.inc12.9.if.end22.loopexit_crit_edge ], [ 11, %for.inc12.10.if.end22.loopexit_crit_edge ], [ 12, %for.inc12.11.if.end22.loopexit_crit_edge ]
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge63.lcssa, ptr %num, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.loopexit, %for.inc12.12.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %call7.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i, 40
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add1.i, ptr %command.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 194, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %insize.i, align 4
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %data, align 4
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  %conv27 = trunc i32 %16 to i8
  %17 = getelementptr inbounds %struct.ec_params_lightbar, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv27, ptr %17, align 1
  %call29 = call fastcc i32 @lb_throttle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.exit_crit_edge

if.end26.exit_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ec_dev, align 8
  %call33 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %20, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  %spec.select = select i1 %cmp34, i32 %call33, i32 %count
  br label %exit

exit:                                             ; preds = %if.end32, %if.end26.exit_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end26.exit_crit_edge ], [ %spec.select, %if.end32 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end22.cleanup_crit_edge, %for.inc12.12.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ %call18, %for.inc12.12.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @program_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec_dev, align 8
  %max_request = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_request to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_request, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 194, i16 %3)
  %cmp = icmp ugt i16 %3, 194
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -2
  %cond = select i1 %cmp, i32 192, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %count)
  %cmp3 = icmp ult i32 %cond, %count
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %count, i32 noundef %cond) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %7 to i32
  %add1.i = add nuw nsw i32 %conv.i, 40
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add1.i, ptr %command.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 194, ptr %outsize.i, align 8
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %insize.i, align 4
  %call7 = tail call fastcc i32 @lb_throttle()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end13, label %if.end6.exit_crit_edge

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %count) #16
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 18, ptr %data, align 4
  %conv14 = trunc i32 %count to i8
  %12 = getelementptr inbounds %struct.ec_params_lightbar, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14, ptr %12, align 1
  %data15 = getelementptr inbounds %struct.lightbar_program, ptr %12, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %data15, ptr %buf, i32 %count)
  %add = add i32 %count, 2
  %15 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %outsize.i, align 8
  %16 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ec_dev, align 8
  %call18 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %spec.select = select i1 %cmp19, i32 %call18, i32 %count
  br label %exit

exit:                                             ; preds = %do.end13, %if.end6.exit_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.exit_crit_edge ], [ %spec.select, %do.end13 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_control_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @userspace_control, align 1, !range !127
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.19, i32 noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_control_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #11
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %enable, align 1, !annotation !126
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %enable) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable, align 1, !range !127
  store i8 %2, ptr @userspace_control, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = load i8, ptr @userspace_control, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 40
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add1.i.i, ptr %command.i.i, align 4
  %outsize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %outsize.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 194, ptr %outsize.i.i, align 8
  %insize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %insize.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %insize.i.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %data.i, align 4
  %call2.i = tail call fastcc i32 @lb_throttle() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.error.i_crit_edge

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ec_dev.i, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %14, ptr noundef nonnull %call7.i.i.i) #11
  %15 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0) #11
  br label %error.i

error.i:                                          ; preds = %if.end5.i, %if.end.i.error.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.end.i.error.i_crit_edge ], [ %15, %if.end5.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0.i, %error.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = load i8, ptr @userspace_control, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 214) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 40
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add1.i.i, ptr %command.i.i, align 4
  %outsize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %outsize.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 194, ptr %outsize.i.i, align 8
  %insize.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %insize.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %insize.i.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 21, ptr %data.i, align 4
  %call2.i = tail call fastcc i32 @lb_throttle() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.error.i_crit_edge

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ec_dev.i, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %14, ptr noundef nonnull %call7.i.i.i) #11
  %15 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0) #11
  br label %error.i

error.i:                                          ; preds = %if.end5.i, %if.end.i.error.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.end.i.error.i_crit_edge ], [ %15, %if.end5.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0.i, %error.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !113}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_cros_ec_lightbar__228_609_cros_ec_lightbar_driver_init6, !1, !"__initcall__kmod_cros_ec_lightbar__228_609_cros_ec_lightbar_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 609, i32 1}
!2 = !{ptr @__exitcall_cros_ec_lightbar_driver_exit, !1, !"__exitcall_cros_ec_lightbar_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file229, !4, !"__UNIQUE_ID_file229", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 611, i32 1}
!5 = !{ptr @__UNIQUE_ID_license230, !4, !"__UNIQUE_ID_license230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description231, !7, !"__UNIQUE_ID_description231", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 612, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias232, !9, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 613, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 602, i32 11}
!12 = !{ptr @cros_ec_lightbar_driver, !13, !"cros_ec_lightbar_driver", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 600, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 542, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 558, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cros_ec_lightbar_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cros_ec_lightbar_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lb_throttle.last_access, !25, !"last_access", i1 false, i1 false}
!25 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 57, i32 23}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 69, i32 3}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 53, i32 8}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lb_mutex, !29, !"lb_mutex", i1 false, i1 false}
!32 = !{ptr @lb_interval_jiffies, !33, !"lb_interval_jiffies", i1 false, i1 false}
!33 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 23, i32 22}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 527, i32 10}
!36 = !{ptr @cros_ec_lightbar_attr_group, !37, !"cros_ec_lightbar_attr_group", i1 false, i1 false}
!37 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 526, i32 37}
!38 = !{ptr @__lb_cmds_attrs, !39, !"__lb_cmds_attrs", i1 false, i1 false}
!39 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 515, i32 26}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 507, i32 8}
!42 = !{ptr @dev_attr_interval_msec, !41, !"dev_attr_interval_msec", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 36, i32 35}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 508, i32 8}
!47 = !{ptr @dev_attr_version, !46, !"dev_attr_version", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 171, i32 35}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 509, i32 8}
!52 = !{ptr @dev_attr_brightness, !51, !"dev_attr_brightness", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 510, i32 8}
!55 = !{ptr @dev_attr_led_rgb, !54, !"dev_attr_led_rgb", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 237, i32 21}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 511, i32 8}
!60 = !{ptr @dev_attr_sequence, !59, !"dev_attr_sequence", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 304, i32 35}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 311, i32 35}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 313, i32 35}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 278, i32 2}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 278, i32 11}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 278, i32 17}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 278, i32 23}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 278, i32 29}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 278, i32 37}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 279, i32 2}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 279, i32 10}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 279, i32 18}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 279, i32 26}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 279, i32 33}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 280, i32 2}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 280, i32 9}
!93 = !{ptr @seqname, !94, !"seqname", i1 false, i1 false}
!94 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 277, i32 20}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 512, i32 8}
!97 = !{ptr @dev_attr_program, !96, !"dev_attr_program", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 441, i32 3}
!100 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @program_store._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @program_store._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 455, i32 2}
!105 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @program_store._entry.37, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @program_store._entry_ptr.40, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 513, i32 8}
!110 = !{ptr @dev_attr_userspace_control, !109, !"dev_attr_userspace_control", i1 false, i1 false}
!111 = !{ptr @userspace_control, !112, !"userspace_control", i1 false, i1 false}
!112 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 29, i32 13}
!113 = !{ptr @cros_ec_lightbar_pm_ops, !114, !"cros_ec_lightbar_pm_ops", i1 false, i1 false}
!114 = !{!"../drivers/platform/chrome/cros_ec_lightbar.c", i32 597, i32 8}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2153618222}
!126 = !{!"auto-init"}
!127 = !{i8 0, i8 2}
