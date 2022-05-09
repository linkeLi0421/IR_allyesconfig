; ModuleID = '/llk/IR_all_yes/drivers/w1/w1.c_pt.bc'
source_filename = "../drivers/w1/w1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.w1_netlink_msg = type { i8, i8, i16, %union.anon.145, [0 x i8] }
%union.anon.145 = type { %struct.w1_mst }
%struct.w1_mst = type { i32, i32 }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
%struct.w1_async_cmd = type { %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%union.anon.108 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_timeout = internal constant [13 x i8] c"wire.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@w1_timeout = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @w1_timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype457 = internal constant [26 x i8] c"wire.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout458 = internal constant [67 x i8] c"wire.parm=timeout:time in seconds between automatic slave searches\00", section ".modinfo", align 1
@__param_str_timeout_us = internal constant [16 x i8] c"wire.timeout_us\00", align 1
@w1_timeout_us = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout_us = internal constant %struct.kernel_param { ptr @__param_str_timeout_us, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @w1_timeout_us } }, section "__param", align 4
@__UNIQUE_ID_timeout_ustype459 = internal constant [29 x i8] c"wire.parmtype=timeout_us:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout_us460 = internal constant [75 x i8] c"wire.parm=timeout_us:time in microseconds between automatic slave searches\00", section ".modinfo", align 1
@w1_max_slave_count = dso_local global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_str_max_slave_count = internal constant [21 x i8] c"wire.max_slave_count\00", align 1
@__param_max_slave_count = internal constant %struct.kernel_param { ptr @__param_str_max_slave_count, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @w1_max_slave_count } }, section "__param", align 4
@__UNIQUE_ID_max_slave_counttype461 = internal constant [34 x i8] c"wire.parmtype=max_slave_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_slave_count462 = internal constant [72 x i8] c"wire.parm=max_slave_count:maximum number of slaves detected in a search\00", section ".modinfo", align 1
@w1_max_slave_ttl = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_str_slave_ttl = internal constant [15 x i8] c"wire.slave_ttl\00", align 1
@__param_slave_ttl = internal constant %struct.kernel_param { ptr @__param_str_slave_ttl, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @w1_max_slave_ttl } }, section "__param", align 4
@__UNIQUE_ID_slave_ttltype463 = internal constant [28 x i8] c"wire.parmtype=slave_ttl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_slave_ttl464 = internal constant [84 x i8] c"wire.parm=slave_ttl:Number of searches not seeing a slave before it will be removed\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"w1_mlock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@w1_mlock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @w1_mlock, i64 52), ptr getelementptr (i8, ptr @w1_mlock, i64 52) }, ptr @w1_mlock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_mlock\00", [23 x i8] zeroinitializer }, align 32
@w1_masters = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @w1_masters, ptr @w1_masters }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_master_driver\00", [47 x i8] zeroinitializer }, align 32
@w1_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w1_master_match, ptr @w1_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@w1_master_driver = dso_local global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str.2, ptr @w1_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @w1_master_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w1 bus master\00", [18 x i8] zeroinitializer }, align 32
@w1_master_device = dso_local global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.3, ptr null, ptr @w1_bus_type, ptr @w1_master_driver, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @w1_master_release, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@w1_master_defattr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_master_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_attach_slave_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 731, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed to allocate new slave device.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"w1_attach_slave_device\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drivers/w1/w1.c\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_attach_slave_device._entry_ptr = internal global ptr @w1_attach_slave_device._entry, section ".printk_index", align 4
@w1_attach_slave_device._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 746, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Attaching one wire slave %02x.%012llx crc %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@w1_attach_slave_device._entry_ptr.12 = internal global ptr @w1_attach_slave_device._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1-family-0x%02X\00", [47 x i8] zeroinitializer }, align 32
@w1_flock = external dso_local global %struct.spinlock, align 4
@w1_default_family = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 0, ptr @w1_default_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_attach_slave_device._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 759, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Family %x for %02x.%012llx.%02x is not registered.\0A\00", [44 x i8] zeroinitializer }, align 32
@w1_attach_slave_device._entry_ptr.16 = internal global ptr @w1_attach_slave_device._entry.14, section ".printk_index", align 4
@w1_attach_slave_device._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 769, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Attaching %s failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@w1_attach_slave_device._entry_ptr.19 = internal global ptr @w1_attach_slave_device._entry.17, section ".printk_index", align 4
@w1_unref_slave.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wire\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w1_unref_slave\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: detaching %s [%p].\0A\00", [40 x i8] zeroinitializer }, align 32
@w1_reconnect_slaves.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"w1_reconnect_slaves\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Reconnecting slaves in device %s for family %02x.\0A\00", [45 x i8] zeroinitializer }, align 32
@w1_reconnect_slaves.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.6, ptr @.str.25, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Reconnecting slaves in device %s has been finished.\0A\00", [43 x i8] zeroinitializer }, align 32
@w1_search.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w1_search\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No devices present on the wire.\0A\00", [63 x i8] zeroinitializer }, align 32
@w1_search.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.26, ptr @.str.6, ptr @.str.28, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Abort w1_search\0A\00", [47 x i8] zeroinitializer }, align 32
@w1_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.6, i32 1091, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: max_slave_count %d reached, will continue next search.\0A\00", [36 x i8] zeroinitializer }, align 32
@w1_search._entry_ptr = internal global ptr @w1_search._entry, section ".printk_index", align 4
@w1_slave_driver = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str.90, ptr @w1_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_wire__477_1275_w1_init6 = internal global ptr @w1_init, section ".initcall6.init", align 4
@__exitcall_w1_fini = internal global ptr @w1_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author478 = internal constant [47 x i8] c"wire.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description479 = internal constant [60 x i8] c"wire.description=Driver for 1-wire Dallas network protocol.\00", section ".modinfo", align 1
@__UNIQUE_ID_file480 = internal constant [26 x i8] c"wire.file=drivers/w1/wire\00", section ".modinfo", align 1
@__UNIQUE_ID_license481 = internal constant [17 x i8] c"wire.license=GPL\00", section ".modinfo", align 1
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"w1\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@w1_uevent.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w1_uevent\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown event.\0A\00", [16 x i8] zeroinitializer }, align 32
@w1_uevent.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.33, ptr @.str.6, ptr @.str.35, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Hotplug event for %s %s, bus_id=%s.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"W1_FID=%02X\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"W1_SLAVE_ID=%024LX\00", [45 x i8] zeroinitializer }, align 32
@w1_master_release.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"w1_master_release\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Releasing %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@w1_master_default_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @w1_master_attribute_name, ptr @w1_master_attribute_slaves, ptr @w1_master_attribute_slave_count, ptr @w1_master_attribute_max_slave_count, ptr @w1_master_attribute_attempts, ptr @w1_master_attribute_timeout, ptr @w1_master_attribute_timeout_us, ptr @w1_master_attribute_pointer, ptr @w1_master_attribute_search, ptr @w1_master_attribute_pullup, ptr @w1_master_attribute_add, ptr @w1_master_attribute_remove, ptr null], [44 x i8] zeroinitializer }, align 32
@w1_master_attribute_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_slaves = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_slaves, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_slave_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_slave_count, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_max_slave_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_max_slave_count, ptr @w1_master_attribute_store_max_slave_count }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_attempts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_attempts, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_timeout, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_timeout_us = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_timeout_us, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_pointer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_pointer, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_search = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_search, ptr @w1_master_attribute_store_search }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_pullup = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_pullup, ptr @w1_master_attribute_store_pullup }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_add = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_add, ptr @w1_master_attribute_store_add }, [36 x i8] zeroinitializer }, align 32
@w1_master_attribute_remove = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_master_attribute_show_remove, ptr @w1_master_attribute_store_remove }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w1_master_name\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_master_slaves\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not found.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"w1_master_slave_count\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"w1_master_max_slave_count\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"w1_master_attempts\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"w1_master_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w1_master_timeout_us\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"w1_master_pointer\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%p\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_master_search\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_master_pullup\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w1_master_add\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"write device id xx-xxxxxxxxxxxx to add slave\0A\00", [50 x i8] zeroinitializer }, align 32
@w1_master_attribute_store_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 478, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device %s already exists\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"w1_master_attribute_store_add\00", [34 x i8] zeroinitializer }, align 32
@w1_master_attribute_store_add._entry_ptr = internal global ptr @w1_master_attribute_store_add._entry, section ".printk_index", align 4
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bad slave string format, expecting ff-dddddddddddd\0A\00", [44 x i8] zeroinitializer }, align 32
@w1_atoreg_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 417, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w1_atoreg_num\00", [18 x i8] zeroinitializer }, align 32
@w1_atoreg_num._entry_ptr = internal global ptr @w1_atoreg_num._entry, section ".printk_index", align 4
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02x-%012llx\00", [19 x i8] zeroinitializer }, align 32
@w1_atoreg_num._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 422, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@w1_atoreg_num._entry_ptr.64 = internal global ptr @w1_atoreg_num._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_master_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"write device id xx-xxxxxxxxxxxx to remove slave\0A\00", [47 x i8] zeroinitializer }, align 32
@w1_master_attribute_store_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 518, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device %02x-%012llx doesn't exists\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"w1_master_attribute_store_remove\00", [63 x i8] zeroinitializer }, align 32
@w1_master_attribute_store_remove._entry_ptr = internal global ptr @w1_master_attribute_store_remove._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@w1_default_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr null, ptr null, ptr @w1_slave_default_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_slave_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_slave_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_slave_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_slave_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_slave_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_rw, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_rw = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 4096, ptr null, ptr null, ptr @rw_read, ptr @rw_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@w1_slave_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_slave_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__w1_attach_slave_device.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.70, ptr @.str.6, ptr @.str.71, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__w1_attach_slave_device\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: registering %s as %p.\0A\00", [37 x i8] zeroinitializer }, align 32
@__w1_attach_slave_device._entry = internal constant %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.6, i32 704, ptr @.str.7, ptr @.str.8 }, align 1
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device registration [%s] failed. err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__w1_attach_slave_device._entry_ptr = internal global ptr @__w1_attach_slave_device._entry, section ".printk_index", align 4
@w1_slave_release.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.73, ptr @.str.6, ptr @.str.74, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_slave_release\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Releasing %s [%p]\0A\00", [41 x i8] zeroinitializer }, align 32
@w1_slave_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_slave_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_slave_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_name, ptr @dev_attr_id, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@w1_family_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"add_slave() call failed. err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_family_notify\00", [47 x i8] zeroinitializer }, align 32
@w1_family_notify._entry_ptr = internal global ptr @w1_family_notify._entry, section ".printk_index", align 4
@w1_family_notify._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.6, i32 643, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sysfs group creation failed. err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@w1_family_notify._entry_ptr.81 = internal global ptr @w1_family_notify._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w1_slave_temp\00", [18 x i8] zeroinitializer }, align 32
@w1_family_notify._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.78, ptr @.str.6, i32 655, ptr @.str.85, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not create hwmon device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@w1_family_notify._entry_ptr.86 = internal global ptr @w1_family_notify._entry.83, section ".printk_index", align 4
@w1_addr_crc_is_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.6, i32 941, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DS28E04 crc workaround on %02x.%012llx.%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w1_addr_crc_is_valid\00", [43 x i8] zeroinitializer }, align 32
@w1_addr_crc_is_valid._entry_ptr = internal global ptr @w1_addr_crc_is_valid._entry, section ".printk_index", align 4
@w1_addr_crc_is_valid.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.88, ptr @.str.6, ptr @.str.89, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"w1 addr crc mismatch: %02x.%012llx.%02x != 0x%02x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w1_slave_driver\00", [16 x i8] zeroinitializer }, align 32
@w1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016Driver for 1-wire Dallas network protocol.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w1_init\00", [24 x i8] zeroinitializer }, align 32
@w1_init._entry_ptr = internal global ptr @w1_init._entry, section ".printk_index", align 4
@w1_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.6, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to register bus. err=%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@w1_init._entry_ptr.95 = internal global ptr @w1_init._entry.93, section ".printk_index", align 4
@w1_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.6, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to register master driver. err=%d.\0A\00", [51 x i8] zeroinitializer }, align 32
@w1_init._entry_ptr.98 = internal global ptr @w1_init._entry.96, section ".printk_index", align 4
@w1_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.6, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register slave driver. err=%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@w1_init._entry_ptr.101 = internal global ptr @w1_init._entry.99, section ".printk_index", align 4
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"w1_timeout\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 31, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"w1_timeout_us\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 35, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"w1_max_slave_count\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 48, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"w1_max_slave_ttl\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 53, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"w1_mlock\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 58, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"w1_masters\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 59, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 182, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"w1_bus_type\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 175, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"w1_master_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 181, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 190, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"w1_master_device\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 187, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"w1_master_defattr_group\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 566, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 729, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 745, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 750, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"w1_default_family\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 169, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 757, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 768, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 795, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 885, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 910, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1018, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1063, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1089, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"w1_slave_driver\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 195, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 176, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 589, i32 17 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 593, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 596, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 600, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 606, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 610, i32 28 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 75, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [24 x i8] c"w1_master_default_attrs\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 550, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant [25 x i8] c"w1_master_attribute_name\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [27 x i8] c"w1_master_attribute_slaves\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [32 x i8] c"w1_master_attribute_slave_count\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [36 x i8] c"w1_master_attribute_max_slave_count\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [29 x i8] c"w1_master_attribute_attempts\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [28 x i8] c"w1_master_attribute_timeout\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [31 x i8] c"w1_master_attribute_timeout_us\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [28 x i8] c"w1_master_attribute_pointer\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"w1_master_attribute_search\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"w1_master_attribute_pullup\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [24 x i8] c"w1_master_attribute_add\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"w1_master_attribute_remove\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 537, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 216, i32 23 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 538, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 384, i32 41 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 539, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 363, i32 23 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 540, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 541, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 352, i32 23 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 542, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 543, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 544, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 297, i32 23 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 545, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 546, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 547, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 396, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 478, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 413, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 417, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 420, i32 18 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 422, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 548, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 493, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 517, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [16 x i8] c"w1_default_fops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 165, i32 35 }
@___asan_gen_.390 = private unnamed_addr constant [24 x i8] c"w1_slave_default_groups\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 160, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant [23 x i8] c"w1_slave_default_group\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 156, i32 37 }
@___asan_gen_.396 = private unnamed_addr constant [19 x i8] c"w1_slave_bin_attrs\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 151, i32 30 }
@___asan_gen_.399 = private unnamed_addr constant [12 x i8] c"bin_attr_rw\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 149, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant [16 x i8] c"w1_slave_groups\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 694, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 702, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 84, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [15 x i8] c"w1_slave_group\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 114, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant [15 x i8] c"w1_slave_attrs\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 109, i32 26 }
@___asan_gen_.429 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 96, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 107, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 632, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 641, i32 5 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 650, i32 7 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 654, i32 5 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 940, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 945, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 196, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1218, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1224, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1230, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private constant [19 x i8] c"../drivers/w1/w1.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1237, i32 3 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author478, ptr @__UNIQUE_ID_description479, ptr @__UNIQUE_ID_file480, ptr @__UNIQUE_ID_license481, ptr @__UNIQUE_ID_max_slave_count462, ptr @__UNIQUE_ID_max_slave_counttype461, ptr @__UNIQUE_ID_slave_ttl464, ptr @__UNIQUE_ID_slave_ttltype463, ptr @__UNIQUE_ID_timeout458, ptr @__UNIQUE_ID_timeout_us460, ptr @__UNIQUE_ID_timeout_ustype459, ptr @__UNIQUE_ID_timeouttype457, ptr @__exitcall_w1_fini, ptr @__initcall__kmod_wire__477_1275_w1_init6, ptr @__param_max_slave_count, ptr @__param_slave_ttl, ptr @__param_timeout, ptr @__param_timeout_us, ptr @__w1_attach_slave_device._entry, ptr @__w1_attach_slave_device._entry_ptr, ptr @w1_addr_crc_is_valid._entry, ptr @w1_addr_crc_is_valid._entry_ptr, ptr @w1_atoreg_num._entry, ptr @w1_atoreg_num._entry.63, ptr @w1_atoreg_num._entry_ptr, ptr @w1_atoreg_num._entry_ptr.64, ptr @w1_attach_slave_device._entry, ptr @w1_attach_slave_device._entry.14, ptr @w1_attach_slave_device._entry.17, ptr @w1_attach_slave_device._entry.9, ptr @w1_attach_slave_device._entry_ptr, ptr @w1_attach_slave_device._entry_ptr.12, ptr @w1_attach_slave_device._entry_ptr.16, ptr @w1_attach_slave_device._entry_ptr.19, ptr @w1_family_notify._entry, ptr @w1_family_notify._entry.79, ptr @w1_family_notify._entry.83, ptr @w1_family_notify._entry_ptr, ptr @w1_family_notify._entry_ptr.81, ptr @w1_family_notify._entry_ptr.86, ptr @w1_fini, ptr @w1_init._entry, ptr @w1_init._entry.93, ptr @w1_init._entry.96, ptr @w1_init._entry.99, ptr @w1_init._entry_ptr, ptr @w1_init._entry_ptr.101, ptr @w1_init._entry_ptr.95, ptr @w1_init._entry_ptr.98, ptr @w1_master_attribute_store_add._entry, ptr @w1_master_attribute_store_add._entry_ptr, ptr @w1_master_attribute_store_remove._entry, ptr @w1_master_attribute_store_remove._entry_ptr, ptr @w1_search._entry, ptr @w1_search._entry_ptr, ptr @w1_timeout, ptr @w1_timeout_us, ptr @w1_max_slave_count, ptr @w1_max_slave_ttl, ptr @.str, ptr @w1_mlock, ptr @.str.1, ptr @w1_masters, ptr @.str.2, ptr @w1_bus_type, ptr @w1_master_driver, ptr @.str.3, ptr @w1_master_device, ptr @w1_master_defattr_group, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @w1_default_family, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @w1_slave_driver, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @w1_master_default_attrs, ptr @w1_master_attribute_name, ptr @w1_master_attribute_slaves, ptr @w1_master_attribute_slave_count, ptr @w1_master_attribute_max_slave_count, ptr @w1_master_attribute_attempts, ptr @w1_master_attribute_timeout, ptr @w1_master_attribute_timeout_us, ptr @w1_master_attribute_pointer, ptr @w1_master_attribute_search, ptr @w1_master_attribute_pullup, ptr @w1_master_attribute_add, ptr @w1_master_attribute_remove, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @w1_default_fops, ptr @w1_slave_default_groups, ptr @w1_slave_default_group, ptr @w1_slave_bin_attrs, ptr @bin_attr_rw, ptr @.str.69, ptr @w1_slave_groups, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @w1_slave_group, ptr @w1_slave_attrs, ptr @dev_attr_name, ptr @dev_attr_id, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_timeout_us to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_max_slave_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_max_slave_ttl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_mlock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_masters to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_device to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_defattr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_attach_slave_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_attach_slave_device._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_default_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_attach_slave_device._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_attach_slave_device._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_default_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_slaves to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_slave_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_max_slave_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_attempts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_timeout_us to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_pointer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_search to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_pullup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_add to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_store_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_atoreg_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_atoreg_num._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_master_attribute_store_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_default_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_rw to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_notify._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_notify._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_addr_crc_is_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_master_probe(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_master_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_master_release.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_master_release, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !295

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr i8, ptr %dev, i32 -396
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_master_release.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef %name) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  %0 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 1396)
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @w1_slave_search_device(ptr noundef %dev, ptr nocapture noundef readonly %rn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %slist = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn45 = load ptr, ptr %slist, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %slist
  br i1 %cmp.not46, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load2 = load i64, ptr %rn, align 8
  %bf.lshr21 = lshr i64 %bf.load2, 56
  %conv22 = trunc i64 %bf.lshr21 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn47 = phi ptr [ %.pn45, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %reg_num = getelementptr i8, ptr %.pn47, i32 12
  %2 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %2)
  %bf.load = load i64, ptr %reg_num, align 8
  %3 = xor i64 %bf.load2, %bf.load
  %4 = and i64 %3, 72057594037927935
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %5 = icmp eq i64 %4, 0
  %bf.lshr18 = lshr i64 %bf.load, 56
  %conv19 = trunc i64 %bf.lshr18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %conv22)
  %cmp23 = icmp eq i32 %conv19, %conv22
  %or.cond = select i1 %5, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %sl.0.le = getelementptr i8, ptr %.pn47, i32 -36
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %6 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %slist
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %sl.0.le, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_create_master_attributes(ptr noundef %master) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_master, ptr %master, i32 0, i32 23
  %call = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @w1_master_defattr_group) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_destroy_master_attributes(ptr noundef %master) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_master, ptr %master, i32 0, i32 23
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @w1_master_defattr_group) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_attach_slave_device(ptr noundef %dev, ptr nocapture noundef readonly %rn) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.w1_netlink_msg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #14
  %0 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1016) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev1 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call7.i.i, align 8
  %master = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %master, align 4
  %flags = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  %4 = call ptr @memset(ptr %msg, i32 0, i32 12)
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rn, align 8
  %7 = ptrtoint ptr %reg_num to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %reg_num, align 8
  %refcnt = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  %8 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %refcnt, align 8
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %refcnt3 = getelementptr inbounds %struct.w1_master, ptr %10, i32 0, i32 14
  %call.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt3, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt3, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt3, ptr %refcnt3, i32 1, ptr elementtype(i32) %refcnt3) #14, !srcloc !296
  %slave_count = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %slave_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slave_count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %slave_count, align 4
  %dev7 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  %14 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %14)
  %bf.load = load i64, ptr %rn, align 8
  %15 = trunc i64 %bf.load to i32
  %conv = and i32 %15, 255
  %bf.lshr = lshr i64 %bf.load, 8
  %bf.clear9 = and i64 %bf.lshr, 281474976710655
  %bf.lshr11 = lshr i64 %bf.load, 56
  %conv12 = trunc i64 %bf.lshr11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.10, i32 noundef %conv, i64 noundef %bf.clear9, i32 noundef %conv12) #18
  %mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  %16 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %16)
  %bf.load13 = load i64, ptr %rn, align 8
  %17 = trunc i64 %bf.load13 to i32
  %conv15 = and i32 %17, 255
  %call16 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.13, i32 noundef %conv15) #14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @w1_flock) #14
  %18 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %18)
  %bf.load18 = load i64, ptr %rn, align 8
  %conv20 = trunc i64 %bf.load18 to i8
  %call21 = tail call ptr @w1_family_registered(i8 noundef zeroext %conv20) #14
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %19)
  %bf.load28 = load i64, ptr %rn, align 8
  %20 = trunc i64 %bf.load28 to i32
  %conv30 = and i32 %20, 255
  %bf.lshr35 = lshr i64 %bf.load28, 8
  %bf.clear36 = and i64 %bf.lshr35, 281474976710655
  %bf.lshr38 = lshr i64 %bf.load28, 56
  %conv39 = trunc i64 %bf.lshr38 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.15, i32 noundef %conv30, i32 noundef %conv30, i64 noundef %bf.clear36, i32 noundef %conv39) #18
  br label %if.end40

