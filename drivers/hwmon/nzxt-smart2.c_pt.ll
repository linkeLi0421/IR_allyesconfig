; ModuleID = '/llk/IR_all_yes/drivers/hwmon/nzxt-smart2.c_pt.bc'
source_filename = "../drivers/hwmon/nzxt-smart2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drvdata = type { ptr, ptr, [3 x i8], [3 x i16], i8, [3 x i16], [3 x i16], i8, [3 x i8], i8, %struct.wait_queue_head, %struct.mutex, i32, [64 x i8] }
%struct.fan_config_report = type { i8, i8, %struct.unknown_static_data, [8 x i8] }
%struct.unknown_static_data = type { [14 x i8] }
%struct.fan_status_report = type { i8, i8, %struct.unknown_static_data, [8 x i8], %union.anon.69 }
%union.anon.69 = type <{ %struct.anon.71, i8 }>
%struct.anon.71 = type { [8 x i16], [8 x i16] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.set_fan_speed_report = type { i8, i8, i8, [8 x i8] }

@nzxt_smart2_hid_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @nzxt_smart2_hid_id_table, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @nzxt_smart2_hid_probe, ptr @nzxt_smart2_hid_remove, ptr null, ptr @nzxt_smart2_hid_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nzxt_smart2_hid_reset_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author238 = internal constant [63 x i8] c"nzxt_smart2.author=Aleksandr Mezin <mezin.alexander@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [77 x i8] c"nzxt_smart2.description=Driver for NZXT RGB & Fan Controller/Smart Device V2\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [43 x i8] c"nzxt_smart2.file=drivers/hwmon/nzxt-smart2\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"nzxt_smart2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nzxt_smart2__242_828_nzxt_smart2_init7 = internal global ptr @nzxt_smart2_init, section ".initcall7.init", align 4
@__exitcall_nzxt_smart2_exit = internal global ptr @nzxt_smart2_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nzxt-smart2\00", [20 x i8] zeroinitializer }, align 32
@nzxt_smart2_hid_id_table = internal constant { [6 x %struct.hid_device_id], [32 x i8] } { [6 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 7793, i32 8198, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7793, i32 8205, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7793, i32 8201, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7793, i32 8206, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7793, i32 8208, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nzxt_smart2_hid_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&drvdata->wq\00", [19 x i8] zeroinitializer }, align 32
@nzxt_smart2_hid_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&drvdata->mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nzxtsmart2\00", [21 x i8] zeroinitializer }, align 32
@nzxt_smart2_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @nzxt_smart2_hwmon_ops, ptr @nzxt_smart2_channel_info }, [24 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 963, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@nzxt_smart2_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @nzxt_smart2_hwmon_is_visible, ptr @nzxt_smart2_hwmon_read, ptr @nzxt_smart2_hwmon_read_string, ptr @nzxt_smart2_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@nzxt_smart2_channel_info = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.25, ptr @.compoundliteral.27, ptr @.compoundliteral.29, ptr @.compoundliteral.31, ptr @.compoundliteral.33, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hwmon/nzxt-smart2.c\00", [36 x i8] zeroinitializer }, align 32
@fan_label = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18], [20 x i8] zeroinitializer }, align 32
@curr_label = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@in_label = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAN 1\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAN 2\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAN 3\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FAN 1 Current\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FAN 2 Current\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FAN 3 Current\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FAN 1 Voltage\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FAN 2 Voltage\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FAN 3 Voltage\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 6, i32 6, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 7, i32 7, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.26 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1026, i32 1026, i32 1026, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.28 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1026, i32 1026, i32 1026, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.30 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral.32 }, [24 x i8] zeroinitializer }, align 32
@handle_fan_status_report.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@handle_fan_status_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.10, i32 276, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Fan %d type changed unexpectedly from %d to %d\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"handle_fan_status_report\00", [39 x i8] zeroinitializer }, align 32
@handle_fan_status_report._entry_ptr = internal global ptr @handle_fan_status_report._entry, section ".printk_index", align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nzxt_smart2\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 97, i64 103]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 7, i64 8]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"nzxt_smart2_hid_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 796, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 797, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"nzxt_smart2_hid_id_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 787, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 737, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 739, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 760, i32 47 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"nzxt_smart2_chip_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 683, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 963, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"nzxt_smart2_hwmon_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 659, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"nzxt_smart2_channel_info\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 666, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 369, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"fan_label\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 29, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"curr_label\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 35, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"in_label\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 41, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 30, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 31, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 32, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 36, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 37, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 38, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 42, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 43, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 44, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 274, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [31 x i8] c"../drivers/hwmon/nzxt-smart2.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 809, i32 9 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_nzxt_smart2_exit, ptr @__initcall__kmod_nzxt_smart2__242_828_nzxt_smart2_init7, ptr @handle_fan_status_report._entry, ptr @handle_fan_status_report._entry_ptr, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @nzxt_smart2_exit, ptr @nzxt_smart2_hid_driver, ptr @.str, ptr @nzxt_smart2_hid_id_table, ptr @nzxt_smart2_hid_probe.__key, ptr @.str.1, ptr @nzxt_smart2_hid_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @nzxt_smart2_chip_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nzxt_smart2_hwmon_ops, ptr @nzxt_smart2_channel_info, ptr @.str.10, ptr @fan_label, ptr @curr_label, ptr @in_label, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_hid_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_hid_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_hid_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_hid_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nzxt_smart2_channel_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_label to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curr_label to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_label to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_fan_status_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nzxt_smart2_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hid_unregister_driver(ptr noundef nonnull @nzxt_smart2_hid_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nzxt_smart2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @nzxt_smart2_hid_driver, ptr noundef null, ptr noundef nonnull @.str.36) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nzxt_smart2_hid_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 252, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %wq = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.1, ptr noundef nonnull @nzxt_smart2_hid_probe.__key) #9
  %mutex = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @nzxt_smart2_hid_probe.__key.2) #9
  %call6 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @mutex_destroy, ptr noundef %mutex) #9
  %call.i54 = tail call i32 @hid_open_report(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool8.not = icmp eq i32 %call.i54, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @hid_hw_open(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_hw_stop_crit_edge

if.end14.out_hw_stop_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_hw_stop

if.end18:                                         ; preds = %if.end14
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %2 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %io_started.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #9
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  %output_buffer.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %output_buffer.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 24579, ptr %output_buffer.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 2
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 62)
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %8, ptr noundef %output_buffer.i.i, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i55 = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i55, label %if.end.i56, label %hid_device_io_start.exit.init_device.exit_crit_edge

hid_device_io_start.exit.init_device.exit_crit_edge: ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_device.exit

if.end.i56:                                       ; preds = %hid_device_io_start.exit
  %9 = ptrtoint ptr %output_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 96, ptr %output_buffer.i.i, align 4
  %report.sroa.5.0.output_buffer.i.sroa_idx.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %report.sroa.5.0.output_buffer.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %report.sroa.5.0.output_buffer.i.sroa_idx.i.i, align 1
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %add.ptr.i.i, align 2
  %report.sroa.9.0.output_buffer.i.sroa_idx.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 3
  %12 = ptrtoint ptr %report.sroa.9.0.output_buffer.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -24, ptr %report.sroa.9.0.output_buffer.i.sroa_idx.i.i, align 1
  %report.sroa.11.0.output_buffer.i.sroa_idx.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 4
  %13 = ptrtoint ptr %report.sroa.11.0.output_buffer.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %report.sroa.11.0.output_buffer.i.sroa_idx.i.i, align 4
  %report.sroa.13.0.output_buffer.i.sroa_idx.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %report.sroa.13.0.output_buffer.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %report.sroa.13.0.output_buffer.i.sroa_idx.i.i, align 1
  %report.sroa.15.0.output_buffer.i.sroa_idx.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 6
  %15 = ptrtoint ptr %report.sroa.15.0.output_buffer.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -24, ptr %report.sroa.15.0.output_buffer.i.sroa_idx.i.i, align 2
  %report.sroa.17.0.output_buffer.i.sroa_idx.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 7
  %16 = ptrtoint ptr %report.sroa.17.0.output_buffer.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %report.sroa.17.0.output_buffer.i.sroa_idx.i.i, align 1
  %add.ptr.i.i.i = getelementptr %struct.drvdata, ptr %call.i, i32 0, i32 13, i32 8
  %17 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 56)
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call i32 @hid_hw_output_report(ptr noundef %19, ptr noundef %output_buffer.i.i, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i56.init_device.exit_crit_edge

if.end.i56.init_device.exit_crit_edge:            ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_device.exit

if.end.i.i:                                       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  %update_interval.i.i = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 12
  %20 = ptrtoint ptr %update_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1000, ptr %update_interval.i.i, align 4
  br label %init_device.exit

init_device.exit:                                 ; preds = %if.end.i.i, %if.end.i56.init_device.exit_crit_edge, %hid_device_io_start.exit.init_device.exit_crit_edge
  %call21 = tail call ptr @hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i, ptr noundef nonnull @nzxt_smart2_chip_info, ptr noundef null) #9
  %hwmon = getelementptr inbounds %struct.drvdata, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %hwmon to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call21, ptr %hwmon, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %init_device.exit.cleanup_crit_edge

