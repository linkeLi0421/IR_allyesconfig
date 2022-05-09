; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-etb10.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-etb10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.coresight_dev_list = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.coresight_ops_sink = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%union.coresight_dev_subtype = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.etb_drvdata = type { ptr, ptr, ptr, %struct.miscdevice, %struct.spinlock, %struct.local_t, i32, ptr, i32, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.local_t = type { %struct.atomic_t }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%struct.etm_event_data = type { %struct.work_struct, %struct.cpumask, ptr, i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cs_buffers = type { i32, i32, i32, i32, %struct.local_t, i8, ptr }
%struct.perf_output_handle = type { ptr, ptr, i32, i32, i64, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.55, i64, i64, i64, %union.anon.56, i32, %union.anon.57, %union.anon.58, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.55 = type { i64 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i64 }
%struct.hw_perf_event = type { %union.anon.59, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.66, i64, i64, i64, i64 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.77, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.77 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_coresight_etb10__304_869_etb_driver_init6 = internal global ptr @etb_driver_init, section ".initcall6.init", align 4
@etb_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etb_dev_pm_ops, ptr null, ptr null }, ptr @etb_probe, ptr @etb_remove, ptr null, ptr @etb_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_etb_driver_exit = internal global ptr @etb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [61 x i8] c"coresight_etb10.author=Pratik Patel <pratikp@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [68 x i8] c"coresight_etb10.author=Mathieu Poirier <mathieu.poirier@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [71 x i8] c"coresight_etb10.description=Arm CoreSight Embedded Trace Buffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [65 x i8] c"coresight_etb10.file=drivers/hwtracing/coresight/coresight-etb10\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [31 x i8] c"coresight_etb10.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coresight-etb10\00", [16 x i8] zeroinitializer }, align 32
@etb_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etb_runtime_suspend, ptr @etb_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@etb_ids = internal constant { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 768263, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@etb_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.3, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atclk\00", [26 x i8] zeroinitializer }, align 32
@etb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@etb_cs_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr @etb_sink_ops, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_etb_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @coresight_etb_group, ptr @coresight_etb_mgmt_group, ptr null], [20 x i8] zeroinitializer }, align 32
@etb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @etb_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @etb_open, ptr null, ptr @etb_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"etb\00", [28 x i8] zeroinitializer }, align 32
@etb_sink_ops = internal constant { %struct.coresight_ops_sink, [44 x i8] } { %struct.coresight_ops_sink { ptr @etb_enable, ptr @etb_disable, ptr @etb_alloc_buffer, ptr @etb_free_buffer, ptr @etb_update_buffer }, [44 x i8] zeroinitializer }, align 32
@etb_enable.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coresight_etb10\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"etb_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/hwtracing/coresight/coresight-etb10.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETB enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@etb_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@etb_disable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"etb_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ETB disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@__etb_disable_hw._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 269, ptr @.str.12, ptr @.str.13 }, align 1
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"timeout while waiting for completion of Manual Flush\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__etb_disable_hw\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__etb_disable_hw._entry_ptr = internal global ptr @__etb_disable_hw._entry, section ".printk_index", align 4
@__etb_disable_hw._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.6, i32 277, ptr @.str.12, ptr @.str.13 }, align 1
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timeout while waiting for Formatter to Stop\0A\00", [51 x i8] zeroinitializer }, align 32
@__etb_disable_hw._entry_ptr.16 = internal global ptr @__etb_disable_hw._entry.14, section ".printk_index", align 4
@etb_dump_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 303, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"write_ptr: %lu not aligned to formatter frame size\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"etb_dump_hw\00", [20 x i8] zeroinitializer }, align 32
@etb_dump_hw._entry_ptr = internal global ptr @etb_dump_hw._entry, section ".printk_index", align 4
@etb_dump_hw._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.6, i32 305, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"frameoff: %lu, frame_endoff: %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@etb_dump_hw._entry_ptr.21 = internal global ptr @etb_dump_hw._entry.19, section ".printk_index", align 4
@coresight_barrier_pkt = external dso_local local_unnamed_addr constant [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@etb_update_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.22, ptr @.str.6, i32 467, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"etb_update_buffer\00", [46 x i8] zeroinitializer }, align 32
@etb_update_buffer._entry_ptr = internal global ptr @etb_update_buffer._entry, section ".printk_index", align 4
@coresight_etb_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @coresight_etb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_etb_mgmt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.25, ptr null, ptr null, ptr @coresight_etb_mgmt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_etb_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_trigger_cntr, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_trigger_cntr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trigger_cntr_show, ptr @trigger_cntr_store }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_cntr\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mgmt\00", [27 x i8] zeroinitializer }, align 32
@coresight_etb_mgmt_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_rdp, ptr @dev_attr_sts, ptr @dev_attr_rrp, ptr @dev_attr_rwp, ptr @dev_attr_trg, ptr @dev_attr_ctl, ptr @dev_attr_ffsr, ptr @dev_attr_ffcr, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_rdp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rdp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rrp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rrp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rwp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rwp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffsr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ffsr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffcr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ffcr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdp\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sts\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rrp\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rwp\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"trg\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ffsr\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ffcr\00", [27 x i8] zeroinitializer }, align 32
@etb_read.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etb_read\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: copy_to_user failed\0A\00", [39 x i8] zeroinitializer }, align 32
@etb_read.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.6, ptr @.str.37, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: %zu bytes copied, %d bytes left\0A\00", [59 x i8] zeroinitializer }, align 32
@etb_dump.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etb_dump\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETB dumped\0A\00", [20 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@etb_open.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etb_open\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: successfully opened\0A\00", [39 x i8] zeroinitializer }, align 32
@etb_release.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.45, ptr @.str.6, ptr @.str.46, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"etb_release\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: released\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"etb_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 856, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 858, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"etb_dev_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 842, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"etb_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 846, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"etb_devs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 746, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 762, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"etb_cs_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 582, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"coresight_etb_groups\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 722, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"etb_fops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 650, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 66, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"etb_sink_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 574, i32 40 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 247, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 371, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 268, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 276, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 301, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 304, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 465, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"coresight_etb_group\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 713, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"coresight_etb_mgmt_group\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 717, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"coresight_etb_attrs\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 708, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"dev_attr_trigger_cntr\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 706, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 688, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 719, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant [25 x i8] c"coresight_etb_mgmt_attrs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 670, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"dev_attr_rdp\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"dev_attr_sts\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"dev_attr_rrp\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"dev_attr_rwp\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"dev_attr_trg\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"dev_attr_ctl\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"dev_attr_ffsr\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"dev_attr_ffcr\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 661, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 662, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 663, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 664, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 665, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 666, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 667, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 668, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 628, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 635, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 598, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 230, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 214, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 174, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 609, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [49 x i8] c"../drivers/hwtracing/coresight/coresight-etb10.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 646, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__etb_disable_hw._entry, ptr @__etb_disable_hw._entry.14, ptr @__etb_disable_hw._entry_ptr, ptr @__etb_disable_hw._entry_ptr.16, ptr @__exitcall_etb_driver_exit, ptr @__initcall__kmod_coresight_etb10__304_869_etb_driver_init6, ptr @etb_driver_exit, ptr @etb_dump_hw._entry, ptr @etb_dump_hw._entry.19, ptr @etb_dump_hw._entry_ptr, ptr @etb_dump_hw._entry_ptr.21, ptr @etb_update_buffer._entry, ptr @etb_update_buffer._entry_ptr, ptr @etb_driver, ptr @.str, ptr @etb_dev_pm_ops, ptr @etb_ids, ptr @etb_devs, ptr @.str.1, ptr @etb_probe.__key, ptr @.str.2, ptr @etb_cs_ops, ptr @coresight_etb_groups, ptr @etb_fops, ptr @.str.3, ptr @etb_sink_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @coresight_etb_group, ptr @coresight_etb_mgmt_group, ptr @coresight_etb_attrs, ptr @dev_attr_trigger_cntr, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @coresight_etb_mgmt_attrs, ptr @dev_attr_rdp, ptr @dev_attr_sts, ptr @dev_attr_rrp, ptr @dev_attr_rwp, ptr @dev_attr_trg, ptr @dev_attr_ctl, ptr @dev_attr_ffsr, ptr @dev_attr_ffcr, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_etb_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_sink_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_dump_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_dump_hw._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_update_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_etb_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_etb_mgmt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_etb_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_cntr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_etb_mgmt_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rrp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rwp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffsr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffcr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @etb_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @etb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amba_driver_unregister(ptr noundef nonnull @etb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %res2 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc) #10
  %0 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %call = tail call ptr @coresight_alloc_device_name(ptr noundef nonnull @etb_devs, ptr noundef %adev) #10
  %name = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %name, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 120, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %adev, ptr noundef nonnull @.str.1) #10
  %atclk = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.if.end18_crit_edge, label %if.then12

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end7
  %call.i111 = tail call i32 @clk_prepare(ptr noundef %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end18_crit_edge, label %if.then3.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call9) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res2) #10
  %cmp.i112 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %call.i, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7
  %6 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.270.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %.compoundliteral.sroa.270.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call19, ptr %.compoundliteral.sroa.270.0.access.sroa_idx, align 4
  %spinlock = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @etb_probe.__key, i16 noundef signext 3) #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %buffer_depth = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buffer_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool28.not = icmp sgt i32 %11, -1
  br i1 %tobool28.not, label %if.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #10
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !148