if.end40:                                         ; preds = %if.then23, %if.end.if.end40_crit_edge
  %f.0 = phi ptr [ %call21, %if.end.if.end40_crit_edge ], [ @w1_default_family, %if.then23 ]
  tail call void @__w1_family_get(ptr noundef nonnull %f.0) #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @w1_flock) #14
  %family = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %f.0, ptr %family, align 8
  %call41 = tail call fastcc i32 @__w1_attach_slave_device(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %do.end46, label %if.end52

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, ptr noundef %name) #18
  %22 = ptrtoint ptr %slave_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slave_count, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %slave_count, align 4
  %24 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %family, align 8
  tail call void @w1_family_put(ptr noundef %25) #14
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  %refcnt51 = getelementptr inbounds %struct.w1_master, ptr %27, i32 0, i32 14
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt51, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt51, i32 1, i32 3, i32 1) #14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt51, ptr %refcnt51, i32 1, ptr elementtype(i32) %refcnt51) #14, !srcloc !297
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %slave_ttl = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 9
  %29 = ptrtoint ptr %slave_ttl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slave_ttl, align 4
  %ttl = getelementptr inbounds %struct.w1_slave, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %ttl to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ttl, align 4
  %32 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rn, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %0, align 4
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %msg, align 4
  call void @w1_netlink_send(ptr noundef %dev, ptr noundef nonnull %msg) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end46, %do.end
  %retval.0 = phi i32 [ %call41, %do.end46 ], [ 0, %if.end52 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #14
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @w1_family_registered(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__w1_family_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__w1_attach_slave_device(ptr noundef %sl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %dev = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 23
  %dev1 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %parent = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @w1_slave_driver, ptr %driver, align 4
  %bus = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @w1_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 35
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @w1_slave_release, ptr %release, align 4
  %groups = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 34
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @w1_slave_groups, ptr %groups, align 8
  %of_node = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 23, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %family = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 8
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %family, align 8
  %of_match_table = getelementptr inbounds %struct.w1_family, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_match_table, align 4
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef %8, ptr noundef %12, ptr noundef null) #14
  %of_node9 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 27
  %13 = ptrtoint ptr %of_node9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %of_node9, align 8
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %14 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %14)
  %bf.load = load i64, ptr %reg_num, align 8
  %15 = trunc i64 %bf.load to i32
  %conv = and i32 %15, 255
  %bf.lshr = lshr i64 %bf.load, 8
  %bf.clear13 = and i64 %bf.lshr, 281474976710655
  %call14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %conv, i64 noundef %bf.clear13) #14
  %name = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 1
  %16 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %16)
  %bf.load16 = load i64, ptr %reg_num, align 8
  %17 = trunc i64 %bf.load16 to i32
  %conv18 = and i32 %17, 255
  %bf.lshr21 = lshr i64 %bf.load16, 8
  %bf.clear22 = and i64 %bf.lshr21, 281474976710655
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.62, i32 noundef %conv18, i64 noundef %bf.clear22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__w1_attach_slave_device.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__w1_attach_slave_device, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !295

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i82 = phi ptr [ %21, %if.end.i ], [ %19, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__w1_attach_slave_device.__UNIQUE_ID_ddebug469, ptr noundef %dev1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, ptr noundef %retval.0.i82, ptr noundef %sl) #14
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %uevent_suppress.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 0, i32 8
  %22 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  %call32 = tail call i32 @device_register(ptr noundef %dev1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.end37, label %if.end42

do.end37:                                         ; preds = %do.end
  %init_name.i83 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %init_name.i83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i83, align 8
  %tobool.not.i84 = icmp eq ptr %24, null
  br i1 %tobool.not.i84, label %if.end.i85, label %do.end37.dev_name.exit87_crit_edge

do.end37.dev_name.exit87_crit_edge:               ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit87

if.end.i85:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit87

dev_name.exit87:                                  ; preds = %if.end.i85, %do.end37.dev_name.exit87_crit_edge
  %retval.0.i86 = phi ptr [ %26, %if.end.i85 ], [ %24, %do.end37.dev_name.exit87_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.72, ptr noundef %retval.0.i86, i32 noundef %call32) #18
  tail call void @put_device(ptr noundef %dev1) #14
  br label %cleanup

if.end42:                                         ; preds = %do.end
  %27 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %family, align 8
  %fops1.i = getelementptr inbounds %struct.w1_family, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fops1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fops1.i, align 4
  %tobool.not.i88 = icmp eq ptr %30, null
  br i1 %tobool.not.i88, label %if.end42.w1_family_notify.exit_crit_edge, label %if.end.i89

if.end42.w1_family_notify.exit_crit_edge:         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_family_notify.exit

if.end.i89:                                       ; preds = %if.end42
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool2.not.i = icmp eq ptr %32, null
  br i1 %tobool2.not.i, label %if.end.i89.if.end7.i_crit_edge, label %if.then3.i

if.end.i89.if.end7.i_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i89
  %call.i90 = tail call i32 %32(ptr noundef %sl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i = icmp slt i32 %call.i90, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.77, i32 noundef %call.i90) #18
  br label %w1_family_notify.exit

if.end7.i:                                        ; preds = %if.then3.i.if.end7.i_crit_edge, %if.end.i89.if.end7.i_crit_edge
  %groups.i = getelementptr inbounds %struct.w1_family_ops, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %groups.i, align 4
  %tobool8.not.i = icmp eq ptr %34, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end20.i_crit_edge, label %if.then9.i

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then9.i:                                       ; preds = %if.end7.i
  %call12.i = tail call i32 @sysfs_create_groups(ptr noundef %dev1, ptr noundef nonnull %34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then9.i.if.end20.i_crit_edge, label %do.end17.i

if.then9.i.if.end20.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

do.end17.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.80, i32 noundef %call12.i) #18
  br label %w1_family_notify.exit

if.end20.i:                                       ; preds = %if.then9.i.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  %chip_info.i = getelementptr inbounds %struct.w1_family_ops, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip_info.i, align 4
  %tobool21.not.i = icmp eq ptr %36, null
  br i1 %tobool21.not.i, label %if.end20.i.w1_family_notify.exit_crit_edge, label %if.then22.i

if.end20.i.w1_family_notify.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_family_notify.exit

if.then22.i:                                      ; preds = %if.end20.i
  %call25.i = tail call ptr @hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str.82, ptr noundef %sl, ptr noundef nonnull %36, ptr noundef null) #14
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end30.i, label %if.else.i

