; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/bus.c_pt.bc'
source_filename = "../drivers/net/netdevsim/bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.nsim_bus_dev = type { %struct.device, %struct.list_head, i32, i32, ptr, i32, i32, %struct.mutex, i8, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nsim_bus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr @.str, ptr null, ptr @nsim_bus_groups, ptr null, ptr null, ptr null, ptr null, ptr @nsim_bus_probe, ptr null, ptr @nsim_bus_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_num_vf, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@nsim_driver = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str, ptr @nsim_bus, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@nsim_bus_enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@nsim_bus_dev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nsim_bus_dev_list_lock, i64 52), ptr getelementptr (i8, ptr @nsim_bus_dev_list_lock, i64 52) }, ptr @nsim_bus_dev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nsim_bus_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nsim_bus_dev_list, ptr @nsim_bus_dev_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdevsim\00", [22 x i8] zeroinitializer }, align 32
@nsim_bus_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nsim_bus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nsim_bus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nsim_bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nsim_bus_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bus_attr_new_device, ptr @bus_attr_del_device, ptr null], [20 x i8] zeroinitializer }, align 32
@bus_attr_new_device = internal global { %struct.bus_attribute, [36 x i8] } { %struct.bus_attribute { %struct.attribute { ptr @.str.1, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @new_device_store }, [36 x i8] zeroinitializer }, align 32
@bus_attr_del_device = internal global { %struct.bus_attribute, [36 x i8] } { %struct.bus_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @del_device_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"new_device\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %u %u\00", [23 x i8] zeroinitializer }, align 32
@new_device_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Value of \22id\22 is too big.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"new_device_store\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/netdevsim/bus.c\00", [36 x i8] zeroinitializer }, align 32
@new_device_store._entry_ptr = internal global ptr @new_device_store._entry, section ".printk_index", align 4
@new_device_store._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013Format for adding new device is \22id port_count num_queues\22 (uint uint unit).\0A\00", [48 x i8] zeroinitializer }, align 32
@new_device_store._entry_ptr.8 = internal global ptr @new_device_store._entry.6, section ".printk_index", align 4
@nsim_bus_dev_ids = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@nsim_bus_dev_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @nsim_bus_dev_attr_groups, ptr null, ptr null, ptr @nsim_bus_dev_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@nsim_bus_dev_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&nsim_bus_dev->nsim_bus_reload_lock\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nsim_bus_dev_ids.xa_lock\00", [39 x i8] zeroinitializer }, align 32
@nsim_bus_dev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nsim_bus_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nsim_bus_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nsim_bus_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nsim_bus_dev_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @nsim_bus_dev_numvfs_attr, ptr @nsim_bus_dev_new_port_attr, ptr @nsim_bus_dev_del_port_attr, ptr null], [16 x i8] zeroinitializer }, align 32
@nsim_bus_dev_numvfs_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nsim_bus_dev_numvfs_show, ptr @nsim_bus_dev_numvfs_store }, [36 x i8] zeroinitializer }, align 32
@nsim_bus_dev_new_port_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @new_port_store }, [36 x i8] zeroinitializer }, align 32
@nsim_bus_dev_del_port_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @del_port_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sriov_numvfs\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"new_port\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"del_port\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"del_device\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@del_device_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.17, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"del_device_store\00", [47 x i8] zeroinitializer }, align 32
@del_device_store._entry_ptr = internal global ptr @del_device_store._entry, section ".printk_index", align 4
@del_device_store._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Format for deleting device is \22id\22 (uint).\0A\00", [50 x i8] zeroinitializer }, align 32
@del_device_store._entry_ptr.20 = internal global ptr @del_device_store._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nsim_bus_dev_list_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nsim_bus_dev_list_lock\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"nsim_bus\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 270, i32 24 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"nsim_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 327, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"nsim_bus_enable\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 19, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"nsim_bus_dev_list_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"nsim_bus_dev_list\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 17, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 271, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"nsim_bus_groups\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"nsim_bus_group\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 247, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"nsim_bus_attrs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 242, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"bus_attr_new_device\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"bus_attr_del_device\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 198, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 155, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 165, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 170, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"nsim_bus_dev_ids\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"nsim_bus_dev_type\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 140, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 301, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 16, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"nsim_bus_dev_attr_groups\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 131, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"nsim_bus_dev_attr_group\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 127, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"nsim_bus_dev_attrs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 120, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"nsim_bus_dev_numvfs_attr\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 56, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"nsim_bus_dev_new_port_attr\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 88, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"nsim_bus_dev_del_port_attr\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 118, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 57, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 53, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 88, i32 61 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 118, i32 61 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 240, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 209, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 213, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 218, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [31 x i8] c"../drivers/net/netdevsim/bus.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 18, i32 8 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @del_device_store._entry, ptr @del_device_store._entry.18, ptr @del_device_store._entry_ptr, ptr @del_device_store._entry_ptr.20, ptr @new_device_store._entry, ptr @new_device_store._entry.6, ptr @new_device_store._entry_ptr, ptr @new_device_store._entry_ptr.8, ptr @nsim_bus, ptr @nsim_driver, ptr @nsim_bus_enable, ptr @nsim_bus_dev_list_lock, ptr @nsim_bus_dev_list, ptr @.str, ptr @nsim_bus_groups, ptr @nsim_bus_group, ptr @nsim_bus_attrs, ptr @bus_attr_new_device, ptr @bus_attr_del_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @nsim_bus_dev_ids, ptr @nsim_bus_dev_type, ptr @nsim_bus_dev_new.__key, ptr @.str.9, ptr @.str.10, ptr @nsim_bus_dev_attr_groups, ptr @nsim_bus_dev_attr_group, ptr @nsim_bus_dev_attrs, ptr @nsim_bus_dev_numvfs_attr, ptr @nsim_bus_dev_new_port_attr, ptr @nsim_bus_dev_del_port_attr, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attr_new_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attr_del_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_device_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_device_store._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_ids to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_numvfs_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_new_port_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bus_dev_del_port_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @del_device_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @del_device_store._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_bus_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @nsim_bus) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @driver_register(ptr noundef nonnull @nsim_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end9, label %err_bus_unregister

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  store volatile i8 1, ptr @nsim_bus_enable, align 1
  br label %cleanup