devm_kcalloc.exit.thread:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %buf119 = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %buf119 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %buf119, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end30
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef %16, i32 noundef 3520) #10
  %buf = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %buf, align 4
  %tobool34.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool34.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end36

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %devm_kcalloc.exit
  %pid = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pid, align 4
  %call37 = tail call ptr @coresight_get_platform_data(ptr noundef %adev) #10
  %cmp.i113 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %platform_data = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call37, ptr %platform_data, align 8
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %desc, align 4
  %subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1
  %22 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @etb_cs_ops, ptr %ops, align 4
  %pdata43 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 3
  %24 = ptrtoint ptr %pdata43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call37, ptr %pdata43, align 4
  %dev44 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 4
  %25 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %adev, ptr %dev44, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 5
  %26 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @coresight_etb_groups, ptr %groups, align 4
  %call45 = call ptr @coresight_register(ptr noundef nonnull %desc) #10
  %csdev = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call45, ptr %csdev, align 4
  %cmp.i114 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  %miscdev = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 3
  %name53 = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %name53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %name53, align 4
  %32 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 255, ptr %miscdev, align 4
  %fops = getelementptr inbounds %struct.etb_drvdata, ptr %call.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @etb_fops, ptr %fops, align 4
  %call57 = call i32 @misc_register(ptr noundef %miscdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %err_misc_register

if.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call.i115 = call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #10
  br label %cleanup

err_misc_register:                                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csdev, align 4
  call void @coresight_unregister(ptr noundef %35) #10
  br label %cleanup

cleanup:                                          ; preds = %err_misc_register, %if.end60, %if.then48, %if.then39, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end23.cleanup_crit_edge, %if.then21, %if.then3.i, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then21 ], [ %19, %if.then39 ], [ %28, %if.then48 ], [ %call57, %err_misc_register ], [ 0, %if.end60 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i111, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etb_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %miscdev = getelementptr inbounds %struct.etb_drvdata, ptr %1, i32 0, i32 3
  tail call void @misc_deregister(ptr noundef %miscdev) #10
  %csdev = getelementptr inbounds %struct.etb_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  tail call void @coresight_unregister(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.etb_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.etb_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_alloc_device_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_platform_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_enable(ptr noundef %csdev, i32 noundef %mode, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %parent.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %spinlock.i = getelementptr inbounds %struct.etb_drvdata, ptr %4, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #10
  %mode.i = getelementptr inbounds %struct.etb_drvdata, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %6, label %sw.bb.if.end16.i_crit_edge [
    i32 2, label %sw.bb.etb_enable_sysfs.exit_crit_edge
    i32 0, label %if.then11.i
  ]

sw.bb.etb_enable_sysfs.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_sysfs.exit

sw.bb.if.end16.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then11.i:                                      ; preds = %sw.bb
  %csdev.i.i = getelementptr inbounds %struct.etb_drvdata, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csdev.i.i, align 4
  %call.i.i = tail call i32 @coresight_claim_device(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.i, label %if.then11.i.etb_enable_sysfs.exit_crit_edge

if.then11.i.etb_enable_sysfs.exit_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_sysfs.exit

if.end14.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__etb_enable_hw(ptr noundef %4) #10
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end14.i, %sw.bb.if.end16.i_crit_edge
  %refcnt.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %11 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %refcnt.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %12, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !149
  br label %etb_enable_sysfs.exit

etb_enable_sysfs.exit:                            ; preds = %if.end16.i, %if.then11.i.etb_enable_sysfs.exit_crit_edge, %sw.bb.etb_enable_sysfs.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end16.i ], [ -16, %sw.bb.etb_enable_sysfs.exit_crit_edge ], [ %call.i.i, %if.then11.i.etb_enable_sysfs.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call3.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %parent.i12 = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %parent.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i12, align 8
  %driver_data.i.i13 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i13, align 4
  %call.i.i14 = tail call ptr @perf_get_aux(ptr noundef %data) #10
  %tobool.not.i.i15 = icmp eq ptr %call.i.i14, null
  br i1 %tobool.not.i.i15, label %sw.bb1.etm_perf_sink_config.exit.i_crit_edge, label %if.then.i.i

sw.bb1.etm_perf_sink_config.exit.i_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %etm_perf_sink_config.exit.i

if.then.i.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %snk_config.i.i = getelementptr inbounds %struct.etm_event_data, ptr %call.i.i14, i32 0, i32 2
  %18 = ptrtoint ptr %snk_config.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %snk_config.i.i, align 4
  br label %etm_perf_sink_config.exit.i

etm_perf_sink_config.exit.i:                      ; preds = %if.then.i.i, %sw.bb1.etm_perf_sink_config.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.then.i.i ], [ null, %sw.bb1.etm_perf_sink_config.exit.i_crit_edge ]
  %spinlock.i16 = getelementptr inbounds %struct.etb_drvdata, ptr %17, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i16) #10
  %mode.i17 = getelementptr inbounds %struct.etb_drvdata, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %mode.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp7.i = icmp eq i32 %21, 1
  br i1 %cmp7.i, label %etm_perf_sink_config.exit.i.etb_enable_perf.exit_crit_edge, label %if.end.i

etm_perf_sink_config.exit.i.etb_enable_perf.exit_crit_edge: ; preds = %etm_perf_sink_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_perf.exit

if.end.i:                                         ; preds = %etm_perf_sink_config.exit.i
  %pid9.i = getelementptr inbounds %struct.cs_buffers, ptr %retval.0.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %pid9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid9.i, align 4
  %pid10.i = getelementptr inbounds %struct.etb_drvdata, ptr %17, i32 0, i32 6
  %24 = ptrtoint ptr %pid10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp11.not.i = icmp eq i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp14.not.i = icmp eq i32 %25, %23
  %or.cond.i = select i1 %cmp11.not.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %if.end17.i, label %if.end.i.etb_enable_perf.exit_crit_edge

if.end.i.etb_enable_perf.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_perf.exit

if.end17.i:                                       ; preds = %if.end.i
  br i1 %cmp14.not.i, label %if.then21.i, label %if.end22.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i18 = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %26 = ptrtoint ptr %refcnt.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %refcnt.i18, align 8
  %call.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %27, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #10, !srcloc !149
  br label %etb_enable_perf.exit

if.end22.i:                                       ; preds = %if.end17.i
  %call.i.i52.i = tail call ptr @perf_get_aux(ptr noundef %data) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i52.i, null
  br i1 %tobool.not.i.i.i, label %if.end22.i.etb_enable_perf.exit_crit_edge, label %etm_perf_sink_config.exit.i.i

if.end22.i.etb_enable_perf.exit_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_perf.exit

etm_perf_sink_config.exit.i.i:                    ; preds = %if.end22.i
  %snk_config.i.i.i = getelementptr inbounds %struct.etm_event_data, ptr %call.i.i52.i, i32 0, i32 2
  %29 = ptrtoint ptr %snk_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %snk_config.i.i.i, align 4
  %tobool.not.i53.i = icmp eq ptr %30, null
  br i1 %tobool.not.i53.i, label %etm_perf_sink_config.exit.i.i.etb_enable_perf.exit_crit_edge, label %if.end25.i

etm_perf_sink_config.exit.i.i.etb_enable_perf.exit_crit_edge: ; preds = %etm_perf_sink_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_perf.exit

if.end25.i:                                       ; preds = %etm_perf_sink_config.exit.i.i
  %31 = getelementptr inbounds %struct.perf_output_handle, ptr %data, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %nr_pages.i.i = getelementptr inbounds %struct.cs_buffers, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pages.i.i, align 4
  %shl.i.i = shl i32 %35, 12
  %sub.i.i = add i32 %shl.i.i, -1
  %and.i.i = and i32 %sub.i.i, %33
  %div1.i.i = lshr i32 %and.i.i, 12
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div1.i.i, ptr %30, align 4
  %rem.i.i = and i32 %33, 4095
  %offset.i.i = getelementptr inbounds %struct.cs_buffers, ptr %30, i32 0, i32 3
  %37 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %rem.i.i, ptr %offset.i.i, align 4
  %data_size.i.i = getelementptr inbounds %struct.cs_buffers, ptr %30, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_size.i.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %data_size.i.i, align 4
  %csdev.i.i20 = getelementptr inbounds %struct.etb_drvdata, ptr %17, i32 0, i32 2
  %39 = ptrtoint ptr %csdev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csdev.i.i20, align 4
  %call.i55.i = tail call i32 @coresight_claim_device(ptr noundef %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool.not.i56.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool.not.i56.i, label %if.then28.i, label %if.end25.i.etb_enable_perf.exit_crit_edge

if.end25.i.etb_enable_perf.exit_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etb_enable_perf.exit

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__etb_enable_hw(ptr noundef %17) #10
  %41 = ptrtoint ptr %pid10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %23, ptr %pid10.i, align 4
  %42 = ptrtoint ptr %mode.i17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %mode.i17, align 4
  %refcnt31.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %43 = ptrtoint ptr %refcnt31.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %refcnt31.i, align 8
  %call.i.i51.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #10, !srcloc !149
  br label %etb_enable_perf.exit

etb_enable_perf.exit:                             ; preds = %if.then28.i, %if.end25.i.etb_enable_perf.exit_crit_edge, %etm_perf_sink_config.exit.i.i.etb_enable_perf.exit_crit_edge, %if.end22.i.etb_enable_perf.exit_crit_edge, %if.then21.i, %if.end.i.etb_enable_perf.exit_crit_edge, %etm_perf_sink_config.exit.i.etb_enable_perf.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then21.i ], [ 0, %if.then28.i ], [ -16, %etm_perf_sink_config.exit.i.etb_enable_perf.exit_crit_edge ], [ -16, %if.end.i.etb_enable_perf.exit_crit_edge ], [ %call.i55.i, %if.end25.i.etb_enable_perf.exit_crit_edge ], [ -22, %etm_perf_sink_config.exit.i.i.etb_enable_perf.exit_crit_edge ], [ -22, %if.end22.i.etb_enable_perf.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i16, i32 noundef %call4.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %etb_enable_perf.exit, %etb_enable_sysfs.exit
  %ret.0 = phi i32 [ %ret.0.i, %etb_enable_perf.exit ], [ %ret.1.i, %etb_enable_sysfs.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %do.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_enable.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_enable, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_enable.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_disable(ptr noundef %csdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #10
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refcnt, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !152
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %land.rhs, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.rhs:                                         ; preds = %if.end
  %.b82 = load i1, ptr @etb_disable.__already_done, align 1
  br i1 %.b82, label %land.rhs.if.end44_crit_edge, label %if.then18, !prof !154

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @etb_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then18, %land.rhs.if.end44_crit_edge, %if.end.if.end44_crit_edge
  tail call fastcc void @__etb_disable_hw(ptr noundef %3) #10
  tail call fastcc void @etb_dump_hw(ptr noundef %3) #10
  %csdev.i = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csdev.i, align 4
  tail call void @coresight_disclaim_device(ptr noundef %10) #10
  %pid = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pid, align 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_disable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_disable, %if.then65)) #10
          to label %cleanup [label %if.then65], !srcloc !150

if.then65:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_disable.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end44, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then65 ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @etb_alloc_buffer(ptr nocapture noundef readnone %csdev, ptr nocapture noundef readonly %event, ptr noundef %pages, i32 noundef %nr_pages, i1 noundef zeroext %overwrite) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %frombool = zext i1 %overwrite to i8
  %owner = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 36
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 68
  %3 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pid.i, align 8
  %pid = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pid, align 8
  %snapshot = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %snapshot to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %snapshot, align 4
  %nr_pages5 = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %nr_pages5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr_pages, ptr %nr_pages5, align 4
  %data_pages = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %data_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pages, ptr %data_pages, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etb_free_buffer(ptr noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %config) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_update_buffer(ptr noundef %csdev, ptr noundef %handle, ptr noundef readonly %sink_config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %sink_config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_depth = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_depth, align 4
  %spinlock = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #10
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refcnt, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef 4) #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7.not = icmp eq i32 %9, 1
  br i1 %cmp7.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end
  tail call fastcc void @__etb_disable_hw(ptr noundef %3)
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !147
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !147
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %rem = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool19.not = icmp eq i32 %rem, 0
  br i1 %tobool19.not, label %if.end10.if.end25_crit_edge, label %do.end23

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %19) #14
  %and = and i32 %19, -4
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end10.if.end25_crit_edge
  %write_ptr.0 = phi i32 [ %and, %do.end23 ], [ %19, %if.end10.if.end25_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr28 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !147
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool32.not = icmp eq i32 %23, 0
  br i1 %tobool32.not, label %if.else, label %if.end25.if.end38_crit_edge

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %24 = xor i1 %tobool19.not, true
  %sub = sub i32 %write_ptr.0, %15
  %25 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_depth, align 4
  %sub35 = add i32 %26, 1073741823
  %and36 = and i32 %sub35, %sub
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end25.if.end38_crit_edge
  %to_read.0.in = phi i32 [ %and36, %if.else ], [ %5, %if.end25.if.end38_crit_edge ]
  %read_ptr.0 = phi i32 [ %15, %if.else ], [ %write_ptr.0, %if.end25.if.end38_crit_edge ]
  %lost.1.off0 = phi i1 [ %24, %if.else ], [ true, %if.end25.if.end38_crit_edge ]
  %to_read.0 = shl i32 %to_read.0.in, 2
  %snapshot = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 5
  %27 = ptrtoint ptr %snapshot to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %snapshot, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool39.not = icmp eq i8 %28, 0
  br i1 %tobool39.not, label %land.lhs.true, label %if.end38.if.end62_crit_edge

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end38
  %size = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %to_read.0, i32 %30)
  %cmp40 = icmp ugt i32 %to_read.0, %30
  br i1 %cmp40, label %if.end55.thread, label %if.end55

if.end55.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and44 = and i32 %30, -4
  %31 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_depth, align 4
  %div169 = lshr i32 %30, 2
  %add = sub i32 %write_ptr.0, %div169
  %sub46 = add i32 %add, %32
  %sub48 = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub46, i32 %sub48)
  %cmp49 = icmp ugt i32 %sub46, %sub48
  %spec.select = select i1 %cmp49, i32 %add, i32 %sub46
  br label %if.then61

if.end55:                                         ; preds = %land.lhs.true
  br i1 %lost.1.off0, label %if.end55.if.then61_crit_edge, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end55.if.then61_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then61:                                        ; preds = %if.end55.if.then61_crit_edge, %if.end55.thread
  %read_ptr.2189 = phi i32 [ %spec.select, %if.end55.thread ], [ %read_ptr.0, %if.end55.if.then61_crit_edge ]
  %to_read.1188 = phi i32 [ %and44, %if.end55.thread ], [ %to_read.0, %if.end55.if.then61_crit_edge ]
  tail call void @perf_aux_output_flag(ptr noundef %handle, i64 noundef 1) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end55.if.end62_crit_edge, %if.end38.if.end62_crit_edge
  %lost.2.off0179 = phi i1 [ false, %if.end55.if.end62_crit_edge ], [ true, %if.then61 ], [ %lost.1.off0, %if.end38.if.end62_crit_edge ]
  %read_ptr.2178 = phi i32 [ %read_ptr.0, %if.end55.if.end62_crit_edge ], [ %read_ptr.2189, %if.then61 ], [ %read_ptr.0, %if.end38.if.end62_crit_edge ]
  %to_read.1177 = phi i32 [ %to_read.0, %if.end55.if.end62_crit_edge ], [ %to_read.1188, %if.then61 ], [ %to_read.0, %if.end38.if.end62_crit_edge ]
  %33 = tail call i32 @llvm.bswap.i32(i32 %read_ptr.2178)
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add.ptr64 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %33) #10, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_read.1177)
  %cmp67180.not = icmp eq i32 %to_read.1177, 0
  br i1 %cmp67180.not, label %if.end62.for.end_crit_edge, label %for.body.lr.ph

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end62
  %offset66 = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 3
  %36 = ptrtoint ptr %offset66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset66, align 4
  %38 = ptrtoint ptr %sink_config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sink_config, align 4
  %data_pages = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 6
  %nr_pages = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %add90, %for.inc.for.body_crit_edge ]
  %cur.0183 = phi i32 [ %39, %for.body.lr.ph ], [ %cur.1, %for.inc.for.body_crit_edge ]
  %barrier.0182 = phi ptr [ @coresight_barrier_pkt, %for.body.lr.ph ], [ %barrier.1, %for.inc.for.body_crit_edge ]
  %offset.0181 = phi i32 [ %37, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %40 = ptrtoint ptr %data_pages to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data_pages, align 4
  %arrayidx = getelementptr ptr, ptr %41, i32 %cur.0183
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %add.ptr69 = getelementptr i8, ptr %43, i32 %offset.0181
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %add.ptr72 = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #10, !srcloc !147
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0184)
  %cmp78 = icmp ult i32 %i.0184, 16
  %or.cond = select i1 %lost.2.off0179, i1 %cmp78, i1 false
  br i1 %or.cond, label %if.then80, label %for.body.if.end81_crit_edge