do.end30.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.84) #18
  br label %w1_family_notify.exit

if.else.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %hwmon32.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 11
  %37 = ptrtoint ptr %hwmon32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call25.i, ptr %hwmon32.i, align 8
  br label %w1_family_notify.exit

w1_family_notify.exit:                            ; preds = %if.else.i, %do.end30.i, %if.end20.i.w1_family_notify.exit_crit_edge, %do.end17.i, %do.end.i, %if.end42.w1_family_notify.exit_crit_edge
  %38 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i92 = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i93 = and i8 %bf.load.i92, -9
  store i8 %bf.clear.i93, ptr %uevent_suppress.i, align 4
  %call46 = tail call i32 @kobject_uevent(ptr noundef %dev1, i32 noundef 0) #14
  %39 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master, align 4
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %40, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %w1_slave_entry = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 2
  %41 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master, align 4
  %slist = getelementptr inbounds %struct.w1_master, ptr %42, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.w1_master, ptr %42, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %w1_slave_entry, ptr noundef %44, ptr noundef %slist) #14
  br i1 %call.i.i, label %if.end.i.i, label %w1_family_notify.exit.list_add_tail.exit_crit_edge

w1_family_notify.exit.list_add_tail.exit_crit_edge: ; preds = %w1_family_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %w1_family_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %w1_slave_entry, ptr %prev.i, align 4
  %46 = ptrtoint ptr %w1_slave_entry to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %slist, ptr %w1_slave_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %w1_slave_entry, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %w1_family_notify.exit.list_add_tail.exit_crit_edge
  %49 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master, align 4
  %list_mutex50 = getelementptr inbounds %struct.w1_master, ptr %50, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %list_mutex50) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %dev_name.exit87
  %retval.0 = phi i32 [ %call32, %dev_name.exit87 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_family_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_netlink_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_unref_slave(ptr noundef %sl) local_unnamed_addr #1 align 64 {
entry:
  %msg = alloca %struct.w1_netlink_msg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %refcnt1 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !298
  tail call void @llvm.prefetch.p0(ptr %refcnt1, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt1, ptr %refcnt1, i32 1, ptr elementtype(i32) %refcnt1) #14, !srcloc !299
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #14
  %3 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_unref_slave.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_unref_slave, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !295

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dev6 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %name = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_unref_slave.__UNIQUE_ID_ddebug470, ptr noundef %dev6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef %sl) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %w1_slave_entry = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 2
  %call.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w1_slave_entry) #14
  br i1 %call.i.i28, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %w1_slave_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %w1_slave_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %w1_slave_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %w1_slave_entry, align 4
  %prev.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg, align 4
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %13 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %reg_num, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %3, align 4
  store i8 1, ptr %msg, align 4
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_netlink_send(ptr noundef %17, ptr noundef nonnull %msg) #14
  %family.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 8
  %18 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %family.i, align 8
  %fops1.i = getelementptr inbounds %struct.w1_family, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %fops1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fops1.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %list_del.exit.w1_family_notify.exit_crit_edge, label %if.end.i

list_del.exit.w1_family_notify.exit_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_family_notify.exit

if.end.i:                                         ; preds = %list_del.exit
  %chip_info36.i = getelementptr inbounds %struct.w1_family_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %chip_info36.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info36.i, align 4
  %tobool37.not.i = icmp eq ptr %23, null
  br i1 %tobool37.not.i, label %if.end.i.if.end42.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %hwmon38.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 11
  %24 = ptrtoint ptr %hwmon38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwmon38.i, align 8
  %tobool39.not.i = icmp eq ptr %25, null
  br i1 %tobool39.not.i, label %land.lhs.true.i.if.end42.i_crit_edge, label %if.then40.i

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @hwmon_device_unregister(ptr noundef nonnull %25) #14
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %land.lhs.true.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %remove_slave.i = getelementptr inbounds %struct.w1_family_ops, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %remove_slave.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remove_slave.i, align 4
  %tobool43.not.i = icmp eq ptr %27, null
  br i1 %tobool43.not.i, label %if.end42.i.if.end48.i_crit_edge, label %if.then44.i

if.end42.i.if.end48.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %family.i, align 8
  %fops46.i = getelementptr inbounds %struct.w1_family, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %fops46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fops46.i, align 4
  %remove_slave47.i = getelementptr inbounds %struct.w1_family_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %remove_slave47.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %remove_slave47.i, align 4
  call void %33(ptr noundef %sl) #14
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %if.end42.i.if.end48.i_crit_edge
  %groups49.i = getelementptr inbounds %struct.w1_family_ops, ptr %21, i32 0, i32 2
  %34 = ptrtoint ptr %groups49.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %groups49.i, align 4
  %tobool50.not.i = icmp eq ptr %35, null
  br i1 %tobool50.not.i, label %if.end48.i.w1_family_notify.exit_crit_edge, label %if.then51.i

if.end48.i.w1_family_notify.exit_crit_edge:       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_family_notify.exit

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev52.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void @sysfs_remove_groups(ptr noundef %dev52.i, ptr noundef nonnull %35) #14
  br label %w1_family_notify.exit

w1_family_notify.exit:                            ; preds = %if.then51.i, %if.end48.i.w1_family_notify.exit_crit_edge, %list_del.exit.w1_family_notify.exit_crit_edge
  %dev10 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void @device_unregister(ptr noundef %dev10) #14
  call void @kfree(ptr noundef %sl) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #14
  br label %if.end11

if.end11:                                         ; preds = %w1_family_notify.exit, %entry.if.end11_crit_edge
  %refcnt12 = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 14
  %call.i.i27 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt12, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcnt12, i32 1, i32 3, i32 1) #14
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt12, ptr %refcnt12, i32 1, ptr elementtype(i32) %refcnt12) #14, !srcloc !297
  call void @mutex_unlock(ptr noundef %list_mutex) #14
  ret i32 %asmresult.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_slave_detach(ptr noundef %sl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %flags = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %list_mutex3 = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %list_mutex3) #14
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @w1_unref_slave(ptr noundef %sl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %phi.sel = select i1 %tobool6.not, i32 0, i32 -16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %destroy_now.0.in = phi i32 [ %phi.sel, %if.then ], [ -16, %entry.if.end_crit_edge ]
  ret i32 %destroy_now.0.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @w1_search_master_id(i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @w1_mlock, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %dev.0.in = phi ptr [ @w1_masters, %entry ], [ %dev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %cmp.not = icmp eq ptr %dev.0, @w1_masters
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id1 = getelementptr inbounds %struct.w1_master, ptr %dev.0, i32 0, i32 11
  %1 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1, align 4
  %cmp2 = icmp eq i32 %2, %id
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.w1_master, ptr %dev.0, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !296
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %spec.select = phi ptr [ %dev.0, %if.then ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #14
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @w1_search_slave(ptr nocapture noundef readonly %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @w1_mlock, i32 noundef 0) #14
  %dev.072 = load ptr, ptr @w1_masters, align 4
  %cmp.not73 = icmp eq ptr %dev.072, @w1_masters
  br i1 %cmp.not73, label %entry.for.end47_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

for.body:                                         ; preds = %for.inc41.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.074 = phi ptr [ %dev.0, %for.inc41.critedge.for.body_crit_edge ], [ %dev.072, %entry.for.body_crit_edge ]
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev.074, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %slist = getelementptr inbounds %struct.w1_master, ptr %dev.074, i32 0, i32 4
  %0 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn69 = load ptr, ptr %slist, align 4
  %cmp6.not70 = icmp eq ptr %.pn69, %slist
  br i1 %cmp6.not70, label %for.body.for.inc41.critedge_crit_edge, label %for.body8.lr.ph

for.body.for.inc41.critedge_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41.critedge

for.body8.lr.ph:                                  ; preds = %for.body
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load9 = load i64, ptr %id, align 8
  %bf.lshr28 = lshr i64 %bf.load9, 56
  %conv29 = trunc i64 %bf.lshr28 to i32
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %.pn71 = phi ptr [ %.pn69, %for.body8.lr.ph ], [ %.pn, %for.inc.for.body8_crit_edge ]
  %reg_num = getelementptr i8, ptr %.pn71, i32 12
  %2 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %2)
  %bf.load = load i64, ptr %reg_num, align 8
  %3 = xor i64 %bf.load9, %bf.load
  %4 = and i64 %3, 72057594037927935
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %5 = icmp eq i64 %4, 0
  %bf.lshr25 = lshr i64 %bf.load, 56
  %conv26 = trunc i64 %bf.lshr25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %conv29)
  %cmp30 = icmp eq i32 %conv26, %conv29
  %or.cond = select i1 %5, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #16
  %sl.1.le = getelementptr i8, ptr %.pn71, i32 -36
  %refcnt = getelementptr inbounds %struct.w1_master, ptr %dev.074, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !296
  %refcnt32 = getelementptr i8, ptr %.pn71, i32 20
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt32, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt32, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt32, ptr %refcnt32, i32 1, ptr elementtype(i32) %refcnt32) #14, !srcloc !296
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  br label %for.end47

for.inc:                                          ; preds = %for.body8
  %8 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp6.not = icmp eq ptr %.pn, %slist
  br i1 %cmp6.not, label %for.inc.for.inc41.critedge_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body8

for.inc.for.inc41.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41.critedge

for.inc41.critedge:                               ; preds = %for.inc.for.inc41.critedge_crit_edge, %for.body.for.inc41.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %9 = ptrtoint ptr %dev.074 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev.0 = load ptr, ptr %dev.074, align 4
  %cmp.not = icmp eq ptr %dev.0, @w1_masters
  br i1 %cmp.not, label %for.inc41.critedge.for.end47_crit_edge, label %for.inc41.critedge.for.body_crit_edge

for.inc41.critedge.for.body_crit_edge:            ; preds = %for.inc41.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc41.critedge.for.end47_crit_edge:           ; preds = %for.inc41.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

for.end47:                                        ; preds = %for.inc41.critedge.for.end47_crit_edge, %if.then, %entry.for.end47_crit_edge
  %spec.select = phi ptr [ %sl.1.le, %if.then ], [ null, %entry.for.end47_crit_edge ], [ null, %for.inc41.critedge.for.end47_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #14
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_reconnect_slaves(ptr nocapture noundef readonly %f, i32 noundef %attach) local_unnamed_addr #1 align 64 {
entry:
  %rn = alloca %struct.w1_reg_num, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @w1_mlock, i32 noundef 0) #14
  %dev.0123 = load ptr, ptr @w1_masters, align 4
  %cmp.not124 = icmp eq ptr %dev.0123, @w1_masters
  br i1 %cmp.not124, label %entry.for.end83_crit_edge, label %do.body.lr.ph

entry.for.end83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end83

do.body.lr.ph:                                    ; preds = %entry
  %fid = getelementptr inbounds %struct.w1_family, ptr %f, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attach)
  %tobool21.not = icmp eq i32 %attach, 0
  br label %do.body