init_device.exit.cleanup_crit_edge:               ; preds = %init_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %init_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call21 to i32
  tail call void @hid_hw_close(ptr noundef %hdev) #9
  br label %out_hw_stop

out_hw_stop:                                      ; preds = %if.then24, %if.end14.out_hw_stop_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.out_hw_stop_crit_edge ], [ %22, %if.then24 ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  br label %cleanup

cleanup:                                          ; preds = %out_hw_stop, %init_device.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_hw_stop ], [ -12, %entry.cleanup_crit_edge ], [ %call.i54, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %init_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nzxt_smart2_hid_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  tail call void @hid_hw_close(ptr noundef %hdev) #9
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nzxt_smart2_hid_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 97, label %sw.bb
    i8 103, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %size)
  %cmp.i = icmp ult i32 %size, 24
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %magic.i = getelementptr inbounds %struct.fan_config_report, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %magic.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %magic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp1.not.i = icmp eq i8 %6, 3
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wq.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %wq.i) #9
  %arrayidx.i = getelementptr %struct.fan_config_report, ptr %data, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %arrayidx8.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 0
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx8.i, align 1
  %arrayidx.1.i = getelementptr %struct.fan_config_report, ptr %data, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx8.1.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx8.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.fan_config_report, ptr %data, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx8.2.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx8.2.i, align 1
  %fan_config_received.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %fan_config_received.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %fan_config_received.i, align 4
  br label %sw.epilog.sink.split.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %size)
  %cmp.i6 = icmp ult i32 %size, 57
  br i1 %cmp.i6, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i9

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i9:                                        ; preds = %sw.bb1
  %wq.i7 = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %wq.i7) #9
  %fan_config_received.i8 = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %fan_config_received.i8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fan_config_received.i8, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i9.sw.epilog.sink.split_crit_edge, label %for.body.preheader.i

if.end.i9.sw.epilog.sink.split_crit_edge:         ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.body.preheader.i:                             ; preds = %if.end.i9
  %arrayidx.i10 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 0
  %19 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i10, align 1
  %arrayidx7.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 3, i32 0
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp9.i = icmp eq i8 %20, %22
  br i1 %cmp9.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %do.body.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.preheader.i
  %.b104.i = load i1, ptr @handle_fan_status_report.__print_once, align 1
  br i1 %.b104.i, label %do.body.i.do.end24.i_crit_edge, label %if.then14.i

do.body.i.do.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @handle_fan_status_report.__print_once, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %24, i32 0, i32 18
  %conv18.i = zext i8 %20 to i32
  %conv21.i = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %conv18.i, i32 noundef %conv21.i) #12
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then14.i, %do.body.i.do.end24.i_crit_edge
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx7.i, align 1
  %27 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx.i10, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end24.i, %for.body.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i11 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i11 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1.i11, align 1
  %arrayidx7.1.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp9.1.i = icmp eq i8 %29, %31
  br i1 %cmp9.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %do.body.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

do.body.1.i:                                      ; preds = %for.inc.i
  %.b104.1.i = load i1, ptr @handle_fan_status_report.__print_once, align 1
  br i1 %.b104.1.i, label %do.body.1.i.do.end24.1.i_crit_edge, label %if.then14.1.i

do.body.1.i.do.end24.1.i_crit_edge:               ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24.1.i

if.then14.1.i:                                    ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @handle_fan_status_report.__print_once, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %dev.1.i = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 18
  %conv18.1.i = zext i8 %29 to i32
  %conv21.1.i = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.1.i, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %conv18.1.i, i32 noundef %conv21.1.i) #12
  br label %do.end24.1.i

do.end24.1.i:                                     ; preds = %if.then14.1.i, %do.body.1.i.do.end24.1.i_crit_edge
  %34 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx7.1.i, align 1
  %36 = ptrtoint ptr %arrayidx.1.i11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx.1.i11, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end24.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i12 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i12 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.2.i12, align 1
  %arrayidx7.2.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx7.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp9.2.i = icmp eq i8 %38, %40
  br i1 %cmp9.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %do.body.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

do.body.2.i:                                      ; preds = %for.inc.1.i
  %.b104.2.i = load i1, ptr @handle_fan_status_report.__print_once, align 1
  br i1 %.b104.2.i, label %do.body.2.i.do.end24.2.i_crit_edge, label %if.then14.2.i

do.body.2.i.do.end24.2.i_crit_edge:               ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24.2.i

if.then14.2.i:                                    ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @handle_fan_status_report.__print_once, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dev.2.i = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  %conv18.2.i = zext i8 %38 to i32
  %conv21.2.i = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.2.i, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef %conv18.2.i, i32 noundef %conv21.2.i) #12
  br label %do.end24.2.i

do.end24.2.i:                                     ; preds = %if.then14.2.i, %do.body.2.i.do.end24.2.i_crit_edge
  %43 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx7.2.i, align 1
  %45 = ptrtoint ptr %arrayidx.2.i12 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx.2.i12, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end24.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %type.i = getelementptr inbounds %struct.fan_status_report, ptr %data, i32 0, i32 1
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %type.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %47, label %for.inc.2.i.sw.epilog.sink.split_crit_edge [
    i8 2, label %for.cond30.preheader.i
    i8 4, label %for.cond44.preheader.i
  ]