for.body.if.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %barrier.0182 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %barrier.0182, align 4
  %incdec.ptr = getelementptr i32, ptr %barrier.0182, i32 1
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %for.body.if.end81_crit_edge
  %read_data.0 = phi i32 [ %49, %if.then80 ], [ %47, %for.body.if.end81_crit_edge ]
  %barrier.1 = phi ptr [ %incdec.ptr, %if.then80 ], [ %barrier.0182, %for.body.if.end81_crit_edge ]
  %50 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %read_data.0, ptr %add.ptr69, align 4
  %add83 = add i32 %offset.0181, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add83)
  %cmp84 = icmp ugt i32 %add83, 4095
  br i1 %cmp84, label %if.then86, label %if.end81.for.inc_crit_edge

if.end81.for.inc_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %cur.0183, 1
  %51 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_pages, align 4
  %sub87 = add i32 %52, -1
  %and88 = and i32 %sub87, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.then86, %if.end81.for.inc_crit_edge
  %offset.1 = phi i32 [ 0, %if.then86 ], [ %add83, %if.end81.for.inc_crit_edge ]
  %cur.1 = phi i32 [ %and88, %if.then86 ], [ %cur.0183, %if.end81.for.inc_crit_edge ]
  %add90 = add nuw i32 %i.0184, 4
  %cmp67 = icmp ult i32 %add90, %to_read.1177
  br i1 %cmp67, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end62.for.end_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %add.ptr92 = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 0) #10, !srcloc !155
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %add.ptr94 = getelementptr i8, ptr %56, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 0) #10, !srcloc !155
  %57 = ptrtoint ptr %snapshot to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %snapshot, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool96.not = icmp eq i8 %58, 0
  br i1 %tobool96.not, label %for.end.if.end99_crit_edge, label %if.then97

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then97:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %59 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %add98 = add i32 %61, %to_read.1177
  store i32 %add98, ptr %59, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %for.end.if.end99_crit_edge
  tail call fastcc void @__etb_enable_hw(ptr noundef %3)
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @arm_heavy_mb() #10
  %add.ptr.i170 = getelementptr i8, ptr %63, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 0) #10, !srcloc !155
  br label %out