do.body:                                          ; preds = %do.end74.do.body_crit_edge, %do.body.lr.ph
  %dev.0125 = phi ptr [ %dev.0123, %do.body.lr.ph ], [ %dev.0, %do.end74.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_reconnect_slaves.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_reconnect_slaves, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !295

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev5 = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 23
  %name = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 2
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fid, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_reconnect_slaves.__UNIQUE_ID_ddebug471, ptr noundef %dev5, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %mutex = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %slist = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 4
  %2 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slist, align 8
  %cmp16.not119 = icmp eq ptr %3, %slist
  br i1 %cmp16.not119, label %do.end.do.body56_crit_edge, label %do.end.for.body20_crit_edge

do.end.for.body20_crit_edge:                      ; preds = %do.end
  br label %for.body20

do.end.do.body56_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body56

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %do.end.for.body20_crit_edge
  %.pn.in120 = phi ptr [ %.pn122, %for.inc.for.body20_crit_edge ], [ %3, %do.end.for.body20_crit_edge ]
  %sl.0121 = getelementptr i8, ptr %.pn.in120, i32 -36
  %4 = ptrtoint ptr %.pn.in120 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn122 = load ptr, ptr %.pn.in120, align 4
  %family34 = getelementptr i8, ptr %.pn.in120, i32 36
  %5 = ptrtoint ptr %family34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %family34, align 8
  %fid35 = getelementptr inbounds %struct.w1_family, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %fid35 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fid35, align 4
  br i1 %tobool21.not, label %land.lhs.true33.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp24 = icmp eq i8 %8, 0
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true
  %reg_num = getelementptr i8, ptr %.pn.in120, i32 12
  %9 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %9)
  %bf.load = load i64, ptr %reg_num, align 8
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fid, align 4
  %12 = trunc i64 %bf.load to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp30 = icmp eq i8 %11, %12
  br i1 %cmp30, label %land.lhs.true26.if.then41_crit_edge, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true26.if.then41_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

land.lhs.true33.critedge:                         ; preds = %for.body20
  %13 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fid, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %14)
  %cmp39 = icmp eq i8 %8, %14
  br i1 %cmp39, label %land.lhs.true33.critedge.if.then41_crit_edge, label %land.lhs.true33.critedge.for.inc_crit_edge

land.lhs.true33.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true33.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true33.critedge.if.then41_crit_edge:     ; preds = %land.lhs.true33.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

if.then41:                                        ; preds = %land.lhs.true33.critedge.if.then41_crit_edge, %land.lhs.true26.if.then41_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn) #14
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %reg_num43 = getelementptr i8, ptr %.pn.in120, i32 12
  %15 = ptrtoint ptr %reg_num43 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %reg_num43, align 8
  %17 = ptrtoint ptr %rn to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rn, align 8
  %master.i = getelementptr i8, ptr %.pn.in120, i32 32
  %18 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i, align 4
  %list_mutex.i = getelementptr inbounds %struct.w1_master, ptr %19, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i, i32 noundef 0) #14
  %flags.i = getelementptr i8, ptr %.pn.in120, i32 28
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #14
  %23 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master.i, align 4
  %list_mutex3.i = getelementptr inbounds %struct.w1_master, ptr %24, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %list_mutex3.i) #14
  br i1 %tobool.not.i, label %if.then.i, label %if.then41.if.end48_crit_edge

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then.i:                                        ; preds = %if.then41
  %call5.i = tail call i32 @w1_unref_slave(ptr noundef %sl.0121) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then46, label %if.then.i.if.end48_crit_edge

if.then.i.if.end48_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then46:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47 = call i32 @w1_attach_slave_device(ptr noundef %dev.0125, ptr noundef nonnull %rn)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then.i.if.end48_crit_edge, %if.then41.if.end48_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %land.lhs.true33.critedge.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %cmp16.not = icmp eq ptr %.pn122, %slist
  br i1 %cmp16.not, label %for.inc.do.body56_crit_edge, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

for.inc.do.body56_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body56

do.body56:                                        ; preds = %for.inc.do.body56_crit_edge, %do.end.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_reconnect_slaves.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_reconnect_slaves, %if.then68)) #14
          to label %do.end74 [label %if.then68], !srcloc !295

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %dev69 = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 23
  %name70 = getelementptr inbounds %struct.w1_master, ptr %dev.0125, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_reconnect_slaves.__UNIQUE_ID_ddebug472, ptr noundef %dev69, ptr noundef nonnull @.str.25, ptr noundef %name70) #14
  br label %do.end74

do.end74:                                         ; preds = %if.then68, %do.body56
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  %25 = ptrtoint ptr %dev.0125 to i32
  call void @__asan_load4_noabort(i32 %25)
  %dev.0 = load ptr, ptr %dev.0125, align 4
  %cmp.not = icmp eq ptr %dev.0, @w1_masters
  br i1 %cmp.not, label %do.end74.for.end83_crit_edge, label %do.end74.do.body_crit_edge

do.end74.do.body_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end74.for.end83_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end83

for.end83:                                        ; preds = %do.end74.for.end83_crit_edge, %entry.for.end83_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_slave_found(ptr noundef %dev, i64 noundef %rn) #1 align 64 {
entry:
  %rn.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rn.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %rn, ptr %rn.addr, align 8
  %refcnt = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !296
  %list_mutex.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i, i32 noundef 0) #14
  %slist.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %slist.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn45.i = load ptr, ptr %slist.i, align 4
  %cmp.not46.i = icmp eq ptr %.pn45.i, %slist.i
  br i1 %cmp.not46.i, label %entry.w1_slave_search_device.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.w1_slave_search_device.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_search_device.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %bf.lshr21.i = lshr i64 %rn, 56
  %conv22.i = trunc i64 %bf.lshr21.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn47.i = phi ptr [ %.pn45.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %reg_num.i = getelementptr i8, ptr %.pn47.i, i32 12
  %3 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load.i = load i64, ptr %reg_num.i, align 8
  %4 = xor i64 %bf.load.i, %rn
  %5 = and i64 %4, 72057594037927935
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %6 = icmp eq i64 %5, 0
  %bf.lshr18.i = lshr i64 %bf.load.i, 56
  %conv19.i = trunc i64 %bf.lshr18.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19.i, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv19.i, %conv22.i
  %or.cond.i = select i1 %6, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %w1_slave_search_device.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %7 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn47.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slist.i
  br i1 %cmp.not.i, label %for.inc.i.w1_slave_search_device.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.w1_slave_search_device.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_search_device.exit.thread

w1_slave_search_device.exit.thread:               ; preds = %for.inc.i.w1_slave_search_device.exit.thread_crit_edge, %entry.w1_slave_search_device.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex.i) #14
  br label %if.else

w1_slave_search_device.exit:                      ; preds = %for.body.i
  %sl.0.le.i = getelementptr i8, ptr %.pn47.i, i32 -36
  tail call void @mutex_unlock(ptr noundef %list_mutex.i) #14
  %tobool.not = icmp eq ptr %sl.0.le.i, null
  br i1 %tobool.not, label %w1_slave_search_device.exit.if.else_crit_edge, label %if.then

w1_slave_search_device.exit.if.else_crit_edge:    ; preds = %w1_slave_search_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %w1_slave_search_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr i8, ptr %.pn47.i, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  br label %if.end6

if.else:                                          ; preds = %w1_slave_search_device.exit.if.else_crit_edge, %w1_slave_search_device.exit.thread
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rn)
  %tobool1.not = icmp eq i64 %rn, 0
  br i1 %tobool1.not, label %if.else.if.end6_crit_edge, label %land.lhs.true

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true:                                    ; preds = %if.else
  %call2 = tail call fastcc i32 @w1_addr_crc_is_valid(ptr noundef %dev, i64 noundef %rn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = call i32 @w1_attach_slave_device(ptr noundef %dev, ptr noundef nonnull %rn.addr)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.else.if.end6_crit_edge, %if.then
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !297
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_addr_crc_is_valid(ptr noundef %dev, i64 noundef %rn) unnamed_addr #1 align 64 {
entry:
  %rn_le = alloca i64, align 8
  %corr_le = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn_le) #14
  %0 = tail call i64 @llvm.bswap.i64(i64 %rn)
  %1 = ptrtoint ptr %rn_le to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %rn_le, align 8
  %call = call zeroext i8 @w1_calc_crc8(ptr noundef nonnull %rn_le, i32 noundef 7) #14
  %conv = zext i8 %call to i32
  %bf.lshr = lshr i64 %rn, 56
  %conv1 = trunc i64 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1)
  %cmp.not = icmp ne i32 %conv, %conv1
  %conv470 = and i64 %rn, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 28, i64 %conv470)
  %cmp5 = icmp eq i64 %conv470, 28
  %or.cond = and i1 %cmp5, %cmp.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %corr_le) #14
  %2 = ptrtoint ptr %rn_le to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rn_le, align 8
  %4 = ptrtoint ptr %corr_le to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %corr_le, align 8
  %arrayidx = getelementptr inbounds i8, ptr %corr_le, i32 1
  %5 = lshr i64 %3, 48
  %6 = trunc i64 %5 to i8
  %7 = or i8 %6, 127
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx, align 1
  %call9 = call zeroext i8 @w1_calc_crc8(ptr noundef nonnull %corr_le, i32 noundef 7) #14
  %dev10 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  %bf.lshr15 = lshr i64 %rn, 8
  %bf.clear16 = and i64 %bf.lshr15, 281474976710655
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.87, i32 noundef 28, i64 noundef %bf.clear16, i32 noundef %conv1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %corr_le) #14
  %.pre = zext i8 %call9 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv20.pre-phi = phi i32 [ %.pre, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.pre-phi, i32 %conv1)
  %cmp24.not = icmp eq i32 %conv20.pre-phi, %conv1
  br i1 %cmp24.not, label %if.end.cleanup_crit_edge, label %do.body27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_addr_crc_is_valid.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_addr_crc_is_valid, %if.then32)) #14
          to label %cleanup [label %if.then32], !srcloc !295

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %dev33 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  %9 = trunc i64 %rn to i32
  %conv36 = and i32 %9, 255
  %bf.lshr38 = lshr i64 %rn, 8
  %bf.clear39 = and i64 %bf.lshr38, 281474976710655
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_addr_crc_is_valid.__UNIQUE_ID_ddebug473, ptr noundef %dev33, ptr noundef nonnull @.str.89, i32 noundef %conv36, i64 noundef %bf.clear39, i32 noundef %conv1, i32 noundef %conv20.pre-phi) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body27, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then32 ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn_le) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_search(ptr noundef %dev, i8 noundef zeroext %search_type, ptr nocapture noundef readonly %cb) local_unnamed_addr #1 align 64 {
entry:
  %rn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn) #14
  %search_id = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %search_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %search_id, align 8
  %max_slave_count = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 6
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 21
  %flags = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 18
  %dev101 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_slave_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp192 = icmp sgt i32 %3, 0
  br i1 %cmp192, label %entry.while.body_crit_edge, label %entry.cleanup.loopexit_crit_edge

