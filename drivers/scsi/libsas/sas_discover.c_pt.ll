; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_discover.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_discover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.79, ptr, i32, %struct.kref, [116 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.81 }
%union.anon.81 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.82, %union.anon.83, i8, i8, i8, i8, i8, %union.anon.84, i8, i8, i8, i32 }
%union.anon.82 = type { i8 }
%union.anon.83 = type { i8 }
%union.anon.84 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.sas_internal = type { %struct.scsi_transport_template, ptr, ptr, [0 x %struct.device_attribute], [17 x %struct.device_attribute], [1 x %struct.device_attribute], [8 x %struct.device_attribute], [5 x %struct.device_attribute], [7 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, [1 x ptr], [18 x ptr], [2 x ptr], [9 x ptr], [6 x ptr], [8 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_port = type { %struct.device, i32, i32, i8, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@sas_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->ex_dev.cmd_mutex\00", [41 x i8] zeroinitializer }, align 32
@sas_notify_lldd_dev_found._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014sas: driver on host %s cannot handle device %016llx, error:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sas_notify_lldd_dev_found\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/libsas/sas_discover.c\00", [61 x i8] zeroinitializer }, align 32
@sas_notify_lldd_dev_found._entry_ptr = internal global ptr @sas_notify_lldd_dev_found._entry, section ".printk_index", align 4
@sas_discover_domain.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libsas\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sas_discover_domain\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DOING DISCOVERY on port %d, pid:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sas: DOING DISCOVERY on port %d, pid:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@sas_discover_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.3, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013sas: unhandled device %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sas_discover_domain._entry_ptr = internal global ptr @sas_discover_domain._entry, section ".printk_index", align 4
@sas_discover_domain.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.9, i8 0, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DONE DISCOVERY on port %d, pid:%d, result:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sas: DONE DISCOVERY on port %d, pid:%d, result:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@sas_get_port_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014sas: Port %016llx is disconnected when discovering\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sas_get_port_device\00", [44 x i8] zeroinitializer }, align 32
@sas_get_port_device._entry_ptr = internal global ptr @sas_get_port_device._entry, section ".printk_index", align 4
@sas_get_port_device._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014sas: ERROR: Unidentified device type %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sas_get_port_device._entry_ptr.15 = internal global ptr @sas_get_port_device._entry.13, section ".printk_index", align 4
@sas_alloc_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->done_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.sas_probe_devices = private unnamed_addr constant [18 x i8] c"sas_probe_devices\00", align 1
@sas_fail_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014sas: %s: for %s device %016llx returned %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_fail_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/libsas/sas_internal.h\00", [61 x i8] zeroinitializer }, align 32
@sas_fail_probe._entry_ptr = internal global ptr @sas_fail_probe._entry, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exp-attached\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"direct-attached\00", [16 x i8] zeroinitializer }, align 32
@sas_revalidate_domain.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sas_revalidate_domain\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"REVALIDATION DEFERRED on port %d, pid:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sas: REVALIDATION DEFERRED on port %d, pid:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sas_revalidate_domain.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.3, ptr @.str.25, i8 0, i8 127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"REVALIDATING DOMAIN on port %d, pid:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sas: REVALIDATING DOMAIN on port %d, pid:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@sas_revalidate_domain.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.3, ptr @.str.27, i8 0, i8 -128, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"sas: done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@INIT_SAS_WORK.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&sw->work)\00", [35 x i8] zeroinitializer }, align 32
@switch.table.sas_discover_domain = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 3, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 31, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 181, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 445, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 468, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 485, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 95, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 123, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 184, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/libsas/sas_internal.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 112, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 500, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 507, i32 2 }
@___asan_gen_.136 = private constant [38 x i8] c"../drivers/scsi/libsas/sas_discover.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 513, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"../include/scsi/libsas.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 218, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [33 x i8] c"switch.table.sas_discover_domain\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @sas_discover_domain._entry, ptr @sas_discover_domain._entry_ptr, ptr @sas_fail_probe._entry, ptr @sas_fail_probe._entry_ptr, ptr @sas_get_port_device._entry, ptr @sas_get_port_device._entry.13, ptr @sas_get_port_device._entry_ptr, ptr @sas_get_port_device._entry_ptr.15, ptr @sas_notify_lldd_dev_found._entry, ptr @sas_notify_lldd_dev_found._entry_ptr, ptr @sas_init_dev.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @sas_alloc_device.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @INIT_SAS_WORK.__key, ptr @.str.29, ptr @switch.table.sas_discover_domain], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_notify_lldd_dev_found._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_discover_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_get_port_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_get_port_device._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_alloc_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_fail_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INIT_SAS_WORK.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sas_discover_domain to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_init_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge6
  ]