out:                                              ; preds = %if.end99, %if.end.out_crit_edge
  %to_read.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %to_read.1177, %if.end99 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %to_read.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_claim_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__etb_enable_hw(ptr nocapture noundef readonly %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %buffer_depth = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 9
  %2 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_depth, align 4
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not = icmp eq i32 %3, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #10, !srcloc !155
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #10, !srcloc !155
  %10 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #10, !srcloc !155
  %trigger_cntr = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 10
  %12 = ptrtoint ptr %trigger_cntr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trigger_cntr, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %14) #10, !srcloc !155
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 18874368) #10, !srcloc !155
  %19 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 16777216) #10, !srcloc !155
  %21 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @arm_heavy_mb() #10
  %add.ptr.i26 = getelementptr i8, ptr %22, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #10, !srcloc !155
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_get_aux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__etb_disable_hw(ptr nocapture noundef readonly %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  %access = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 772
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !147
  %7 = or i32 %6, 1048576
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #10, !srcloc !155
  %10 = or i32 %6, 1074790400
  %11 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #10, !srcloc !155
  %call9 = tail call i32 @coresight_timeout(ptr noundef %access, i32 noundef 772, i32 noundef 6, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata, align 4
  %add.ptr11 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #10, !srcloc !155
  %call12 = tail call i32 @coresight_timeout(ptr noundef %access, i32 noundef 768, i32 noundef 1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.if.end18_crit_edge, label %do.end17

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #14
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end.if.end18_crit_edge
  %15 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @arm_heavy_mb() #10
  %add.ptr.i32 = getelementptr i8, ptr %16, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #10, !srcloc !155
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etb_dump_hw(ptr nocapture noundef readonly %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !147
  %7 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drvdata, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !147
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %rem = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub nuw nsw i32 4, %rem
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %10) #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %rem, i32 noundef %sub) #14
  %add = add i32 %sub, %10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %write_ptr.0 = phi i32 [ %add, %do.end ], [ %10, %entry.if.end_crit_edge ]
  %11 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !147
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #10, !srcloc !155
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %write_ptr.0)
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %add.ptr20 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %17) #10, !srcloc !155
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %buffer_depth = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 9
  %20 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer_depth, align 4
  %buf = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 7
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2281.not = icmp eq i32 %21, 0
  br i1 %cmp2281.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %buf_ptr.082 = phi ptr [ %add.ptr28, %for.body.for.body_crit_edge ], [ %23, %if.end21.for.body_crit_edge ]
  %24 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drvdata, align 4
  %add.ptr25 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !147
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %buf_ptr.082 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %buf_ptr.082, align 4
  %add.ptr28 = getelementptr i8, ptr %buf_ptr.082, i32 4
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end21.for.end_crit_edge
  %buf_ptr.0.lcssa = phi ptr [ %23, %if.end21.for.end_crit_edge ], [ %add.ptr28, %for.body.for.end_crit_edge ]
  br i1 %cmp, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %for.end
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then30.if.end32_crit_edge, label %if.then.i

if.then30.if.end32_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memcpy(ptr %30, ptr @coresight_barrier_pkt, i32 16)
  br label %if.end32

if.end32:                                         ; preds = %if.then.i, %if.then30.if.end32_crit_edge, %for.end.if.end32_crit_edge
  br i1 %tobool.not, label %if.end32.if.end45_crit_edge, label %for.body38.preheader

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

for.body38.preheader:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %sub.neg = shl i32 %10, 2
  %mul.neg = or i32 %sub.neg, -16
  %add.ptr35 = getelementptr i8, ptr %buf_ptr.0.lcssa, i32 %mul.neg
  %.neg = mul nsw i32 %rem, -4
  %32 = add nsw i32 %.neg, 16
  %33 = call ptr @memset(ptr %add.ptr35, i32 0, i32 %32)
  br label %if.end45

if.end45:                                         ; preds = %for.body38.preheader, %if.end32.if.end45_crit_edge
  %34 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drvdata, align 4
  %add.ptr47 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %6) #10, !srcloc !155
  %36 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @arm_heavy_mb() #10
  %add.ptr.i80 = getelementptr i8, ptr %37, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 0) #10, !srcloc !155
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_aux_output_flag(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_cntr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %trigger_cntr = getelementptr inbounds %struct.etb_drvdata, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %trigger_cntr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trigger_cntr, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_cntr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !159
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %trigger_cntr = getelementptr inbounds %struct.etb_drvdata, ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %trigger_cntr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %trigger_cntr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdp_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sts_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rrp_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwp_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trg_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffsr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffcr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 772
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !147
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #10
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %csdev = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %3, i32 0, i32 5
  tail call fastcc void @etb_dump(ptr noundef %add.ptr)
  %buffer_depth = getelementptr i8, ptr %1, i32 100
  %4 = ptrtoint ptr %buffer_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_depth, align 4
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %7, %conv
  %mul = shl i32 %5, 2
  %conv2 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv2)
  %cmp = icmp sgt i64 %add, %conv2
  %8 = trunc i64 %7 to i32
  %conv6 = sub i32 %mul, %8
  %len.addr.0 = select i1 %cmp, i32 %conv6, i32 %len
  %buf = getelementptr i8, ptr %1, i32 92
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp9.i.i = icmp slt i32 %len.addr.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.body_crit_edge, label %if.then27.i.i, !prof !154