err_bus_unregister:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bus_unregister(ptr noundef nonnull @nsim_bus) #10
  br label %cleanup

cleanup:                                          ; preds = %err_bus_unregister, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_bus_unregister ], [ 0, %do.end9 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_bus_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  store volatile i8 0, ptr @nsim_bus_enable, align 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @nsim_bus_dev_list_lock, i32 noundef 0) #10
  %0 = load ptr, ptr @nsim_bus_dev_list, align 4
  %cmp.not35 = icmp eq ptr %0, @nsim_bus_dev_list
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %nsim_bus_dev.0 = getelementptr i8, ptr %.pn.in36, i32 -928
  %1 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in36, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %init.i = getelementptr i8, ptr %.pn.in36, i32 121
  %10 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 0, ptr %init.i, align 1
  tail call void @device_unregister(ptr noundef %nsim_bus_dev.0) #10
  %id.i = getelementptr i8, ptr %.pn.in36, i32 -84
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  tail call void @ida_free(ptr noundef nonnull @nsim_bus_dev_ids, i32 noundef %12) #10
  tail call void @kfree(ptr noundef %nsim_bus_dev.0) #10
  %cmp.not = icmp eq ptr %.pn, @nsim_bus_dev_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nsim_bus_dev_list_lock) #10
  tail call void @driver_unregister(ptr noundef nonnull @nsim_driver) #10
  tail call void @bus_unregister(ptr noundef nonnull @nsim_bus) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bus_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @nsim_drv_probe(ptr noundef %dev) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_bus_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nsim_drv_remove(ptr noundef %dev) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_num_vf(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_device_store(ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %id = alloca i32, align 4
  %port_count = alloca i32, align 4
  %num_queues = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_count) #10
  %1 = ptrtoint ptr %port_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %port_count, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_queues) #10
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_queues, align 4, !annotation !88
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.2, ptr noundef nonnull %id, ptr noundef nonnull %port_count, ptr noundef nonnull %num_queues)
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end6 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %port_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %port_count, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %5 = ptrtoint ptr %num_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_queues, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb1, %entry.sw.bb2_crit_edge
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.end, label %sw.epilog

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2
  call void @mutex_lock_nested(ptr noundef nonnull @nsim_bus_dev_list_lock, i32 noundef 0) #10
  %8 = load volatile i8, ptr @nsim_bus_enable, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  br i1 %tobool.not, label %sw.epilog.err50_crit_edge, label %if.end23

sw.epilog.err50_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %err50