entry.sw.bb1_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge6
  %6 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %6, align 4
  %prev.i5 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev.i5, align 4
  %cmd_mutex = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 16
  tail call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @sas_init_dev.__key) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_notify_lldd_dev_found(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dft, align 4
  %lldd_dev_found = getelementptr inbounds %struct.sas_domain_function_template, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %lldd_dev_found to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldd_dev_found, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %11(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %do.end.dev_name.exit_crit_edge ]
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %18 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sas_addr, align 16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, i64 noundef %19, i32 noundef %call) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #8
  %kref = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !74

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !75

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %dev_name.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_notify_lldd_dev_gone(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dft, align 4
  %lldd_dev_gone = getelementptr inbounds %struct.sas_domain_function_template, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %lldd_dev_gone to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldd_dev_gone, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 21
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dft, align 4
  %lldd_dev_gone5 = getelementptr inbounds %struct.sas_domain_function_template, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %lldd_dev_gone5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_dev_gone5, align 4
  tail call void %15(ptr noundef %dev) #8
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_put_device(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %kref = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i, !prof !75

if.end5.i.i.i.kref_put.exit_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i, %if.end5.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_discover_end_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sas_notify_lldd_dev_found(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_free_device(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rphy = getelementptr i8, ptr %kref, i32 -412
  %0 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rphy, align 4
  tail call void @put_device(ptr noundef %1) #8
  %2 = ptrtoint ptr %rphy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rphy, align 4
  %parent = getelementptr i8, ptr %kref, i32 -456
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 64
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %4, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !75

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #8
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %phy = getelementptr i8, ptr %kref, i32 -440
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 16
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.sas_port_put_phy.exit_crit_edge, label %if.then.i

if.end.sas_port_put_phy.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_port_put_phy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %7) #8
  br label %sas_port_put_phy.exit

sas_port_put_phy.exit:                            ; preds = %if.then.i, %if.end.sas_port_put_phy.exit_crit_edge
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %phy, align 16
  %dev_type = getelementptr i8, ptr %kref, i32 -476
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_type, align 4
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %if.then5, label %sas_port_put_phy.exit.if.end6_crit_edge

sas_port_put_phy.exit.if.end6_crit_edge:          ; preds = %sas_port_put_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %sas_port_put_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ex_phy = getelementptr i8, ptr %kref, i32 -240
  %13 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ex_phy, align 8
  tail call void @kfree(ptr noundef %14) #8
  %15 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %dev_type, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sas_port_put_phy.exit.if.end6_crit_edge
  %16 = phi i32 [ %.pr, %if.then5 ], [ %10, %sas_port_put_phy.exit.if.end6_crit_edge ]
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %16, label %if.end6.if.end15_crit_edge [
    i32 5, label %if.end6.land.lhs.true_crit_edge
    i32 7, label %if.end6.land.lhs.true_crit_edge33
    i32 8, label %if.end6.land.lhs.true_crit_edge34
    i32 9, label %if.end6.land.lhs.true_crit_edge35
  ]

if.end6.land.lhs.true_crit_edge35:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end6.land.lhs.true_crit_edge34:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end6.land.lhs.true_crit_edge33:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge33, %if.end6.land.lhs.true_crit_edge34, %if.end6.land.lhs.true_crit_edge35
  %ap = getelementptr i8, ptr %kref, i32 -256
  %18 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ap, align 8
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true.if.end15_crit_edge, label %if.then10

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ata_sas_tport_delete(ptr noundef nonnull %19) #8
  %20 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ap, align 8
  tail call void @ata_sas_port_destroy(ptr noundef %21) #8
  %ata_host = getelementptr i8, ptr %kref, i32 -252
  %22 = ptrtoint ptr %ata_host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ata_host, align 4
  tail call void @ata_host_put(ptr noundef %23) #8
  %24 = ptrtoint ptr %ata_host to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ata_host, align 4
  %25 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ap, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %add.ptr = getelementptr i8, ptr %kref, i32 -520
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_tport_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_destruct_devices(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %destroy_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destroy_list, align 4
  %cmp.not24 = icmp eq ptr %1, %destroy_list
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn.in25, i32 -92
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in25, ptr %.pn.in25, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in25, ptr %prev.i3.i, align 4
  %rphy = getelementptr i8, ptr %.pn.in25, i32 16
  %11 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rphy, align 4
  tail call void @sas_remove_children(ptr noundef %12) #8
  %13 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rphy, align 4
  tail call void @sas_rphy_delete(ptr noundef %14) #8
  tail call fastcc void @sas_unregister_common_dev(ptr noundef %port, ptr noundef %dev.0)
  %cmp.not = icmp eq ptr %.pn, %destroy_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_remove_children(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_rphy_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_unregister_common_dev(ptr noundef %port, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ha1 = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha1, align 4
  tail call void @sas_notify_lldd_dev_gone(ptr noundef %dev)
  %parent = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %port2 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2, align 4
  %port_dev = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %port_dev, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %siblings = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %siblings) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %siblings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %siblings, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %siblings, ptr %siblings, align 4
  %prev.i3.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %siblings, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %if.then
  %dev_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock) #8
  %dev_list_node = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 10
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list_node) #8
  br i1 %call.i.i27, label %if.end.i.i30, label %if.end.list_del_init.exit32_crit_edge

if.end.list_del_init.exit32_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit32

if.end.i.i30:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i28 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i28, align 4
  %17 = ptrtoint ptr %dev_list_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_list_node, align 4
  %prev1.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i29, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit32

list_del_init.exit32:                             ; preds = %if.end.i.i30, %if.end.list_del_init.exit32_crit_edge
  %21 = ptrtoint ptr %dev_list_node to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %dev_list_node, ptr %dev_list_node, align 4
  %prev.i3.i31 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i3.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev_list_node, ptr %prev.i3.i31, align 4
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_type.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %24, label %list_del_init.exit32.if.end5_crit_edge [
    i32 5, label %list_del_init.exit32.if.then4_crit_edge
    i32 7, label %list_del_init.exit32.if.then4_crit_edge40
    i32 8, label %list_del_init.exit32.if.then4_crit_edge41
    i32 9, label %list_del_init.exit32.if.then4_crit_edge42
  ]

list_del_init.exit32.if.then4_crit_edge42:        ; preds = %list_del_init.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

list_del_init.exit32.if.then4_crit_edge41:        ; preds = %list_del_init.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

list_del_init.exit32.if.then4_crit_edge40:        ; preds = %list_del_init.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

list_del_init.exit32.if.then4_crit_edge:          ; preds = %list_del_init.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

list_del_init.exit32.if.end5_crit_edge:           ; preds = %list_del_init.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %list_del_init.exit32.if.then4_crit_edge, %list_del_init.exit32.if.then4_crit_edge40, %list_del_init.exit32.if.then4_crit_edge41, %list_del_init.exit32.if.then4_crit_edge42
  %ap = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %26 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ap, align 8
  tail call void @sas_ata_end_eh(ptr noundef %27) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %list_del_init.exit32.if.end5_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock) #8
  %lock = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %28 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %30 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %30, align 4
  %cmp.i.not = icmp eq ptr %32, %30
  br i1 %cmp.i.not, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  %call.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #8
  br i1 %call.i.i33, label %if.end.i.i36, label %if.then9.list_del_init.exit38_crit_edge

if.then9.list_del_init.exit38_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit38

if.end.i.i36:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i34 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i34, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  %prev1.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i35, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit38

list_del_init.exit38:                             ; preds = %if.end.i.i36, %if.then9.list_del_init.exit38_crit_edge
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %30, ptr %30, align 4
  %prev.i3.i37 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %30, ptr %prev.i3.i37, align 4
  %eh_active = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %eh_active to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eh_active, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %eh_active, align 4
  br label %if.end11

if.end11:                                         ; preds = %list_del_init.exit38, %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sas_put_device.exit_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.sas_put_device.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_put_device.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #8
  br label %sas_put_device.exit

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref.i) #8
  br label %sas_put_device.exit

sas_put_device.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sas_put_device.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_unregister_dev(ptr noundef %port, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disco_list_node = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 11
  %3 = ptrtoint ptr %disco_list_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %disco_list_node, align 4
  %cmp.i.not = icmp eq ptr %4, %disco_list_node
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %disco_list_node) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %disco_list_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disco_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %disco_list_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %disco_list_node, ptr %disco_list_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %disco_list_node, ptr %prev.i3.i, align 4
  %rphy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %13 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rphy, align 4
  tail call void @sas_rphy_free(ptr noundef %14) #8
  tail call fastcc void @sas_unregister_common_dev(ptr noundef %port, ptr noundef %dev)
  br label %if.end10

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end
  %rphy8 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %rphy8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rphy8, align 4
  tail call void @sas_rphy_unlink(ptr noundef %16) #8
  %disco_list_node9 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 11
  %destroy_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 5
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %disco_list_node9) #8
  br i1 %call.i.i19, label %if.end.i.i22, label %if.then7.__list_del_entry.exit.i_crit_edge

if.then7.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i22:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i20 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i20, align 4
  %19 = ptrtoint ptr %disco_list_node9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disco_list_node9, align 4
  %prev1.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i21, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i22, %if.then7.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %disco_list_node9, ptr noundef %24, ptr noundef %destroy_list) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end10_crit_edge

__list_del_entry.exit.i.if.end10_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %disco_list_node9, ptr %prev.i2.i, align 4
  %26 = ptrtoint ptr %disco_list_node9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %destroy_list, ptr %disco_list_node9, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %disco_list_node9, ptr %24, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end10_crit_edge, %if.end.if.end10_crit_edge, %list_del_init.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_rphy_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_rphy_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_unregister_domain_devices(ptr noundef %port, i32 noundef %gone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 3
  %prev = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %cmp.not55 = icmp eq ptr %1, %dev_list
  br i1 %cmp.not55, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gone)
  %tobool.not = icmp eq i32 %gone, 0
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn4856 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn58, %if.end.for.body_crit_edge ]
  %dev.057 = getelementptr i8, ptr %.pn4856, i32 -84
  %.pn58.in = getelementptr inbounds %struct.list_head, ptr %.pn4856, i32 0, i32 1
  %2 = ptrtoint ptr %.pn58.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn58 = load ptr, ptr %.pn58.in, align 4
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %.pn4856, i32 432
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @sas_unregister_dev(ptr noundef %port, ptr noundef %dev.057)
  %cmp.not = icmp eq ptr %.pn58, %dev_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %disco_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 4
  %3 = ptrtoint ptr %disco_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disco_list, align 4
  %cmp22.not59 = icmp eq ptr %4, %disco_list
  br i1 %cmp22.not59, label %for.end.for.end31_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn49.in60 = phi ptr [ %.pn49, %for.body24.for.body24_crit_edge ], [ %4, %for.end.for.body24_crit_edge ]
  %dev.1 = getelementptr i8, ptr %.pn49.in60, i32 -92
  %5 = ptrtoint ptr %.pn49.in60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn49 = load ptr, ptr %.pn49.in60, align 4
  tail call void @sas_unregister_dev(ptr noundef %port, ptr noundef %dev.1)
  %cmp22.not = icmp eq ptr %.pn49, %disco_list
  br i1 %cmp22.not, label %for.body24.for.end31_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.body24.for.end31_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end31:                                        ; preds = %for.body24.for.end31_crit_edge, %for.end.for.end31_crit_edge
  %port32 = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 22
  %6 = ptrtoint ptr %port32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port32, align 4
  %rphy = getelementptr inbounds %struct.sas_port, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rphy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rphy, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_device_set_phy(ptr noundef %dev, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %ha2 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha2, align 4
  %call = tail call ptr @sas_port_get_phy(ptr noundef %port) #8
  %phy_port_lock = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %phy_port_lock) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %phy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 16
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then4.sas_port_put_phy.exit_crit_edge, label %if.then.i