entry.cleanup.loopexit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end104.while.body_crit_edge, %entry.while.body_crit_edge
  %inc197 = phi i32 [ %inc, %if.end104.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %or173178182196 = phi i64 [ %or173, %if.end104.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %desc_bit.0183194 = phi i32 [ %desc_bit.1166, %if.end104.while.body_crit_edge ], [ 64, %entry.while.body_crit_edge ]
  %last_zero.0184193 = phi i32 [ %last_zero.1.lcssa, %if.end104.while.body_crit_edge ], [ -1, %entry.while.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #14
  %call = tail call i32 @w1_reset_bus(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end9, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_search.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_search, %if.then7)) #14
          to label %cleanup [label %if.then7], !srcloc !295

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_search.__UNIQUE_ID_ddebug474, ptr noundef %dev101, ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %4 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_slave_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11 = icmp eq i32 %5, 1
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end9
  %6 = ptrtoint ptr %rn to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %rn, align 8
  tail call void @w1_write_8(ptr noundef %dev, i8 noundef zeroext 51) #14
  %call13 = call zeroext i8 @w1_read_block(ptr noundef %dev, ptr noundef nonnull %rn, i32 noundef 8) #14
  call void @mutex_unlock(ptr noundef %bus_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call13)
  %cmp15 = icmp eq i8 %call13, 8
  br i1 %cmp15, label %land.lhs.true, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then12
  %7 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool17.not = icmp eq i64 %8, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void %cb(ptr noundef %dev, i64 noundef %8) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  tail call void @w1_write_8(ptr noundef %dev, i8 noundef zeroext %search_type) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20
  %i.0176 = phi i32 [ 0, %if.end20 ], [ %inc71, %for.inc.for.body_crit_edge ]
  %last_zero.1175 = phi i32 [ %last_zero.0184193, %if.end20 ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %or172174 = phi i64 [ 0, %if.end20 ], [ %or, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0176, i32 %desc_bit.0183194)
  %cmp23 = icmp eq i32 %i.0176, %desc_bit.0183194
  br i1 %cmp23, label %for.body.if.end32_crit_edge, label %if.else

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0176, i32 %desc_bit.0183194)
  %cmp26 = icmp sgt i32 %i.0176, %desc_bit.0183194
  br i1 %cmp26, label %if.else.if.end32_crit_edge, label %if.else29

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom = zext i32 %i.0176 to i64
  %shr = lshr i64 %or173178182196, %sh_prom
  %9 = trunc i64 %shr to i32
  %conv30 = and i32 %9, 1
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.else.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %search_bit.0 = phi i32 [ %conv30, %if.else29 ], [ 1, %for.body.if.end32_crit_edge ], [ 0, %if.else.if.end32_crit_edge ]
  %call33 = tail call zeroext i8 @w1_triplet(ptr noundef %dev, i32 noundef %search_bit.0) #14
  %conv34 = zext i8 %call33 to i32
  %and35 = and i32 %conv34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 3
  br i1 %cmp36, label %if.end32.for.end_crit_edge, label %if.end39

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end39:                                         ; preds = %if.end32
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool50.not = icmp eq i32 %and1.i, 0
  br i1 %tobool50.not, label %for.inc, label %if.then51

if.then51:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_search.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_search, %if.then65)) #14
          to label %cleanup [label %if.then65], !srcloc !295

if.then65:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_search.__UNIQUE_ID_ddebug475, ptr noundef %dev101, ptr noundef nonnull @.str.28) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end39
  %12 = lshr i32 %conv34, 2
  %13 = zext i32 %12 to i64
  %sh_prom48 = zext i32 %i.0176 to i64
  %shl = shl i64 %13, %sh_prom48
  %or = or i64 %or172174, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33)
  %cmp41 = icmp eq i8 %call33, 0
  %spec.select = select i1 %cmp41, i32 %i.0176, i32 %last_zero.1175
  %inc71 = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc71, 64
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge
  %or173 = phi i64 [ %or172174, %if.end32.for.end_crit_edge ], [ %or, %for.inc.for.end_crit_edge ]
  %last_zero.1.lcssa = phi i32 [ %last_zero.1175, %if.end32.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #14
  %14 = and i8 %call33, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp75.not = icmp eq i8 %14, 3
  br i1 %cmp75.not, label %for.end.land.lhs.true89_crit_edge, label %if.then77

for.end.land.lhs.true89_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true89

if.then77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %desc_bit.0183194, i32 %last_zero.1.lcssa)
  %cmp78 = icmp eq i32 %desc_bit.0183194, %last_zero.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_zero.1.lcssa)
  %cmp80 = icmp slt i32 %last_zero.1.lcssa, 0
  %or.cond = or i1 %cmp78, %cmp80
  %spec.select186 = select i1 %or.cond, i64 0, i64 %or173
  %15 = ptrtoint ptr %search_id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %spec.select186, ptr %search_id, align 8
  tail call void %cb(ptr noundef %dev, i64 noundef %or173) #14
  br i1 %or.cond, label %if.then77.cleanup.loopexit_crit_edge, label %if.then77.land.lhs.true89_crit_edge

if.then77.land.lhs.true89_crit_edge:              ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true89

if.then77.cleanup.loopexit_crit_edge:             ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

land.lhs.true89:                                  ; preds = %if.then77.land.lhs.true89_crit_edge, %for.end.land.lhs.true89_crit_edge
  %desc_bit.1166 = phi i32 [ %last_zero.1.lcssa, %if.then77.land.lhs.true89_crit_edge ], [ %desc_bit.0183194, %for.end.land.lhs.true89_crit_edge ]
  %16 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_slave_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc197, i32 %17)
  %cmp91 = icmp eq i32 %inc197, %17
  br i1 %cmp91, label %land.lhs.true93, label %land.lhs.true89.if.end104_crit_edge

land.lhs.true89.if.end104_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

land.lhs.true93:                                  ; preds = %land.lhs.true89
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool96.not = icmp eq i32 %20, 0
  br i1 %tobool96.not, label %do.end100, label %land.lhs.true93.if.end104_crit_edge

land.lhs.true93.if.end104_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

do.end100:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev101, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %inc197) #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %if.end104

if.end104:                                        ; preds = %do.end100, %land.lhs.true93.if.end104_crit_edge, %land.lhs.true89.if.end104_crit_edge
  %inc = add nuw i32 %inc197, 1
  %21 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_slave_count, align 8
  %cmp = icmp slt i32 %inc197, %22
  br i1 %cmp, label %if.end104.while.body_crit_edge, label %if.end104.cleanup.loopexit_crit_edge

if.end104.cleanup.loopexit_crit_edge:             ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.loopexit

if.end104.while.body_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.loopexit:                                 ; preds = %if.end104.cleanup.loopexit_crit_edge, %if.then77.cleanup.loopexit_crit_edge, %entry.cleanup.loopexit_crit_edge
  %or173181 = phi i64 [ %1, %entry.cleanup.loopexit_crit_edge ], [ %or173, %if.then77.cleanup.loopexit_crit_edge ], [ %or173, %if.end104.cleanup.loopexit_crit_edge ]
  %23 = ptrtoint ptr %rn to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or173181, ptr %rn, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then65, %if.then51, %if.then18, %land.lhs.true.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_triplet(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_search_process_cb(ptr noundef %dev, i8 noundef zeroext %search_type, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %slist = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn75 = load ptr, ptr %slist, align 4
  %cmp.not76 = icmp eq ptr %.pn75, %slist
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn75, %entry.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn77, i32 28
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  %1 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %slist
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  tail call void @w1_search_devices(ptr noundef %dev, i8 noundef zeroext %search_type, ptr noundef %cb) #14
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slist, align 8
  %cmp22.not80 = icmp eq ptr %3, %slist
  br i1 %cmp22.not80, label %for.end.for.end42_crit_edge, label %for.body24.lr.ph

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end42

for.body24.lr.ph:                                 ; preds = %for.end
  %slave_ttl = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 9
  br label %for.body24

for.body24:                                       ; preds = %for.inc36.for.body24_crit_edge, %for.body24.lr.ph
  %.pn72.in81 = phi ptr [ %3, %for.body24.lr.ph ], [ %.pn7284, %for.inc36.for.body24_crit_edge ]
  %sl.183 = getelementptr i8, ptr %.pn72.in81, i32 -36
  %4 = ptrtoint ptr %.pn72.in81 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn7284 = load ptr, ptr %.pn72.in81, align 4
  %flags25 = getelementptr i8, ptr %.pn72.in81, i32 28
  %5 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags25, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body24.if.else_crit_edge

for.body24.if.else_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %for.body24
  %ttl = getelementptr i8, ptr %.pn72.in81, i32 24
  %7 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ttl, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %master.i = getelementptr i8, ptr %.pn72.in81, i32 32
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %list_mutex.i = getelementptr inbounds %struct.w1_master, ptr %10, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i, i32 noundef 0) #14
  %11 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags25, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags25) #14
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  %list_mutex3.i = getelementptr inbounds %struct.w1_master, ptr %15, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %list_mutex3.i) #14
  br i1 %tobool.not.i, label %if.then.i, label %if.then.w1_slave_detach.exit_crit_edge

if.then.w1_slave_detach.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_detach.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i = tail call i32 @w1_unref_slave(ptr noundef %sl.183) #14
  br label %w1_slave_detach.exit

w1_slave_detach.exit:                             ; preds = %if.then.i, %if.then.w1_slave_detach.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  br label %for.inc36

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body24.if.else_crit_edge
  %16 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags25, align 4
  %and1.i74 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i74)
  %tobool32.not = icmp eq i32 %and1.i74, 0
  br i1 %tobool32.not, label %if.else.for.inc36_crit_edge, label %if.then33

if.else.for.inc36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc36

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %slave_ttl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slave_ttl, align 4
  %ttl34 = getelementptr i8, ptr %.pn72.in81, i32 24
  %20 = ptrtoint ptr %ttl34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ttl34, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %if.then33, %if.else.for.inc36_crit_edge, %w1_slave_detach.exit
  %cmp22.not = icmp eq ptr %.pn7284, %slist
  br i1 %cmp22.not, label %for.inc36.for.end42_crit_edge, label %for.inc36.for.body24_crit_edge

for.inc36.for.body24_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24

for.inc36.for.end42_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end42

for.end42:                                        ; preds = %for.inc36.for.end42_crit_edge, %for.end.for.end42_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %search_count = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 12
  %21 = ptrtoint ptr %search_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %search_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp44 = icmp sgt i32 %22, 0
  br i1 %cmp44, label %if.then45, label %for.end42.if.end48_crit_edge