for.inc.2.i.sw.epilog.sink.split_crit_edge:       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.cond44.preheader.i:                           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = getelementptr inbounds %struct.fan_status_report, ptr %data, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %49, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #9
  %arrayidx51.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 5, i32 0
  %53 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx51.i, align 2
  %arrayidx52.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 1, i32 0
  %54 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %arrayidx52.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #9
  %arrayidx54.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 6, i32 0
  %57 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx54.i, align 2
  %arrayidx48.1.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx48.1.i, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #9
  %arrayidx51.1.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx51.1.i, align 2
  %arrayidx52.1.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %arrayidx52.1.i, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #9
  %arrayidx54.1.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %arrayidx54.1.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx54.1.i, align 2
  %arrayidx48.2.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %arrayidx48.2.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #9
  %arrayidx51.2.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 5, i32 2
  %69 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx51.2.i, align 2
  %arrayidx52.2.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %arrayidx52.2.i, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #9
  %arrayidx54.2.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 6, i32 2
  %73 = ptrtoint ptr %arrayidx54.2.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx54.2.i, align 2
  %voltage_status_received.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %voltage_status_received.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %voltage_status_received.i, align 4
  br label %sw.epilog.sink.split.sink.split

for.cond30.preheader.i:                           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = getelementptr inbounds %struct.fan_status_report, ptr %data, i32 0, i32 4
  %duty_percent.i = getelementptr inbounds %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %75, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #9
  %arrayidx36.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 3, i32 0
  %79 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx36.i, align 2
  %80 = ptrtoint ptr %duty_percent.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %duty_percent.i, align 1
  %arrayidx38.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 2, i32 0
  %82 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx38.i, align 1
  %arrayidx34.1.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %arrayidx34.1.i, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #9
  %arrayidx36.1.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx36.1.i, align 2
  %arrayidx37.1.i = getelementptr [8 x i8], ptr %duty_percent.i, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx37.1.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx37.1.i, align 1
  %arrayidx38.1.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx38.1.i, align 1
  %arrayidx34.2.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 0, i32 2
  %90 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %arrayidx34.2.i, align 1
  %92 = tail call i16 @llvm.bswap.i16(i16 %91) #9
  %arrayidx36.2.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 3, i32 2
  %93 = ptrtoint ptr %arrayidx36.2.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %arrayidx36.2.i, align 2
  %arrayidx37.2.i = getelementptr %struct.fan_status_report, ptr %data, i32 0, i32 4, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %arrayidx37.2.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx37.2.i, align 1
  %arrayidx38.2.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 2, i32 2
  %96 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx38.2.i, align 1
  %pwm_status_received.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 4
  %97 = ptrtoint ptr %pwm_status_received.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %pwm_status_received.i, align 2
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %for.cond30.preheader.i, %for.cond44.preheader.i, %if.end4.i
  %wq.i7.sink13 = phi ptr [ %wq.i, %if.end4.i ], [ %wq.i7, %for.cond30.preheader.i ], [ %wq.i7, %for.cond44.preheader.i ]
  tail call void @__wake_up_locked(ptr noundef %wq.i7.sink13, i32 noundef 3, i32 noundef 0) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %for.inc.2.i.sw.epilog.sink.split_crit_edge, %if.end.i9.sw.epilog.sink.split_crit_edge
  %wq.i7.sink = phi ptr [ %wq.i7, %for.inc.2.i.sw.epilog.sink.split_crit_edge ], [ %wq.i7, %if.end.i9.sw.epilog.sink.split_crit_edge ], [ %wq.i7.sink13, %sw.epilog.sink.split.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %wq.i7.sink) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nzxt_smart2_hid_reset_resume(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wq = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %wq) #9
  %fan_config_received = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fan_config_received to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fan_config_received, align 4
  %pwm_status_received = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %pwm_status_received to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pwm_status_received, align 2
  %voltage_status_received = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %voltage_status_received to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %voltage_status_received, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wq) #9
  %update_interval = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %update_interval, align 4
  %call3 = tail call fastcc i32 @init_device(ptr noundef %1, i32 noundef %6)
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_device(ptr noundef %drvdata, i32 noundef %update_interval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %output_buffer.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13
  %0 = ptrtoint ptr %output_buffer.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 24579, ptr %output_buffer.i, align 4
  %add.ptr.i = getelementptr %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 2
  %1 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 62)
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %call.i = tail call i32 @hid_hw_output_report(ptr noundef %3, ptr noundef %output_buffer.i, i32 noundef 64) #9
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %update_interval)
  %cmp.i.i = icmp slt i32 %update_interval, 251
  br i1 %cmp.i.i, label %if.end.update_interval_to_control_byte.exit.i_crit_edge, label %if.end.i.i

if.end.update_interval_to_control_byte.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_interval_to_control_byte.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 488, i32 %update_interval)
  %cmp1.i.i = icmp ugt i32 %update_interval, 488
  %cond.in.v.i.i = select i1 %cmp1.i.i, i32 -360, i32 -616
  %cond.in.i.i = add nsw i32 %cond.in.v.i.i, %update_interval
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %cond.in.i.i)
  %cmp12.i.i = icmp sgt i32 %cond.in.i.i, -256
  %cond.i.i = sdiv i32 %cond.in.i.i, 256
  %add10.i.i = add nsw i32 %cond.i.i, 1
  %5 = tail call i32 @llvm.umin.i32(i32 %add10.i.i, i32 255) #9
  %6 = trunc i32 %5 to i8
  %conv25.i.i = select i1 %cmp12.i.i, i8 %6, i8 0
  br label %update_interval_to_control_byte.exit.i

update_interval_to_control_byte.exit.i:           ; preds = %if.end.i.i, %if.end.update_interval_to_control_byte.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv25.i.i, %if.end.i.i ], [ 0, %if.end.update_interval_to_control_byte.exit.i_crit_edge ]
  %7 = ptrtoint ptr %output_buffer.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 96, ptr %output_buffer.i, align 4
  %report.sroa.5.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %report.sroa.5.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %report.sroa.5.0.output_buffer.i.sroa_idx.i, align 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %add.ptr.i, align 2
  %report.sroa.9.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %report.sroa.9.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -24, ptr %report.sroa.9.0.output_buffer.i.sroa_idx.i, align 1
  %report.sroa.11.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 4
  %11 = ptrtoint ptr %report.sroa.11.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i.i, ptr %report.sroa.11.0.output_buffer.i.sroa_idx.i, align 4
  %report.sroa.13.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %report.sroa.13.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %report.sroa.13.0.output_buffer.i.sroa_idx.i, align 1
  %report.sroa.15.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 6
  %13 = ptrtoint ptr %report.sroa.15.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -24, ptr %report.sroa.15.0.output_buffer.i.sroa_idx.i, align 2
  %report.sroa.17.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 7
  %14 = ptrtoint ptr %report.sroa.17.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %retval.0.i.i, ptr %report.sroa.17.0.output_buffer.i.sroa_idx.i, align 1
  %add.ptr.i.i = getelementptr %struct.drvdata, ptr %drvdata, i32 0, i32 13, i32 8
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 56)
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drvdata, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %17, ptr noundef %output_buffer.i, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %update_interval_to_control_byte.exit.i.set_update_interval.exit_crit_edge