if.end23:                                         ; preds = %sw.epilog
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %11 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_count, align 4
  %13 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_queues, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1056) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end23.if.then26_crit_edge, label %if.end.i

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.end.i:                                         ; preds = %if.end23
  %call2.i = call i32 @ida_alloc_range(ptr noundef nonnull @nsim_bus_dev_ids, i32 noundef %10, i32 noundef %10, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.err_nsim_bus_dev_free.i_crit_edge, label %if.end4.i

if.end.i.err_nsim_bus_dev_free.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_nsim_bus_dev_free.i

if.end4.i:                                        ; preds = %if.end.i
  %id5.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 30
  %16 = ptrtoint ptr %id5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call2.i, ptr %id5.i, align 4
  %bus.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nsim_bus, ptr %bus.i, align 8
  %type.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nsim_bus_dev_type, ptr %type.i, align 4
  %port_count8.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %port_count8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %port_count8.i, align 8
  %num_queues9.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %call7.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %num_queues9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %num_queues9.i, align 4
  %21 = call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 110
  %25 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nsproxy.i, align 4
  %net_ns.i = getelementptr inbounds %struct.nsproxy, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %net_ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_ns.i, align 4
  %initial_net.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %call7.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %initial_net.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %initial_net.i, align 8
  %max_vfs.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %call7.i.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %max_vfs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %max_vfs.i, align 4
  %nsim_bus_reload_lock.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %call7.i.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %nsim_bus_reload_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nsim_bus_dev_new.__key) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %init.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %call7.i.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store volatile i8 0, ptr %init.i, align 1
  %call33.i = call i32 @device_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end4.i.nsim_bus_dev_new.exit_crit_edge, label %err_nsim_bus_dev_id_free.i

if.end4.i.nsim_bus_dev_new.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nsim_bus_dev_new.exit

err_nsim_bus_dev_id_free.i:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %id5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id5.i, align 4
  call void @ida_free(ptr noundef nonnull @nsim_bus_dev_ids, i32 noundef %33) #10
  br label %err_nsim_bus_dev_free.i

err_nsim_bus_dev_free.i:                          ; preds = %err_nsim_bus_dev_id_free.i, %if.end.i.err_nsim_bus_dev_free.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.err_nsim_bus_dev_free.i_crit_edge ], [ %call33.i, %err_nsim_bus_dev_id_free.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %34 = inttoptr i32 %err.0.i to ptr
  br label %nsim_bus_dev_new.exit

nsim_bus_dev_new.exit:                            ; preds = %err_nsim_bus_dev_free.i, %if.end4.i.nsim_bus_dev_new.exit_crit_edge
  %retval.0.i = phi ptr [ %34, %err_nsim_bus_dev_free.i ], [ %call7.i.i.i, %if.end4.i.nsim_bus_dev_new.exit_crit_edge ]
  %cmp.i59 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %nsim_bus_dev_new.exit.if.then26_crit_edge, label %do.end36

nsim_bus_dev_new.exit.if.then26_crit_edge:        ; preds = %nsim_bus_dev_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %nsim_bus_dev_new.exit.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  %retval.0.i62 = phi ptr [ %retval.0.i, %nsim_bus_dev_new.exit.if.then26_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.if.then26_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i62 to i32
  br label %err50

do.end36:                                         ; preds = %nsim_bus_dev_new.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %init = getelementptr inbounds %struct.nsim_bus_dev, ptr %retval.0.i, i32 0, i32 9
  %36 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %36)
  store volatile i8 1, ptr %init, align 1
  %list = getelementptr inbounds %struct.nsim_bus_dev, ptr %retval.0.i, i32 0, i32 1
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nsim_bus_dev_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %37, ptr noundef nonnull @nsim_bus_dev_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end36.list_add_tail.exit_crit_edge

do.end36.list_add_tail.exit_crit_edge:            ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @nsim_bus_dev_list, i32 0, i32 1), align 4
  %38 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nsim_bus_dev_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %retval.0.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end36.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nsim_bus_dev_list_lock) #10
  br label %cleanup