if.then4.sas_port_put_phy.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_port_put_phy.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %5) #8
  br label %sas_port_put_phy.exit

sas_port_put_phy.exit:                            ; preds = %if.then.i, %if.then4.sas_port_put_phy.exit_crit_edge
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %phy, align 16
  br label %if.end6

if.end6:                                          ; preds = %sas_port_put_phy.exit, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %phy_port_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_port_get_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_discover_event(ptr noundef %port, i32 noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ev)
  %cmp = icmp ugt i32 %ev, 3
  br i1 %cmp, label %do.body5, label %do.end11, !prof !74

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_discover.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

do.end11:                                         ; preds = %if.end
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %port, i32 0, i32 1
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %ev, ptr noundef %pending) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %disco_q.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %disco_q.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disco_q.i.i, align 4
  %work.i.i = getelementptr [4 x %struct.sas_discovery_event], ptr %port, i32 0, i32 %ev, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_init_disc(ptr noundef %disc, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %disc, i32 0, i32 1
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pending, align 4
  %work.i = getelementptr inbounds %struct.sas_work, ptr %disc, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %1 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.sas_work, ptr %disc, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @INIT_SAS_WORK.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.sas_work, ptr %disc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sas_work, ptr %disc, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.sas_work, ptr %disc, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sas_discover_domain, ptr %func.i, align 4
  %5 = ptrtoint ptr %disc to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %disc, ptr %disc, align 4
  %prev.i11.i = getelementptr inbounds %struct.list_head, ptr %disc, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %disc, ptr %prev.i11.i, align 4
  %port4 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %port4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %port, ptr %port4, align 4
  %arrayidx.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1
  %work.i.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i.1, i32 noundef 0) #8
  %8 = ptrtoint ptr %work.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work.i.1, align 4
  %lockdep_map.i.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @INIT_SAS_WORK.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %entry4.i.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry4.i.1, ptr %entry4.i.1, align 4
  %prev.i.i.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry4.i.1, ptr %prev.i.i.1, align 4
  %func.i.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %func.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sas_revalidate_domain, ptr %func.i.1, align 4
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i11.i.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i11.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.1, ptr %prev.i11.i.1, align 4
  %port4.1 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %port4.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %port, ptr %port4.1, align 4
  %arrayidx.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2
  %work.i.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i.2, i32 noundef 0) #8
  %15 = ptrtoint ptr %work.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work.i.2, align 4
  %lockdep_map.i.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.2, ptr noundef nonnull @.str.29, ptr noundef nonnull @INIT_SAS_WORK.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %entry4.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry4.i.2, ptr %entry4.i.2, align 4
  %prev.i.i.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry4.i.2, ptr %prev.i.i.2, align 4
  %func.i.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %func.i.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sas_suspend_devices, ptr %func.i.2, align 4
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i11.i.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i11.i.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.2, ptr %prev.i11.i.2, align 4
  %port4.2 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %port4.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %port, ptr %port4.2, align 4
  %arrayidx.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3
  %work.i.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i.3, i32 noundef 0) #8
  %22 = ptrtoint ptr %work.i.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work.i.3, align 4
  %lockdep_map.i.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.3, ptr noundef nonnull @.str.29, ptr noundef nonnull @INIT_SAS_WORK.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %entry4.i.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry4.i.3, ptr %entry4.i.3, align 4
  %prev.i.i.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry4.i.3, ptr %prev.i.i.3, align 4
  %func.i.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %func.i.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sas_resume_devices, ptr %func.i.3, align 4
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i11.i.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i11.i.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.3, ptr %prev.i11.i.3, align 4
  %port4.3 = getelementptr [4 x %struct.sas_discovery_event], ptr %disc, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %port4.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %port, ptr %port4.3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_discover_domain(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %1, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %pending) #8
  %port_dev = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 640) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %siblings.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %siblings.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %siblings.i.i, ptr %siblings.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %siblings.i.i, ptr %prev.i.i.i, align 8
  %dev_list_node.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %dev_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dev_list_node.i.i, ptr %dev_list_node.i.i, align 4
  %prev.i8.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev_list_node.i.i, ptr %prev.i8.i.i, align 8
  %disco_list_node.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %disco_list_node.i.i, ptr %disco_list_node.i.i, align 4
  %prev.i9.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %disco_list_node.i.i, ptr %prev.i9.i.i, align 8
  %kref.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %kref.i.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @sas_alloc_device.__key, i16 noundef signext 3) #8
  %phy_list_lock.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %phy_list_lock.i) #8
  %phy_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %phy_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %phy_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %phy_list.i
  br i1 %cmp.i.not.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %phy_list_lock.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref.i.i) #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %frame_rcvd_lock.i = getelementptr i8, ptr %13, i32 -100
  tail call void @_raw_spin_lock(ptr noundef %frame_rcvd_lock.i) #8
  %frame_rcvd.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17
  %frame_rcvd7.i = getelementptr i8, ptr %13, i32 -56
  %15 = ptrtoint ptr %frame_rcvd7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %frame_rcvd7.i, align 4
  %frame_rcvd_size.i = getelementptr i8, ptr %13, i32 -52
  %17 = ptrtoint ptr %frame_rcvd_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_rcvd_size.i, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 32) #8
  %20 = call ptr @memcpy(ptr %frame_rcvd.i, ptr %16, i32 %19)
  tail call void @_raw_spin_unlock(ptr noundef %frame_rcvd_lock.i) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %phy_list_lock.i) #8
  %21 = ptrtoint ptr %frame_rcvd.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %frame_rcvd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %22)
  %cmp12.i = icmp eq i8 %22, 52
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end5.i.if.else41.i_crit_edge

if.end5.i.if.else41.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else41.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %oob_mode.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %oob_mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oob_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp14.i = icmp eq i32 %24, 1
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true.i.if.else41.i_crit_edge

land.lhs.true.i.if.else41.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else41.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %25 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp20.i = icmp eq i8 %27, 1
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.then16.i.if.else.i_crit_edge

if.then16.i.if.else.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true22.i:                                ; preds = %if.then16.i
  %lbal.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 4
  %28 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lbal.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp24.i = icmp eq i8 %29, 1
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true22.i.if.else.i_crit_edge

land.lhs.true22.i.if.else.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true26.i:                                ; preds = %land.lhs.true22.i
  %30 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %32)
  %cmp28.i = icmp eq i8 %32, 105
  br i1 %cmp28.i, label %land.lhs.true30.i, label %land.lhs.true26.i.if.else.i_crit_edge