update_interval_to_control_byte.exit.i.set_update_interval.exit_crit_edge: ; preds = %update_interval_to_control_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_update_interval.exit

if.end.i:                                         ; preds = %update_interval_to_control_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i)
  %cmp.i15.i = icmp eq i8 %retval.0.i.i, 0
  %conv.i.i = zext i8 %retval.0.i.i to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %sub.i.i, 232
  %retval.0.i16.i = select i1 %cmp.i15.i, i32 250, i32 %add.i.i
  %update_interval.i = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 12
  %18 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i16.i, ptr %update_interval.i, align 4
  br label %set_update_interval.exit

set_update_interval.exit:                         ; preds = %if.end.i, %update_interval_to_control_byte.exit.i.set_update_interval.exit_crit_edge
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  br label %cleanup

cleanup:                                          ; preds = %set_update_interval.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %set_update_interval.exit ], [ %4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nzxt_smart2_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %type, label %entry.return_crit_edge [
    i32 8, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch = icmp ult i32 %attr, 2
  %. = select i1 %switch, i16 420, i16 292
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  %.7 = select i1 %cond, i16 420, i16 292
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %., %sw.bb ], [ %.7, %sw.bb2 ], [ 292, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nzxt_smart2_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  %__wait87 = alloca %struct.wait_queue_entry, align 4
  %__wait200 = alloca %struct.wait_queue_entry, align 4
  %__wait315 = alloca %struct.wait_queue_entry, align 4
  %__wait429 = alloca %struct.wait_queue_entry, align 4
  %__wait544 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond654 = icmp eq i32 %attr, 5
  br i1 %cond654, label %sw.bb, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %update_interval = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %update_interval, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %wq = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %wq) #9
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %type, label %if.end.unlock_crit_edge [
    i32 8, label %sw.bb1
    i32 7, label %sw.bb305
    i32 2, label %sw.bb420
    i32 3, label %sw.bb534
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb1:                                           ; preds = %if.end
  %6 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %attr, label %sw.bb1.unlock_crit_edge [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb80
    i32 0, label %sw.bb194
  ]

sw.bb1.unlock_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb2:                                           ; preds = %sw.bb1
  %fan_config_received = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %fan_config_received to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fan_config_received, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %cond.false, label %sw.bb2.if.end77_crit_edge

sw.bb2.if.end77_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

cond.false:                                       ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #9
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %__wait, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @autoremove_wake_function, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %11, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %12, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %cond.false
  %call8 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond:                                          ; preds = %do.body
  %22 = ptrtoint ptr %fan_config_received to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fan_config_received, align 4, !range !98
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %12, align 4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i.i, %do.end.cond.end_crit_edge
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@nzxt_smart2_hwmon_read, %cond.end) to i32), ptr %task_state_change, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %33, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool75.not = icmp eq i32 %call8, 0
  br i1 %tobool75.not, label %cond.end.if.end77_crit_edge, label %cond.end.unlock_crit_edge

cond.end.unlock_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.end.if.end77_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end77:                                         ; preds = %cond.end.if.end77_crit_edge, %sw.bb2.if.end77_crit_edge
  %arrayidx = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 %channel
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp78 = icmp ne i8 %36, 0
  %conv79 = zext i1 %cmp78 to i32
  br label %unlock.sink.split

sw.bb80:                                          ; preds = %sw.bb1
  %fan_config_received81 = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %fan_config_received81 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fan_config_received81, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool82.not = icmp eq i8 %38, 0
  br i1 %tobool82.not, label %cond.false85, label %sw.bb80.if.end188_crit_edge

sw.bb80.if.end188_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

cond.false85:                                     ; preds = %sw.bb80
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait87) #9
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait87, i32 0, i32 1
  %40 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait87, i32 0, i32 2
  %41 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait87, i32 0, i32 3
  %42 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait87, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %__wait87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %__wait87, align 4
  %44 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i727 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i727 to ptr
  %task91 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task91, align 8
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %39, align 4
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @autoremove_wake_function, ptr %40, align 4
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %41, ptr %41, align 4
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %41, ptr %42, align 4
  br label %do.body98

do.body98:                                        ; preds = %do.cond104.do.body98_crit_edge, %cond.false85
  %call100 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.cond104, label %do.body98.do.end109_crit_edge

do.body98.do.end109_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end109

do.cond104:                                       ; preds = %do.body98
  %52 = ptrtoint ptr %fan_config_received81 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fan_config_received81, align 4, !range !98
  %tobool106.not = icmp eq i8 %53, 0
  br i1 %tobool106.not, label %do.cond104.do.body98_crit_edge, label %do.cond104.do.end109_crit_edge

do.cond104.do.end109_crit_edge:                   ; preds = %do.cond104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end109

do.cond104.do.body98_crit_edge:                   ; preds = %do.cond104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

do.end109:                                        ; preds = %do.cond104.do.end109_crit_edge, %do.body98.do.end109_crit_edge
  %call.i.i.i729 = call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #9
  br i1 %call.i.i.i729, label %if.end.i.i.i732, label %do.end109.cond.end184_crit_edge

do.end109.cond.end184_crit_edge:                  ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end184

if.end.i.i.i732:                                  ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %42, align 4
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %41, align 4
  %prev1.i.i.i.i731 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i731 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i731, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %cond.end184

cond.end184:                                      ; preds = %if.end.i.i.i732, %do.end109.cond.end184_crit_edge
  %60 = ptrtoint ptr %task91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task91, align 8
  %task_state_change166 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 212
  %62 = ptrtoint ptr %task_state_change166 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 ptrtoint (ptr blockaddress(@nzxt_smart2_hwmon_read, %cond.end184) to i32), ptr %task_state_change166, align 4
  %63 = load ptr, ptr %task91, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %63, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool186.not = icmp eq i32 %call100, 0
  br i1 %tobool186.not, label %cond.end184.if.end188_crit_edge, label %cond.end184.unlock_crit_edge

cond.end184.unlock_crit_edge:                     ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.end184.if.end188_crit_edge:                  ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.end188:                                        ; preds = %cond.end184.if.end188_crit_edge, %sw.bb80.if.end188_crit_edge
  %arrayidx190 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 8, i32 %channel
  %65 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx190, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp192 = icmp eq i8 %66, 2
  %conv193 = zext i1 %cmp192 to i32
  br label %unlock.sink.split

sw.bb194:                                         ; preds = %sw.bb1
  %pwm_status_received = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %pwm_status_received to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pwm_status_received, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool195.not = icmp eq i8 %68, 0
  br i1 %tobool195.not, label %cond.false198, label %sw.bb194.if.end301_crit_edge

sw.bb194.if.end301_crit_edge:                     ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