for.end42.if.end48_crit_edge:                     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then45:                                        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #16
  %dec47 = add nsw i32 %22, -1
  %23 = ptrtoint ptr %search_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec47, ptr %search_count, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %for.end42.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_search_devices(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_process_callbacks(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %async_list = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %async_list, align 4
  %cmp.i.not26 = icmp eq ptr %1, %async_list
  br i1 %cmp.i.not26, label %entry.while.end_crit_edge, label %for.cond.preheader.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  br label %for.cond.preheader

while.cond.loopexit:                              ; preds = %for.body.while.cond.loopexit_crit_edge, %for.cond.preheader.while.cond.loopexit_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.027, %for.cond.preheader.while.cond.loopexit_crit_edge ], [ 1, %for.body.while.cond.loopexit_crit_edge ]
  %2 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %async_list, align 4
  %cmp.i.not = icmp eq ptr %3, %async_list
  br i1 %cmp.i.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.for.cond.preheader_crit_edge

while.cond.loopexit.for.cond.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.cond.preheader:                               ; preds = %while.cond.loopexit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %4 = phi ptr [ %1, %for.cond.preheader.lr.ph ], [ %3, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  %ret.027 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %ret.1.lcssa, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  %cmp.not24 = icmp eq ptr %4, %async_list
  br i1 %cmp.not24, label %for.cond.preheader.while.cond.loopexit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %async_cmd.025 = phi ptr [ %async_n.0, %for.body.for.body_crit_edge ], [ %4, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %async_cmd.025 to i32
  call void @__asan_load4_noabort(i32 %5)
  %async_n.0 = load ptr, ptr %async_cmd.025, align 4
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %cb = getelementptr inbounds %struct.w1_async_cmd, ptr %async_cmd.025, i32 0, i32 1
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  tail call void %7(ptr noundef %dev, ptr noundef %async_cmd.025) #14
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %cmp.not = icmp eq ptr %async_n.0, %async_list
  br i1 %cmp.not, label %for.body.while.cond.loopexit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.while.cond.loopexit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.1.lcssa, %while.cond.loopexit.while.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_process(ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @w1_timeout, align 4
  %mul = mul i32 %0, 1000000
  %1 = load i32, ptr @w1_timeout_us, align 4
  %add = add i32 %mul, %1
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %add) #14
  %search_count = getelementptr inbounds %struct.w1_master, ptr %data, i32 0, i32 12
  %mutex = getelementptr inbounds %struct.w1_master, ptr %data, i32 0, i32 20
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %data, i32 0, i32 3
  %async_list.i = getelementptr inbounds %struct.w1_master, ptr %data, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %jremain.0 = phi i32 [ 0, %entry ], [ %jremain.0.be, %for.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jremain.0)
  %tobool.not = icmp eq i32 %jremain.0, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = ptrtoint ptr %search_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %search_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  tail call void @w1_search_process_cb(ptr noundef %data, i8 noundef zeroext -16, ptr noundef nonnull @w1_slave_found) #14
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.cond.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %4 = ptrtoint ptr %async_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %async_list.i, align 4
  %cmp.i.not26.i = icmp eq ptr %5, %async_list.i
  br i1 %cmp.i.not26.i, label %if.end.w1_process_callbacks.exit.thread_crit_edge, label %if.end.for.cond.preheader.i.outer_crit_edge

if.end.for.cond.preheader.i.outer_crit_edge:      ; preds = %if.end
  br label %for.cond.preheader.i.outer

if.end.w1_process_callbacks.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_process_callbacks.exit.thread

while.cond.loopexit.i:                            ; preds = %for.cond.preheader.i
  %6 = ptrtoint ptr %async_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %async_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %async_list.i
  br i1 %cmp.i.not.i, label %w1_process_callbacks.exit, label %while.cond.loopexit.i.for.cond.preheader.i_crit_edge

while.cond.loopexit.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i

while.cond.loopexit.i.thread:                     ; preds = %for.body.i
  %8 = ptrtoint ptr %async_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %async_list.i, align 4
  %cmp.i.not.i94 = icmp eq ptr %9, %async_list.i
  br i1 %cmp.i.not.i94, label %while.cond.loopexit.i.thread.__here_crit_edge, label %while.cond.loopexit.i.thread.for.cond.preheader.i.outer_crit_edge

while.cond.loopexit.i.thread.for.cond.preheader.i.outer_crit_edge: ; preds = %while.cond.loopexit.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i.outer

while.cond.loopexit.i.thread.__here_crit_edge:    ; preds = %while.cond.loopexit.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

for.cond.preheader.i.outer:                       ; preds = %while.cond.loopexit.i.thread.for.cond.preheader.i.outer_crit_edge, %if.end.for.cond.preheader.i.outer_crit_edge
  %.ph = phi ptr [ %9, %while.cond.loopexit.i.thread.for.cond.preheader.i.outer_crit_edge ], [ %5, %if.end.for.cond.preheader.i.outer_crit_edge ]
  %tobool4.not = phi i1 [ false, %while.cond.loopexit.i.thread.for.cond.preheader.i.outer_crit_edge ], [ true, %if.end.for.cond.preheader.i.outer_crit_edge ]
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.cond.preheader.i.outer, %while.cond.loopexit.i.for.cond.preheader.i_crit_edge
  %10 = phi ptr [ %7, %while.cond.loopexit.i.for.cond.preheader.i_crit_edge ], [ %.ph, %for.cond.preheader.i.outer ]
  %cmp.not24.i = icmp eq ptr %10, %async_list.i
  br i1 %cmp.not24.i, label %while.cond.loopexit.i, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %async_cmd.025.i = phi ptr [ %async_n.0.i, %for.body.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %async_cmd.025.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %async_n.0.i = load ptr, ptr %async_cmd.025.i, align 4
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %cb.i = getelementptr inbounds %struct.w1_async_cmd, ptr %async_cmd.025.i, i32 0, i32 1
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb.i, align 4
  tail call void %13(ptr noundef %data, ptr noundef %async_cmd.025.i) #14
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %cmp.not.i = icmp eq ptr %async_n.0.i, %async_list.i
  br i1 %cmp.not.i, label %while.cond.loopexit.i.thread, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

w1_process_callbacks.exit:                        ; preds = %while.cond.loopexit.i
  br i1 %tobool4.not, label %w1_process_callbacks.exit.w1_process_callbacks.exit.thread_crit_edge, label %w1_process_callbacks.exit.__here_crit_edge

w1_process_callbacks.exit.__here_crit_edge:       ; preds = %w1_process_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

w1_process_callbacks.exit.w1_process_callbacks.exit.thread_crit_edge: ; preds = %w1_process_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_process_callbacks.exit.thread

w1_process_callbacks.exit.thread:                 ; preds = %w1_process_callbacks.exit.w1_process_callbacks.exit.thread_crit_edge, %if.end.w1_process_callbacks.exit.thread_crit_edge
  %spec.store.select92.in = xor i1 %tobool.not, true
  %spec.store.select92 = zext i1 %spec.store.select92.in to i32
  br label %__here

__here:                                           ; preds = %w1_process_callbacks.exit.thread, %w1_process_callbacks.exit.__here_crit_edge, %while.cond.loopexit.i.thread.__here_crit_edge
  %14 = phi i32 [ %spec.store.select92, %w1_process_callbacks.exit.thread ], [ %jremain.0, %w1_process_callbacks.exit.__here_crit_edge ], [ %jremain.0, %while.cond.loopexit.i.thread.__here_crit_edge ]
  %15 = tail call i32 @llvm.read_register.i32(metadata !285) #14
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@w1_process, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %call64 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call64, label %for.end, label %if.end66

if.end66:                                         ; preds = %__here
  %22 = ptrtoint ptr %search_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %search_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool68.not = icmp eq i32 %23, 0
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool70.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool70.not, i32 %call3.i, i32 %14
  %call73 = tail call i32 @schedule_timeout(i32 noundef %spec.select) #14
  br label %for.cond.backedge

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @schedule() #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else, %if.then69
  %jremain.0.be = phi i32 [ %call73, %if.then69 ], [ %14, %if.else ]
  br label %for.cond

for.end:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.w1_master, ptr %data, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !297
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev.07 = load ptr, ptr @w1_masters, align 4
  %cmp.not8 = icmp eq ptr %dev.07, @w1_masters
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.09 = phi ptr [ %dev.0, %for.body.for.body_crit_edge ], [ %dev.07, %entry.for.body_crit_edge ]
  tail call void @__w1_remove_master_device(ptr noundef %dev.09) #14
  %0 = ptrtoint ptr %dev.09 to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0 = load ptr, ptr %dev.09, align 4
  %cmp.not = icmp eq ptr %dev.0, @w1_masters
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @w1_fini_netlink() #14
  tail call void @driver_unregister(ptr noundef nonnull @w1_slave_driver) #14
  tail call void @driver_unregister(ptr noundef nonnull @w1_master_driver) #14
  tail call void @bus_unregister(ptr noundef nonnull @w1_bus_type) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__w1_remove_master_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_fini_netlink() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #18
  %call2 = tail call i32 @w1_init_netlink() #14
  %call3 = tail call i32 @bus_register(ptr noundef nonnull @w1_bus_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %call3) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @driver_register(ptr noundef nonnull @w1_master_driver) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %call9) #18
  br label %err_out_bus_unregister

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @driver_register(ptr noundef nonnull @w1_slave_driver) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %call18) #18
  tail call void @driver_unregister(ptr noundef nonnull @w1_master_driver) #14
  br label %err_out_bus_unregister

err_out_bus_unregister:                           ; preds = %do.end23, %do.end14
  %retval1.0 = phi i32 [ %call9, %do.end14 ], [ %call18, %do.end23 ]
  tail call void @bus_unregister(ptr noundef nonnull @w1_bus_type) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out_bus_unregister, %if.end17.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ %call3, %do.end6 ], [ %retval1.0, %err_out_bus_unregister ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_master_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_uevent(ptr noundef %dev, ptr noundef %env) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %cmp = icmp eq ptr %1, @w1_master_driver
  br i1 %cmp, label %entry.do.body17_crit_edge, label %if.else

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq ptr %1, @w1_slave_driver
  br i1 %cmp3, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr7 = getelementptr i8, ptr %dev, i32 -80
  br label %do.body17

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_uevent.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_uevent, %if.then14)) #14
          to label %cleanup [label %if.then14], !srcloc !295

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_uevent.__UNIQUE_ID_ddebug467, ptr noundef %dev, ptr noundef nonnull @.str.34) #14
  br label %cleanup

do.body17:                                        ; preds = %if.then4, %entry.do.body17_crit_edge
  %.sink = phi i32 [ -76, %if.then4 ], [ -396, %entry.do.body17_crit_edge ]
  %event_owner.0 = phi ptr [ @.str.32, %if.then4 ], [ @.str.31, %entry.do.body17_crit_edge ]
  %sl.0 = phi ptr [ %add.ptr7, %if.then4 ], [ null, %entry.do.body17_crit_edge ]
  %name1 = getelementptr i8, ptr %dev, i32 %.sink
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_uevent.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_uevent, %if.then29)) #14
          to label %do.end33 [label %if.then29], !srcloc !295

if.then29:                                        ; preds = %do.body17
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then29.dev_name.exit_crit_edge

if.then29.dev_name.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then29.dev_name.exit_crit_edge
  %retval.0.i66 = phi ptr [ %5, %if.end.i ], [ %3, %if.then29.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_uevent.__UNIQUE_ID_ddebug468, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull %event_owner.0, ptr noundef %name1, ptr noundef %retval.0.i66) #14
  br label %do.end33