land.rhs16.i.i.do.body_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %do.body

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %add.ptr7, i32 noundef %len.addr.0, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %len.addr.0, i32 -1226833920) #15, !srcloc !160
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr7, i32 noundef %len.addr.0) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %add.ptr7, i32 noundef %len.addr.0) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %len.addr.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len.addr.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end16, label %copy_to_user.exit.do.body_crit_edge

copy_to_user.exit.do.body_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %copy_to_user.exit.do.body_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_read.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_read, %if.then14)) #10
          to label %cleanup [label %if.then14], !srcloc !150

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_read.__UNIQUE_ID_ddebug301, ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end16:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv17 = zext i32 %len.addr.0 to i64
  %12 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ppos, align 8
  %add18 = add i64 %13, %conv17
  store i64 %add18, ptr %ppos, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_read.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_read, %if.then31)) #10
          to label %cleanup [label %if.then31], !srcloc !150

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ppos, align 8
  %16 = trunc i64 %15 to i32
  %conv35 = sub i32 %mul, %16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_read.__UNIQUE_ID_ddebug302, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %len.addr.0, i32 noundef %conv35) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end16, %if.then14, %do.body
  %retval.0 = phi i32 [ -14, %if.then14 ], [ %len.addr.0, %if.then31 ], [ -14, %do.body ], [ %len.addr.0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reading = getelementptr i8, ptr %1, i32 84
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reading, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %reading, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %reading, ptr %reading, i32 0, i32 1, ptr elementtype(i32) %reading) #10, !srcloc !162
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_long_cmpxchg.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