cond.false198:                                    ; preds = %sw.bb194
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait200) #9
  %69 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait200, i32 0, i32 1
  %70 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait200, i32 0, i32 2
  %71 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait200, i32 0, i32 3
  %72 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait200, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %__wait200 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %__wait200, align 4
  %74 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i735 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i735 to ptr
  %task204 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task204 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task204, align 8
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %69, align 4
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @autoremove_wake_function, ptr %70, align 4
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %71, ptr %71, align 4
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %71, ptr %72, align 4
  br label %do.body211

do.body211:                                       ; preds = %do.cond217.do.body211_crit_edge, %cond.false198
  %call213 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %do.cond217, label %do.body211.do.end222_crit_edge

do.body211.do.end222_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end222

do.cond217:                                       ; preds = %do.body211
  %82 = ptrtoint ptr %pwm_status_received to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pwm_status_received, align 2, !range !98
  %tobool219.not = icmp eq i8 %83, 0
  br i1 %tobool219.not, label %do.cond217.do.body211_crit_edge, label %do.cond217.do.end222_crit_edge

do.cond217.do.end222_crit_edge:                   ; preds = %do.cond217
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end222

do.cond217.do.body211_crit_edge:                  ; preds = %do.cond217
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body211

do.end222:                                        ; preds = %do.cond217.do.end222_crit_edge, %do.body211.do.end222_crit_edge
  %call.i.i.i737 = call zeroext i1 @__list_del_entry_valid(ptr noundef %71) #9
  br i1 %call.i.i.i737, label %if.end.i.i.i740, label %do.end222.cond.end297_crit_edge

do.end222.cond.end297_crit_edge:                  ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end297

if.end.i.i.i740:                                  ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %72, align 4
  %86 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %71, align 4
  %prev1.i.i.i.i739 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i739 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i739, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %cond.end297

cond.end297:                                      ; preds = %if.end.i.i.i740, %do.end222.cond.end297_crit_edge
  %90 = ptrtoint ptr %task204 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task204, align 8
  %task_state_change279 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 212
  %92 = ptrtoint ptr %task_state_change279 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 ptrtoint (ptr blockaddress(@nzxt_smart2_hwmon_read, %cond.end297) to i32), ptr %task_state_change279, align 4
  %93 = load ptr, ptr %task204, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %93, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool299.not = icmp eq i32 %call213, 0
  br i1 %tobool299.not, label %cond.end297.if.end301_crit_edge, label %cond.end297.unlock_crit_edge

cond.end297.unlock_crit_edge:                     ; preds = %cond.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.end297.if.end301_crit_edge:                  ; preds = %cond.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

if.end301:                                        ; preds = %cond.end297.if.end301_crit_edge, %sw.bb194.if.end301_crit_edge
  %arrayidx302 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 2, i32 %channel
  %95 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx302, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp.i = icmp eq i8 %96, 0
  br i1 %cmp.i, label %if.end301.unlock.sink.split_crit_edge, label %if.end.i

if.end301.unlock.sink.split_crit_edge:            ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.sink.split

if.end.i:                                         ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  %conv303 = zext i8 %96 to i32
  %97 = call i32 @llvm.smin.i32(i32 %conv303, i32 100) #9
  %98 = trunc i32 %97 to i16
  %99 = mul nuw nsw i16 %98, 255
  %div9.i779.lhs.trunc = add nuw nsw i16 %99, 50
  %div9.i779780 = udiv i16 %div9.i779.lhs.trunc, 100
  %div9.i779.zext = zext i16 %div9.i779780 to i32
  br label %unlock.sink.split

sw.bb305:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp306 = icmp eq i32 %attr, 1
  br i1 %cmp306, label %if.then308, label %sw.bb305.unlock_crit_edge

sw.bb305.unlock_crit_edge:                        ; preds = %sw.bb305
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then308:                                       ; preds = %sw.bb305
  %pwm_status_received309 = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %pwm_status_received309 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pwm_status_received309, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool310.not = icmp eq i8 %101, 0
  br i1 %tobool310.not, label %cond.false313, label %if.then308.if.end416_crit_edge

if.then308.if.end416_crit_edge:                   ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

cond.false313:                                    ; preds = %if.then308
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait315) #9
  %102 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait315, i32 0, i32 1
  %103 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait315, i32 0, i32 2
  %104 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait315, i32 0, i32 3
  %105 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait315, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %__wait315 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %__wait315, align 4
  %107 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i743 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i743 to ptr
  %task319 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task319 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task319, align 8
  %111 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %102, align 4
  %112 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @autoremove_wake_function, ptr %103, align 4
  %113 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %104, ptr %104, align 4
  %114 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %104, ptr %105, align 4
  br label %do.body326

do.body326:                                       ; preds = %do.cond332.do.body326_crit_edge, %cond.false313
  %call328 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait315) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %do.cond332, label %do.body326.do.end337_crit_edge

do.body326.do.end337_crit_edge:                   ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end337

do.cond332:                                       ; preds = %do.body326
  %115 = ptrtoint ptr %pwm_status_received309 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %pwm_status_received309, align 2, !range !98
  %tobool334.not = icmp eq i8 %116, 0
  br i1 %tobool334.not, label %do.cond332.do.body326_crit_edge, label %do.cond332.do.end337_crit_edge

do.cond332.do.end337_crit_edge:                   ; preds = %do.cond332
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end337

do.cond332.do.body326_crit_edge:                  ; preds = %do.cond332
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body326

do.end337:                                        ; preds = %do.cond332.do.end337_crit_edge, %do.body326.do.end337_crit_edge
  %call.i.i.i745 = call zeroext i1 @__list_del_entry_valid(ptr noundef %104) #9
  br i1 %call.i.i.i745, label %if.end.i.i.i748, label %do.end337.cond.end412_crit_edge

do.end337.cond.end412_crit_edge:                  ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end412

if.end.i.i.i748:                                  ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %105, align 4
  %119 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %104, align 4
  %prev1.i.i.i.i747 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i.i747 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i.i747, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %cond.end412

cond.end412:                                      ; preds = %if.end.i.i.i748, %do.end337.cond.end412_crit_edge
  %123 = ptrtoint ptr %task319 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task319, align 8
  %task_state_change394 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 212
  %125 = ptrtoint ptr %task_state_change394 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 ptrtoint (ptr blockaddress(@nzxt_smart2_hwmon_read, %cond.end412) to i32), ptr %task_state_change394, align 4
  %126 = load ptr, ptr %task319, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 0, ptr %126, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait315) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool414.not = icmp eq i32 %call328, 0
  br i1 %tobool414.not, label %cond.end412.if.end416_crit_edge, label %cond.end412.unlock_crit_edge

cond.end412.unlock_crit_edge:                     ; preds = %cond.end412
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.end412.if.end416_crit_edge:                  ; preds = %cond.end412
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

if.end416:                                        ; preds = %cond.end412.if.end416_crit_edge, %if.then308.if.end416_crit_edge
  %arrayidx417 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 3, i32 %channel
  %128 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx417, align 2
  %conv418 = zext i16 %129 to i32
  br label %unlock.sink.split

sw.bb420:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp421 = icmp eq i32 %attr, 1
  br i1 %cmp421, label %if.then423, label %sw.bb420.unlock_crit_edge