land.lhs.true26.i.if.else.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true30.i:                                ; preds = %land.lhs.true26.i
  %33 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %35)
  %cmp32.i = icmp eq i8 %35, -106
  br i1 %cmp32.i, label %land.lhs.true34.i, label %land.lhs.true30.i.if.else.i_crit_edge

land.lhs.true30.i.if.else.i_crit_edge:            ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true34.i:                                ; preds = %land.lhs.true30.i
  %device.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 7
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %device.i, align 2
  %38 = and i8 %37, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp36.i = icmp eq i8 %38, 0
  br i1 %cmp36.i, label %land.lhs.true34.i.if.end40.i_crit_edge, label %land.lhs.true34.i.if.else.i_crit_edge

land.lhs.true34.i.if.else.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true34.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.else.i:                                        ; preds = %land.lhs.true34.i.if.else.i_crit_edge, %land.lhs.true30.i.if.else.i_crit_edge, %land.lhs.true26.i.if.else.i_crit_edge, %land.lhs.true22.i.if.else.i_crit_edge, %if.then16.i.if.else.i_crit_edge
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i, %land.lhs.true34.i.if.end40.i_crit_edge
  %.sink.i = phi i32 [ 5, %if.else.i ], [ 7, %land.lhs.true34.i.if.end40.i_crit_edge ]
  %dev_type39.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %dev_type39.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %dev_type39.i, align 4
  br label %if.end58.i

if.else41.i:                                      ; preds = %land.lhs.true.i.if.else41.i_crit_edge, %if.end5.i.if.else41.i_crit_edge
  %oob_mode42.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %oob_mode42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %oob_mode42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp43.i = icmp eq i32 %41, 2
  br i1 %cmp43.i, label %if.then45.i, label %if.else53.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr.i = lshr i8 %22, 4
  %bf.clear.i = and i8 %bf.lshr.i, 7
  %conv48.i = zext i8 %bf.clear.i to i32
  %dev_type49.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %dev_type49.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv48.i, ptr %dev_type49.i, align 4
  %43 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv50.i = zext i8 %45 to i32
  %iproto.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %iproto.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv50.i, ptr %iproto.i, align 4
  %47 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 17, i32 3
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 2
  %conv51.i = zext i8 %49 to i32
  br label %if.end58.i

if.else53.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sas_put_device(ptr noundef nonnull %call7.i.i.i.i) #8
  %attached_sas_addr.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 13
  %50 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %attached_sas_addr.i, align 4
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %51) #11
  br label %cleanup

if.end58.i:                                       ; preds = %if.then45.i, %if.end40.i
  %conv51.sink.i = phi i32 [ %conv51.i, %if.then45.i ], [ 1, %if.end40.i ]
  %tproto52.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %tproto52.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv51.sink.i, ptr %tproto52.i, align 8
  %dev_type.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dev_type.i.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %54, label %if.end58.i.sas_init_dev.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %if.end58.i.sw.bb1.i.i_crit_edge
    i32 3, label %if.end58.i.sw.bb1.i.i_crit_edge106
  ]

if.end58.i.sw.bb1.i.i_crit_edge106:               ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.end58.i.sw.bb1.i.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.end58.i.sas_init_dev.exit.i_crit_edge:         ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_init_dev.exit.i

sw.bb.i.i:                                        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %56, align 8
  %prev.i.i218.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 19, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i218.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %prev.i.i218.i, align 4
  br label %sas_init_dev.exitthread-pre-split.i

sw.bb1.i.i:                                       ; preds = %if.end58.i.sw.bb1.i.i_crit_edge, %if.end58.i.sw.bb1.i.i_crit_edge106
  %59 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %59, ptr %59, align 8
  %prev.i5.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 19, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %prev.i5.i.i, align 4
  %cmd_mutex.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 19, i32 0, i32 4, i32 16
  tail call void @__mutex_init(ptr noundef %cmd_mutex.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @sas_init_dev.__key) #8
  br label %sas_init_dev.exitthread-pre-split.i

sas_init_dev.exitthread-pre-split.i:              ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %62 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr.i = load i32, ptr %dev_type.i.i, align 4
  br label %sas_init_dev.exit.i

sas_init_dev.exit.i:                              ; preds = %sas_init_dev.exitthread-pre-split.i, %if.end58.i.sas_init_dev.exit.i_crit_edge
  %63 = phi i32 [ %.pr.i, %sas_init_dev.exitthread-pre-split.i ], [ %54, %if.end58.i.sas_init_dev.exit.i_crit_edge ]
  %port59.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %port59.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %1, ptr %port59.i, align 4
  %65 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %63, label %do.end76.i [
    i32 5, label %sw.bb.i
    i32 1, label %sas_init_dev.exit.i.sw.bb65.i_crit_edge
    i32 2, label %sw.bb68.i
    i32 3, label %sw.bb71.i
  ]

sas_init_dev.exit.i.sw.bb65.i_crit_edge:          ; preds = %sas_init_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb65.i

sw.bb.i:                                          ; preds = %sas_init_dev.exit.i
  %call61.i = tail call i32 @sas_ata_init(ptr noundef nonnull %call7.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %sw.bb.i.sw.bb65.i_crit_edge, label %sw.bb.i.if.then81.i_crit_edge

sw.bb.i.if.then81.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81.i

sw.bb.i.sw.bb65.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb65.i

sw.bb65.i:                                        ; preds = %sw.bb.i.sw.bb65.i_crit_edge, %sas_init_dev.exit.i.sw.bb65.i_crit_edge
  %rc.0.i = phi i32 [ -19, %sas_init_dev.exit.i.sw.bb65.i_crit_edge ], [ 0, %sw.bb.i.sw.bb65.i_crit_edge ]
  %port66.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 22
  %66 = ptrtoint ptr %port66.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port66.i, align 4
  %call67.i = tail call ptr @sas_end_device_alloc(ptr noundef %67) #8
  br label %sw.epilog.i

sw.bb68.i:                                        ; preds = %sas_init_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %port69.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 22
  %68 = ptrtoint ptr %port69.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port69.i, align 4
  %call70.i = tail call ptr @sas_expander_alloc(ptr noundef %69, i32 noundef 2) #8
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %sas_init_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %port72.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 22
  %70 = ptrtoint ptr %port72.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port72.i, align 4
  %call73.i = tail call ptr @sas_expander_alloc(ptr noundef %71, i32 noundef 3) #8
  br label %sw.epilog.i

do.end76.i:                                       ; preds = %sas_init_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %63) #11
  br label %if.then81.i

sw.epilog.i:                                      ; preds = %sw.bb71.i, %sw.bb68.i, %sw.bb65.i
  %rc.1.i = phi i32 [ -19, %sw.bb71.i ], [ -19, %sw.bb68.i ], [ %rc.0.i, %sw.bb65.i ]
  %rphy.0.i = phi ptr [ %call73.i, %sw.bb71.i ], [ %call70.i, %sw.bb68.i ], [ %call67.i, %sw.bb65.i ]
  %tobool80.not.i = icmp eq ptr %rphy.0.i, null
  br i1 %tobool80.not.i, label %sw.epilog.i.if.then81.i_crit_edge, label %if.end82.i

sw.epilog.i.if.then81.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81.i