atomic_long_cmpxchg.exit:                         ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not, label %do.body, label %atomic_long_cmpxchg.exit.cleanup_crit_edge

atomic_long_cmpxchg.exit.cleanup_crit_edge:       ; preds = %atomic_long_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %atomic_long_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_open.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_open, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !150

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %csdev = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %4, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_open.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %atomic_long_cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %atomic_long_cmpxchg.exit.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etb_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reading = getelementptr i8, ptr %1, i32 84
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reading, i32 noundef 4) #10
  %2 = ptrtoint ptr %reading to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %reading, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_release.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %csdev = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %4, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_release.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etb_dump(ptr noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #10
  %mode = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5 = icmp eq i32 %1, 1
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__etb_disable_hw(ptr noundef %drvdata)
  tail call fastcc void @etb_dump_hw(ptr noundef %drvdata)
  tail call fastcc void @__etb_enable_hw(ptr noundef %drvdata)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etb_dump.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etb_dump, %if.then13)) #10
          to label %do.end16 [label %if.then13], !srcloc !150

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %csdev = getelementptr inbounds %struct.etb_drvdata, ptr %drvdata, i32 0, i32 2
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %3, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etb_dump.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !75, !77, !79, !81, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !128, !130, !131, !132, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_coresight_etb10__304_869_etb_driver_init6, !1, !"__initcall__kmod_coresight_etb10__304_869_etb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 869, i32 1}
!2 = !{ptr @__exitcall_etb_driver_exit, !1, !"__exitcall_etb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 871, i32 1}
!5 = !{ptr @__UNIQUE_ID_author306, !6, !"__UNIQUE_ID_author306", i1 false, i1 false}
!6 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 872, i32 1}
!7 = !{ptr @__UNIQUE_ID_description307, !8, !"__UNIQUE_ID_description307", i1 false, i1 false}
!8 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 873, i32 1}
!9 = !{ptr @__UNIQUE_ID_file308, !10, !"__UNIQUE_ID_file308", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 874, i32 1}
!11 = !{ptr @__UNIQUE_ID_license309, !10, !"__UNIQUE_ID_license309", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 858, i32 11}
!14 = !{ptr @etb_driver, !15, !"etb_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 856, i32 27}
!16 = !{ptr @etb_dev_pm_ops, !17, !"etb_dev_pm_ops", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 842, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 746, i32 44}
!20 = !{ptr @etb_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 762, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 66, i32 1}
!25 = !{ptr @etb_devs, !24, !"etb_devs", i1 false, i1 false}
!26 = !{ptr @etb_cs_ops, !27, !"etb_cs_ops", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 582, i32 35}
!28 = !{ptr @etb_sink_ops, !29, !"etb_sink_ops", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 574, i32 40}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 247, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @etb_enable.__UNIQUE_ID_ddebug297, !31, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 364, i32 2}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 371, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @etb_disable.__UNIQUE_ID_ddebug298, !39, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 268, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__etb_disable_hw._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @__etb_disable_hw._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 276, i32 3}
!51 = !{ptr @__etb_disable_hw._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @__etb_disable_hw._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 301, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @etb_dump_hw._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @etb_dump_hw._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 304, i32 3}
!60 = !{ptr @etb_dump_hw._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @etb_dump_hw._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 465, i32 3}
!64 = !{ptr @etb_update_buffer._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @etb_update_buffer._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @coresight_etb_groups, !67, !"coresight_etb_groups", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 722, i32 38}
!68 = !{ptr @coresight_etb_group, !69, !"coresight_etb_group", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 713, i32 37}
!70 = !{ptr @coresight_etb_attrs, !71, !"coresight_etb_attrs", i1 false, i1 false}
!71 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 708, i32 26}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 706, i32 8}
!74 = !{ptr @dev_attr_trigger_cntr, !73, !"dev_attr_trigger_cntr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 688, i32 22}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 719, i32 10}
!79 = !{ptr @coresight_etb_mgmt_group, !80, !"coresight_etb_mgmt_group", i1 false, i1 false}
!80 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 717, i32 37}
!81 = !{ptr @coresight_etb_mgmt_attrs, !82, !"coresight_etb_mgmt_attrs", i1 false, i1 false}
!82 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 670, i32 26}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 661, i32 1}
!85 = !{ptr @dev_attr_rdp, !84, !"dev_attr_rdp", i1 false, i1 false}
!86 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 662, i32 1}
!89 = !{ptr @dev_attr_sts, !88, !"dev_attr_sts", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 663, i32 1}
!92 = !{ptr @dev_attr_rrp, !91, !"dev_attr_rrp", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 664, i32 1}
!95 = !{ptr @dev_attr_rwp, !94, !"dev_attr_rwp", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 665, i32 1}
!98 = !{ptr @dev_attr_trg, !97, !"dev_attr_trg", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 666, i32 1}
!101 = !{ptr @dev_attr_ctl, !100, !"dev_attr_ctl", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 667, i32 1}
!104 = !{ptr @dev_attr_ffsr, !103, !"dev_attr_ffsr", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 668, i32 1}
!107 = !{ptr @dev_attr_ffcr, !106, !"dev_attr_ffcr", i1 false, i1 false}
!108 = !{ptr @etb_fops, !109, !"etb_fops", i1 false, i1 false}
!109 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 650, i32 37}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 628, i32 3}
!112 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @etb_read.__UNIQUE_ID_ddebug301, !111, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 635, i32 2}
!116 = !{ptr @etb_read.__UNIQUE_ID_ddebug302, !115, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 598, i32 2}
!119 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @etb_dump.__UNIQUE_ID_ddebug299, !118, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!123 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 609, i32 2}
!130 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @etb_open.__UNIQUE_ID_ddebug300, !129, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 646, i32 2}
!134 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @etb_release.__UNIQUE_ID_ddebug303, !133, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!136 = !{ptr @etb_ids, !137, !"etb_ids", i1 false, i1 false}
!137 = !{!"../drivers/hwtracing/coresight/coresight-etb10.c", i32 846, i32 29}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 4791208}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2148138433, i64 2148138459, i64 2148138488, i64 2148138522, i64 2148138553, i64 2148138576}
!150 = !{i64 2148711572, i64 2148711577, i64 2148711590, i64 2148711634, i64 2148711668, i64 2148711689}
!151 = !{i64 2148226885}
!152 = !{i64 2148141618, i64 2148141650, i64 2148141679, i64 2148141713, i64 2148141744, i64 2148141767}
!153 = !{i64 2148227114}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 4790790}
!156 = !{i64 2155412191}
!157 = !{i8 0, i8 2}
!158 = !{i64 2155411495}
!159 = !{!"auto-init"}
!160 = !{i64 2152747009, i64 2152747034}
!161 = !{i64 2148240256}
!162 = !{i64 513267, i64 513291, i64 513312, i64 513329, i64 513346}
!163 = !{i64 2148240482}