sw.bb420.unlock_crit_edge:                        ; preds = %sw.bb420
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then423:                                       ; preds = %sw.bb420
  %voltage_status_received = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 7
  %130 = ptrtoint ptr %voltage_status_received to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %voltage_status_received, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool424.not = icmp eq i8 %131, 0
  br i1 %tobool424.not, label %cond.false427, label %if.then423.if.end530_crit_edge

if.then423.if.end530_crit_edge:                   ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end530

cond.false427:                                    ; preds = %if.then423
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait429) #9
  %132 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait429, i32 0, i32 1
  %133 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait429, i32 0, i32 2
  %134 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait429, i32 0, i32 3
  %135 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait429, i32 0, i32 3, i32 1
  %136 = ptrtoint ptr %__wait429 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %__wait429, align 4
  %137 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i751 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i751 to ptr
  %task433 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task433 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task433, align 8
  %141 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %132, align 4
  %142 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @autoremove_wake_function, ptr %133, align 4
  %143 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %134, ptr %134, align 4
  %144 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %134, ptr %135, align 4
  br label %do.body440

do.body440:                                       ; preds = %do.cond446.do.body440_crit_edge, %cond.false427
  %call442 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait429) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call442)
  %tobool443.not = icmp eq i32 %call442, 0
  br i1 %tobool443.not, label %do.cond446, label %do.body440.do.end451_crit_edge

do.body440.do.end451_crit_edge:                   ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end451

do.cond446:                                       ; preds = %do.body440
  %145 = ptrtoint ptr %voltage_status_received to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %voltage_status_received, align 4, !range !98
  %tobool448.not = icmp eq i8 %146, 0
  br i1 %tobool448.not, label %do.cond446.do.body440_crit_edge, label %do.cond446.do.end451_crit_edge

do.cond446.do.end451_crit_edge:                   ; preds = %do.cond446
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end451

do.cond446.do.body440_crit_edge:                  ; preds = %do.cond446
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body440

do.end451:                                        ; preds = %do.cond446.do.end451_crit_edge, %do.body440.do.end451_crit_edge
  %call.i.i.i753 = call zeroext i1 @__list_del_entry_valid(ptr noundef %134) #9
  br i1 %call.i.i.i753, label %if.end.i.i.i756, label %do.end451.cond.end526_crit_edge

do.end451.cond.end526_crit_edge:                  ; preds = %do.end451
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end526

if.end.i.i.i756:                                  ; preds = %do.end451
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %135, align 4
  %149 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %134, align 4
  %prev1.i.i.i.i755 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %prev1.i.i.i.i755 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %prev1.i.i.i.i755, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %150, ptr %148, align 4
  br label %cond.end526

cond.end526:                                      ; preds = %if.end.i.i.i756, %do.end451.cond.end526_crit_edge
  %153 = ptrtoint ptr %task433 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task433, align 8
  %task_state_change508 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 212
  %155 = ptrtoint ptr %task_state_change508 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 ptrtoint (ptr blockaddress(@nzxt_smart2_hwmon_read, %cond.end526) to i32), ptr %task_state_change508, align 4
  %156 = load ptr, ptr %task433, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 0, ptr %156, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait429) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call442)
  %tobool528.not = icmp eq i32 %call442, 0
  br i1 %tobool528.not, label %cond.end526.if.end530_crit_edge, label %cond.end526.unlock_crit_edge

cond.end526.unlock_crit_edge:                     ; preds = %cond.end526
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.end526.if.end530_crit_edge:                  ; preds = %cond.end526
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end530

if.end530:                                        ; preds = %cond.end526.if.end530_crit_edge, %if.then423.if.end530_crit_edge
  %arrayidx531 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 5, i32 %channel
  %158 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx531, align 2
  %conv532 = zext i16 %159 to i32
  br label %unlock.sink.split

sw.bb534:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp535 = icmp eq i32 %attr, 1
  br i1 %cmp535, label %if.then537, label %sw.bb534.unlock_crit_edge

sw.bb534.unlock_crit_edge:                        ; preds = %sw.bb534
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then537:                                       ; preds = %sw.bb534
  %voltage_status_received538 = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 7
  %160 = ptrtoint ptr %voltage_status_received538 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %voltage_status_received538, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool539.not = icmp eq i8 %161, 0
  br i1 %tobool539.not, label %cond.false542, label %if.then537.if.end645_crit_edge

if.then537.if.end645_crit_edge:                   ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end645

cond.false542:                                    ; preds = %if.then537
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait544) #9
  %162 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait544, i32 0, i32 1
  %163 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait544, i32 0, i32 2
  %164 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait544, i32 0, i32 3
  %165 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait544, i32 0, i32 3, i32 1
  %166 = ptrtoint ptr %__wait544 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %__wait544, align 4
  %167 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i759 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i759 to ptr
  %task548 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %task548 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %task548, align 8
  %171 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %162, align 4
  %172 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @autoremove_wake_function, ptr %163, align 4
  %173 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %164, ptr %164, align 4
  %174 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %164, ptr %165, align 4
  br label %do.body555

do.body555:                                       ; preds = %do.cond561.do.body555_crit_edge, %cond.false542
  %call557 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait544) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %tobool558.not = icmp eq i32 %call557, 0
  br i1 %tobool558.not, label %do.cond561, label %do.body555.do.end566_crit_edge

do.body555.do.end566_crit_edge:                   ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end566

do.cond561:                                       ; preds = %do.body555
  %175 = ptrtoint ptr %voltage_status_received538 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %voltage_status_received538, align 4, !range !98
  %tobool563.not = icmp eq i8 %176, 0
  br i1 %tobool563.not, label %do.cond561.do.body555_crit_edge, label %do.cond561.do.end566_crit_edge

do.cond561.do.end566_crit_edge:                   ; preds = %do.cond561
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end566

do.cond561.do.body555_crit_edge:                  ; preds = %do.cond561
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body555

do.end566:                                        ; preds = %do.cond561.do.end566_crit_edge, %do.body555.do.end566_crit_edge
  %call.i.i.i761 = call zeroext i1 @__list_del_entry_valid(ptr noundef %164) #9
  br i1 %call.i.i.i761, label %if.end.i.i.i764, label %do.end566.cond.end641_crit_edge

do.end566.cond.end641_crit_edge:                  ; preds = %do.end566
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end641

if.end.i.i.i764:                                  ; preds = %do.end566
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %165, align 4
  %179 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %164, align 4
  %prev1.i.i.i.i763 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %prev1.i.i.i.i763 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev1.i.i.i.i763, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %180, ptr %178, align 4
  br label %cond.end641

cond.end641:                                      ; preds = %if.end.i.i.i764, %do.end566.cond.end641_crit_edge
  %183 = ptrtoint ptr %task548 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %task548, align 8
  %task_state_change623 = getelementptr inbounds %struct.task_struct, ptr %184, i32 0, i32 212
  %185 = ptrtoint ptr %task_state_change623 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 ptrtoint (ptr blockaddress(@nzxt_smart2_hwmon_read, %cond.end641) to i32), ptr %task_state_change623, align 4
  %186 = load ptr, ptr %task548, align 8
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile i32 0, ptr %186, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait544) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %tobool643.not = icmp eq i32 %call557, 0
  br i1 %tobool643.not, label %cond.end641.if.end645_crit_edge, label %cond.end641.unlock_crit_edge