if.then81.i:                                      ; preds = %sw.epilog.i.if.then81.i_crit_edge, %do.end76.i, %sw.bb.i.if.then81.i_crit_edge
  %rc.1245.i = phi i32 [ %rc.1.i, %sw.epilog.i.if.then81.i_crit_edge ], [ %call61.i, %sw.bb.i.if.then81.i_crit_edge ], [ -19, %do.end76.i ]
  %call.i.i.i.i.i.i220.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #8
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i221.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i221.i)
  %cmp.i.i.i.i222.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i221.i, 1
  br i1 %cmp.i.i.i.i222.i, label %if.then.i.i226.i, label %if.end5.i.i.i.i224.i

if.end5.i.i.i.i224.i:                             ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i221.i)
  %.not.i.i.i.i223.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i221.i, 0
  br i1 %.not.i.i.i.i223.i, label %if.end5.i.i.i.i224.i.sas_get_port_device.exit_crit_edge, label %if.then10.i.i.i.i225.i, !prof !75

if.end5.i.i.i.i224.i.sas_get_port_device.exit_crit_edge: ; preds = %if.end5.i.i.i.i224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_get_port_device.exit

if.then10.i.i.i.i225.i:                           ; preds = %if.end5.i.i.i.i224.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #8
  br label %sas_get_port_device.exit

if.then.i.i226.i:                                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref.i.i) #8
  br label %sas_get_port_device.exit

if.end82.i:                                       ; preds = %sw.epilog.i
  %phy83.i = getelementptr i8, ptr %13, i32 -152
  %73 = ptrtoint ptr %phy83.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phy83.i, align 4
  %phy_identifier.i = getelementptr inbounds %struct.sas_phy, ptr %74, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %phy_identifier.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %phy_identifier.i, align 8
  %phy_identifier85.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy.0.i, i32 0, i32 1, i32 4
  %77 = ptrtoint ptr %phy_identifier85.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %phy_identifier85.i, align 8
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 15
  %attached_sas_addr87.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 13
  %78 = ptrtoint ptr %attached_sas_addr87.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %attached_sas_addr87.i, align 4
  %80 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %sas_addr.i, align 16
  %sas_address.i.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy.0.i, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %sas_address.i.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %79, ptr %sas_address.i.i, align 8
  %iproto.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 12
  %82 = ptrtoint ptr %iproto.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iproto.i.i, align 4
  %initiator_port_protocols.i.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy.0.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %initiator_port_protocols.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %initiator_port_protocols.i.i, align 4
  %85 = ptrtoint ptr %tproto52.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tproto52.i, align 8
  %target_port_protocols.i.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy.0.i, i32 0, i32 1, i32 2
  %87 = ptrtoint ptr %target_port_protocols.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %target_port_protocols.i.i, align 8
  %88 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dev_type.i.i, align 4
  %switch.tableidx = add i32 %89, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %90 = icmp ult i32 %switch.tableidx, 9
  br i1 %90, label %switch.lookup, label %if.end82.i.if.end.i.i_crit_edge

if.end82.i.if.end.i.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

switch.lookup:                                    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sas_discover_domain, i32 0, i32 %switch.tableidx
  %91 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %91)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %switch.lookup, %if.end82.i.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end82.i.if.end.i.i_crit_edge ]
  %identify.i.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy.0.i, i32 0, i32 1
  %92 = ptrtoint ptr %identify.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink.i.i, ptr %identify.i.i, align 8
  %hashed_sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 16
  tail call void @sas_hash_addr(ptr noundef %hashed_sas_addr.i, ptr noundef %sas_addr.i) #8
  %93 = ptrtoint ptr %port_dev to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i.i.i, ptr %port_dev, align 4
  %linkrate.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %linkrate.i, align 4
  %linkrate92.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %linkrate92.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %linkrate92.i, align 16
  %min_linkrate.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %min_linkrate.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %min_linkrate.i, align 4
  %max_linkrate.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %max_linkrate.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %max_linkrate.i, align 8
  %num_phys.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 19
  %99 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_phys.i, align 4
  %pathways.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 5
  %101 = ptrtoint ptr %pathways.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %pathways.i, align 4
  %fanout_sas_addr.i = getelementptr inbounds %struct.sas_discovery, ptr %1, i32 0, i32 2
  %port101.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 22
  %102 = call ptr @memset(ptr %fanout_sas_addr.i, i32 0, i32 28)
  %103 = ptrtoint ptr %port101.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %port101.i, align 4
  %105 = ptrtoint ptr %port59.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %port59.i, align 4
  %ha2.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %106, i32 0, i32 21
  %107 = ptrtoint ptr %ha2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ha2.i.i, align 4
  %call.i.i = tail call ptr @sas_port_get_phy(ptr noundef %104) #8
  %phy_port_lock.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %108, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %phy_port_lock.i.i) #8
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.sas_device_set_phy.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.sas_device_set_phy.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_device_set_phy.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %phy.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 9
  %109 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %phy.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.sas_port_put_phy.exit.i.i_crit_edge, label %if.then.i.i230.i

if.then4.i.i.sas_port_put_phy.exit.i.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_port_put_phy.exit.i.i

if.then.i.i230.i:                                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %110) #8
  br label %sas_port_put_phy.exit.i.i

sas_port_put_phy.exit.i.i:                        ; preds = %if.then.i.i230.i, %if.then4.i.i.sas_port_put_phy.exit.i.i_crit_edge
  %111 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i.i, ptr %phy.i.i, align 16
  br label %sas_device_set_phy.exit.i

sas_device_set_phy.exit.i:                        ; preds = %sas_port_put_phy.exit.i.i, %if.end.i.i.sas_device_set_phy.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %phy_port_lock.i.i) #8
  %rphy102.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 14
  %112 = ptrtoint ptr %rphy102.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %rphy.0.i, ptr %rphy102.i, align 4
  %call105.i = tail call ptr @get_device(ptr noundef nonnull %rphy.0.i) #8
  %113 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dev_type.i.i, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %114, label %dev_is_sata.exit.i [
    i32 5, label %sas_device_set_phy.exit.i.if.then111.i_crit_edge
    i32 7, label %sas_device_set_phy.exit.i.if.then111.i_crit_edge107
    i32 8, label %sas_device_set_phy.exit.i.if.then111.i_crit_edge108
  ]

sas_device_set_phy.exit.i.if.then111.i_crit_edge108: ; preds = %sas_device_set_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111.i

sas_device_set_phy.exit.i.if.then111.i_crit_edge107: ; preds = %sas_device_set_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111.i

sas_device_set_phy.exit.i.if.then111.i_crit_edge: ; preds = %sas_device_set_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111.i

dev_is_sata.exit.i:                               ; preds = %sas_device_set_phy.exit.i
  %116 = and i32 %114, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %dev_is_sata.exit.i.if.then111.i_crit_edge, label %if.else112.i

dev_is_sata.exit.i.if.then111.i_crit_edge:        ; preds = %dev_is_sata.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111.i

if.then111.i:                                     ; preds = %dev_is_sata.exit.i.if.then111.i_crit_edge, %sas_device_set_phy.exit.i.if.then111.i_crit_edge, %sas_device_set_phy.exit.i.if.then111.i_crit_edge107, %sas_device_set_phy.exit.i.if.then111.i_crit_edge108
  %disco_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %disco_list_node.i.i, ptr noundef %119, ptr noundef %disco_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then111.i.if.end114.i_crit_edge

if.then111.i.if.end114.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

if.end.i.i.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %disco_list_node.i.i, ptr %prev.i.i, align 4
  %121 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %disco_list.i, ptr %disco_list_node.i.i, align 4
  %122 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev.i9.i.i, align 8
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %disco_list_node.i.i, ptr %119, align 4
  br label %if.end114.i

if.else112.i:                                     ; preds = %dev_is_sata.exit.i
  %dev_list_lock.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock.i) #8
  %dev_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 3
  %prev.i232.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %prev.i232.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i232.i, align 4
  %call.i.i233.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_list_node.i.i, ptr noundef %125, ptr noundef %dev_list.i) #8
  br i1 %call.i.i233.i, label %if.end.i.i235.i, label %if.else112.i.list_add_tail.exit236.i_crit_edge