err50:                                            ; preds = %if.then26, %sw.epilog.err50_crit_edge
  %err.0 = phi i32 [ %35, %if.then26 ], [ -16, %sw.epilog.err50_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @nsim_bus_dev_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %err50, %list_add_tail.exit, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -22, %do.end ], [ %err.0, %err50 ], [ %count, %list_add_tail.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_queues) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_count) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nsim_bus_dev_release(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bus_dev_numvfs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bus_dev_numvfs_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %num_vfs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_vfs) #10
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_vfs, align 4, !annotation !88
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %num_vfs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_vfs, align 4
  %call5 = call i32 @nsim_drv_configure_vfs(ptr noundef %dev, i32 noundef %4) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool7.not, i32 %count, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end6.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -2, %if.end6.thread ], [ %spec.select, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_vfs) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_drv_configure_vfs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_port_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %port_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_index) #10
  %0 = ptrtoint ptr %port_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %port_index, align 4, !annotation !88
  %init = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %init, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %port_index) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %nsim_bus_reload_lock = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 7
  %call14 = call i32 @mutex_trylock(ptr noundef %nsim_bus_reload_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %in_reload = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %in_reload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_reload, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool18.not = icmp eq i8 %4, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_index, align 4
  %call22 = call i32 @nsim_drv_port_add(ptr noundef %dev, i32 noundef 0, i32 noundef %6) #10
  call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  %count.call22 = select i1 %tobool24.not, i32 %count, i32 %call22
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then19 ], [ %count.call22, %if.end21 ], [ -16, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ -16, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_index) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_drv_port_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_port_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %port_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_index) #10
  %0 = ptrtoint ptr %port_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %port_index, align 4, !annotation !88
  %init = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %init, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %port_index) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %nsim_bus_reload_lock = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 7
  %call14 = call i32 @mutex_trylock(ptr noundef %nsim_bus_reload_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %in_reload = getelementptr inbounds %struct.nsim_bus_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %in_reload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_reload, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool18.not = icmp eq i8 %4, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_index, align 4
  %call22 = call i32 @nsim_drv_port_del(ptr noundef %dev, i32 noundef 0, i32 noundef %6) #10
  call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  %count.call22 = select i1 %tobool24.not, i32 %count, i32 %call22
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then19 ], [ %count.call22, %if.end21 ], [ -16, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ -16, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_index) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_drv_port_del(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_device_store(ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !88
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cond43 = icmp eq i32 %call, 1
  br i1 %cond43, label %sw.bb, label %do.end5

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %do.end, label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  call void @mutex_lock_nested(ptr noundef nonnull @nsim_bus_dev_list_lock, i32 noundef 0) #10
  %3 = load volatile i8, ptr @nsim_bus_enable, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  br i1 %tobool.not, label %if.then21, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  br label %for.cond

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef nonnull @nsim_bus_dev_list_lock) #10
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.epilog.for.cond_crit_edge
  %.pn.in.in = phi ptr [ %.pn.in, %for.body.for.cond_crit_edge ], [ @nsim_bus_dev_list, %sw.epilog.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp28.not = icmp eq ptr %.pn.in, @nsim_bus_dev_list
  br i1 %cmp28.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id29 = getelementptr i8, ptr %.pn.in, i32 -84
  %5 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id29, align 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %cmp30.not = icmp eq i32 %6, %8
  br i1 %cmp30.not, label %if.end32, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end32:                                         ; preds = %for.body
  %id29.le = getelementptr i8, ptr %.pn.in, i32 -84
  %nsim_bus_dev.0.le = getelementptr i8, ptr %.pn.in, i32 -928
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_del.exit_crit_edge

if.end32.list_del.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end32.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %init.i = getelementptr i8, ptr %.pn.in, i32 121
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 0, ptr %init.i, align 1
  call void @device_unregister(ptr noundef %nsim_bus_dev.0.le) #10
  %18 = ptrtoint ptr %id29.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id29.le, align 4
  call void @ida_free(ptr noundef nonnull @nsim_bus_dev_ids, i32 noundef %19) #10
  call void @kfree(ptr noundef %nsim_bus_dev.0.le) #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %err.0.count = phi i32 [ %count, %list_del.exit ], [ -2, %for.cond.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @nsim_bus_dev_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then21, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0.count, %for.end ], [ -16, %if.then21 ], [ -22, %do.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_drv_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_drv_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @nsim_bus_enable, !1, !"nsim_bus_enable", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/bus.c", i32 19, i32 13}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/bus.c", i32 271, i32 11}
!4 = !{ptr @nsim_bus, !5, !"nsim_bus", i1 false, i1 false}
!5 = !{!"../drivers/net/netdevsim/bus.c", i32 270, i32 24}
!6 = !{ptr @nsim_bus_groups, !7, !"nsim_bus_groups", i1 false, i1 false}
!7 = !{!"../drivers/net/netdevsim/bus.c", i32 247, i32 1}
!8 = !{ptr @nsim_bus_group, !7, !"nsim_bus_group", i1 false, i1 false}
!9 = !{ptr @nsim_bus_attrs, !10, !"nsim_bus_attrs", i1 false, i1 false}
!10 = !{!"../drivers/net/netdevsim/bus.c", i32 242, i32 26}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/netdevsim/bus.c", i32 198, i32 8}
!13 = !{ptr @bus_attr_new_device, !12, !"bus_attr_new_device", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/bus.c", i32 155, i32 20}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/netdevsim/bus.c", i32 165, i32 4}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @new_device_store._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @new_device_store._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/bus.c", i32 170, i32 3}
!24 = !{ptr @new_device_store._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @new_device_store._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nsim_bus_dev_new.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/netdevsim/bus.c", i32 301, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/netdevsim/bus.c", i32 16, i32 8}
!31 = !{ptr @nsim_bus_dev_ids, !30, !"nsim_bus_dev_ids", i1 false, i1 false}
!32 = !{ptr @nsim_bus_dev_type, !33, !"nsim_bus_dev_type", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/bus.c", i32 140, i32 27}
!34 = !{ptr @nsim_bus_dev_attr_groups, !35, !"nsim_bus_dev_attr_groups", i1 false, i1 false}
!35 = !{!"../drivers/net/netdevsim/bus.c", i32 131, i32 38}
!36 = !{ptr @nsim_bus_dev_attr_group, !37, !"nsim_bus_dev_attr_group", i1 false, i1 false}
!37 = !{!"../drivers/net/netdevsim/bus.c", i32 127, i32 37}
!38 = !{ptr @nsim_bus_dev_attrs, !39, !"nsim_bus_dev_attrs", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/bus.c", i32 120, i32 26}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/netdevsim/bus.c", i32 57, i32 2}
!42 = !{ptr @nsim_bus_dev_numvfs_attr, !43, !"nsim_bus_dev_numvfs_attr", i1 false, i1 false}
!43 = !{!"../drivers/net/netdevsim/bus.c", i32 56, i32 32}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/netdevsim/bus.c", i32 53, i32 22}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/netdevsim/bus.c", i32 88, i32 61}
!48 = !{ptr @nsim_bus_dev_new_port_attr, !49, !"nsim_bus_dev_new_port_attr", i1 false, i1 false}
!49 = !{!"../drivers/net/netdevsim/bus.c", i32 88, i32 32}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/netdevsim/bus.c", i32 118, i32 61}
!52 = !{ptr @nsim_bus_dev_del_port_attr, !53, !"nsim_bus_dev_del_port_attr", i1 false, i1 false}
!53 = !{!"../drivers/net/netdevsim/bus.c", i32 118, i32 32}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/netdevsim/bus.c", i32 240, i32 8}
!56 = !{ptr @bus_attr_del_device, !55, !"bus_attr_del_device", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/netdevsim/bus.c", i32 209, i32 20}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/netdevsim/bus.c", i32 213, i32 4}
!61 = !{ptr @del_device_store._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @del_device_store._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/netdevsim/bus.c", i32 218, i32 3}
!65 = !{ptr @del_device_store._entry.18, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @del_device_store._entry_ptr.20, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @nsim_driver, !68, !"nsim_driver", i1 false, i1 false}
!68 = !{!"../drivers/net/netdevsim/bus.c", i32 327, i32 29}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/netdevsim/bus.c", i32 18, i32 8}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nsim_bus_dev_list_lock, !70, !"nsim_bus_dev_list_lock", i1 false, i1 false}
!73 = !{ptr @nsim_bus_dev_list, !74, !"nsim_bus_dev_list", i1 false, i1 false}
!74 = !{!"../drivers/net/netdevsim/bus.c", i32 17, i32 8}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2158315993}
!86 = !{i64 2158320378}
!87 = !{i64 2158311500}
!88 = !{!"auto-init"}
!89 = !{i8 0, i8 2}
!90 = !{i64 2158280207}
!91 = !{i64 2158306978}
!92 = !{i64 2158286470}
!93 = !{i64 2158264169}
!94 = !{i64 2158270424}
!95 = !{i64 2158298312}