cond.end641.unlock_crit_edge:                     ; preds = %cond.end641
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.end641.if.end645_crit_edge:                  ; preds = %cond.end641
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end645

if.end645:                                        ; preds = %cond.end641.if.end645_crit_edge, %if.then537.if.end645_crit_edge
  %arrayidx646 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 6, i32 %channel
  %188 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx646, align 2
  %conv647 = zext i16 %189 to i32
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %if.end645, %if.end530, %if.end416, %if.end.i, %if.end301.unlock.sink.split_crit_edge, %if.end188, %if.end77
  %retval.0.i.sink = phi i32 [ %conv193, %if.end188 ], [ %conv79, %if.end77 ], [ %conv418, %if.end416 ], [ %conv532, %if.end530 ], [ %conv647, %if.end645 ], [ %div9.i779.zext, %if.end.i ], [ 0, %if.end301.unlock.sink.split_crit_edge ]
  %190 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %retval.0.i.sink, ptr %val, align 4
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %cond.end641.unlock_crit_edge, %sw.bb534.unlock_crit_edge, %cond.end526.unlock_crit_edge, %sw.bb420.unlock_crit_edge, %cond.end412.unlock_crit_edge, %sw.bb305.unlock_crit_edge, %cond.end297.unlock_crit_edge, %cond.end184.unlock_crit_edge, %cond.end.unlock_crit_edge, %sw.bb1.unlock_crit_edge, %if.end.unlock_crit_edge
  %res.0 = phi i32 [ -22, %if.end.unlock_crit_edge ], [ %call557, %cond.end641.unlock_crit_edge ], [ -22, %sw.bb534.unlock_crit_edge ], [ %call442, %cond.end526.unlock_crit_edge ], [ -22, %sw.bb420.unlock_crit_edge ], [ %call328, %cond.end412.unlock_crit_edge ], [ -22, %sw.bb305.unlock_crit_edge ], [ -22, %sw.bb1.unlock_crit_edge ], [ %call213, %cond.end297.unlock_crit_edge ], [ %call100, %cond.end184.unlock_crit_edge ], [ %call8, %cond.end.unlock_crit_edge ], [ 0, %unlock.sink.split ]
  call void @_raw_spin_unlock_irq(ptr noundef %wq) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %sw.bb, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ %res.0, %unlock ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nzxt_smart2_hwmon_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %entry.return.sink.split_crit_edge
    i32 3, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb3, %sw.bb1, %entry.return.sink.split_crit_edge
  %in_label.sink = phi ptr [ @in_label, %sw.bb3 ], [ @curr_label, %sw.bb1 ], [ @fan_label, %entry.return.sink.split_crit_edge ]
  %arrayidx4 = getelementptr [3 x ptr], ptr %in_label.sink, i32 0, i32 %channel
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx4, align 4
  %3 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nzxt_smart2_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %report.i = alloca %struct.set_fan_speed_report, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 0, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @set_pwm_enable(ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.i.i = icmp slt i32 %val, 1
  br i1 %cmp.i.i, label %sw.bb3.scale_pwm_value.exit.i_crit_edge, label %if.end.i.i

sw.bb3.scale_pwm_value.exit.i_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %scale_pwm_value.exit.i

if.end.i.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.smin.i32(i32 %val, i32 255) #9
  %5 = trunc i32 %4 to i16
  %6 = mul nuw nsw i16 %5, 100
  %div9.i26.lhs.trunc.i = add nuw nsw i16 %6, 127
  %div9.i2627.i = udiv i16 %div9.i26.lhs.trunc.i, 255
  %div9.i26.zext.i = zext i16 %div9.i2627.i to i32
  %7 = tail call i32 @llvm.smax.i32(i32 %div9.i26.zext.i, i32 1) #9
  %phi.cast.i = trunc i32 %7 to i8
  br label %scale_pwm_value.exit.i

scale_pwm_value.exit.i:                           ; preds = %if.end.i.i, %sw.bb3.scale_pwm_value.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.cast.i, %if.end.i.i ], [ 0, %sw.bb3.scale_pwm_value.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %report.i) #9
  %8 = getelementptr inbounds %struct.set_fan_speed_report, ptr %report.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.set_fan_speed_report, ptr %report.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.set_fan_speed_report, ptr %report.i, i32 0, i32 3
  %11 = ptrtoint ptr %report.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 98, ptr %report.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %8, align 1
  %shl.i = shl nuw i32 1, %channel
  %conv1.i = trunc i32 %shl.i to i8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %9, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %10, align 1
  %mutex.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 11
  %call3.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %scale_pwm_value.exit.i.set_pwm.exit_crit_edge

scale_pwm_value.exit.i.set_pwm.exit_crit_edge:    ; preds = %scale_pwm_value.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_pwm.exit

if.end.i:                                         ; preds = %scale_pwm_value.exit.i
  %arrayidx.i = getelementptr %struct.set_fan_speed_report, ptr %report.i, i32 0, i32 3, i32 %channel
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i.i, ptr %arrayidx.i, align 1
  %output_buffer.i.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13
  %16 = call ptr @memcpy(ptr %output_buffer.i.i, ptr %report.i, i32 11)
  %add.ptr.i.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 13, i32 11
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 53)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %19, ptr noundef %output_buffer.i.i, i32 noundef 64) #9
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.unlock.i_crit_edge

if.end.i.unlock.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wq.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %wq.i) #9
  %arrayidx9.i = getelementptr %struct.drvdata, ptr %1, i32 0, i32 2, i32 %channel
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %retval.0.i.i, ptr %arrayidx9.i, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %wq.i) #9
  br label %unlock.i

unlock.i:                                         ; preds = %if.end8.i, %if.end.i.unlock.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %set_pwm.exit

set_pwm.exit:                                     ; preds = %unlock.i, %scale_pwm_value.exit.i.set_pwm.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %unlock.i ], [ %call3.i, %scale_pwm_value.exit.i.set_pwm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %report.i) #9
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb6, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb5
  %mutex = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 11
  %call7 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %val)
  %cmp.i.i23 = icmp slt i32 %val, 251
  br i1 %cmp.i.i23, label %if.end.update_interval_to_control_byte.exit.i_crit_edge, label %if.end.i.i24

if.end.update_interval_to_control_byte.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_interval_to_control_byte.exit.i

if.end.i.i24:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 488, i32 %val)
  %cmp1.i.i = icmp ugt i32 %val, 488
  %cond.in.v.i.i = select i1 %cmp1.i.i, i32 -360, i32 -616
  %cond.in.i.i = add nsw i32 %cond.in.v.i.i, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %cond.in.i.i)
  %cmp12.i.i = icmp sgt i32 %cond.in.i.i, -256
  %cond.i.i = sdiv i32 %cond.in.i.i, 256
  %add10.i.i = add nsw i32 %cond.i.i, 1
  %22 = tail call i32 @llvm.umin.i32(i32 %add10.i.i, i32 255) #9
  %23 = trunc i32 %22 to i8
  %conv25.i.i = select i1 %cmp12.i.i, i8 %23, i8 0
  br label %update_interval_to_control_byte.exit.i