if.else112.i.list_add_tail.exit236.i_crit_edge:   ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit236.i

if.end.i.i235.i:                                  ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %prev.i232.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %dev_list_node.i.i, ptr %prev.i232.i, align 4
  %127 = ptrtoint ptr %dev_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %dev_list.i, ptr %dev_list_node.i.i, align 4
  %128 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev.i8.i.i, align 8
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %dev_list_node.i.i, ptr %125, align 4
  br label %list_add_tail.exit236.i

list_add_tail.exit236.i:                          ; preds = %if.end.i.i235.i, %if.else112.i.list_add_tail.exit236.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock.i) #8
  br label %if.end114.i

if.end114.i:                                      ; preds = %list_add_tail.exit236.i, %if.end.i.i.i, %if.then111.i.if.end114.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %phy_list_lock.i) #8
  %130 = ptrtoint ptr %phy_list.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn247.i = load ptr, ptr %phy_list.i, align 4
  %cmp122.not248.i = icmp eq ptr %.pn247.i, %phy_list.i
  br i1 %cmp122.not248.i, label %if.end114.i.sas_get_port_device.exit.thread94_crit_edge, label %if.end114.i.if.then.i238.i_crit_edge

if.end114.i.if.then.i238.i_crit_edge:             ; preds = %if.end114.i
  br label %if.then.i238.i

if.end114.i.sas_get_port_device.exit.thread94_crit_edge: ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_get_port_device.exit.thread94

if.then.i238.i:                                   ; preds = %if.then.i238.i.if.then.i238.i_crit_edge, %if.end114.i.if.then.i238.i_crit_edge
  %.pn249.i = phi ptr [ %.pn.i, %if.then.i238.i.if.then.i238.i_crit_edge ], [ %.pn247.i, %if.end114.i.if.then.i238.i_crit_edge ]
  %phy1.i.i = getelementptr i8, ptr %.pn249.i, i32 -152
  %131 = ptrtoint ptr %phy1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %phy1.i.i, align 4
  %133 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dev_type.i.i, align 4
  %switch.tableidx104 = add i32 %134, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx104)
  %135 = icmp ult i32 %switch.tableidx104, 5
  %switch.maskindex = trunc i32 %switch.tableidx104 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %136 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %switch.lobit.not = icmp eq i8 %136, 0
  %spec.select = select i1 %switch.lobit.not, i32 %134, i32 1
  %.sink.i239.i = select i1 %135, i32 %spec.select, i32 %134
  %identify4.i.i = getelementptr inbounds %struct.sas_phy, ptr %132, i32 0, i32 3
  %137 = ptrtoint ptr %identify4.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.sink.i239.i, ptr %identify4.i.i, align 8
  %138 = ptrtoint ptr %tproto52.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tproto52.i, align 8
  %target_port_protocols11.i.i = getelementptr inbounds %struct.sas_phy, ptr %132, i32 0, i32 3, i32 2
  %140 = ptrtoint ptr %target_port_protocols11.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %target_port_protocols11.i.i, align 8
  %141 = ptrtoint ptr %.pn249.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pn.i = load ptr, ptr %.pn249.i, align 4
  %cmp122.not.i = icmp eq ptr %.pn.i, %phy_list.i
  br i1 %cmp122.not.i, label %if.then.i238.i.sas_get_port_device.exit.thread94_crit_edge, label %if.then.i238.i.if.then.i238.i_crit_edge

if.then.i238.i.if.then.i238.i_crit_edge:          ; preds = %if.then.i238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i238.i

if.then.i238.i.sas_get_port_device.exit.thread94_crit_edge: ; preds = %if.then.i238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_get_port_device.exit.thread94

sas_get_port_device.exit.thread94:                ; preds = %if.then.i238.i.sas_get_port_device.exit.thread94_crit_edge, %if.end114.i.sas_get_port_device.exit.thread94_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %phy_list_lock.i) #8
  br label %if.end5

sas_get_port_device.exit:                         ; preds = %if.then.i.i226.i, %if.then10.i.i.i.i225.i, %if.end5.i.i.i.i224.i.sas_get_port_device.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1245.i)
  %tobool3.not = icmp eq i32 %rc.1245.i, 0
  br i1 %tobool3.not, label %sas_get_port_device.exit.if.end5_crit_edge, label %sas_get_port_device.exit.cleanup_crit_edge

sas_get_port_device.exit.cleanup_crit_edge:       ; preds = %sas_get_port_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sas_get_port_device.exit.if.end5_crit_edge:       ; preds = %sas_get_port_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %sas_get_port_device.exit.if.end5_crit_edge, %sas_get_port_device.exit.thread94
  %142 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_discover_domain.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_discover_domain, %do.end)) #8
          to label %if.then12 [label %do.end], !srcloc !80

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 10
  %144 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %id, align 4
  %146 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 68
  %150 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_discover_domain.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.7, i32 noundef %145, i32 noundef %151) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end5
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 1
  %152 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dev_type, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %153, label %sw.epilog.thread [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.bb17_crit_edge
    i32 3, label %do.end.sw.bb17_crit_edge109
    i32 5, label %do.end.sw.bb19_crit_edge
    i32 7, label %do.end.sw.bb19_crit_edge110
  ]

do.end.sw.bb19_crit_edge110:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

do.end.sw.bb19_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

do.end.sw.bb17_crit_edge109:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

do.end.sw.bb17_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @sas_notify_lldd_dev_found(ptr noundef %143) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end.sw.bb17_crit_edge, %do.end.sw.bb17_crit_edge109
  %call18 = tail call i32 @sas_discover_root_expander(ptr noundef %143) #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end.sw.bb19_crit_edge, %do.end.sw.bb19_crit_edge110
  %call20 = tail call i32 @sas_discover_sata(ptr noundef %143) #8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %153) #11
  br label %if.then28

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb
  %error.0 = phi i32 [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool27.not = icmp eq i32 %error.0, 0
  br i1 %tobool27.not, label %sw.epilog.if.end31_crit_edge, label %sw.epilog.if.then28_crit_edge

sw.epilog.if.then28_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %sw.epilog.if.then28_crit_edge, %sw.epilog.thread
  %error.0100 = phi i32 [ -6, %sw.epilog.thread ], [ %error.0, %sw.epilog.if.then28_crit_edge ]
  %rphy = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 14
  %155 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rphy, align 4
  tail call void @sas_rphy_free(ptr noundef %156) #8
  %disco_list_node = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 11
  %call.i.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %disco_list_node) #8
  br i1 %call.i.i80, label %if.end.i.i82, label %if.then28.list_del_init.exit_crit_edge

if.then28.list_del_init.exit_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i82:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i81 = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 11, i32 1
  %157 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i.i81, align 4
  %159 = ptrtoint ptr %disco_list_node to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %disco_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %158, ptr %prev1.i.i.i, align 4
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %160, ptr %158, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i82, %if.then28.list_del_init.exit_crit_edge
  %163 = ptrtoint ptr %disco_list_node to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %disco_list_node, ptr %disco_list_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 11, i32 1
  %164 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %disco_list_node, ptr %prev.i3.i, align 4
  %dev_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock) #8
  %dev_list_node = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 10
  %call.i.i83 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list_node) #8
  br i1 %call.i.i83, label %if.end.i.i86, label %list_del_init.exit.list_del_init.exit88_crit_edge

list_del_init.exit.list_del_init.exit88_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit88