do.end33:                                         ; preds = %dev_name.exit, %do.body17
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %cmp35.not = icmp ne ptr %7, @w1_slave_driver
  %tobool36.not = icmp eq ptr %sl.0, null
  %or.cond = or i1 %tobool36.not, %cmp35.not
  br i1 %or.cond, label %do.end33.cleanup_crit_edge, label %if.end38

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %do.end33
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %sl.0, i32 0, i32 3
  %8 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %8)
  %bf.load = load i64, ptr %reg_num, align 8
  %9 = trunc i64 %bf.load to i32
  %conv = and i32 %9, 255
  %call39 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.36, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %10)
  %bf.load44 = load i64, ptr %reg_num, align 8
  %bf.lshr = lshr i64 %bf.load44, 8
  %bf.clear45 = and i64 %bf.lshr, 281474976710655
  %call46 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.37, i64 noundef %bf.clear45) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %if.then14, %do.body
  %retval.0 = phi i32 [ -22, %if.then14 ], [ 0, %do.end33.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call46, %if.end42 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_name(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %name = getelementptr i8, ptr %dev, i32 -396
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, ptr noundef %name)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_slaves(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %list_mutex = getelementptr i8, ptr %dev, i32 -364
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #14
  %slist = getelementptr i8, ptr %dev, i32 -272
  %0 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slist, align 8
  %cmp.i.not30 = icmp eq ptr %1, %slist
  br i1 %cmp.i.not30, label %entry.if.then_crit_edge, label %for.body.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %buf, i32 4096
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %c.032 = phi i32 [ 4096, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %ent.031 = phi ptr [ %1, %for.body.lr.ph ], [ %n.0, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %ent.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %ent.031, align 4
  %idx.neg = sub i32 0, %c.032
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %idx.neg
  %name = getelementptr i8, ptr %ent.031, i32 -32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5, i32 noundef %c.032, ptr noundef nonnull @.str.41, ptr noundef %name)
  %sub = sub i32 %c.032, %call6
  %cmp.i.not = icmp eq ptr %n.0, %slist
  br i1 %cmp.i.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr.le = getelementptr i8, ptr %ent.031, i32 -36
  %phi.cmp = icmp eq ptr %add.ptr.le, null
  br i1 %phi.cmp, label %for.end.if.then_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %c.0.lcssa36 = phi i32 [ %sub, %for.end.if.then_crit_edge ], [ 4096, %entry.if.then_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %buf, i32 4096
  %idx.neg10 = sub i32 0, %c.0.lcssa36
  %add.ptr11 = getelementptr i8, ptr %add.ptr9, i32 %idx.neg10
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr11, i32 noundef %c.0.lcssa36, ptr noundef nonnull @.str.43)
  %sub13 = sub i32 %c.0.lcssa36, %call12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %c.1 = phi i32 [ %sub, %for.end.if.end_crit_edge ], [ %sub13, %if.then ]
  tail call void @mutex_unlock(ptr noundef %list_mutex) #14
  %sub15 = sub i32 4096, %c.1
  ret i32 %sub15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_slave_count(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %slave_count = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %slave_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slave_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_max_slave_count(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %max_slave_count = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_slave_count, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_store_max_slave_count(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !301
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr i8, ptr %dev, i32 -192
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp, align 4
  %max_slave_count = getelementptr i8, ptr %dev, i32 -256
  %5 = ptrtoint ptr %max_slave_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %max_slave_count, align 8
  %flags = getelementptr i8, ptr %dev, i32 -200
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_attempts(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %attempts = getelementptr i8, ptr %dev, i32 -248
  %0 = ptrtoint ptr %attempts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attempts, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_timeout(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @w1_timeout, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_timeout_us(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @w1_timeout_us, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_pointer(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %bus_master = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_search(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %search_count = getelementptr i8, ptr %dev, i32 -232
  %0 = ptrtoint ptr %search_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %search_count, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_store_search(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !301
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %dev, i32 -192
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  %search_count = getelementptr i8, ptr %dev, i32 -232
  %3 = ptrtoint ptr %search_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %search_count, align 8
  call void @mutex_unlock(ptr noundef %mutex) #14
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %thread = getelementptr i8, ptr %dev, i32 -196
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread, align 4
  %call5 = call i32 @wake_up_process(ptr noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.then4 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_show_pullup(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %enable_pullup = getelementptr i8, ptr %dev, i32 -208
  %0 = ptrtoint ptr %enable_pullup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_pullup, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_store_pullup(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !301
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr i8, ptr %dev, i32 -192
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  %enable_pullup = getelementptr i8, ptr %dev, i32 -208
  %3 = ptrtoint ptr %enable_pullup to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %enable_pullup, align 8
  call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_master_attribute_show_add(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.56, i32 46)
  ret i32 45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_store_add(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  %rn = alloca %struct.w1_reg_num, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn) #14
  %0 = ptrtoint ptr %rn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rn, align 8, !annotation !301
  %call1 = call fastcc i32 @w1_atoreg_num(ptr noundef %dev, ptr noundef %buf, ptr noundef nonnull %rn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %list_mutex.i = getelementptr i8, ptr %dev, i32 -364
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i, i32 noundef 0) #14
  %slist.i = getelementptr i8, ptr %dev, i32 -272
  %1 = ptrtoint ptr %slist.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45.i = load ptr, ptr %slist.i, align 4
  %cmp.not46.i = icmp eq ptr %.pn45.i, %slist.i
  br i1 %cmp.not46.i, label %if.end.w1_slave_search_device.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.w1_slave_search_device.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_search_device.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %2 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %2)
  %bf.load2.i = load i64, ptr %rn, align 8
  %bf.lshr21.i = lshr i64 %bf.load2.i, 56
  %conv22.i = trunc i64 %bf.lshr21.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn47.i = phi ptr [ %.pn45.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %reg_num.i = getelementptr i8, ptr %.pn47.i, i32 12
  %3 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load.i = load i64, ptr %reg_num.i, align 8
  %4 = xor i64 %bf.load.i, %bf.load2.i
  %5 = and i64 %4, 72057594037927935
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %6 = icmp eq i64 %5, 0
  %bf.lshr18.i = lshr i64 %bf.load.i, 56
  %conv19.i = trunc i64 %bf.lshr18.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19.i, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv19.i, %conv22.i
  %or.cond.i = select i1 %6, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %w1_slave_search_device.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %7 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn47.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slist.i
  br i1 %cmp.not.i, label %for.inc.i.w1_slave_search_device.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.w1_slave_search_device.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_search_device.exit.thread

w1_slave_search_device.exit.thread:               ; preds = %for.inc.i.w1_slave_search_device.exit.thread_crit_edge, %if.end.w1_slave_search_device.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex.i) #14
  br label %if.else

w1_slave_search_device.exit:                      ; preds = %for.body.i
  %sl.0.le.i = getelementptr i8, ptr %.pn47.i, i32 -36
  tail call void @mutex_unlock(ptr noundef %list_mutex.i) #14
  %tobool3.not = icmp eq ptr %sl.0.le.i, null
  br i1 %tobool3.not, label %w1_slave_search_device.exit.if.else_crit_edge, label %do.end

w1_slave_search_device.exit.if.else_crit_edge:    ; preds = %w1_slave_search_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

do.end:                                           ; preds = %w1_slave_search_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr i8, ptr %.pn47.i, i32 -32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef %name) #18
  br label %if.end6

if.else:                                          ; preds = %w1_slave_search_device.exit.if.else_crit_edge, %w1_slave_search_device.exit.thread
  %call5 = call i32 @w1_attach_slave_device(ptr noundef %add.ptr.i, ptr noundef nonnull %rn)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  %result.0 = phi i32 [ -22, %do.end ], [ %count, %if.else ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_atoreg_num(ptr noundef %dev, ptr nocapture noundef readonly %buf, ptr nocapture noundef %rn) unnamed_addr #1 align 64 {
entry:
  %family = alloca i32, align 4
  %id = alloca i64, align 8
  %rn64_le = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %family) #14
  %0 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %family, align 4, !annotation !301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id) #14
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %id, align 8, !annotation !301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn64_le) #14
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %3)
  %cmp.not = icmp eq i8 %3, 45
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.62, ptr noundef nonnull %family, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp2.not = icmp eq i32 %call, 2
  br i1 %cmp2.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %6)
  %bf.load = load i64, ptr %rn, align 8
  %bf.clear = and i64 %bf.load, -72057594037927936
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %id, align 8
  %bf.value11 = shl i64 %8, 8
  %bf.shl = and i64 %bf.value11, 72057594037927680
  %9 = and i32 %5, 255
  %bf.value.masked = zext i32 %9 to i64
  %bf.clear12 = or i64 %bf.clear, %bf.value.masked
  %bf.set13 = or i64 %bf.shl, %bf.clear12
  store i64 %bf.set13, ptr %rn, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %bf.set13)
  %11 = ptrtoint ptr %rn64_le to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rn64_le, align 8
  %call14 = call zeroext i8 @w1_calc_crc8(ptr noundef nonnull %rn64_le, i32 noundef 7) #14
  %conv15 = zext i8 %call14 to i64
  %12 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %12)
  %bf.load16 = load i64, ptr %rn, align 8
  %bf.shl18 = shl nuw i64 %conv15, 56
  %bf.clear19 = and i64 %bf.load16, 72057594037927935
  %bf.set20 = or i64 %bf.clear19, %bf.shl18
  store i64 %bf.set20, ptr %rn, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn64_le) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %family) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_calc_crc8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_master_attribute_show_remove(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.66, i32 49)
  ret i32 48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_master_attribute_store_remove(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  %rn = alloca %struct.w1_reg_num, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn) #14
  %0 = ptrtoint ptr %rn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rn, align 8, !annotation !301
  %call1 = call fastcc i32 @w1_atoreg_num(ptr noundef %dev, ptr noundef %buf, ptr noundef nonnull %rn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %dev, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %list_mutex.i = getelementptr i8, ptr %dev, i32 -364
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i, i32 noundef 0) #14
  %slist.i = getelementptr i8, ptr %dev, i32 -272
  %1 = ptrtoint ptr %slist.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45.i = load ptr, ptr %slist.i, align 4
  %cmp.not46.i = icmp eq ptr %.pn45.i, %slist.i
  br i1 %cmp.not46.i, label %if.end.w1_slave_search_device.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.w1_slave_search_device.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_search_device.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %2 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %2)
  %bf.load2.i = load i64, ptr %rn, align 8
  %bf.lshr21.i = lshr i64 %bf.load2.i, 56
  %conv22.i = trunc i64 %bf.lshr21.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn47.i = phi ptr [ %.pn45.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %reg_num.i = getelementptr i8, ptr %.pn47.i, i32 12
  %3 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load.i = load i64, ptr %reg_num.i, align 8
  %4 = xor i64 %bf.load.i, %bf.load2.i
  %5 = and i64 %4, 72057594037927935
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %6 = icmp eq i64 %5, 0
  %bf.lshr18.i = lshr i64 %bf.load.i, 56
  %conv19.i = trunc i64 %bf.lshr18.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19.i, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv19.i, %conv22.i
  %or.cond.i = select i1 %6, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %w1_slave_search_device.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %7 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn47.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slist.i
  br i1 %cmp.not.i, label %for.inc.i.w1_slave_search_device.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.w1_slave_search_device.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_search_device.exit.thread

w1_slave_search_device.exit.thread:               ; preds = %for.inc.i.w1_slave_search_device.exit.thread_crit_edge, %if.end.w1_slave_search_device.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex.i) #14
  br label %do.end

w1_slave_search_device.exit:                      ; preds = %for.body.i
  %sl.0.le.i = getelementptr i8, ptr %.pn47.i, i32 -36
  tail call void @mutex_unlock(ptr noundef %list_mutex.i) #14
  %tobool3.not = icmp eq ptr %sl.0.le.i, null
  br i1 %tobool3.not, label %w1_slave_search_device.exit.do.end_crit_edge, label %if.then4

w1_slave_search_device.exit.do.end_crit_edge:     ; preds = %w1_slave_search_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then4:                                         ; preds = %w1_slave_search_device.exit
  %master.i = getelementptr i8, ptr %.pn47.i, i32 32
  %8 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i, align 4
  %list_mutex.i23 = getelementptr inbounds %struct.w1_master, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i23, i32 noundef 0) #14
  %flags.i = getelementptr i8, ptr %.pn47.i, i32 28
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #14
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  %list_mutex3.i = getelementptr inbounds %struct.w1_master, ptr %14, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %list_mutex3.i) #14
  br i1 %tobool.not.i, label %if.then.i24, label %if.then4.w1_slave_detach.exit.thread_crit_edge

if.then4.w1_slave_detach.exit.thread_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_detach.exit.thread

if.then.i24:                                      ; preds = %if.then4
  %call5.i = tail call i32 @w1_unref_slave(ptr noundef nonnull %sl.0.le.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then.i24.if.end10_crit_edge, label %if.then.i24.w1_slave_detach.exit.thread_crit_edge

if.then.i24.w1_slave_detach.exit.thread_crit_edge: ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %w1_slave_detach.exit.thread

if.then.i24.if.end10_crit_edge:                   ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

w1_slave_detach.exit.thread:                      ; preds = %if.then.i24.w1_slave_detach.exit.thread_crit_edge, %if.then4.w1_slave_detach.exit.thread_crit_edge
  br label %if.end10

do.end:                                           ; preds = %w1_slave_search_device.exit.do.end_crit_edge, %w1_slave_search_device.exit.thread
  %15 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %15)
  %bf.load = load i64, ptr %rn, align 8
  %16 = trunc i64 %bf.load to i32
  %conv = and i32 %16, 255
  %bf.lshr = lshr i64 %bf.load, 8
  %bf.clear9 = and i64 %bf.lshr, 281474976710655
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %conv, i64 noundef %bf.clear9) #18
  br label %if.end10

if.end10:                                         ; preds = %do.end, %w1_slave_detach.exit.thread, %if.then.i24.if.end10_crit_edge
  %result.0 = phi i32 [ -22, %do.end ], [ -16, %w1_slave_detach.exit.thread ], [ %count, %if.then.i24.if.end10_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rw_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef returned %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %call2 = tail call zeroext i8 @w1_read_block(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #14
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %mutex4 = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %mutex4) #14
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rw_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %call1 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_up_crit_edge

entry.out_up_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_up

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_block(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #14
  br label %out_up

out_up:                                           ; preds = %if.end, %entry.out_up_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end ], [ 0, %entry.out_up_crit_edge ]
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %mutex4 = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %mutex4) #14
  ret i32 %count.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_slave_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_slave_release.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_slave_release, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !295

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -80
  %name = getelementptr i8, ptr %dev, i32 -76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_slave_release.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, ptr noundef %name, ptr noundef %add.ptr.i) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %family = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family, align 8
  tail call void @w1_family_put(ptr noundef %1) #14
  %master = getelementptr i8, ptr %dev, i32 -12
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %slave_count = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %slave_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %slave_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %dev, i32 -76
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, ptr noundef %name)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_num = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reg_num, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %buf, align 1
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_init_netlink() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !122, !124, !126, !127, !128, !130, !132, !134, !135, !137, !139, !140, !142, !144, !145, !147, !149, !150, !152, !153, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !171, !172, !174, !175, !177, !179, !180, !181, !182, !184, !186, !187, !188, !189, !191, !193, !194, !196, !197, !199, !201, !202, !203, !204, !206, !208, !210, !212, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !234, !236, !237, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !266, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284}
!llvm.named.register.sp = !{!285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/w1/w1.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype457, !1, !"__UNIQUE_ID_timeouttype457", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout458, !4, !"__UNIQUE_ID_timeout458", i1 false, i1 false}
!4 = !{!"../drivers/w1/w1.c", i32 33, i32 1}
!5 = !{ptr @__param_timeout_us, !6, !"__param_timeout_us", i1 false, i1 false}
!6 = !{!"../drivers/w1/w1.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_timeout_ustype459, !6, !"__UNIQUE_ID_timeout_ustype459", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_timeout_us460, !9, !"__UNIQUE_ID_timeout_us460", i1 false, i1 false}
!9 = !{!"../drivers/w1/w1.c", i32 37, i32 1}
!10 = !{ptr @w1_max_slave_count, !11, !"w1_max_slave_count", i1 false, i1 false}
!11 = !{!"../drivers/w1/w1.c", i32 48, i32 5}
!12 = !{ptr @__param_max_slave_count, !13, !"__param_max_slave_count", i1 false, i1 false}
!13 = !{!"../drivers/w1/w1.c", i32 49, i32 1}
!14 = !{ptr @__UNIQUE_ID_max_slave_counttype461, !13, !"__UNIQUE_ID_max_slave_counttype461", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_max_slave_count462, !16, !"__UNIQUE_ID_max_slave_count462", i1 false, i1 false}
!16 = !{!"../drivers/w1/w1.c", i32 50, i32 1}
!17 = !{ptr @w1_max_slave_ttl, !18, !"w1_max_slave_ttl", i1 false, i1 false}
!18 = !{!"../drivers/w1/w1.c", i32 53, i32 5}
!19 = !{ptr @__param_slave_ttl, !20, !"__param_slave_ttl", i1 false, i1 false}
!20 = !{!"../drivers/w1/w1.c", i32 54, i32 1}
!21 = !{ptr @__UNIQUE_ID_slave_ttltype463, !20, !"__UNIQUE_ID_slave_ttltype463", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_slave_ttl464, !23, !"__UNIQUE_ID_slave_ttl464", i1 false, i1 false}
!23 = !{!"../drivers/w1/w1.c", i32 55, i32 1}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/w1/w1.c", i32 58, i32 1}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @w1_mlock, !25, !"w1_mlock", i1 false, i1 false}
!28 = !{ptr @w1_masters, !29, !"w1_masters", i1 false, i1 false}
!29 = !{!"../drivers/w1/w1.c", i32 59, i32 1}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/w1/w1.c", i32 182, i32 10}
!32 = !{ptr @w1_master_driver, !33, !"w1_master_driver", i1 false, i1 false}
!33 = !{!"../drivers/w1/w1.c", i32 181, i32 22}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/w1/w1.c", i32 190, i32 15}
!36 = !{ptr @w1_master_device, !37, !"w1_master_device", i1 false, i1 false}
!37 = !{!"../drivers/w1/w1.c", i32 187, i32 15}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/w1/w1.c", i32 729, i32 3}
!40 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @w1_attach_slave_device._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @w1_attach_slave_device._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/w1/w1.c", i32 745, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @w1_attach_slave_device._entry.9, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @w1_attach_slave_device._entry_ptr.12, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/w1/w1.c", i32 750, i32 2}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/w1/w1.c", i32 757, i32 3}
!55 = !{ptr @w1_attach_slave_device._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @w1_attach_slave_device._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/w1/w1.c", i32 768, i32 3}
!59 = !{ptr @w1_attach_slave_device._entry.17, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @w1_attach_slave_device._entry_ptr.19, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/w1/w1.c", i32 795, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @w1_unref_slave.__UNIQUE_ID_ddebug470, !62, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/w1/w1.c", i32 885, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @w1_reconnect_slaves.__UNIQUE_ID_ddebug471, !67, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/w1/w1.c", i32 910, i32 3}
!72 = !{ptr @w1_reconnect_slaves.__UNIQUE_ID_ddebug472, !71, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/w1/w1.c", i32 1018, i32 4}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @w1_search.__UNIQUE_ID_ddebug474, !74, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/w1/w1.c", i32 1063, i32 5}
!79 = !{ptr @w1_search.__UNIQUE_ID_ddebug475, !78, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/w1/w1.c", i32 1089, i32 4}
!82 = !{ptr @w1_search._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @w1_search._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/w1/w1.c", i32 1189, i32 3}
!86 = !{ptr @__initcall__kmod_wire__477_1275_w1_init6, !87, !"__initcall__kmod_wire__477_1275_w1_init6", i1 false, i1 false}
!87 = !{!"../drivers/w1/w1.c", i32 1275, i32 1}
!88 = !{ptr @__exitcall_w1_fini, !89, !"__exitcall_w1_fini", i1 false, i1 false}
!89 = !{!"../drivers/w1/w1.c", i32 1276, i32 1}
!90 = !{ptr @__UNIQUE_ID_author478, !91, !"__UNIQUE_ID_author478", i1 false, i1 false}
!91 = !{!"../drivers/w1/w1.c", i32 1278, i32 1}
!92 = !{ptr @__UNIQUE_ID_description479, !93, !"__UNIQUE_ID_description479", i1 false, i1 false}
!93 = !{!"../drivers/w1/w1.c", i32 1279, i32 1}
!94 = !{ptr @__UNIQUE_ID_file480, !95, !"__UNIQUE_ID_file480", i1 false, i1 false}
!95 = !{!"../drivers/w1/w1.c", i32 1280, i32 1}
!96 = !{ptr @__UNIQUE_ID_license481, !95, !"__UNIQUE_ID_license481", i1 false, i1 false}
!97 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!98 = !{ptr @w1_timeout, !99, !"w1_timeout", i1 false, i1 false}
!99 = !{!"../drivers/w1/w1.c", i32 31, i32 12}
!100 = !{ptr @__param_str_timeout_us, !6, !"__param_str_timeout_us", i1 false, i1 false}
!101 = !{ptr @w1_timeout_us, !102, !"w1_timeout_us", i1 false, i1 false}
!102 = !{!"../drivers/w1/w1.c", i32 35, i32 12}
!103 = !{ptr @__param_str_max_slave_count, !13, !"__param_str_max_slave_count", i1 false, i1 false}
!104 = !{ptr @__param_str_slave_ttl, !20, !"__param_str_slave_ttl", i1 false, i1 false}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/w1/w1.c", i32 176, i32 10}
!107 = !{ptr @w1_bus_type, !108, !"w1_bus_type", i1 false, i1 false}
!108 = !{!"../drivers/w1/w1.c", i32 175, i32 24}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/w1/w1.c", i32 589, i32 17}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/w1/w1.c", i32 593, i32 17}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/w1/w1.c", i32 596, i32 3}
!115 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @w1_uevent.__UNIQUE_ID_ddebug467, !114, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/w1/w1.c", i32 600, i32 2}
!119 = !{ptr @w1_uevent.__UNIQUE_ID_ddebug468, !118, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/w1/w1.c", i32 606, i32 28}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/w1/w1.c", i32 610, i32 28}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/w1/w1.c", i32 75, i32 2}
!126 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @w1_master_release.__UNIQUE_ID_ddebug465, !125, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!128 = !{ptr @w1_master_defattr_group, !129, !"w1_master_defattr_group", i1 false, i1 false}
!129 = !{!"../drivers/w1/w1.c", i32 566, i32 37}
!130 = !{ptr @w1_master_default_attrs, !131, !"w1_master_default_attrs", i1 false, i1 false}
!131 = !{!"../drivers/w1/w1.c", i32 550, i32 26}
!132 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/w1/w1.c", i32 537, i32 8}
!134 = !{ptr @w1_master_attribute_name, !133, !"w1_master_attribute_name", i1 false, i1 false}
!135 = !{ptr @.str.41, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/w1/w1.c", i32 216, i32 23}
!137 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/w1/w1.c", i32 538, i32 8}
!139 = !{ptr @w1_master_attribute_slaves, !138, !"w1_master_attribute_slaves", i1 false, i1 false}
!140 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/w1/w1.c", i32 384, i32 41}
!142 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/w1/w1.c", i32 539, i32 8}
!144 = !{ptr @w1_master_attribute_slave_count, !143, !"w1_master_attribute_slave_count", i1 false, i1 false}
!145 = !{ptr @.str.45, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/w1/w1.c", i32 363, i32 23}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/w1/w1.c", i32 540, i32 8}
!149 = !{ptr @w1_master_attribute_max_slave_count, !148, !"w1_master_attribute_max_slave_count", i1 false, i1 false}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/w1/w1.c", i32 541, i32 8}
!152 = !{ptr @w1_master_attribute_attempts, !151, !"w1_master_attribute_attempts", i1 false, i1 false}
!153 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/w1/w1.c", i32 352, i32 23}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/w1/w1.c", i32 542, i32 8}
!157 = !{ptr @w1_master_attribute_timeout, !156, !"w1_master_attribute_timeout", i1 false, i1 false}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/w1/w1.c", i32 543, i32 8}
!160 = !{ptr @w1_master_attribute_timeout_us, !159, !"w1_master_attribute_timeout_us", i1 false, i1 false}
!161 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/w1/w1.c", i32 544, i32 8}
!163 = !{ptr @w1_master_attribute_pointer, !162, !"w1_master_attribute_pointer", i1 false, i1 false}
!164 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/w1/w1.c", i32 297, i32 23}
!166 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/w1/w1.c", i32 545, i32 8}
!168 = !{ptr @w1_master_attribute_search, !167, !"w1_master_attribute_search", i1 false, i1 false}
!169 = !{ptr @.str.54, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/w1/w1.c", i32 546, i32 8}
!171 = !{ptr @w1_master_attribute_pullup, !170, !"w1_master_attribute_pullup", i1 false, i1 false}
!172 = !{ptr @.str.55, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/w1/w1.c", i32 547, i32 8}
!174 = !{ptr @w1_master_attribute_add, !173, !"w1_master_attribute_add", i1 false, i1 false}
!175 = !{ptr @.str.56, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/w1/w1.c", i32 396, i32 3}
!177 = !{ptr @.str.57, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/w1/w1.c", i32 478, i32 3}
!179 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @w1_master_attribute_store_add._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @w1_master_attribute_store_add._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/w1/w1.c", i32 413, i32 26}
!184 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/w1/w1.c", i32 417, i32 3}
!186 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @w1_atoreg_num._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @w1_atoreg_num._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/w1/w1.c", i32 420, i32 18}
!191 = !{ptr @w1_atoreg_num._entry.63, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/w1/w1.c", i32 422, i32 3}
!193 = !{ptr @w1_atoreg_num._entry_ptr.64, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.65, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/w1/w1.c", i32 548, i32 8}
!196 = !{ptr @w1_master_attribute_remove, !195, !"w1_master_attribute_remove", i1 false, i1 false}
!197 = !{ptr @.str.66, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/w1/w1.c", i32 493, i32 3}
!199 = !{ptr @.str.67, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/w1/w1.c", i32 517, i32 3}
!201 = !{ptr @.str.68, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @w1_master_attribute_store_remove._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @w1_master_attribute_store_remove._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @w1_default_family, !205, !"w1_default_family", i1 false, i1 false}
!205 = !{!"../drivers/w1/w1.c", i32 169, i32 25}
!206 = !{ptr @w1_default_fops, !207, !"w1_default_fops", i1 false, i1 false}
!207 = !{!"../drivers/w1/w1.c", i32 165, i32 35}
!208 = !{ptr @w1_slave_default_groups, !209, !"w1_slave_default_groups", i1 false, i1 false}
!209 = !{!"../drivers/w1/w1.c", i32 160, i32 38}
!210 = !{ptr @w1_slave_default_group, !211, !"w1_slave_default_group", i1 false, i1 false}
!211 = !{!"../drivers/w1/w1.c", i32 156, i32 37}
!212 = !{ptr @w1_slave_bin_attrs, !213, !"w1_slave_bin_attrs", i1 false, i1 false}
!213 = !{!"../drivers/w1/w1.c", i32 151, i32 30}
!214 = !{ptr @.str.69, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/w1/w1.c", i32 149, i32 8}
!216 = !{ptr @bin_attr_rw, !215, !"bin_attr_rw", i1 false, i1 false}
!217 = !{ptr @.str.70, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/w1/w1.c", i32 694, i32 2}
!219 = !{ptr @.str.71, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__w1_attach_slave_device.__UNIQUE_ID_ddebug469, !218, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!221 = !{ptr @.str.72, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/w1/w1.c", i32 702, i32 3}
!223 = !{ptr @__w1_attach_slave_device._entry, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @__w1_attach_slave_device._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.73, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/w1/w1.c", i32 84, i32 2}
!227 = !{ptr @.str.74, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @w1_slave_release.__UNIQUE_ID_ddebug466, !226, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!229 = !{ptr @w1_slave_groups, !230, !"w1_slave_groups", i1 false, i1 false}
!230 = !{!"../drivers/w1/w1.c", i32 114, i32 1}
!231 = !{ptr @w1_slave_group, !230, !"w1_slave_group", i1 false, i1 false}
!232 = !{ptr @w1_slave_attrs, !233, !"w1_slave_attrs", i1 false, i1 false}
!233 = !{!"../drivers/w1/w1.c", i32 109, i32 26}
!234 = !{ptr @.str.75, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/w1/w1.c", i32 96, i32 8}
!236 = !{ptr @dev_attr_name, !235, !"dev_attr_name", i1 false, i1 false}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/w1/w1.c", i32 107, i32 8}
!239 = !{ptr @dev_attr_id, !238, !"dev_attr_id", i1 false, i1 false}
!240 = !{ptr @.str.77, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/w1/w1.c", i32 632, i32 5}
!242 = !{ptr @.str.78, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @w1_family_notify._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @w1_family_notify._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.80, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/w1/w1.c", i32 641, i32 5}
!247 = !{ptr @w1_family_notify._entry.79, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @w1_family_notify._entry_ptr.81, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.82, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/w1/w1.c", i32 650, i32 7}
!251 = !{ptr @.str.84, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/w1/w1.c", i32 654, i32 5}
!253 = !{ptr @.str.85, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @w1_family_notify._entry.83, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @w1_family_notify._entry_ptr.86, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.87, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/w1/w1.c", i32 940, i32 3}
!258 = !{ptr @.str.88, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @w1_addr_crc_is_valid._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @w1_addr_crc_is_valid._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.89, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/w1/w1.c", i32 945, i32 3}
!263 = !{ptr @w1_addr_crc_is_valid.__UNIQUE_ID_ddebug473, !262, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!264 = !{ptr @.str.90, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/w1/w1.c", i32 196, i32 10}
!266 = !{ptr @w1_slave_driver, !267, !"w1_slave_driver", i1 false, i1 false}
!267 = !{!"../drivers/w1/w1.c", i32 195, i32 29}
!268 = !{ptr @.str.91, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/w1/w1.c", i32 1218, i32 2}
!270 = !{ptr @.str.92, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @w1_init._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @w1_init._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.94, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/w1/w1.c", i32 1224, i32 3}
!275 = !{ptr @w1_init._entry.93, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @w1_init._entry_ptr.95, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.97, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/w1/w1.c", i32 1230, i32 3}
!279 = !{ptr @w1_init._entry.96, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @w1_init._entry_ptr.98, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.100, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/w1/w1.c", i32 1237, i32 3}
!283 = !{ptr @w1_init._entry.99, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @w1_init._entry_ptr.101, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{!"sp"}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i64 2148787105, i64 2148787110, i64 2148787123, i64 2148787167, i64 2148787201, i64 2148787222}
!296 = !{i64 2148219440, i64 2148219466, i64 2148219495, i64 2148219529, i64 2148219560, i64 2148219583}
!297 = !{i64 2148221905, i64 2148221931, i64 2148221960, i64 2148221994, i64 2148222025, i64 2148222048}
!298 = !{i64 2148307892}
!299 = !{i64 2148222625, i64 2148222657, i64 2148222686, i64 2148222720, i64 2148222751, i64 2148222774}
!300 = !{i64 2148308121}
!301 = !{!"auto-init"}