update_interval_to_control_byte.exit.i:           ; preds = %if.end.i.i24, %if.end.update_interval_to_control_byte.exit.i_crit_edge
  %retval.0.i.i25 = phi i8 [ %conv25.i.i, %if.end.i.i24 ], [ 0, %if.end.update_interval_to_control_byte.exit.i_crit_edge ]
  %output_buffer.i.i26 = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %output_buffer.i.i26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 96, ptr %output_buffer.i.i26, align 4
  %report.sroa.5.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 1
  %25 = ptrtoint ptr %report.sroa.5.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %report.sroa.5.0.output_buffer.i.sroa_idx.i, align 1
  %report.sroa.7.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %report.sroa.7.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %report.sroa.7.0.output_buffer.i.sroa_idx.i, align 2
  %report.sroa.9.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 3
  %27 = ptrtoint ptr %report.sroa.9.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -24, ptr %report.sroa.9.0.output_buffer.i.sroa_idx.i, align 1
  %report.sroa.11.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 4
  %28 = ptrtoint ptr %report.sroa.11.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %retval.0.i.i25, ptr %report.sroa.11.0.output_buffer.i.sroa_idx.i, align 4
  %report.sroa.13.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %report.sroa.13.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %report.sroa.13.0.output_buffer.i.sroa_idx.i, align 1
  %report.sroa.15.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 6
  %30 = ptrtoint ptr %report.sroa.15.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -24, ptr %report.sroa.15.0.output_buffer.i.sroa_idx.i, align 2
  %report.sroa.17.0.output_buffer.i.sroa_idx.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 13, i32 7
  %31 = ptrtoint ptr %report.sroa.17.0.output_buffer.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.i.i25, ptr %report.sroa.17.0.output_buffer.i.sroa_idx.i, align 1
  %add.ptr.i.i27 = getelementptr %struct.drvdata, ptr %1, i32 0, i32 13, i32 8
  %32 = call ptr @memset(ptr %add.ptr.i.i27, i32 0, i32 56)
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i.i28 = tail call i32 @hid_hw_output_report(ptr noundef %34, ptr noundef %output_buffer.i.i26, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i28)
  %tobool.not.i29 = icmp sgt i32 %call.i.i28, -1
  br i1 %tobool.not.i29, label %if.end.i30, label %update_interval_to_control_byte.exit.i.set_update_interval.exit_crit_edge

update_interval_to_control_byte.exit.i.set_update_interval.exit_crit_edge: ; preds = %update_interval_to_control_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_update_interval.exit

if.end.i30:                                       ; preds = %update_interval_to_control_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i25)
  %cmp.i15.i = icmp eq i8 %retval.0.i.i25, 0
  %conv.i.i = zext i8 %retval.0.i.i25 to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %sub.i.i, 232
  %retval.0.i16.i = select i1 %cmp.i15.i, i32 250, i32 %add.i.i
  %update_interval.i = getelementptr inbounds %struct.drvdata, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i16.i, ptr %update_interval.i, align 4
  br label %set_update_interval.exit

set_update_interval.exit:                         ; preds = %if.end.i30, %update_interval_to_control_byte.exit.i.set_update_interval.exit_crit_edge
  %36 = tail call i32 @llvm.smin.i32(i32 %call.i.i28, i32 0) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %set_update_interval.exit, %sw.bb6.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %set_pwm.exit, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %set_update_interval.exit ], [ %retval.0.i, %set_pwm.exit ], [ %call2, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call7, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_pwm_enable(ptr noundef %drvdata, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %wq) #9
  %fan_config_received = getelementptr inbounds %struct.drvdata, ptr %drvdata, i32 0, i32 9
  %0 = ptrtoint ptr %fan_config_received to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_config_received, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.if.end74_crit_edge

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

cond.false:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #9
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %__wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !88) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %cond.false
  %call5 = call i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond:                                          ; preds = %do.body
  %15 = ptrtoint ptr %fan_config_received to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fan_config_received, align 4, !range !98
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i.i, %do.end.cond.end_crit_edge
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@set_pwm_enable, %cond.end) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %26, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool70.not = icmp eq i32 %call5, 0
  br i1 %tobool70.not, label %cond.end.if.end74_crit_edge, label %if.then71

cond.end.if.end74_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then71:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %wq) #9
  br label %cleanup

if.end74:                                         ; preds = %cond.end.if.end74_crit_edge, %entry.if.end74_crit_edge
  %arrayidx = getelementptr %struct.drvdata, ptr %drvdata, i32 0, i32 8, i32 %channel
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp ne i8 %29, 0
  %conv75 = zext i1 %cmp to i32
  call void @_raw_spin_unlock_irq(ptr noundef %wq) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv75, i32 %val)
  %cmp78 = icmp eq i32 %conv75, %val
  %cond80 = select i1 %cmp78, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then71
  %retval.0 = phi i32 [ %call5, %if.then71 ], [ %cond80, %if.end74 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 818, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 819, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 820, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_nzxt_smart2__242_828_nzxt_smart2_init7, !8, !"__initcall__kmod_nzxt_smart2__242_828_nzxt_smart2_init7", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 828, i32 1}
!9 = !{ptr @__exitcall_nzxt_smart2_exit, !10, !"__exitcall_nzxt_smart2_exit", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 829, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 797, i32 10}
!13 = !{ptr @nzxt_smart2_hid_driver, !14, !"nzxt_smart2_hid_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 796, i32 26}
!15 = !{ptr @nzxt_smart2_hid_id_table, !16, !"nzxt_smart2_hid_id_table", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 787, i32 35}
!17 = !{ptr @nzxt_smart2_hid_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 737, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nzxt_smart2_hid_probe.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 739, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 760, i32 47}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/hid.h", i32 963, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hid_device_io_start._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @hid_device_io_start._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"detect_fans_report", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 586, i32 18}
!35 = !{ptr @nzxt_smart2_chip_info, !36, !"nzxt_smart2_chip_info", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 683, i32 37}
!37 = !{ptr @nzxt_smart2_hwmon_ops, !38, !"nzxt_smart2_hwmon_ops", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 659, i32 31}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 369, i32 10}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 378, i32 10}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 387, i32 10}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 405, i32 10}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 416, i32 10}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 427, i32 10}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 30, i32 2}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 31, i32 2}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 32, i32 2}
!58 = !{ptr @fan_label, !59, !"fan_label", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 29, i32 26}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 36, i32 2}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 37, i32 2}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 38, i32 2}
!66 = !{ptr @curr_label, !67, !"curr_label", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 35, i32 26}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 42, i32 2}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 43, i32 2}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 44, i32 2}
!74 = !{ptr @in_label, !75, !"in_label", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 41, i32 26}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 516, i32 8}
!78 = !{ptr @nzxt_smart2_channel_info, !79, !"nzxt_smart2_channel_info", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 666, i32 41}
!80 = distinct !{null, !81, !"__print_once", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 274, i32 3}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @handle_fan_status_report._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @handle_fan_status_report._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/nzxt-smart2.c", i32 809, i32 9}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