if.end.i.i86:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i84 = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 10, i32 1
  %165 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %prev.i.i84, align 4
  %167 = ptrtoint ptr %dev_list_node to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev_list_node, align 4
  %prev1.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %prev1.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev1.i.i.i85, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %168, ptr %166, align 4
  br label %list_del_init.exit88

list_del_init.exit88:                             ; preds = %if.end.i.i86, %list_del_init.exit.list_del_init.exit88_crit_edge
  %171 = ptrtoint ptr %dev_list_node to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %dev_list_node, ptr %dev_list_node, align 4
  %prev.i3.i87 = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 10, i32 1
  %172 = ptrtoint ptr %prev.i3.i87 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %dev_list_node, ptr %prev.i3.i87, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock) #8
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %143, i32 0, i32 22
  %call.i.i.i.i.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %173 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sas_put_device.exit_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.sas_put_device.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_put_device.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #8
  br label %sas_put_device.exit

if.then.i.i:                                      ; preds = %list_del_init.exit88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @sas_free_device(ptr noundef %kref.i) #8
  br label %sas_put_device.exit

sas_put_device.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sas_put_device.exit_crit_edge
  %174 = ptrtoint ptr %port_dev to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %port_dev, align 4
  br label %if.end31

if.end31:                                         ; preds = %sas_put_device.exit, %sw.epilog.if.end31_crit_edge
  %error.0101 = phi i32 [ %error.0100, %sas_put_device.exit ], [ 0, %sw.epilog.if.end31_crit_edge ]
  tail call fastcc void @sas_probe_devices(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_discover_domain.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_discover_domain, %cleanup)) #8
          to label %if.then46 [label %cleanup], !srcloc !80

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %id47 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 10
  %175 = ptrtoint ptr %id47 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %id47, align 4
  %177 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i90 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i90 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task49, align 8
  %pid.i91 = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 68
  %181 = ptrtoint ptr %pid.i91 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pid.i91, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_discover_domain.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.10, i32 noundef %176, i32 noundef %182, i32 noundef %error.0101) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end31, %sas_get_port_device.exit.cleanup_crit_edge, %if.else53.i, %if.then.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_revalidate_domain(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %ha2 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha2, align 4
  %port_dev = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_dev, align 4
  %disco_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %disco_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_revalidate_domain.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_revalidate_domain, %out)) #8
          to label %if.then9 [label %out], !srcloc !80

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_revalidate_domain.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.24, i32 noundef %10, i32 noundef %16) #8
  br label %out

if.end12:                                         ; preds = %entry
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %1, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %pending) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_revalidate_domain.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_revalidate_domain, %do.end34)) #8
          to label %if.then27 [label %do.end34], !srcloc !80

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %id28 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id28, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i81 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i81 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task30, align 8
  %pid.i82 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i82 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i82, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_revalidate_domain.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.26, i32 noundef %18, i32 noundef %24) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then27, %if.end12
  %tobool35.not = icmp eq ptr %5, null
  br i1 %tobool35.not, label %do.end34.do.body40_crit_edge, label %land.lhs.true

do.end34.do.body40_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

land.lhs.true:                                    ; preds = %do.end34
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_type, align 4
  %27 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %if.then37, label %land.lhs.true.do.body40_crit_edge

land.lhs.true.do.body40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 @sas_ex_revalidate_domain(ptr noundef nonnull %5) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then37, %land.lhs.true.do.body40_crit_edge, %do.end34.do.body40_crit_edge
  %res.0 = phi i32 [ %call38, %if.then37 ], [ 0, %land.lhs.true.do.body40_crit_edge ], [ 0, %do.end34.do.body40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_revalidate_domain.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_revalidate_domain, %out)) #8
          to label %if.then54 [label %out], !srcloc !80

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %id55 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %id55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id55, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i83 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i83 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task57, align 8
  %pid.i84 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid.i84, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_revalidate_domain.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.28, i32 noundef %30, i32 noundef %36, i32 noundef %res.0) #8
  br label %out

out:                                              ; preds = %if.then54, %do.body40, %if.then9, %do.body
  tail call void @mutex_unlock(ptr noundef %disco_mutex) #8
  %destroy_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %destroy_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %destroy_list.i, align 4
  %cmp.not24.i = icmp eq ptr %38, %destroy_list.i
  br i1 %cmp.not24.i, label %out.sas_destruct_devices.exit_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.sas_destruct_devices.exit_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_destruct_devices.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %38, %out.for.body.i_crit_edge ]
  %dev.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -92
  %39 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %46 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %.pn.in25.i, ptr %.pn.in25.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %.pn.in25.i, ptr %prev.i3.i.i, align 4
  %rphy.i = getelementptr i8, ptr %.pn.in25.i, i32 16
  %48 = ptrtoint ptr %rphy.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rphy.i, align 4
  tail call void @sas_remove_children(ptr noundef %49) #8
  %50 = ptrtoint ptr %rphy.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rphy.i, align 4
  tail call void @sas_rphy_delete(ptr noundef %51) #8
  tail call fastcc void @sas_unregister_common_dev(ptr noundef %1, ptr noundef %dev.0.i) #8
  %cmp.not.i = icmp eq ptr %.pn.i, %destroy_list.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.sas_destruct_devices.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del_init.exit.i.sas_destruct_devices.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_destruct_devices.exit

sas_destruct_devices.exit:                        ; preds = %list_del_init.exit.i.sas_destruct_devices.exit_crit_edge, %out.sas_destruct_devices.exit_crit_edge
  %sas_port_del_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %sas_port_del_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sas_port_del_list.i, align 4
  %cmp.not19.i = icmp eq ptr %53, %sas_port_del_list.i
  br i1 %cmp.not19.i, label %sas_destruct_devices.exit.sas_destruct_ports.exit_crit_edge, label %sas_destruct_devices.exit.for.body.i87_crit_edge

sas_destruct_devices.exit.for.body.i87_crit_edge: ; preds = %sas_destruct_devices.exit
  br label %for.body.i87

sas_destruct_devices.exit.sas_destruct_ports.exit_crit_edge: ; preds = %sas_destruct_devices.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_destruct_ports.exit

for.body.i87:                                     ; preds = %list_del_init.exit.i93.for.body.i87_crit_edge, %sas_destruct_devices.exit.for.body.i87_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i85, %list_del_init.exit.i93.for.body.i87_crit_edge ], [ %53, %sas_destruct_devices.exit.for.body.i87_crit_edge ]
  %sas_port.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -1044
  %54 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i85 = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i86 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #8
  br i1 %call.i.i.i86, label %if.end.i.i.i90, label %for.body.i87.list_del_init.exit.i93_crit_edge

for.body.i87.list_del_init.exit.i93_crit_edge:    ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i93

if.end.i.i.i90:                                   ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i88, align 4
  %57 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i89, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del_init.exit.i93

list_del_init.exit.i93:                           ; preds = %if.end.i.i.i90, %for.body.i87.list_del_init.exit.i93_crit_edge
  %61 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %.pn.in20.i, ptr %.pn.in20.i, align 4
  %prev.i3.i.i91 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i3.i.i91 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %.pn.in20.i, ptr %prev.i3.i.i91, align 4
  tail call void @sas_port_delete(ptr noundef %sas_port.0.i) #8
  %cmp.not.i92 = icmp eq ptr %.pn.i85, %sas_port_del_list.i
  br i1 %cmp.not.i92, label %list_del_init.exit.i93.sas_destruct_ports.exit_crit_edge, label %list_del_init.exit.i93.for.body.i87_crit_edge

list_del_init.exit.i93.for.body.i87_crit_edge:    ; preds = %list_del_init.exit.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i87

list_del_init.exit.i93.sas_destruct_ports.exit_crit_edge: ; preds = %list_del_init.exit.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sas_destruct_ports.exit

sas_destruct_ports.exit:                          ; preds = %list_del_init.exit.i93.sas_destruct_ports.exit_crit_edge, %sas_destruct_devices.exit.sas_destruct_ports.exit_crit_edge
  tail call fastcc void @sas_probe_devices(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_suspend_devices(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %1, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %pending) #8
  tail call void @sas_suspend_sata(ptr noundef %1) #8
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn45 = load ptr, ptr %dev_list, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %dev_list
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn45, %entry.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn47, i32 -84
  tail call void @sas_notify_lldd_dev_gone(ptr noundef %dev.0)
  %9 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %phy_list = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %phy_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn4448 = load ptr, ptr %phy_list, align 4
  %cmp18.not50 = icmp eq ptr %.pn4448, %phy_list
  br i1 %cmp18.not50, label %for.end.for.end30_crit_edge, label %for.body20.lr.ph

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.body20.lr.ph:                                 ; preds = %for.end
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %suspended23 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 9
  br label %for.body20

for.body20:                                       ; preds = %if.end.for.body20_crit_edge, %for.body20.lr.ph
  %.pn4451 = phi ptr [ %.pn4448, %for.body20.lr.ph ], [ %.pn44, %if.end.for.body20_crit_edge ]
  %11 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dft, align 4
  %lldd_port_deformed = getelementptr inbounds %struct.sas_domain_function_template, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %lldd_port_deformed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldd_port_deformed, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body20.if.end_crit_edge, label %if.then

for.body20.if.end_crit_edge:                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  %phy.052 = getelementptr i8, ptr %.pn4451, i32 -168
  tail call void %14(ptr noundef %phy.052) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body20.if.end_crit_edge
  %suspended = getelementptr i8, ptr %.pn4451, i32 -156
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %suspended, align 4
  %16 = ptrtoint ptr %suspended23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %suspended23, align 4
  %17 = ptrtoint ptr %.pn4451 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn44 = load ptr, ptr %.pn4451, align 4
  %cmp18.not = icmp eq ptr %.pn44, %phy_list
  br i1 %cmp18.not, label %if.end.for.end30_crit_edge, label %if.end.for.body20_crit_edge

if.end.for.body20_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

if.end.for.end30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.end30:                                        ; preds = %if.end.for.end30_crit_edge, %for.end.for.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_resume_devices(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %1, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %pending) #8
  tail call void @sas_resume_sata(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_ata_end_eh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_discover_root_expander(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_discover_sata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_probe_devices(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disco_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %disco_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn52 = load ptr, ptr %disco_list, align 4
  %cmp.not53 = icmp eq ptr %.pn52, %disco_list
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 2
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn54 = phi ptr [ %.pn52, %for.body.lr.ph ], [ %.pn, %list_add_tail.exit.for.body_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock) #8
  %dev_list_node = getelementptr i8, ptr %.pn54, i32 -8
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_list_node, ptr noundef %2, ptr noundef %dev_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev_list_node, ptr %prev.i, align 4
  %4 = ptrtoint ptr %dev_list_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev_list, ptr %dev_list_node, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn54, i32 -4
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %dev_list_node, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock) #8
  %7 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn54, align 4
  %cmp.not = icmp eq ptr %.pn, %disco_list
  br i1 %cmp.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sas_probe_sata(ptr noundef %port) #8
  %8 = ptrtoint ptr %disco_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disco_list, align 4
  %cmp21.not57 = icmp eq ptr %9, %disco_list
  br i1 %cmp21.not57, label %for.end.for.end31_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.body23:                                       ; preds = %if.end.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %.pn48.in58 = phi ptr [ %.pn4861, %if.end.for.body23_crit_edge ], [ %9, %for.end.for.body23_crit_edge ]
  %10 = ptrtoint ptr %.pn48.in58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn4861 = load ptr, ptr %.pn48.in58, align 4
  %rphy = getelementptr i8, ptr %.pn48.in58, i32 16
  %11 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rphy, align 4
  %call = tail call i32 @sas_rphy_add(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev.160 = getelementptr i8, ptr %.pn48.in58, i32 -92
  %parent.i = getelementptr i8, ptr %.pn48.in58, i32 -28
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 64
  %tobool.not.i = icmp eq ptr %14, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.21, ptr @.str.20
  %sas_addr.i = getelementptr i8, ptr %.pn48.in58, i32 20
  %15 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sas_addr.i, align 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.sas_probe_devices, ptr noundef nonnull %cond.i, i64 noundef %16, i32 noundef %call) #11
  %port.i = getelementptr i8, ptr %.pn48.in58, i32 -16
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i, align 4
  tail call void @sas_unregister_dev(ptr noundef %18, ptr noundef %dev.160) #8
  br label %if.end

if.else:                                          ; preds = %for.body23
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn48.in58) #8
  br i1 %call.i.i50, label %if.end.i.i51, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i51:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn48.in58, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn48.in58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn48.in58, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i51, %if.else.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %.pn48.in58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn48.in58, ptr %.pn48.in58, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn48.in58, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.pn48.in58, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %if.then
  %cmp21.not = icmp eq ptr %.pn4861, %disco_list
  br i1 %cmp21.not, label %if.end.for.end31_crit_edge, label %if.end.for.body23_crit_edge

if.end.for.body23_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

if.end.for.end31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end31:                                        ; preds = %if.end.for.end31_crit_edge, %for.end.for.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ata_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_end_device_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_expander_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_hash_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_probe_sata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_rphy_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ex_revalidate_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_suspend_sata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_resume_sata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @sas_init_dev.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 31, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 181, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sas_notify_lldd_dev_found._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @sas_notify_lldd_dev_found._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = distinct !{null, !10, !"sas_event_fns", i1 false, i1 false}
!10 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 574, i32 27}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 445, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sas_discover_domain.__UNIQUE_ID_ddebug293, !12, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 468, i32 3}
!19 = !{ptr @sas_discover_domain._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @sas_discover_domain._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 485, i32 2}
!23 = !{ptr @sas_discover_domain.__UNIQUE_ID_ddebug294, !22, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!24 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 95, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sas_get_port_device._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @sas_get_port_device._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 123, i32 3}
!32 = !{ptr @sas_get_port_device._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sas_get_port_device._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sas_alloc_device.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/scsi/libsas/sas_internal.h", i32 184, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__func__.sas_probe_devices, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 225, i32 24}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/libsas/sas_internal.h", i32 112, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sas_fail_probe._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @sas_fail_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 500, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sas_revalidate_domain.__UNIQUE_ID_ddebug295, !48, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!51 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 507, i32 2}
!54 = !{ptr @sas_revalidate_domain.__UNIQUE_ID_ddebug296, !53, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!55 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/libsas/sas_discover.c", i32 513, i32 2}
!58 = !{ptr @sas_revalidate_domain.__UNIQUE_ID_ddebug297, !57, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!59 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @INIT_SAS_WORK.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/scsi/libsas.h", i32 218, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148712208, i64 2148712240, i64 2148712269, i64 2148712303, i64 2148712334, i64 2148712357}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2148800233}
!77 = !{i64 2148714673, i64 2148714705, i64 2148714734, i64 2148714768, i64 2148714799, i64 2148714822}
!78 = !{i64 2149982657}
!79 = !{i64 2155934824, i64 2155935323, i64 2155934861, i64 2155934917, i64 2155934951, i64 2155934975, i64 2155935016, i64 2155935037, i64 2155935065, i64 2155935099}
!80 = !{i64 2148201166, i64 2148201171, i64 2148201184, i64 2148201228, i64 2148201262, i64 2148201283}
