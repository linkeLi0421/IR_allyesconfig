; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vchiq_state = type { i32, i32, i32, i16, ptr, ptr, ptr, i16, i16, %struct.completion, %struct.mutex, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i16, i16, [128 x %struct.atomic_t], i32, %struct.completion, %struct.completion, %struct.completion, %struct.state_stats_struct, [4096 x ptr], [4096 x %struct.vchiq_service_quota], [128 x %struct.vchiq_slot_info], ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.state_stats_struct = type { i32, i32, i32, i32, i32 }
%struct.vchiq_service_quota = type { i16, i16, i16, i16, %struct.completion, i32 }
%struct.vchiq_slot_info = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dump_context = type { ptr, i32, i32, i64 }
%struct.vchiq_completion_data = type { i32, ptr, ptr, ptr }
%struct.vchiq_service_params_kernel = type { i32, ptr, ptr, i16, i16 }
%struct.vchiq_create_service = type { %struct.vchiq_service_params, i32, i32, i32 }
%struct.vchiq_service_params = type { i32, ptr, ptr, i16, i16 }
%struct.vchiq_queue_message = type { i32, i32, ptr }
%struct.vchiq_element = type { ptr, i32 }
%struct.vchiq_queue_bulk_transfer = type { i32, ptr, i32, ptr, i32 }
%struct.vchiq_await_completion = type { i32, ptr, i32, i32, ptr }
%struct.vchiq_dequeue_message = type { i32, i32, i32, ptr }
%struct.vchiq_get_config = type { i32, ptr }
%struct.vchiq_config = type { i32, i32, i32, i32, i16, i16 }
%struct.vchiq_set_service_option = type { i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vchiq_instance = type { ptr, [128 x %struct.vchiq_completion_data_kernel], i32, i32, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.mutex, %struct.vchiq_debugfs_node }
%struct.vchiq_completion_data_kernel = type { i32, ptr, ptr, ptr }
%struct.vchiq_debugfs_node = type { ptr }
%struct.vchiq_service = type { %struct.vchiq_service_base, i32, %struct.kref, %struct.callback_head, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, %struct.atomic_t, i16, i16, i16, ptr, ptr, i32, %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue, %struct.completion, %struct.completion, %struct.mutex, %struct.service_stats_struct, i32, i32, %struct.completion, %struct.completion, [128 x ptr] }
%struct.vchiq_service_base = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vchiq_bulk_queue = type { i32, i32, i32, i32, i32, [4 x %struct.vchiq_bulk] }
%struct.vchiq_bulk = type { i16, i16, ptr, i32, i32, ptr, i32, i32 }
%struct.service_stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.user_service = type { ptr, ptr, ptr, i8, i8, i8, i32, i32, i32, %struct.completion, %struct.completion, %struct.completion, [128 x ptr] }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.bulk_waiter_node = type { %struct.bulk_waiter, i32, %struct.list_head }
%struct.bulk_waiter = type { ptr, %struct.completion, i32 }
%struct.vchiq_shared_state = type { i32, i32, i32, i32, %struct.remote_event, i32, %struct.remote_event, i32, %struct.remote_event, %struct.remote_event, [64 x i32], [11 x i32] }
%struct.remote_event = type { i32, i32, i32 }
%struct.vchiq_header = type { i32, i32, [0 x i8] }
%struct.vchiq_io_copy_callback_context = type { ptr, i32, i32 }

@vchiq_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @vchiq_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vchiq\00", [26 x i8] zeroinitializer }, align 32
@vchiq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @vchiq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vchiq_ioctl, ptr null, ptr null, i32 0, ptr @vchiq_open, ptr null, ptr @vchiq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@g_state = external dso_local global %struct.vchiq_state, align 4
@vchiq_arm_log_level = external dso_local local_unnamed_addr global i32, align 4
@vchiq_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016vchiq: %s - instance %pK, cmd %s, arg %lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vchiq_ioctl\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c\00", [34 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry_ptr = internal global ptr @vchiq_ioctl._entry, section ".printk_index", align 4
@ioctl_names = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<invalid>\00", [22 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016vchiq: vchiq: connect: could not lock mutex for state %d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry_ptr.7 = internal global ptr @vchiq_ioctl._entry.5, section ".printk_index", align 4
@vchiq_ioctl._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016vchiq: vchiq: could not connect: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry_ptr.10 = internal global ptr @vchiq_ioctl._entry.8, section ".printk_index", align 4
@vchiq_susp_log_level = external dso_local local_unnamed_addr global i32, align 4
@vchiq_ioctl._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016vchiq: %s: cmd %s returned error %ld for service %c%c%c%c:%03d\0A\00", [62 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry_ptr.13 = internal global ptr @vchiq_ioctl._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VCHIQ_IOC_USE_SERVICE\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VCHIQ_IOC_RELEASE_SERVICE\00", [38 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016vchiq:   ioctl instance %pK, cmd %s -> status %d, %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry_ptr.18 = internal global ptr @vchiq_ioctl._entry.16, section ".printk_index", align 4
@vchiq_ioctl._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vchiq_ioctl._entry_ptr.20 = internal global ptr @vchiq_ioctl._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CONNECT\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SHUTDOWN\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CREATE_SERVICE\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REMOVE_SERVICE\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUEUE_MESSAGE\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"QUEUE_BULK_TRANSMIT\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QUEUE_BULK_RECEIVE\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AWAIT_COMPLETION\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEQUEUE_MESSAGE\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GET_CLIENT_ID\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GET_CONFIG\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLOSE_SERVICE\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USE_SERVICE\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RELEASE_SERVICE\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_SERVICE_OPTION\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DUMP_PHYS_MEM\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIB_VERSION\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLOSE_DELIVERED\00", [16 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vchiq_irq_queue_bulk_tx_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016vchiq: no bulk_waiter found for pid %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vchiq_irq_queue_bulk_tx_rx\00", [37 x i8] zeroinitializer }, align 32
@vchiq_irq_queue_bulk_tx_rx._entry_ptr = internal global ptr @vchiq_irq_queue_bulk_tx_rx._entry, section ".printk_index", align 4
@vchiq_irq_queue_bulk_tx_rx._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016vchiq: found bulk_waiter %pK for pid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@vchiq_irq_queue_bulk_tx_rx._entry_ptr.47 = internal global ptr @vchiq_irq_queue_bulk_tx_rx._entry.45, section ".printk_index", align 4
@bulk_waiter_spinlock = external dso_local global %struct.spinlock, align 4
@vchiq_irq_queue_bulk_tx_rx._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016vchiq: saved bulk_waiter %pK for pid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@vchiq_irq_queue_bulk_tx_rx._entry_ptr.50 = internal global ptr @vchiq_irq_queue_bulk_tx_rx._entry.48, section ".printk_index", align 4
@vchiq_ioc_await_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016vchiq: AWAIT_COMPLETION interrupted\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vchiq_ioc_await_completion\00", [37 x i8] zeroinitializer }, align 32
@vchiq_ioc_await_completion._entry_ptr = internal global ptr @vchiq_ioc_await_completion._entry, section ".printk_index", align 4
@vchiq_ioc_await_completion._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016vchiq: header %pK: msgbufsize %x < msglen %x\0A\00", [48 x i8] zeroinitializer }, align 32
@vchiq_ioc_await_completion._entry_ptr.55 = internal global ptr @vchiq_ioc_await_completion._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid message size\0A\00", [42 x i8] zeroinitializer }, align 32
@msg_queue_spinlock = external dso_local global %struct.spinlock, align 4
@vchiq_ioc_dequeue_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016vchiq: DEQUEUE_MESSAGE interrupted\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vchiq_ioc_dequeue_message\00", [38 x i8] zeroinitializer }, align 32
@vchiq_ioc_dequeue_message._entry_ptr = internal global ptr @vchiq_ioc_dequeue_message._entry, section ".printk_index", align 4
@vchiq_ioc_dequeue_message.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vchiq_ioc_dequeue_message._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016vchiq: header %pK: bufsize %x < size %x\0A\00", [53 x i8] zeroinitializer }, align 32
@vchiq_ioc_dequeue_message._entry_ptr.61 = internal global ptr @vchiq_ioc_dequeue_message._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid size\0A\00", [18 x i8] zeroinitializer }, align 32
@close_delivered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016vchiq: %s(handle=%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"close_delivered\00", [16 x i8] zeroinitializer }, align 32
@close_delivered._entry_ptr = internal global ptr @close_delivered._entry, section ".printk_index", align 4
@vchiq_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016vchiq: vchiq_open\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vchiq_open\00", [21 x i8] zeroinitializer }, align 32
@vchiq_open._entry_ptr = internal global ptr @vchiq_open._entry, section ".printk_index", align 4
@vchiq_open._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016vchiq: vchiq has no connection to VideoCore\0A\00", [49 x i8] zeroinitializer }, align 32
@vchiq_open._entry_ptr.69 = internal global ptr @vchiq_open._entry.67, section ".printk_index", align 4
@vchiq_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&instance->completion_mutex\00", [36 x i8] zeroinitializer }, align 32
@vchiq_open.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&instance->bulk_waiter_list_mutex\00", [62 x i8] zeroinitializer }, align 32
@vchiq_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016vchiq: %s: instance=%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vchiq_release\00", [18 x i8] zeroinitializer }, align 32
@vchiq_release._entry_ptr = internal global ptr @vchiq_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 50176, i64 50177, i64 50179, i64 50185, i64 50187, i64 50188, i64 50189, i64 50192, i64 50193, i64 1074578436, i64 1074578446, i64 3221799946, i64 3222324232, i64 3222586373, i64 3222586374, i64 3222586375, i64 3223110658]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967292]
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"vchiq_miscdev\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1341, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1344, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"vchiq_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1330, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"ioctl_names\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 19, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 587, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 623, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 635, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 705, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 874, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 879, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 20, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 21, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 22, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 23, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 24, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 25, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 26, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 27, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 28, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 29, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 30, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 31, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 32, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 33, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 34, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 35, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 36, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 37, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 230, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 214, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 156, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 87, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 323, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 328, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 360, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 460, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 506, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 509, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 239, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 275, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 278, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 50, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1173, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1176, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1192, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1193, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [65 x i8] c"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1209, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @close_delivered._entry, ptr @close_delivered._entry_ptr, ptr @vchiq_ioc_await_completion._entry, ptr @vchiq_ioc_await_completion._entry.53, ptr @vchiq_ioc_await_completion._entry_ptr, ptr @vchiq_ioc_await_completion._entry_ptr.55, ptr @vchiq_ioc_dequeue_message._entry, ptr @vchiq_ioc_dequeue_message._entry.59, ptr @vchiq_ioc_dequeue_message._entry_ptr, ptr @vchiq_ioc_dequeue_message._entry_ptr.61, ptr @vchiq_ioctl._entry, ptr @vchiq_ioctl._entry.11, ptr @vchiq_ioctl._entry.16, ptr @vchiq_ioctl._entry.19, ptr @vchiq_ioctl._entry.5, ptr @vchiq_ioctl._entry.8, ptr @vchiq_ioctl._entry_ptr, ptr @vchiq_ioctl._entry_ptr.10, ptr @vchiq_ioctl._entry_ptr.13, ptr @vchiq_ioctl._entry_ptr.18, ptr @vchiq_ioctl._entry_ptr.20, ptr @vchiq_ioctl._entry_ptr.7, ptr @vchiq_irq_queue_bulk_tx_rx._entry, ptr @vchiq_irq_queue_bulk_tx_rx._entry.45, ptr @vchiq_irq_queue_bulk_tx_rx._entry.48, ptr @vchiq_irq_queue_bulk_tx_rx._entry_ptr, ptr @vchiq_irq_queue_bulk_tx_rx._entry_ptr.47, ptr @vchiq_irq_queue_bulk_tx_rx._entry_ptr.50, ptr @vchiq_open._entry, ptr @vchiq_open._entry.67, ptr @vchiq_open._entry_ptr, ptr @vchiq_open._entry_ptr.69, ptr @vchiq_release._entry, ptr @vchiq_release._entry_ptr, ptr @vchiq_miscdev, ptr @.str, ptr @vchiq_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ioctl_names, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @vchiq_open.__key, ptr @.str.70, ptr @vchiq_open.__key.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctl_names to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioctl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioctl._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioctl._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioctl._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioctl._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_irq_queue_bulk_tx_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_irq_queue_bulk_tx_rx._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_irq_queue_bulk_tx_rx._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioc_await_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioc_await_completion._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioc_dequeue_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_ioc_dequeue_message._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_delivered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_open._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_open.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vchiq_register_chrdev(ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %parent, ptr getelementptr inbounds (%struct.miscdevice, ptr @vchiq_miscdev, i32 0, i32 4), align 4
  %call = tail call i32 @misc_register(ptr noundef nonnull @vchiq_miscdev) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vchiq_deregister_chrdev() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @vchiq_miscdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vchiq_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %context = alloca %struct.dump_context, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %context) #7
  %0 = getelementptr inbounds i8, ptr %context, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %context, align 8
  %actual = getelementptr inbounds %struct.dump_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %actual, align 4
  %space = getelementptr inbounds %struct.dump_context, ptr %context, i32 0, i32 2
  %4 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %space, align 8
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  %offset = getelementptr inbounds %struct.dump_context, ptr %context, i32 0, i32 3
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %offset, align 8
  %call = call i32 @vchiq_dump_state(ptr noundef nonnull %context, ptr noundef nonnull @g_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ppos, align 8
  %add = add i64 %11, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %context) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vchiq_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %user_completion.i = alloca %struct.vchiq_completion_data, align 4
  %params.i = alloca %struct.vchiq_service_params_kernel, align 4
  %i = alloca i32, align 4
  %args = alloca %struct.vchiq_create_service, align 4
  %args163 = alloca %struct.vchiq_queue_message, align 4
  %elements = alloca [8 x %struct.vchiq_element], align 4
  %args193 = alloca %struct.vchiq_queue_bulk_transfer, align 4
  %args209 = alloca %struct.vchiq_await_completion, align 4
  %args221 = alloca %struct.vchiq_dequeue_message, align 4
  %args234 = alloca %struct.vchiq_get_config, align 4
  %config = alloca %struct.vchiq_config, align 4
  %args253 = alloca %struct.vchiq_set_service_option, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %3 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp sgt i32 %3, 6
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  %4 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 50176, i32 %4)
  %cmp2 = icmp eq i32 %4, 50176
  br i1 %cmp2, label %land.lhs.true, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %do.end
  %and4 = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and4)
  %cmp5 = icmp ult i32 %and4, 18
  br i1 %cmp5, label %cond.true, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [18 x ptr], ptr @ioctl_names, i32 0, i32 %and4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ @.str.4, %land.lhs.true.cond.end_crit_edge ], [ @.str.4, %do.end.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %cond, i32 noundef %arg) #10
  br label %do.end9

do.end9:                                          ; preds = %cond.end, %entry.do.end9_crit_edge
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end9.if.end290.thread_crit_edge [
    i32 50177, label %sw.bb
    i32 50176, label %sw.bb21
    i32 -1071856638, label %sw.bb62
    i32 50187, label %do.end9.sw.bb85_crit_edge
    i32 50179, label %do.end9.sw.bb85_crit_edge1053
    i32 50188, label %do.end9.sw.bb115_crit_edge
    i32 50189, label %do.end9.sw.bb115_crit_edge1054
    i32 1074578436, label %sw.bb162
    i32 -1072380923, label %do.end9.sw.bb192_crit_edge
    i32 -1072380922, label %do.end9.sw.bb192_crit_edge1055
    i32 -1072380921, label %sw.bb208
    i32 -1072643064, label %sw.bb220
    i32 50185, label %sw.bb230
    i32 -1073167350, label %sw.bb233
    i32 1074578446, label %sw.bb252
    i32 50192, label %sw.bb268
    i32 50193, label %sw.bb278
  ]

do.end9.sw.bb192_crit_edge1055:                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb192

do.end9.sw.bb192_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb192

do.end9.sw.bb115_crit_edge1054:                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb115

do.end9.sw.bb115_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb115

do.end9.sw.bb85_crit_edge1053:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb85

do.end9.sw.bb85_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb85

do.end9.if.end290.thread_crit_edge:               ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

sw.bb:                                            ; preds = %do.end9
  %connected = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %sw.bb.if.end290.thread_crit_edge, label %if.end11

sw.bb.if.end290.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.end11:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call12 = call ptr @next_service_by_instance(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %i) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then19, label %while.body

while.body:                                       ; preds = %while.cond
  %handle = getelementptr inbounds %struct.vchiq_service, ptr %call12, i32 0, i32 1
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 4
  %call14 = call i32 @vchiq_remove_service(i32 noundef %14) #7
  call void @vchiq_service_put(ptr noundef nonnull %call12) #7
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %while.body.while.cond_crit_edge, label %while.body.if.end290_crit_edge

while.body.if.end290_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then19:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %closing = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %closing, align 4
  %insert_event = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 4
  call void @complete(ptr noundef %insert_event) #7
  br label %if.end290.thread

sw.bb21:                                          ; preds = %do.end9
  %connected22 = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %connected22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connected22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb21.if.end290.thread_crit_edge

sw.bb21.if.end290.thread_crit_edge:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.end25:                                         ; preds = %sw.bb21
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.vchiq_state, ptr %19, i32 0, i32 10
  %call27 = tail call i32 @mutex_lock_killable_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end42, label %do.body30

do.body30:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %20 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp31 = icmp sgt i32 %20, 2
  br i1 %cmp31, label %do.end35, label %do.body30.if.end290.thread_crit_edge

do.body30.if.end290.thread_crit_edge:             ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %24, i32 noundef %call27) #10
  br label %if.end290.thread

if.end42:                                         ; preds = %if.end25
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call44 = tail call i32 @vchiq_connect_internal(ptr noundef %26, ptr noundef %1) #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %mutex46 = getelementptr inbounds %struct.vchiq_state, ptr %28, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp47 = icmp eq i32 %call44, 0
  br i1 %cmp47, label %if.then48, label %do.body50

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %connected22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %connected22, align 4
  br label %if.end290.thread

do.body50:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %30 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp51 = icmp sgt i32 %30, 2
  br i1 %cmp51, label %do.end55, label %do.body50.if.end290_crit_edge

do.body50.if.end290_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call44) #10
  br label %if.end290

sw.bb62:                                          ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %args) #7
  %31 = getelementptr inbounds %struct.vchiq_service_params, ptr %args, i32 0, i32 2
  %32 = getelementptr inbounds %struct.vchiq_service_params, ptr %args, i32 0, i32 3
  %33 = getelementptr inbounds %struct.vchiq_service_params, ptr %args, i32 0, i32 4
  %34 = getelementptr inbounds %struct.vchiq_create_service, ptr %args, i32 0, i32 1
  %35 = getelementptr inbounds %struct.vchiq_create_service, ptr %args, i32 0, i32 2
  %36 = getelementptr inbounds %struct.vchiq_create_service, ptr %args, i32 0, i32 3
  %37 = inttoptr i32 %arg to ptr
  %38 = call ptr @memset(ptr %args, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb62.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb62.if.then11.i.i_crit_edge:                  ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb62
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 28, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 28) #7
  %40 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !157
  %and.i.i.i.i = and i32 %42, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %37, i32 noundef 28) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end66, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !156

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb62.if.then11.i.i_crit_edge
  %res.0.i.i753 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 28, %sw.bb62.if.then11.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 28, %res.0.i.i753
  %add.ptr.i.i = getelementptr i8, ptr %args, i32 %sub.i.i
  %43 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i753)
  br label %cleanup

if.end66:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params.i) #7
  %44 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 2
  %46 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 3
  %47 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 708) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end66.vchiq_ioc_create_service.exit.thread_crit_edge, label %if.end.i

if.end66.vchiq_ioc_create_service.exit.thread_crit_edge: ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchiq_ioc_create_service.exit.thread

if.end.i:                                         ; preds = %if.end66
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not.i = icmp eq i32 %50, 0
  %connected6.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %connected6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %connected6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool7.not.i = icmp eq i32 %52, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  br i1 %tobool7.not.i, label %if.then4.i, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %vchiq_ioc_create_service.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %tobool7.not.i, i32 1, i32 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then2.i.if.end8.i_crit_edge
  %srvstate.0.i = phi i32 [ %cond.i, %if.else.i ], [ 3, %if.then2.i.if.end8.i_crit_edge ]
  %53 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %args, align 4
  %55 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %32, align 4
  %57 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %33, align 2
  %59 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %54, ptr %params.i, align 4
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @service_callback, ptr %44, align 4
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %45, align 4
  %62 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %56, ptr %46, align 4
  %63 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %58, ptr %47, align 2
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call15.i = call ptr @vchiq_add_service_internal(ptr noundef %65, ptr noundef nonnull %params.i, i32 noundef %srvstate.0.i, ptr noundef %1, ptr noundef nonnull @user_service_free) #7
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %vchiq_ioc_create_service.exit.thread

if.end18.i:                                       ; preds = %if.end8.i
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call15.i, ptr %call7.i.i, align 8
  %67 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %31, align 4
  %userdata22.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %userdata22.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %userdata22.i, align 4
  %instance23.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %instance23.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %1, ptr %instance23.i, align 8
  %71 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i = icmp ne i32 %72, 0
  %conv24.i = zext i1 %cmp.i to i8
  %is_vchi25.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %is_vchi25.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv24.i, ptr %is_vchi25.i, align 4
  %dequeue_pending.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %dequeue_pending.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %dequeue_pending.i, align 1
  %close_pending.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 5
  %75 = ptrtoint ptr %close_pending.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %close_pending.i, align 2
  %completion_remove.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %completion_remove.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %completion_remove.i, align 4
  %sub.i = add i32 %77, -1
  %message_available_pos.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %message_available_pos.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i, ptr %message_available_pos.i, align 8
  %msg_insert.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 7
  %79 = ptrtoint ptr %msg_insert.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %msg_insert.i, align 4
  %msg_remove.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 8
  %80 = ptrtoint ptr %msg_remove.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %msg_remove.i, align 8
  %insert_event.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 9
  %81 = ptrtoint ptr %insert_event.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %insert_event.i, align 4
  %wait.i.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #7
  %remove_event.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 10
  %82 = ptrtoint ptr %remove_event.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %remove_event.i, align 4
  %wait.i78.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 10, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i78.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #7
  %close_event.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 11
  %83 = ptrtoint ptr %close_event.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %close_event.i, align 4
  %wait.i79.i = getelementptr inbounds %struct.user_service, ptr %call7.i.i, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i79.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #7
  %84 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool27.not.i = icmp eq i32 %85, 0
  br i1 %tobool27.not.i, label %if.end18.i.if.end70_crit_edge, label %if.then28.i

if.end18.i.if.end70_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then28.i:                                      ; preds = %if.end18.i
  %pid.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 9
  %86 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid.i, align 4
  %call29.i = call i32 @vchiq_open_service_internal(ptr noundef nonnull %call15.i, i32 noundef %87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.not.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.not.i, label %if.then28.i.if.end70_crit_edge, label %if.then32.i

if.then28.i.if.end70_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then32.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %handle.i = getelementptr inbounds %struct.vchiq_service, ptr %call15.i, i32 0, i32 1
  %88 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle.i, align 4
  %call33.i = call i32 @vchiq_remove_service(i32 noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29.i)
  %cmp34.i = icmp eq i32 %call29.i, 1
  %cond36.i = select i1 %cmp34.i, i32 -4, i32 -5
  br label %vchiq_ioc_create_service.exit.thread

vchiq_ioc_create_service.exit.thread:             ; preds = %if.then32.i, %if.then17.i, %if.then4.i, %if.end66.vchiq_ioc_create_service.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end66.vchiq_ioc_create_service.exit.thread_crit_edge ], [ -107, %if.then4.i ], [ -17, %if.then17.i ], [ %cond36.i, %if.then32.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params.i) #7
  br label %cleanup

if.end70:                                         ; preds = %if.then28.i.if.end70_crit_edge, %if.end18.i.if.end70_crit_edge
  %handle39.i = getelementptr inbounds %struct.vchiq_service, ptr %call15.i, i32 0, i32 1
  %90 = ptrtoint ptr %handle39.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle39.i, align 4
  %92 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params.i) #7
  %handle72 = getelementptr inbounds %struct.vchiq_create_service, ptr %37, i32 0, i32 3
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 653) #7
  %93 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !157
  %and.i = and i32 %95, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %96 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %handle72, i32 %91, i32 -1226833921) #7, !srcloc !160
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool79.not = icmp eq i32 %96, 0
  br i1 %tobool79.not, label %if.end70.cleanup_crit_edge, label %if.then80

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %36, align 4
  %call82 = call i32 @vchiq_remove_service(i32 noundef %98) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end70.cleanup_crit_edge, %vchiq_ioc_create_service.exit.thread, %if.then11.i.i
  %ret.1 = phi i32 [ -14, %if.then80 ], [ 0, %if.end70.cleanup_crit_edge ], [ %retval.0.i.ph, %vchiq_ioc_create_service.exit.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %args) #7
  br label %if.end290.thread

sw.bb85:                                          ; preds = %do.end9.sw.bb85_crit_edge, %do.end9.sw.bb85_crit_edge1053
  %call87 = tail call ptr @find_service_for_instance(ptr noundef %1, i32 noundef %arg) #7
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %sw.bb85.if.end290.thread_crit_edge, label %if.end90

sw.bb85.if.end290.thread_crit_edge:               ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.end90:                                         ; preds = %sw.bb85
  %userdata = getelementptr inbounds %struct.vchiq_service_base, ptr %call87, i32 0, i32 2
  %99 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %userdata, align 8
  %close_pending = getelementptr inbounds %struct.user_service, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %close_pending to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %close_pending, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool91.not = icmp eq i8 %102, 0
  br i1 %tobool91.not, label %if.then92, label %if.end90.land.lhs.true108_crit_edge

if.end90.land.lhs.true108_crit_edge:              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true108

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_const_cmp4(i32 50187, i32 %cmd)
  %cmp93 = icmp eq i32 %cmd, 50187
  %handle95 = getelementptr inbounds %struct.vchiq_service, ptr %call87, i32 0, i32 1
  %103 = ptrtoint ptr %handle95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %handle95, align 4
  br i1 %cmp93, label %cond.true94, label %cond.false97

cond.true94:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 @vchiq_close_service(i32 noundef %104) #7
  br label %cond.end100

cond.false97:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call i32 @vchiq_remove_service(i32 noundef %104) #7
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false97, %cond.true94
  %cond101 = phi i32 [ %call96, %cond.true94 ], [ %call99, %cond.false97 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond101)
  %cmp102.not = icmp eq i32 %cond101, 0
  br i1 %cmp102.not, label %if.end105, label %cond.end100.if.then289_crit_edge

cond.end100.if.then289_crit_edge:                 ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

if.end105:                                        ; preds = %cond.end100
  %105 = ptrtoint ptr %close_pending to i32
  call void @__asan_load1_noabort(i32 %105)
  %.pr = load i8, ptr %close_pending, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool107.not = icmp eq i8 %.pr, 0
  br i1 %tobool107.not, label %if.end105.if.then289_crit_edge, label %if.end105.land.lhs.true108_crit_edge

if.end105.land.lhs.true108_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true108

if.end105.if.then289_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

land.lhs.true108:                                 ; preds = %if.end105.land.lhs.true108_crit_edge, %if.end90.land.lhs.true108_crit_edge
  %close_event = getelementptr inbounds %struct.user_service, ptr %100, i32 0, i32 11
  %call109 = tail call i32 @wait_for_completion_interruptible(ptr noundef %close_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp ne i32 %call109, 0
  %spec.select = zext i1 %tobool110.not to i32
  br label %if.then289

sw.bb115:                                         ; preds = %do.end9.sw.bb115_crit_edge, %do.end9.sw.bb115_crit_edge1054
  %call117 = tail call ptr @find_service_for_instance(ptr noundef %1, i32 noundef %arg) #7
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %sw.bb115.if.end290.thread_crit_edge, label %if.then119

sw.bb115.if.end290.thread_crit_edge:              ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.then119:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_const_cmp4(i32 50188, i32 %cmd)
  %cmp120 = icmp eq i32 %cmd, 50188
  br i1 %cmp120, label %cond.true122, label %cond.false124

cond.true122:                                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  %call123 = tail call i32 @vchiq_use_service_internal(ptr noundef nonnull %call117) #7
  br label %cond.end126

cond.false124:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = tail call i32 @vchiq_release_service_internal(ptr noundef nonnull %call117) #7
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false124, %cond.true122
  %cond127 = phi i32 [ %call123, %cond.true122 ], [ %call125, %cond.false124 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond127)
  %tobool128.not = icmp eq i32 %cond127, 0
  br i1 %tobool128.not, label %cond.end126.if.then289_crit_edge, label %do.body130

cond.end126.if.then289_crit_edge:                 ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

do.body130:                                       ; preds = %cond.end126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_susp_log_level to i32))
  %106 = load i32, ptr @vchiq_susp_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp131 = icmp sgt i32 %106, 2
  br i1 %cmp131, label %do.end136, label %do.body130.if.then289_crit_edge

do.body130.if.then289_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

do.end136:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %cond140 = select i1 %cmp120, ptr @.str.14, ptr @.str.15
  %107 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call117, align 8
  %109 = lshr i32 %108, 24
  %110 = lshr i32 %108, 16
  %and147 = and i32 %110, 255
  %111 = lshr i32 %108, 8
  %and151 = and i32 %111, 255
  %and154 = and i32 %108, 255
  %client_id = getelementptr inbounds %struct.vchiq_service, ptr %call117, i32 0, i32 9
  %112 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %client_id, align 8
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond140, i32 noundef %cond127, i32 noundef %109, i32 noundef %and147, i32 noundef %and151, i32 noundef %and154, i32 noundef %113) #10
  br label %if.then289

sw.bb162:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args163) #7
  %114 = ptrtoint ptr %args163 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %args163, align 4, !annotation !154
  %115 = getelementptr inbounds %struct.vchiq_queue_message, ptr %args163, i32 0, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %115, align 4, !annotation !154
  %117 = getelementptr inbounds %struct.vchiq_queue_message, ptr %args163, i32 0, i32 2
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 -1 to ptr), ptr %117, align 4, !annotation !154
  %119 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i469 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i469, label %sw.bb162.if.then11.i.i485_crit_edge, label %land.lhs.true.i.i472

sw.bb162.if.then11.i.i485_crit_edge:              ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i485

land.lhs.true.i.i472:                             ; preds = %sw.bb162
  %120 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %119, i32 12, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i470 = extractvalue { i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i470)
  %cmp.i6.i471 = icmp eq i32 %asmresult.i.i470, 0
  br i1 %cmp.i6.i471, label %if.end.i.i482, label %land.lhs.true.i.i472.if.then11.i.i485_crit_edge, !prof !156

land.lhs.true.i.i472.if.then11.i.i485_crit_edge:  ; preds = %land.lhs.true.i.i472
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i485

if.end.i.i482:                                    ; preds = %land.lhs.true.i.i472
  %call.i.i.i473 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args163, i32 noundef 12) #7
  %121 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i474 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i.i474 to ptr
  %cpu_domain.i.i.i.i.i475 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 4
  %123 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i475) #5, !srcloc !157
  %and.i.i.i.i476 = and i32 %123, -13
  %or.i.i.i.i477 = or i32 %and.i.i.i.i476, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i477) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i478 = call i32 @arm_copy_from_user(ptr noundef nonnull %args163, ptr noundef %119, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i478)
  %tobool4.not.i.i481 = icmp eq i32 %call1.i.i.i478, 0
  br i1 %tobool4.not.i.i481, label %if.end167, label %if.end.i.i482.if.then11.i.i485_crit_edge, !prof !156

if.end.i.i482.if.then11.i.i485_crit_edge:         ; preds = %if.end.i.i482
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i485

if.then11.i.i485:                                 ; preds = %if.end.i.i482.if.then11.i.i485_crit_edge, %land.lhs.true.i.i472.if.then11.i.i485_crit_edge, %sw.bb162.if.then11.i.i485_crit_edge
  %res.0.i.i480761 = phi i32 [ %call1.i.i.i478, %if.end.i.i482.if.then11.i.i485_crit_edge ], [ 12, %sw.bb162.if.then11.i.i485_crit_edge ], [ 12, %land.lhs.true.i.i472.if.then11.i.i485_crit_edge ]
  %sub.i.i483 = sub i32 12, %res.0.i.i480761
  %add.ptr.i.i484 = getelementptr i8, ptr %args163, i32 %sub.i.i483
  %124 = call ptr @memset(ptr %add.ptr.i.i484, i32 0, i32 %res.0.i.i480761)
  br label %cleanup189

if.end167:                                        ; preds = %if.end.i.i482
  %125 = ptrtoint ptr %args163 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %args163, align 4
  %call169 = call ptr @find_service_for_instance(ptr noundef %1, i32 noundef %126) #7
  %tobool170.not = icmp eq ptr %call169, null
  br i1 %tobool170.not, label %if.end167.cleanup189_crit_edge, label %land.lhs.true171

if.end167.cleanup189_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

land.lhs.true171:                                 ; preds = %if.end167
  %127 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %128)
  %cmp172 = icmp ult i32 %128, 9
  br i1 %cmp172, label %if.then174, label %land.lhs.true171.cleanup189_crit_edge

land.lhs.true171.cleanup189_crit_edge:            ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.then174:                                       ; preds = %land.lhs.true171
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elements) #7
  %129 = call ptr @memset(ptr %elements, i32 255, i32 64)
  %130 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %117, align 4
  %mul = shl nuw nsw i32 %128, 3
  call void @__check_object_size(ptr noundef nonnull %elements, i32 noundef %mul, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i492 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i492, label %if.then174.if.end.i.i505_crit_edge, label %land.lhs.true.i.i495

if.then174.if.end.i.i505_crit_edge:               ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i505

land.lhs.true.i.i495:                             ; preds = %if.then174
  %132 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %131, i32 %mul, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i493 = extractvalue { i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i493)
  %cmp.i6.i494 = icmp eq i32 %asmresult.i.i493, 0
  br i1 %cmp.i6.i494, label %if.then.i7.i502, label %land.lhs.true.i.i495.if.end.i.i505_crit_edge, !prof !156

land.lhs.true.i.i495.if.end.i.i505_crit_edge:     ; preds = %land.lhs.true.i.i495
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i505

if.then.i7.i502:                                  ; preds = %land.lhs.true.i.i495
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i496 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %elements, i32 noundef %mul) #7
  %133 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i497 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i.i497 to ptr
  %cpu_domain.i.i.i.i.i498 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 4
  %135 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i498) #5, !srcloc !157
  %and.i.i.i.i499 = and i32 %135, -13
  %or.i.i.i.i500 = or i32 %and.i.i.i.i499, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i500) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i501 = call i32 @arm_copy_from_user(ptr noundef nonnull %elements, ptr noundef %131, i32 noundef %mul) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  br label %if.end.i.i505

if.end.i.i505:                                    ; preds = %if.then.i7.i502, %land.lhs.true.i.i495.if.end.i.i505_crit_edge, %if.then174.if.end.i.i505_crit_edge
  %res.0.i.i503 = phi i32 [ %mul, %if.then174.if.end.i.i505_crit_edge ], [ %call1.i.i.i501, %if.then.i7.i502 ], [ %mul, %land.lhs.true.i.i495.if.end.i.i505_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i503)
  %tobool4.not.i.i504 = icmp eq i32 %res.0.i.i503, 0
  br i1 %tobool4.not.i.i504, label %if.then180, label %if.then11.i.i508, !prof !156

if.then11.i.i508:                                 ; preds = %if.end.i.i505
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i506 = sub i32 %mul, %res.0.i.i503
  %add.ptr.i.i507 = getelementptr i8, ptr %elements, i32 %sub.i.i506
  %136 = call ptr @memset(ptr %add.ptr.i.i507, i32 0, i32 %res.0.i.i503)
  br label %if.end186

if.then180:                                       ; preds = %if.end.i.i505
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %args163 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %args163, align 4
  %139 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %115, align 4
  %call184 = call fastcc i32 @vchiq_ioc_queue_message(i32 noundef %138, ptr noundef nonnull %elements, i32 noundef %140)
  br label %if.end186

if.end186:                                        ; preds = %if.then180, %if.then11.i.i508
  %ret.4 = phi i32 [ %call184, %if.then180 ], [ -14, %if.then11.i.i508 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elements) #7
  br label %cleanup189

cleanup189:                                       ; preds = %if.end186, %land.lhs.true171.cleanup189_crit_edge, %if.end167.cleanup189_crit_edge, %if.then11.i.i485
  %ret.6 = phi i32 [ %ret.4, %if.end186 ], [ -22, %land.lhs.true171.cleanup189_crit_edge ], [ -22, %if.end167.cleanup189_crit_edge ], [ -14, %if.then11.i.i485 ]
  %service.0 = phi ptr [ %call169, %if.end186 ], [ %call169, %land.lhs.true171.cleanup189_crit_edge ], [ null, %if.end167.cleanup189_crit_edge ], [ null, %if.then11.i.i485 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args163) #7
  br label %sw.epilog

sw.bb192:                                         ; preds = %do.end9.sw.bb192_crit_edge, %do.end9.sw.bb192_crit_edge1055
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args193) #7
  %141 = getelementptr inbounds %struct.vchiq_queue_bulk_transfer, ptr %args193, i32 0, i32 1
  %142 = getelementptr inbounds %struct.vchiq_queue_bulk_transfer, ptr %args193, i32 0, i32 2
  %143 = getelementptr inbounds %struct.vchiq_queue_bulk_transfer, ptr %args193, i32 0, i32 3
  %144 = getelementptr inbounds %struct.vchiq_queue_bulk_transfer, ptr %args193, i32 0, i32 4
  %145 = inttoptr i32 %arg to ptr
  %146 = call ptr @memset(ptr %args193, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i517 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i517, label %sw.bb192.if.then11.i.i534_crit_edge, label %land.lhs.true.i.i521

sw.bb192.if.then11.i.i534_crit_edge:              ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i534

land.lhs.true.i.i521:                             ; preds = %sw.bb192
  %147 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %145, i32 20, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i519 = extractvalue { i32, i32 } %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i519)
  %cmp.i6.i520 = icmp eq i32 %asmresult.i.i519, 0
  br i1 %cmp.i6.i520, label %if.end.i.i531, label %land.lhs.true.i.i521.if.then11.i.i534_crit_edge, !prof !156

land.lhs.true.i.i521.if.then11.i.i534_crit_edge:  ; preds = %land.lhs.true.i.i521
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i534

if.end.i.i531:                                    ; preds = %land.lhs.true.i.i521
  %call.i.i.i522 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args193, i32 noundef 20) #7
  %148 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i523 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i.i523 to ptr
  %cpu_domain.i.i.i.i.i524 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 4
  %150 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i524) #5, !srcloc !157
  %and.i.i.i.i525 = and i32 %150, -13
  %or.i.i.i.i526 = or i32 %and.i.i.i.i525, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i526) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i527 = call i32 @arm_copy_from_user(ptr noundef nonnull %args193, ptr noundef %145, i32 noundef 20) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %150) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i527)
  %tobool4.not.i.i530 = icmp eq i32 %call1.i.i.i527, 0
  br i1 %tobool4.not.i.i530, label %if.end201, label %if.end.i.i531.if.then11.i.i534_crit_edge, !prof !156

if.end.i.i531.if.then11.i.i534_crit_edge:         ; preds = %if.end.i.i531
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i534

if.then11.i.i534:                                 ; preds = %if.end.i.i531.if.then11.i.i534_crit_edge, %land.lhs.true.i.i521.if.then11.i.i534_crit_edge, %sw.bb192.if.then11.i.i534_crit_edge
  %res.0.i.i529768 = phi i32 [ %call1.i.i.i527, %if.end.i.i531.if.then11.i.i534_crit_edge ], [ 20, %sw.bb192.if.then11.i.i534_crit_edge ], [ 20, %land.lhs.true.i.i521.if.then11.i.i534_crit_edge ]
  %sub.i.i532 = sub i32 20, %res.0.i.i529768
  %add.ptr.i.i533 = getelementptr i8, ptr %args193, i32 %sub.i.i532
  %151 = call ptr @memset(ptr %add.ptr.i.i533, i32 0, i32 %res.0.i.i529768)
  br label %cleanup203

if.end201:                                        ; preds = %if.end.i.i531
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072380923, i32 %cmd)
  %cmp195 = icmp ne i32 %cmd, -1072380923
  %cond197 = zext i1 %cmp195 to i32
  %mode = getelementptr inbounds %struct.vchiq_queue_bulk_transfer, ptr %145, i32 0, i32 4
  %152 = ptrtoint ptr %args193 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %args193, align 4
  %call.i = call ptr @find_service_for_instance(ptr noundef %1, i32 noundef %153) #7
  %tobool.not.i661 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i661, label %if.end201.cleanup203_crit_edge, label %if.end.i662

if.end201.cleanup203_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup203

if.end.i662:                                      ; preds = %if.end201
  %154 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %144, align 4
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %155, label %if.else53.i [
    i32 1, label %if.then2.i663
    i32 3, label %if.then9.i
  ]

if.then2.i663:                                    ; preds = %if.end.i662
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %157 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %157, i32 noundef 3520, i32 noundef 76) #12
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.then2.i663.out.thread.i_crit_edge, label %if.then2.i663.if.end56.i_crit_edge

if.then2.i663.if.end56.i_crit_edge:               ; preds = %if.then2.i663
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then2.i663.out.thread.i_crit_edge:             ; preds = %if.then2.i663
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

if.then9.i:                                       ; preds = %if.end.i662
  %bulk_waiter_list_mutex.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %bulk_waiter_list_mutex.i, i32 noundef 0) #7
  %bulk_waiter_list.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then9.i
  %.pn.in.i = phi ptr [ %bulk_waiter_list.i, %if.then9.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %158 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp11.not.i = icmp eq ptr %.pn.i, %bulk_waiter_list.i
  br i1 %cmp11.not.i, label %do.body.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %pid.i664 = getelementptr i8, ptr %.pn.i, i32 -4
  %159 = ptrtoint ptr %pid.i664 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pid.i664, align 4
  %161 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i161.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i161.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task.i, align 8
  %pid13.i = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 68
  %165 = ptrtoint ptr %pid13.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pid13.i, align 8
  %cmp14.i = icmp eq i32 %160, %166
  br i1 %cmp14.i, label %if.then15.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then15.i:                                      ; preds = %for.body.i
  %waiter.0.le.i = getelementptr i8, ptr %.pn.i, i32 -68
  %call.i.i.i665 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #7
  br i1 %call.i.i.i665, label %if.end.i.i.i, label %if.then15.i.list_del.exit.i_crit_edge

if.then15.i.list_del.exit.i_crit_edge:            ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i.i, align 4
  %169 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev1.i.i.i.i, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %170, ptr %168, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then15.i.list_del.exit.i_crit_edge
  %173 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @mutex_unlock(ptr noundef %bulk_waiter_list_mutex.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %175 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %175)
  %cmp39.i = icmp sgt i32 %175, 5
  br i1 %cmp39.i, label %do.end43.i, label %list_del.exit.i.if.end56.i_crit_edge

list_del.exit.i.if.end56.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

do.body.critedge.i:                               ; preds = %for.cond.i
  call void @mutex_unlock(ptr noundef %bulk_waiter_list_mutex.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %176 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %176)
  %cmp26.i = icmp sgt i32 %176, 2
  br i1 %cmp26.i, label %do.end.i, label %do.body.critedge.i.out.thread.i_crit_edge

do.body.critedge.i.out.thread.i_crit_edge:        ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

do.end.i:                                         ; preds = %do.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i162.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i162.i to ptr
  %task31.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %task31.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task31.i, align 8
  %pid32.i = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 68
  %181 = ptrtoint ptr %pid32.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pid32.i, align 8
  %call33.i666 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %182) #10
  br label %out.thread.i

do.end43.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i163.i = and i32 %183, -16384
  %184 = inttoptr i32 %and.i163.i to ptr
  %task46.i = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %task46.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %task46.i, align 8
  %pid47.i = getelementptr inbounds %struct.task_struct, ptr %186, i32 0, i32 68
  %187 = ptrtoint ptr %pid47.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pid47.i, align 8
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %waiter.0.le.i, i32 noundef %188) #10
  br label %if.end56.i

if.else53.i:                                      ; preds = %if.end.i662
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %143, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else53.i, %do.end43.i, %list_del.exit.i.if.end56.i_crit_edge, %if.then2.i663.if.end56.i_crit_edge
  %userdata.0.i = phi ptr [ %190, %if.else53.i ], [ %call7.i.i.i, %if.then2.i663.if.end56.i_crit_edge ], [ %waiter.0.le.i, %do.end43.i ], [ %waiter.0.le.i, %list_del.exit.i.if.end56.i_crit_edge ]
  %waiter.1.i = phi ptr [ null, %if.else53.i ], [ %call7.i.i.i, %if.then2.i663.if.end56.i_crit_edge ], [ %waiter.0.le.i, %do.end43.i ], [ %waiter.0.le.i, %list_del.exit.i.if.end56.i_crit_edge ]
  %191 = ptrtoint ptr %args193 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %args193, align 4
  %193 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %141, align 4
  %195 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %142, align 4
  %197 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %144, align 4
  %call59.i = call i32 @vchiq_bulk_transfer(i32 noundef %192, ptr noundef null, ptr noundef %194, i32 noundef %196, ptr noundef %userdata.0.i, i32 noundef %198, i32 noundef %cond197) #7
  %tobool60.not.i = icmp eq ptr %waiter.1.i, null
  br i1 %tobool60.not.i, label %if.end56.i.if.else112.i_crit_edge, label %if.end62.i

if.end56.i.if.else112.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else112.i

if.end62.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59.i)
  %cmp63.not.i = icmp eq i32 %call59.i, 1
  br i1 %cmp63.not.i, label %lor.lhs.false.i, label %if.end62.i.if.then71.i_crit_edge

if.end62.i.if.then71.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71.i

lor.lhs.false.i:                                  ; preds = %if.end62.i
  %199 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i164.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i164.i to ptr
  %task65.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %task65.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task65.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %stack.i.i.i.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %204, align 4
  %and1.i.i.i.i.i.i = and i32 %206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.lor.lhs.false68.i_crit_edge, label %fatal_signal_pending.exit.i

lor.lhs.false.i.lor.lhs.false68.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false68.i

fatal_signal_pending.exit.i:                      ; preds = %lor.lhs.false.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 116, i32 1
  %207 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %signal.i.i.i, align 4
  %209 = and i32 %208, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool67.not.i = icmp eq i32 %209, 0
  br i1 %tobool67.not.i, label %fatal_signal_pending.exit.i.lor.lhs.false68.i_crit_edge, label %fatal_signal_pending.exit.i.if.then71.i_crit_edge

fatal_signal_pending.exit.i.if.then71.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71.i

fatal_signal_pending.exit.i.lor.lhs.false68.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false68.i

lor.lhs.false68.i:                                ; preds = %fatal_signal_pending.exit.i.lor.lhs.false68.i_crit_edge, %lor.lhs.false.i.lor.lhs.false68.i_crit_edge
  %210 = ptrtoint ptr %waiter.1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %waiter.1.i, align 4
  %tobool70.not.i = icmp eq ptr %211, null
  br i1 %tobool70.not.i, label %lor.lhs.false68.i.if.end79.i_crit_edge, label %if.else80.i

lor.lhs.false68.i.if.end79.i_crit_edge:           ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then71.i:                                      ; preds = %fatal_signal_pending.exit.i.if.then71.i_crit_edge, %if.end62.i.if.then71.i_crit_edge
  %212 = ptrtoint ptr %waiter.1.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pr.i = load ptr, ptr %waiter.1.i, align 4
  %tobool74.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool74.not.i, label %if.then71.i.if.end79.i_crit_edge, label %if.then75.i

if.then71.i.if.end79.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then75.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock(ptr noundef nonnull @bulk_waiter_spinlock) #7
  %213 = ptrtoint ptr %waiter.1.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %waiter.1.i, align 4
  %userdata78.i = getelementptr inbounds %struct.vchiq_bulk, ptr %214, i32 0, i32 2
  %215 = ptrtoint ptr %userdata78.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %userdata78.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @bulk_waiter_spinlock) #7
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then75.i, %if.then71.i.if.end79.i_crit_edge, %lor.lhs.false68.i.if.end79.i_crit_edge
  call void @kfree(ptr noundef nonnull %waiter.1.i) #7
  br label %if.else112.i

if.else80.i:                                      ; preds = %lor.lhs.false68.i
  %pid83.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 68
  %216 = ptrtoint ptr %pid83.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %pid83.i, align 8
  %pid84.i = getelementptr inbounds %struct.bulk_waiter_node, ptr %waiter.1.i, i32 0, i32 1
  %218 = ptrtoint ptr %pid84.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %pid84.i, align 4
  %bulk_waiter_list_mutex85.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %bulk_waiter_list_mutex85.i, i32 noundef 0) #7
  %list86.i = getelementptr inbounds %struct.bulk_waiter_node, ptr %waiter.1.i, i32 0, i32 2
  %bulk_waiter_list87.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 13
  %219 = ptrtoint ptr %bulk_waiter_list87.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %bulk_waiter_list87.i, align 4
  %call.i.i165.i = call zeroext i1 @__list_add_valid(ptr noundef %list86.i, ptr noundef %bulk_waiter_list87.i, ptr noundef %220) #7
  br i1 %call.i.i165.i, label %if.end.i.i166.i, label %if.else80.i.list_add.exit.i_crit_edge

if.else80.i.list_add.exit.i_crit_edge:            ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i166.i:                                  ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %list86.i, ptr %prev1.i.i.i, align 4
  %222 = ptrtoint ptr %list86.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %220, ptr %list86.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bulk_waiter_node, ptr %waiter.1.i, i32 0, i32 2, i32 1
  %223 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %bulk_waiter_list87.i, ptr %prev3.i.i.i, align 4
  %224 = ptrtoint ptr %bulk_waiter_list87.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %list86.i, ptr %bulk_waiter_list87.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i166.i, %if.else80.i.list_add.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %bulk_waiter_list_mutex85.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %225 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %225)
  %cmp90.i = icmp sgt i32 %225, 5
  br i1 %cmp90.i, label %do.end94.i, label %list_add.exit.i.out.i_crit_edge

list_add.exit.i.out.i_crit_edge:                  ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

do.end94.i:                                       ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %task65.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %task65.i, align 8
  %pid98.i = getelementptr inbounds %struct.task_struct, ptr %227, i32 0, i32 68
  %228 = ptrtoint ptr %pid98.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %pid98.i, align 8
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %waiter.1.i, i32 noundef %229) #10
  br label %out.i

out.thread.i:                                     ; preds = %do.end.i, %do.body.critedge.i.out.thread.i_crit_edge, %if.then2.i663.out.thread.i_crit_edge
  %ret.0.ph.i = phi i32 [ -3, %do.body.critedge.i.out.thread.i_crit_edge ], [ -3, %do.end.i ], [ -12, %if.then2.i663.out.thread.i_crit_edge ]
  call void @vchiq_service_put(ptr noundef nonnull %call.i) #7
  br label %cleanup203

out.i:                                            ; preds = %do.end94.i, %list_add.exit.i.out.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 363) #7
  %230 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i667 = and i32 %230, -16384
  %231 = inttoptr i32 %and.i.i.i.i667 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 4
  %232 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !157
  %and.i.i = and i32 %232, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %233 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %mode, i32 3, i32 -1226833921) #7, !srcloc !161
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @vchiq_service_put(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool110.not.i = icmp eq i32 %233, 0
  %spec.select.i = select i1 %tobool110.not.i, i32 -4, i32 %233
  br label %cleanup203

if.else112.i:                                     ; preds = %if.end79.i, %if.end56.i.if.else112.i_crit_edge
  call void @vchiq_service_put(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59.i)
  %switch.selectcmp.i = icmp eq i32 %call59.i, -1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -5, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59.i)
  %switch.selectcmp184.i = icmp eq i32 %call59.i, 1
  %switch.select185.i = select i1 %switch.selectcmp184.i, i32 -4, i32 %switch.select.i
  br label %cleanup203

cleanup203:                                       ; preds = %if.else112.i, %out.i, %out.thread.i, %if.end201.cleanup203_crit_edge, %if.then11.i.i534
  %ret.7 = phi i32 [ -22, %if.end201.cleanup203_crit_edge ], [ %ret.0.ph.i, %out.thread.i ], [ %switch.select185.i, %if.else112.i ], [ %spec.select.i, %out.i ], [ -14, %if.then11.i.i534 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args193) #7
  br label %if.end290.thread

sw.bb208:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args209) #7
  %234 = getelementptr inbounds %struct.vchiq_await_completion, ptr %args209, i32 0, i32 1
  %235 = getelementptr inbounds %struct.vchiq_await_completion, ptr %args209, i32 0, i32 2
  %236 = getelementptr inbounds %struct.vchiq_await_completion, ptr %args209, i32 0, i32 3
  %237 = getelementptr inbounds %struct.vchiq_await_completion, ptr %args209, i32 0, i32 4
  %238 = inttoptr i32 %arg to ptr
  %239 = call ptr @memset(ptr %args209, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i543 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i543, label %sw.bb208.if.then11.i.i560_crit_edge, label %land.lhs.true.i.i547

sw.bb208.if.then11.i.i560_crit_edge:              ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i560

land.lhs.true.i.i547:                             ; preds = %sw.bb208
  %240 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %238, i32 20, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i545 = extractvalue { i32, i32 } %240, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i545)
  %cmp.i6.i546 = icmp eq i32 %asmresult.i.i545, 0
  br i1 %cmp.i6.i546, label %if.end.i.i557, label %land.lhs.true.i.i547.if.then11.i.i560_crit_edge, !prof !156

land.lhs.true.i.i547.if.then11.i.i560_crit_edge:  ; preds = %land.lhs.true.i.i547
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i560

if.end.i.i557:                                    ; preds = %land.lhs.true.i.i547
  %call.i.i.i548 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args209, i32 noundef 20) #7
  %241 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i549 = and i32 %241, -16384
  %242 = inttoptr i32 %and.i.i.i.i.i.i549 to ptr
  %cpu_domain.i.i.i.i.i550 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 4
  %243 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i550) #5, !srcloc !157
  %and.i.i.i.i551 = and i32 %243, -13
  %or.i.i.i.i552 = or i32 %and.i.i.i.i551, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i552) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i553 = call i32 @arm_copy_from_user(ptr noundef nonnull %args209, ptr noundef %238, i32 noundef 20) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %243) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i553)
  %tobool4.not.i.i556 = icmp eq i32 %call1.i.i.i553, 0
  br i1 %tobool4.not.i.i556, label %if.end214, label %if.end.i.i557.if.then11.i.i560_crit_edge, !prof !156

if.end.i.i557.if.then11.i.i560_crit_edge:         ; preds = %if.end.i.i557
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i560

if.then11.i.i560:                                 ; preds = %if.end.i.i557.if.then11.i.i560_crit_edge, %land.lhs.true.i.i547.if.then11.i.i560_crit_edge, %sw.bb208.if.then11.i.i560_crit_edge
  %res.0.i.i555773 = phi i32 [ %call1.i.i.i553, %if.end.i.i557.if.then11.i.i560_crit_edge ], [ 20, %sw.bb208.if.then11.i.i560_crit_edge ], [ 20, %land.lhs.true.i.i547.if.then11.i.i560_crit_edge ]
  %sub.i.i558 = sub i32 20, %res.0.i.i555773
  %add.ptr.i.i559 = getelementptr i8, ptr %args209, i32 %sub.i.i558
  %244 = call ptr @memset(ptr %add.ptr.i.i559, i32 0, i32 %res.0.i.i555773)
  br label %cleanup216

if.end214:                                        ; preds = %if.end.i.i557
  %msgbufcount = getelementptr inbounds %struct.vchiq_await_completion, ptr %238, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.vchiq_state, ptr @g_state, i32 0, i32 4) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.vchiq_state, ptr @g_state, i32 0, i32 4), align 4
  %arrayidx.i = getelementptr %struct.vchiq_shared_state, ptr %245, i32 0, i32 11, i32 6
  %246 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 444, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %connected.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 7
  %247 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %connected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool.not.i669 = icmp eq i32 %248, 0
  br i1 %tobool.not.i669, label %if.end214.cleanup216_crit_edge, label %if.end.i672

if.end214.cleanup216_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup216

if.end.i672:                                      ; preds = %if.end214
  %completion_mutex.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %completion_mutex.i, i32 noundef 0) #7
  %249 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 450, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %completion_remove.i670 = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 3
  %completion_insert.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 2
  %closing.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 8
  %insert_event.i671 = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end.i672
  %250 = ptrtoint ptr %completion_remove.i670 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %completion_remove.i670, align 4
  %252 = ptrtoint ptr %completion_insert.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %completion_insert.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %253)
  %cmp.i673 = icmp eq i32 %251, %253
  br i1 %cmp.i673, label %land.rhs.i, label %while.cond.i.do.body29.i_crit_edge

while.cond.i.do.body29.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29.i

land.rhs.i:                                       ; preds = %while.cond.i
  %254 = ptrtoint ptr %closing.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %closing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool5.not.i = icmp eq i32 %255, 0
  br i1 %tobool5.not.i, label %while.body.i, label %land.rhs.i.do.body29.i_crit_edge

land.rhs.i.do.body29.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29.i

while.body.i:                                     ; preds = %land.rhs.i
  %256 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 454, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @mutex_unlock(ptr noundef %completion_mutex.i) #7
  %call.i674 = call i32 @wait_for_completion_interruptible(ptr noundef %insert_event.i671) #7
  call void @mutex_lock_nested(ptr noundef %completion_mutex.i, i32 noundef 0) #7
  %tobool12.not.i = icmp eq i32 %call.i674, 0
  br i1 %tobool12.not.i, label %while.body.i.while.cond.i_crit_edge, label %do.body14.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.body14.i:                                      ; preds = %while.body.i
  %257 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 459, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %258 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %258)
  %cmp19.i = icmp sgt i32 %258, 5
  br i1 %cmp19.i, label %do.end23.i, label %do.body14.i.if.then151.i_crit_edge

do.body14.i.if.then151.i_crit_edge:               ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then151.i

do.end23.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #10
  br label %if.then151.i

do.body29.i:                                      ; preds = %land.rhs.i.do.body29.i_crit_edge, %while.cond.i.do.body29.i_crit_edge
  %259 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 466, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %260 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %236, align 4
  %262 = ptrtoint ptr %args209 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %args209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp35289.not.i = icmp eq i32 %263, 0
  br i1 %cmp35289.not.i, label %do.body29.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body29.i.for.end.i_crit_edge:                  ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body29.i
  %264 = ptrtoint ptr %completion_remove.i670 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %completion_remove.i670, align 4
  %266 = getelementptr inbounds %struct.vchiq_completion_data, ptr %user_completion.i, i32 0, i32 1
  %267 = getelementptr inbounds %struct.vchiq_completion_data, ptr %user_completion.i, i32 0, i32 2
  %268 = getelementptr inbounds %struct.vchiq_completion_data, ptr %user_completion.i, i32 0, i32 3
  %use_close_delivered.i = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 11
  br label %for.body.i675

for.body.i675:                                    ; preds = %for.inc.i.for.body.i675_crit_edge, %for.body.lr.ph.i
  %msgbufcount.0292.i = phi i32 [ %261, %for.body.lr.ph.i ], [ %msgbufcount.2.i, %for.inc.i.for.body.i675_crit_edge ]
  %remove.0291.i = phi i32 [ %265, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i675_crit_edge ]
  %ret.2290.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc136.i, %for.inc.i.for.body.i675_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %user_completion.i) #7
  %269 = call ptr @memset(ptr %user_completion.i, i32 255, i32 16)
  %270 = ptrtoint ptr %completion_insert.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %completion_insert.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %remove.0291.i, i32 %271)
  %cmp37.i = icmp eq i32 %remove.0291.i, %271
  br i1 %cmp37.i, label %for.body.i675.cleanup129.thread.i_crit_edge, label %if.end39.i

for.body.i675.cleanup129.thread.i_crit_edge:      ; preds = %for.body.i675
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129.thread.i

if.end39.i:                                       ; preds = %for.body.i675
  %and.i676 = and i32 %remove.0291.i, 127
  %arrayidx40.i = getelementptr %struct.vchiq_instance, ptr %1, i32 0, i32 1, i32 %and.i676
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  %service_userdata.i = getelementptr %struct.vchiq_instance, ptr %1, i32 0, i32 1, i32 %and.i676, i32 2
  %272 = ptrtoint ptr %service_userdata.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %service_userdata.i, align 4
  %userdata.i = getelementptr inbounds %struct.vchiq_service_base, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %userdata.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %userdata.i, align 8
  %276 = call ptr @memset(ptr %user_completion.i, i32 0, i32 16)
  %277 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx40.i, align 4
  %userdata44.i = getelementptr inbounds %struct.user_service, ptr %275, i32 0, i32 1
  %279 = ptrtoint ptr %userdata44.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %userdata44.i, align 4
  %281 = ptrtoint ptr %user_completion.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %278, ptr %user_completion.i, align 4
  %282 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr null, ptr %266, align 4
  %283 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %280, ptr %267, align 4
  %284 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %268, align 4
  %header45.i = getelementptr %struct.vchiq_instance, ptr %1, i32 0, i32 1, i32 %and.i676, i32 1
  %285 = ptrtoint ptr %header45.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %header45.i, align 4
  %tobool46.not.i = icmp eq ptr %286, null
  br i1 %tobool46.not.i, label %if.end39.i.if.end110.i_crit_edge, label %if.then47.i

if.end39.i.if.end110.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.then47.i:                                      ; preds = %if.end39.i
  %size.i677 = getelementptr inbounds %struct.vchiq_header, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %size.i677 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %size.i677, align 4
  %add.i = add i32 %288, 8
  %289 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %290, i32 %add.i)
  %cmp48.i = icmp ult i32 %290, %add.i
  br i1 %cmp48.i, label %do.body50.i, label %if.end87.i

do.body50.i:                                      ; preds = %if.then47.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %291 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %291)
  %cmp51.i = icmp sgt i32 %291, 2
  br i1 %cmp51.i, label %do.end55.i, label %do.body50.i.do.end70.i_crit_edge

do.body50.i.do.end70.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70.i

do.end55.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %286, i32 noundef %290, i32 noundef %add.i) #10
  br label %do.end70.i

do.end70.i:                                       ; preds = %do.end55.i, %do.body50.i.do.end70.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 509, i32 noundef 9, ptr noundef nonnull @.str.56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2290.i)
  %cmp84.i = icmp eq i32 %ret.2290.i, 0
  %spec.store.select.i = select i1 %cmp84.i, i32 -90, i32 %ret.2290.i
  br label %cleanup129.thread.i

if.end87.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %msgbufcount.0292.i)
  %cmp88.i = icmp slt i32 %msgbufcount.0292.i, 1
  br i1 %cmp88.i, label %if.end87.i.cleanup129.thread.i_crit_edge, label %if.end90.i

if.end87.i.cleanup129.thread.i_crit_edge:         ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup129.thread.i

if.end90.i:                                       ; preds = %if.end87.i
  %dec.i = add nsw i32 %msgbufcount.0292.i, -1
  %292 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %237, align 4
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 393) #7
  %add.ptr11.i.i = getelementptr i32, ptr %293, i32 %dec.i
  %294 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i = and i32 %294, -16384
  %295 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 4
  %296 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !157
  %and.i.i.i678 = and i32 %296, -13
  %or.i.i.i = or i32 %and.i.i.i678, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %297 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr11.i.i, i32 -1226833921) #7, !srcloc !168
  %asmresult18.i.i = extractvalue { i32, i32 } %297, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %296) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult18.i.i)
  %tobool21.not.i.i = icmp eq i32 %asmresult18.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end97.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2290.i)
  %cmp94.i = icmp eq i32 %ret.2290.i, 0
  %spec.store.select162.i = select i1 %cmp94.i, i32 -14, i32 %ret.2290.i
  br label %cleanup129.thread.i

if.end97.i:                                       ; preds = %if.end90.i
  %asmresult19.i.i = extractvalue { i32, i32 } %297, 1
  %298 = inttoptr i32 %asmresult19.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp9.i.i.i = icmp slt i32 %add.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end97.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.then100.i_crit_edge, label %if.then27.i.i.i, !prof !156

land.rhs16.i.i.i.if.then100.i_crit_edge:          ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.then100.i

if.then.i.i.i.i:                                  ; preds = %if.end97.i
  call void @__check_object_size(ptr noundef nonnull %286, i32 noundef %add.i, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #7
  %call.i.i.i680 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i680, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i682

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.end.i.i.i682:                                  ; preds = %if.then.i.i.i.i
  %299 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %298, i32 %add.i, i32 -1226833920) #11, !srcloc !169
  %asmresult.i.i.i = extractvalue { i32, i32 } %299, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i682.copy_to_user.exit.i_crit_edge

if.end.i.i.i682.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i.i682
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i682
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %286, i32 noundef %add.i) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %298, ptr noundef nonnull %286, i32 noundef %add.i) #7
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i682.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %add.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %add.i, %if.end.i.i.i682.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool99.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool99.not.i, label %cleanup106.i, label %copy_to_user.exit.i.if.then100.i_crit_edge

copy_to_user.exit.i.if.then100.i_crit_edge:       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100.i

if.then100.i:                                     ; preds = %copy_to_user.exit.i.if.then100.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then100.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2290.i)
  %cmp101.i = icmp eq i32 %ret.2290.i, 0
  %spec.store.select163.i = select i1 %cmp101.i, i32 -14, i32 %ret.2290.i
  br label %cleanup129.thread.i

cleanup106.i:                                     ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %handle.i683 = getelementptr inbounds %struct.vchiq_service, ptr %273, i32 0, i32 1
  %300 = ptrtoint ptr %handle.i683 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %handle.i683, align 4
  call void @vchiq_release_message(i32 noundef %301, ptr noundef nonnull %286) #7
  %302 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %298, ptr %266, align 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %cleanup106.i, %if.end39.i.if.end110.i_crit_edge
  %msgbufcount.2.i = phi i32 [ %dec.i, %cleanup106.i ], [ %msgbufcount.0292.i, %if.end39.i.if.end110.i_crit_edge ]
  %303 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %304)
  %cmp112.i = icmp eq i32 %304, 1
  br i1 %cmp112.i, label %land.lhs.true.i, label %if.end110.i.if.end115.i_crit_edge

if.end110.i.if.end115.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i

land.lhs.true.i:                                  ; preds = %if.end110.i
  %305 = ptrtoint ptr %use_close_delivered.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %use_close_delivered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool113.not.i = icmp eq i32 %306, 0
  br i1 %tobool113.not.i, label %if.then114.i, label %land.lhs.true.i.if.end115.i_crit_edge

land.lhs.true.i.if.end115.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i

if.then114.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @vchiq_service_put(ptr noundef %273) #7
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then114.i, %land.lhs.true.i.if.end115.i_crit_edge, %if.end110.i.if.end115.i_crit_edge
  %bulk_userdata116.i = getelementptr %struct.vchiq_instance, ptr %1, i32 0, i32 1, i32 %and.i676, i32 3
  %307 = ptrtoint ptr %bulk_userdata116.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %bulk_userdata116.i, align 4
  %309 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %268, align 4
  %310 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %234, align 4
  %arrayidx10.i.i = getelementptr %struct.vchiq_completion_data, ptr %311, i32 %ret.2290.i
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #7
  %call.i.i.i224.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i224.i, label %if.end115.i.if.then120.i_crit_edge, label %if.end.i.i.i.i

if.end115.i.if.then120.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120.i

if.end.i.i.i.i:                                   ; preds = %if.end115.i
  %312 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx10.i.i, i32 16, i32 -1226833920) #11, !srcloc !169
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %312, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.if.then120.i_crit_edge

if.end.i.i.i.i.if.then120.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %user_completion.i, i32 noundef 16) #7
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx10.i.i, ptr noundef nonnull %user_completion.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool12.not.i.i, label %for.inc.i, label %copy_to_user.exit.i.i.if.then120.i_crit_edge

copy_to_user.exit.i.i.if.then120.i_crit_edge:     ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120.i

if.then120.i:                                     ; preds = %copy_to_user.exit.i.i.if.then120.i_crit_edge, %if.end.i.i.i.i.if.then120.i_crit_edge, %if.end115.i.if.then120.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2290.i)
  %cmp121.i = icmp eq i32 %ret.2290.i, 0
  %spec.store.select164.i = select i1 %cmp121.i, i32 -14, i32 %ret.2290.i
  br label %cleanup129.thread.i

cleanup129.thread.i:                              ; preds = %if.then120.i, %if.then100.i, %if.then93.i, %if.end87.i.cleanup129.thread.i_crit_edge, %do.end70.i, %for.body.i675.cleanup129.thread.i_crit_edge
  %ret.5.ph.i = phi i32 [ %spec.store.select164.i, %if.then120.i ], [ %spec.store.select.i, %do.end70.i ], [ %spec.store.select162.i, %if.then93.i ], [ %spec.store.select163.i, %if.then100.i ], [ %ret.2290.i, %for.body.i675.cleanup129.thread.i_crit_edge ], [ %ret.2290.i, %if.end87.i.cleanup129.thread.i_crit_edge ]
  %msgbufcount.3.ph.i = phi i32 [ %msgbufcount.2.i, %if.then120.i ], [ %msgbufcount.0292.i, %do.end70.i ], [ %dec.i, %if.then93.i ], [ %dec.i, %if.then100.i ], [ %msgbufcount.0292.i, %for.body.i675.cleanup129.thread.i_crit_edge ], [ %msgbufcount.0292.i, %if.end87.i.cleanup129.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_completion.i) #7
  br label %for.end.i

for.inc.i:                                        ; preds = %copy_to_user.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  call void @arm_heavy_mb() #7
  %inc.i = add i32 %remove.0291.i, 1
  %313 = ptrtoint ptr %completion_remove.i670 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %inc.i, ptr %completion_remove.i670, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_completion.i) #7
  %inc136.i = add nuw i32 %ret.2290.i, 1
  %314 = ptrtoint ptr %args209 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %args209, align 4
  %cmp35.i = icmp ult i32 %inc136.i, %315
  br i1 %cmp35.i, label %for.inc.i.for.body.i675_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i675_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i675

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup129.thread.i, %do.body29.i.for.end.i_crit_edge
  %ret.6.i = phi i32 [ %ret.5.ph.i, %cleanup129.thread.i ], [ 0, %do.body29.i.for.end.i_crit_edge ], [ %inc136.i, %for.inc.i.for.end.i_crit_edge ]
  %msgbufcount.4.i = phi i32 [ %msgbufcount.3.ph.i, %cleanup129.thread.i ], [ %261, %do.body29.i.for.end.i_crit_edge ], [ %msgbufcount.2.i, %for.inc.i.for.end.i_crit_edge ]
  %316 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %236, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %msgbufcount.4.i, i32 %317)
  %cmp138.not.i = icmp eq i32 %msgbufcount.4.i, %317
  br i1 %cmp138.not.i, label %for.end.i.out.i688_crit_edge, label %if.then139.i

for.end.i.out.i688_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i688

if.then139.i:                                     ; preds = %for.end.i
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 566) #7
  %318 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i684 = and i32 %318, -16384
  %319 = inttoptr i32 %and.i.i.i.i684 to ptr
  %cpu_domain.i.i.i685 = getelementptr inbounds %struct.thread_info, ptr %319, i32 0, i32 4
  %320 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i685) #5, !srcloc !157
  %and.i.i686 = and i32 %320, -13
  %or.i.i687 = or i32 %and.i.i686, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i687) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %321 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %msgbufcount, i32 %msgbufcount.4.i, i32 -1226833921) #7, !srcloc !171
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %320) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool146.not.i = icmp eq i32 %321, 0
  br i1 %tobool146.not.i, label %if.then139.i.out.i688_crit_edge, label %if.then139.i.if.then151.i_crit_edge

if.then139.i.if.then151.i_crit_edge:              ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then151.i

if.then139.i.out.i688_crit_edge:                  ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i688

out.i688:                                         ; preds = %if.then139.i.out.i688_crit_edge, %for.end.i.out.i688_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.i)
  %tobool150.not.i = icmp eq i32 %ret.6.i, 0
  br i1 %tobool150.not.i, label %out.i688.if.end152.i_crit_edge, label %out.i688.if.then151.i_crit_edge

out.i688.if.then151.i_crit_edge:                  ; preds = %out.i688
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then151.i

out.i688.if.end152.i_crit_edge:                   ; preds = %out.i688
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152.i

if.then151.i:                                     ; preds = %out.i688.if.then151.i_crit_edge, %if.then139.i.if.then151.i_crit_edge, %do.end23.i, %do.body14.i.if.then151.i_crit_edge
  %ret.7248.i = phi i32 [ %ret.6.i, %out.i688.if.then151.i_crit_edge ], [ -14, %if.then139.i.if.then151.i_crit_edge ], [ -4, %do.end23.i ], [ -4, %do.body14.i.if.then151.i_crit_edge ]
  %remove_event.i689 = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 5
  call void @complete(ptr noundef %remove_event.i689) #7
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then151.i, %out.i688.if.end152.i_crit_edge
  %ret.7249.i = phi i32 [ %ret.7248.i, %if.then151.i ], [ 0, %out.i688.if.end152.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %completion_mutex.i) #7
  %322 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 573, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  br label %cleanup216

cleanup216:                                       ; preds = %if.end152.i, %if.end214.cleanup216_crit_edge, %if.then11.i.i560
  %ret.8 = phi i32 [ %ret.7249.i, %if.end152.i ], [ -107, %if.end214.cleanup216_crit_edge ], [ -14, %if.then11.i.i560 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args209) #7
  br label %if.end290.thread

sw.bb220:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args221) #7
  %323 = getelementptr inbounds %struct.vchiq_dequeue_message, ptr %args221, i32 0, i32 1
  %324 = getelementptr inbounds %struct.vchiq_dequeue_message, ptr %args221, i32 0, i32 2
  %325 = getelementptr inbounds %struct.vchiq_dequeue_message, ptr %args221, i32 0, i32 3
  %326 = inttoptr i32 %arg to ptr
  %327 = call ptr @memset(ptr %args221, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i569 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i569, label %sw.bb220.if.then11.i.i586_crit_edge, label %land.lhs.true.i.i573

sw.bb220.if.then11.i.i586_crit_edge:              ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i586

land.lhs.true.i.i573:                             ; preds = %sw.bb220
  %328 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %326, i32 16, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i571 = extractvalue { i32, i32 } %328, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i571)
  %cmp.i6.i572 = icmp eq i32 %asmresult.i.i571, 0
  br i1 %cmp.i6.i572, label %if.end.i.i583, label %land.lhs.true.i.i573.if.then11.i.i586_crit_edge, !prof !156

land.lhs.true.i.i573.if.then11.i.i586_crit_edge:  ; preds = %land.lhs.true.i.i573
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i586

if.end.i.i583:                                    ; preds = %land.lhs.true.i.i573
  %call.i.i.i574 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args221, i32 noundef 16) #7
  %329 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i575 = and i32 %329, -16384
  %330 = inttoptr i32 %and.i.i.i.i.i.i575 to ptr
  %cpu_domain.i.i.i.i.i576 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 4
  %331 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i576) #5, !srcloc !157
  %and.i.i.i.i577 = and i32 %331, -13
  %or.i.i.i.i578 = or i32 %and.i.i.i.i577, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i578) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i579 = call i32 @arm_copy_from_user(ptr noundef nonnull %args221, ptr noundef %326, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %331) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i579)
  %tobool4.not.i.i582 = icmp eq i32 %call1.i.i.i579, 0
  br i1 %tobool4.not.i.i582, label %if.end225, label %if.end.i.i583.if.then11.i.i586_crit_edge, !prof !156

if.end.i.i583.if.then11.i.i586_crit_edge:         ; preds = %if.end.i.i583
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i586

if.then11.i.i586:                                 ; preds = %if.end.i.i583.if.then11.i.i586_crit_edge, %land.lhs.true.i.i573.if.then11.i.i586_crit_edge, %sw.bb220.if.then11.i.i586_crit_edge
  %res.0.i.i581778 = phi i32 [ %call1.i.i.i579, %if.end.i.i583.if.then11.i.i586_crit_edge ], [ 16, %sw.bb220.if.then11.i.i586_crit_edge ], [ 16, %land.lhs.true.i.i573.if.then11.i.i586_crit_edge ]
  %sub.i.i584 = sub i32 16, %res.0.i.i581778
  %add.ptr.i.i585 = getelementptr i8, ptr %args221, i32 %sub.i.i584
  %332 = call ptr @memset(ptr %add.ptr.i.i585, i32 0, i32 %res.0.i.i581778)
  br label %cleanup227

if.end225:                                        ; preds = %if.end.i.i583
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.vchiq_state, ptr @g_state, i32 0, i32 4) to i32))
  %333 = load ptr, ptr getelementptr inbounds (%struct.vchiq_state, ptr @g_state, i32 0, i32 4), align 4
  %arrayidx.i691 = getelementptr %struct.vchiq_shared_state, ptr %333, i32 0, i32 11, i32 7
  %334 = ptrtoint ptr %arrayidx.i691 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 214, ptr %arrayidx.i691, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %335 = ptrtoint ptr %args221 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %args221, align 4
  %call.i692 = call ptr @find_service_for_instance(ptr noundef %1, i32 noundef %336) #7
  %tobool.not.i693 = icmp eq ptr %call.i692, null
  br i1 %tobool.not.i693, label %if.end225.cleanup227_crit_edge, label %if.end.i697

if.end225.cleanup227_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup227

if.end.i697:                                      ; preds = %if.end225
  %userdata.i694 = getelementptr inbounds %struct.vchiq_service_base, ptr %call.i692, i32 0, i32 2
  %337 = ptrtoint ptr %userdata.i694 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %userdata.i694, align 8
  %is_vchi.i695 = getelementptr inbounds %struct.user_service, ptr %338, i32 0, i32 3
  %339 = ptrtoint ptr %is_vchi.i695 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %is_vchi.i695, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %cmp.i696 = icmp eq i8 %340, 0
  br i1 %cmp.i696, label %if.end.i697.out.i740_crit_edge, label %if.end3.i

if.end.i697.out.i740_crit_edge:                   ; preds = %if.end.i697
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i740

if.end3.i:                                        ; preds = %if.end.i697
  call void @_raw_spin_lock(ptr noundef nonnull @msg_queue_spinlock) #7
  %msg_remove.i698 = getelementptr inbounds %struct.user_service, ptr %338, i32 0, i32 8
  %341 = ptrtoint ptr %msg_remove.i698 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %msg_remove.i698, align 4
  %msg_insert.i699 = getelementptr inbounds %struct.user_service, ptr %338, i32 0, i32 7
  %343 = ptrtoint ptr %msg_insert.i699 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %msg_insert.i699, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %342, i32 %344)
  %cmp4.i = icmp eq i32 %342, %344
  br i1 %cmp4.i, label %if.then6.i, label %if.end3.i.if.end43.i_crit_edge

if.end3.i.if.end43.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then6.i:                                       ; preds = %if.end3.i
  %345 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool7.not.i700 = icmp eq i32 %346, 0
  br i1 %tobool7.not.i700, label %if.then8.i, label %if.end13.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef nonnull @msg_queue_spinlock) #7
  %347 = ptrtoint ptr %arrayidx.i691 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 229, ptr %arrayidx.i691, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  br label %out.i740

if.end13.i:                                       ; preds = %if.then6.i
  %dequeue_pending.i701 = getelementptr inbounds %struct.user_service, ptr %338, i32 0, i32 4
  %348 = ptrtoint ptr %dequeue_pending.i701 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 1, ptr %dequeue_pending.i701, align 1
  %insert_event.i702 = getelementptr inbounds %struct.user_service, ptr %338, i32 0, i32 9
  br label %do.body14.i703

do.body14.i703:                                   ; preds = %if.end33.i.do.body14.i703_crit_edge, %if.end13.i
  call void @_raw_spin_unlock(ptr noundef nonnull @msg_queue_spinlock) #7
  %349 = ptrtoint ptr %arrayidx.i691 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 237, ptr %arrayidx.i691, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %call19.i = call i32 @wait_for_completion_interruptible(ptr noundef %insert_event.i702) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end33.i, label %do.body22.i

do.body22.i:                                      ; preds = %do.body14.i703
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %350 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %350)
  %cmp23.i = icmp sgt i32 %350, 5
  br i1 %cmp23.i, label %do.end28.i, label %do.body22.i.out.i740_crit_edge

do.body22.i.out.i740_crit_edge:                   ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i740

do.end28.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i704 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  br label %out.i740

if.end33.i:                                       ; preds = %do.body14.i703
  call void @_raw_spin_lock(ptr noundef nonnull @msg_queue_spinlock) #7
  %351 = ptrtoint ptr %msg_remove.i698 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %msg_remove.i698, align 4
  %353 = ptrtoint ptr %msg_insert.i699 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %msg_insert.i699, align 4
  %cmp37.i705 = icmp eq i32 %352, %354
  br i1 %cmp37.i705, label %if.end33.i.do.body14.i703_crit_edge, label %if.end33.i.if.end43.i_crit_edge

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.end33.i.do.body14.i703_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14.i703

if.end43.i:                                       ; preds = %if.end33.i.if.end43.i_crit_edge, %if.end3.i.if.end43.i_crit_edge
  %355 = ptrtoint ptr %msg_insert.i699 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %msg_insert.i699, align 4
  %357 = ptrtoint ptr %msg_remove.i698 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %msg_remove.i698, align 4
  %sub.i706 = sub i32 %356, %358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i706)
  %cmp46.i = icmp slt i32 %sub.i706, 0
  br i1 %cmp46.i, label %land.rhs.i707, label %if.end92.i

land.rhs.i707:                                    ; preds = %if.end43.i
  %.b201.i = load i1, ptr @vchiq_ioc_dequeue_message.__already_done, align 1
  br i1 %.b201.i, label %land.rhs.i707.if.then91.i_crit_edge, label %if.then56.i, !prof !156

land.rhs.i707.if.then91.i_crit_edge:              ; preds = %land.rhs.i707
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91.i

if.then56.i:                                      ; preds = %land.rhs.i707
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vchiq_ioc_dequeue_message.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 252, i32 noundef 9, ptr noundef null) #7
  br label %if.then91.i

if.then91.i:                                      ; preds = %if.then56.i, %land.rhs.i707.if.then91.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @msg_queue_spinlock) #7
  br label %out.i740

if.end92.i:                                       ; preds = %if.end43.i
  %and.i708 = and i32 %358, 127
  %arrayidx94.i = getelementptr %struct.user_service, ptr %338, i32 0, i32 12, i32 %and.i708
  %359 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx94.i, align 4
  %inc.i709 = add i32 %358, 1
  %361 = ptrtoint ptr %msg_remove.i698 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %inc.i709, ptr %msg_remove.i698, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @msg_queue_spinlock) #7
  %remove_event.i710 = getelementptr inbounds %struct.user_service, ptr %338, i32 0, i32 10
  call void @complete(ptr noundef %remove_event.i710) #7
  %tobool96.not.i = icmp eq ptr %360, null
  br i1 %tobool96.not.i, label %if.end92.i.do.body156.i_crit_edge, label %if.else.i712

if.end92.i.do.body156.i_crit_edge:                ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156.i

if.else.i712:                                     ; preds = %if.end92.i
  %size.i711 = getelementptr inbounds %struct.vchiq_header, ptr %360, i32 0, i32 1
  %362 = ptrtoint ptr %size.i711 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %size.i711, align 4
  %364 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %324, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %363, i32 %365)
  %cmp98.not.i = icmp ugt i32 %363, %365
  br i1 %cmp98.not.i, label %do.body114.i, label %if.then100.i714

if.then100.i714:                                  ; preds = %if.else.i712
  %366 = ptrtoint ptr %325 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %325, align 4
  %tobool101.not.i = icmp eq ptr %367, null
  br i1 %tobool101.not.i, label %if.then100.i714.if.then108.i_crit_edge, label %lor.lhs.false.i719

if.then100.i714.if.then108.i_crit_edge:           ; preds = %if.then100.i714
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108.i

lor.lhs.false.i719:                               ; preds = %if.then100.i714
  %data.i715 = getelementptr inbounds %struct.vchiq_header, ptr %360, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %cmp9.i.i.i723 = icmp slt i32 %363, 0
  br i1 %cmp9.i.i.i723, label %land.rhs16.i.i.i726, label %if.then.i.i.i.i729

land.rhs16.i.i.i726:                              ; preds = %lor.lhs.false.i719
  %.b71.i.i.i725 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i725, label %land.rhs16.i.i.i726.do.body156.i_crit_edge, label %if.then27.i.i.i727, !prof !156

land.rhs16.i.i.i726.do.body156.i_crit_edge:       ; preds = %land.rhs16.i.i.i726
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156.i

if.then27.i.i.i727:                               ; preds = %land.rhs16.i.i.i726
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %do.body156.i

if.then.i.i.i.i729:                               ; preds = %lor.lhs.false.i719
  call void @__check_object_size(ptr noundef %data.i715, i32 noundef %363, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #7
  %call.i.i.i730 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i730, label %if.then.i.i.i.i729.copy_to_user.exit.i739_crit_edge, label %if.end.i.i.i734

if.then.i.i.i.i729.copy_to_user.exit.i739_crit_edge: ; preds = %if.then.i.i.i.i729
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i739

if.end.i.i.i734:                                  ; preds = %if.then.i.i.i.i729
  %368 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %367, i32 %363, i32 -1226833920) #11, !srcloc !169
  %asmresult.i.i.i732 = extractvalue { i32, i32 } %368, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i732)
  %cmp.i6.i.i733 = icmp eq i32 %asmresult.i.i.i732, 0
  br i1 %cmp.i6.i.i733, label %if.then2.i.i.i737, label %if.end.i.i.i734.copy_to_user.exit.i739_crit_edge

if.end.i.i.i734.copy_to_user.exit.i739_crit_edge: ; preds = %if.end.i.i.i734
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i739

if.then2.i.i.i737:                                ; preds = %if.end.i.i.i734
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i735 = call zeroext i1 @__kasan_check_read(ptr noundef %data.i715, i32 noundef %363) #7
  %call.i12.i.i.i736 = call i32 @arm_copy_to_user(ptr noundef nonnull %367, ptr noundef %data.i715, i32 noundef %363) #7
  br label %copy_to_user.exit.i739

copy_to_user.exit.i739:                           ; preds = %if.then2.i.i.i737, %if.end.i.i.i734.copy_to_user.exit.i739_crit_edge, %if.then.i.i.i.i729.copy_to_user.exit.i739_crit_edge
  %n.addr.0.i.i738 = phi i32 [ %363, %if.then.i.i.i.i729.copy_to_user.exit.i739_crit_edge ], [ %call.i12.i.i.i736, %if.then2.i.i.i737 ], [ %363, %if.end.i.i.i734.copy_to_user.exit.i739_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i738)
  %cmp106.i = icmp eq i32 %n.addr.0.i.i738, 0
  br i1 %cmp106.i, label %copy_to_user.exit.i739.if.then108.i_crit_edge, label %copy_to_user.exit.i739.do.body156.i_crit_edge

copy_to_user.exit.i739.do.body156.i_crit_edge:    ; preds = %copy_to_user.exit.i739
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body156.i

copy_to_user.exit.i739.if.then108.i_crit_edge:    ; preds = %copy_to_user.exit.i739
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108.i

if.then108.i:                                     ; preds = %copy_to_user.exit.i739.if.then108.i_crit_edge, %if.then100.i714.if.then108.i_crit_edge
  %369 = ptrtoint ptr %size.i711 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %size.i711, align 4
  %handle110.i = getelementptr inbounds %struct.vchiq_service, ptr %call.i692, i32 0, i32 1
  %371 = ptrtoint ptr %handle110.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %handle110.i, align 4
  call void @vchiq_release_message(i32 noundef %372, ptr noundef nonnull %360) #7
  br label %do.body156.i

do.body114.i:                                     ; preds = %if.else.i712
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %373 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %373)
  %cmp115.i = icmp sgt i32 %373, 2
  br i1 %cmp115.i, label %do.end120.i, label %do.body114.i.do.end140.i_crit_edge

do.body114.i.do.end140.i_crit_edge:               ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140.i

do.end120.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #9
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %360, i32 noundef %365, i32 noundef %363) #10
  br label %do.end140.i

do.end140.i:                                      ; preds = %do.end120.i, %do.body114.i.do.end140.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 278, i32 noundef 9, ptr noundef nonnull @.str.62) #7
  br label %do.body156.i

do.body156.i:                                     ; preds = %do.end140.i, %if.then108.i, %copy_to_user.exit.i739.do.body156.i_crit_edge, %if.then27.i.i.i727, %land.rhs16.i.i.i726.do.body156.i_crit_edge, %if.end92.i.do.body156.i_crit_edge
  %ret.1.i = phi i32 [ %370, %if.then108.i ], [ -90, %do.end140.i ], [ -107, %if.end92.i.do.body156.i_crit_edge ], [ -14, %copy_to_user.exit.i739.do.body156.i_crit_edge ], [ -14, %if.then27.i.i.i727 ], [ -14, %land.rhs16.i.i.i726.do.body156.i_crit_edge ]
  %374 = ptrtoint ptr %arrayidx.i691 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 281, ptr %arrayidx.i691, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  br label %out.i740

out.i740:                                         ; preds = %do.body156.i, %if.then91.i, %do.end28.i, %do.body22.i.out.i740_crit_edge, %if.then8.i, %if.end.i697.out.i740_crit_edge
  %ret.2.i = phi i32 [ -22, %if.then91.i ], [ %ret.1.i, %do.body156.i ], [ -11, %if.then8.i ], [ -22, %if.end.i697.out.i740_crit_edge ], [ -4, %do.body22.i.out.i740_crit_edge ], [ -4, %do.end28.i ]
  call void @vchiq_service_put(ptr noundef nonnull %call.i692) #7
  br label %cleanup227

cleanup227:                                       ; preds = %out.i740, %if.end225.cleanup227_crit_edge, %if.then11.i.i586
  %ret.9 = phi i32 [ %ret.2.i, %out.i740 ], [ -22, %if.end225.cleanup227_crit_edge ], [ -14, %if.then11.i.i586 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args221) #7
  br label %if.end290.thread

sw.bb230:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call232 = tail call i32 @vchiq_get_client_id(i32 noundef %arg) #7
  br label %if.end290.thread

sw.bb233:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args234) #7
  %375 = ptrtoint ptr %args234 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 -1, ptr %args234, align 4, !annotation !154
  %376 = getelementptr inbounds %struct.vchiq_get_config, ptr %args234, i32 0, i32 1
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr inttoptr (i32 -1 to ptr), ptr %376, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %config) #7
  %378 = inttoptr i32 %arg to ptr
  %379 = call ptr @memset(ptr %config, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i595 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i595, label %sw.bb233.if.then11.i.i612_crit_edge, label %land.lhs.true.i.i599

sw.bb233.if.then11.i.i612_crit_edge:              ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i612

land.lhs.true.i.i599:                             ; preds = %sw.bb233
  %380 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %378, i32 8, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i597 = extractvalue { i32, i32 } %380, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i597)
  %cmp.i6.i598 = icmp eq i32 %asmresult.i.i597, 0
  br i1 %cmp.i6.i598, label %if.end.i.i609, label %land.lhs.true.i.i599.if.then11.i.i612_crit_edge, !prof !156

land.lhs.true.i.i599.if.then11.i.i612_crit_edge:  ; preds = %land.lhs.true.i.i599
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i612

if.end.i.i609:                                    ; preds = %land.lhs.true.i.i599
  %call.i.i.i600 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args234, i32 noundef 8) #7
  %381 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i601 = and i32 %381, -16384
  %382 = inttoptr i32 %and.i.i.i.i.i.i601 to ptr
  %cpu_domain.i.i.i.i.i602 = getelementptr inbounds %struct.thread_info, ptr %382, i32 0, i32 4
  %383 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i602) #5, !srcloc !157
  %and.i.i.i.i603 = and i32 %383, -13
  %or.i.i.i.i604 = or i32 %and.i.i.i.i603, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i604) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i605 = call i32 @arm_copy_from_user(ptr noundef nonnull %args234, ptr noundef %378, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %383) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i605)
  %tobool4.not.i.i608 = icmp eq i32 %call1.i.i.i605, 0
  br i1 %tobool4.not.i.i608, label %if.end238, label %if.end.i.i609.if.then11.i.i612_crit_edge, !prof !156

if.end.i.i609.if.then11.i.i612_crit_edge:         ; preds = %if.end.i.i609
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i612

if.then11.i.i612:                                 ; preds = %if.end.i.i609.if.then11.i.i612_crit_edge, %land.lhs.true.i.i599.if.then11.i.i612_crit_edge, %sw.bb233.if.then11.i.i612_crit_edge
  %res.0.i.i607783 = phi i32 [ %call1.i.i.i605, %if.end.i.i609.if.then11.i.i612_crit_edge ], [ 8, %sw.bb233.if.then11.i.i612_crit_edge ], [ 8, %land.lhs.true.i.i599.if.then11.i.i612_crit_edge ]
  %sub.i.i610 = sub i32 8, %res.0.i.i607783
  %add.ptr.i.i611 = getelementptr i8, ptr %args234, i32 %sub.i.i610
  %384 = call ptr @memset(ptr %add.ptr.i.i611, i32 0, i32 %res.0.i.i607783)
  br label %cleanup248

if.end238:                                        ; preds = %if.end.i.i609
  %385 = ptrtoint ptr %args234 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %args234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %386)
  %cmp239 = icmp ugt i32 %386, 20
  br i1 %cmp239, label %if.end238.cleanup248_crit_edge, label %if.end242

if.end238.cleanup248_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup248

if.end242:                                        ; preds = %if.end238
  call void @vchiq_get_config(ptr noundef nonnull %config) #7
  %387 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %376, align 4
  %389 = ptrtoint ptr %args234 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %args234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %390)
  %cmp1.i.i616 = icmp ugt i32 %390, 20
  br i1 %cmp1.i.i616, label %if.then3.i.i619, label %if.then.i.i.i627, !prof !177

if.then3.i.i619:                                  ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.40, i32 noundef 20, i32 noundef %390) #7
  br label %cleanup248

if.then.i.i.i627:                                 ; preds = %if.end242
  call void @__check_object_size(ptr noundef nonnull %config, i32 noundef %390, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #7
  %call.i.i628 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i628, label %if.then.i.i.i627.copy_to_user.exit_crit_edge, label %if.end.i.i632

if.then.i.i.i627.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i627
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i632:                                    ; preds = %if.then.i.i.i627
  %391 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %388, i32 %390, i32 -1226833920) #11, !srcloc !169
  %asmresult.i.i630 = extractvalue { i32, i32 } %391, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i630)
  %cmp.i6.i631 = icmp eq i32 %asmresult.i.i630, 0
  br i1 %cmp.i6.i631, label %if.then2.i.i, label %if.end.i.i632.copy_to_user.exit_crit_edge

if.end.i.i632.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i632
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i632
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i633 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef %390) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %388, ptr noundef nonnull %config, i32 noundef %390) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i632.copy_to_user.exit_crit_edge, %if.then.i.i.i627.copy_to_user.exit_crit_edge
  %n.addr.0.i634 = phi i32 [ %390, %if.then.i.i.i627.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %390, %if.end.i.i632.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i634)
  %tobool245.not = icmp eq i32 %n.addr.0.i634, 0
  %spec.select962 = select i1 %tobool245.not, i32 0, i32 -14
  br label %cleanup248

cleanup248:                                       ; preds = %copy_to_user.exit, %if.then3.i.i619, %if.end238.cleanup248_crit_edge, %if.then11.i.i612
  %ret.10 = phi i32 [ -22, %if.end238.cleanup248_crit_edge ], [ -14, %if.then11.i.i612 ], [ -14, %if.then3.i.i619 ], [ %spec.select962, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %config) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args234) #7
  br label %if.end290.thread

sw.bb252:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args253) #7
  %392 = ptrtoint ptr %args253 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 -1, ptr %args253, align 4, !annotation !154
  %393 = getelementptr inbounds %struct.vchiq_set_service_option, ptr %args253, i32 0, i32 1
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 -1, ptr %393, align 4, !annotation !154
  %395 = getelementptr inbounds %struct.vchiq_set_service_option, ptr %args253, i32 0, i32 2
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 -1, ptr %395, align 4, !annotation !154
  %397 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i641 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i641, label %sw.bb252.if.then11.i.i658_crit_edge, label %land.lhs.true.i.i645

sw.bb252.if.then11.i.i658_crit_edge:              ; preds = %sw.bb252
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i658

land.lhs.true.i.i645:                             ; preds = %sw.bb252
  %398 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %397, i32 12, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i643 = extractvalue { i32, i32 } %398, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i643)
  %cmp.i6.i644 = icmp eq i32 %asmresult.i.i643, 0
  br i1 %cmp.i6.i644, label %if.end.i.i655, label %land.lhs.true.i.i645.if.then11.i.i658_crit_edge, !prof !156

land.lhs.true.i.i645.if.then11.i.i658_crit_edge:  ; preds = %land.lhs.true.i.i645
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i658

if.end.i.i655:                                    ; preds = %land.lhs.true.i.i645
  %call.i.i.i646 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args253, i32 noundef 12) #7
  %399 = call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i647 = and i32 %399, -16384
  %400 = inttoptr i32 %and.i.i.i.i.i.i647 to ptr
  %cpu_domain.i.i.i.i.i648 = getelementptr inbounds %struct.thread_info, ptr %400, i32 0, i32 4
  %401 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i648) #5, !srcloc !157
  %and.i.i.i.i649 = and i32 %401, -13
  %or.i.i.i.i650 = or i32 %and.i.i.i.i649, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i650) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i651 = call i32 @arm_copy_from_user(ptr noundef nonnull %args253, ptr noundef %397, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %401) #7, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i651)
  %tobool4.not.i.i654 = icmp eq i32 %call1.i.i.i651, 0
  br i1 %tobool4.not.i.i654, label %if.end257, label %if.end.i.i655.if.then11.i.i658_crit_edge, !prof !156

if.end.i.i655.if.then11.i.i658_crit_edge:         ; preds = %if.end.i.i655
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i658

if.then11.i.i658:                                 ; preds = %if.end.i.i655.if.then11.i.i658_crit_edge, %land.lhs.true.i.i645.if.then11.i.i658_crit_edge, %sw.bb252.if.then11.i.i658_crit_edge
  %res.0.i.i653788 = phi i32 [ %call1.i.i.i651, %if.end.i.i655.if.then11.i.i658_crit_edge ], [ 12, %sw.bb252.if.then11.i.i658_crit_edge ], [ 12, %land.lhs.true.i.i645.if.then11.i.i658_crit_edge ]
  %sub.i.i656 = sub i32 12, %res.0.i.i653788
  %add.ptr.i.i657 = getelementptr i8, ptr %args253, i32 %sub.i.i656
  %402 = call ptr @memset(ptr %add.ptr.i.i657, i32 0, i32 %res.0.i.i653788)
  br label %cleanup265

if.end257:                                        ; preds = %if.end.i.i655
  %403 = ptrtoint ptr %args253 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %args253, align 4
  %call259 = call ptr @find_service_for_instance(ptr noundef %1, i32 noundef %404) #7
  %tobool260.not = icmp eq ptr %call259, null
  br i1 %tobool260.not, label %if.end257.cleanup265_crit_edge, label %if.end262

if.end257.cleanup265_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup265

if.end262:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  %405 = ptrtoint ptr %args253 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %args253, align 4
  %407 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %393, align 4
  %409 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %395, align 4
  %call264 = call i32 @vchiq_set_service_option(i32 noundef %406, i32 noundef %408, i32 noundef %410) #7
  br label %cleanup265

cleanup265:                                       ; preds = %if.end262, %if.end257.cleanup265_crit_edge, %if.then11.i.i658
  %ret.11 = phi i32 [ %call264, %if.end262 ], [ -22, %if.end257.cleanup265_crit_edge ], [ -14, %if.then11.i.i658 ]
  %service.1 = phi ptr [ %call259, %if.end262 ], [ null, %if.end257.cleanup265_crit_edge ], [ null, %if.then11.i.i658 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args253) #7
  br label %sw.epilog

sw.bb268:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %arg)
  %cmp269 = icmp ult i32 %arg, 3
  br i1 %cmp269, label %sw.bb268.if.end290.thread_crit_edge, label %if.else272

sw.bb268.if.end290.thread_crit_edge:              ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.else272:                                       ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %arg)
  %cmp273 = icmp ugt i32 %arg, 6
  br i1 %cmp273, label %if.then275, label %if.else272.if.end290.thread_crit_edge

if.else272.if.end290.thread_crit_edge:            ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.then275:                                       ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #9
  %use_close_delivered = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 11
  %411 = ptrtoint ptr %use_close_delivered to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 1, ptr %use_close_delivered, align 4
  br label %if.end290.thread

sw.bb278:                                         ; preds = %do.end9
  %call280 = tail call ptr @find_closed_service_for_instance(ptr noundef %1, i32 noundef %arg) #7
  %tobool281.not = icmp eq ptr %call280, null
  br i1 %tobool281.not, label %sw.bb278.if.end290.thread_crit_edge, label %if.then282

sw.bb278.if.end290.thread_crit_edge:              ; preds = %sw.bb278
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.then282:                                       ; preds = %sw.bb278
  %userdata285 = getelementptr inbounds %struct.vchiq_service_base, ptr %call280, i32 0, i32 2
  %412 = ptrtoint ptr %userdata285 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %userdata285, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %414 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %414)
  %cmp.i742 = icmp sgt i32 %414, 5
  br i1 %cmp.i742, label %do.end.i745, label %if.then282.do.end2.i_crit_edge

if.then282.do.end2.i_crit_edge:                   ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2.i

do.end.i745:                                      ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #9
  %415 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %413, align 4
  %handle.i743 = getelementptr inbounds %struct.vchiq_service, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %handle.i743 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %handle.i743, align 4
  %call.i744 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %418) #10
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i745, %if.then282.do.end2.i_crit_edge
  %close_pending.i746 = getelementptr inbounds %struct.user_service, ptr %413, i32 0, i32 5
  %419 = ptrtoint ptr %close_pending.i746 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %close_pending.i746, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool.not.i747 = icmp eq i8 %420, 0
  br i1 %tobool.not.i747, label %do.end2.i.if.then289_crit_edge, label %if.then3.i

do.end2.i.if.then289_crit_edge:                   ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

if.then3.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %421 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %413, align 4
  tail call void @vchiq_service_put(ptr noundef %422) #7
  %close_event.i748 = getelementptr inbounds %struct.user_service, ptr %413, i32 0, i32 11
  tail call void @complete(ptr noundef %close_event.i748) #7
  %423 = ptrtoint ptr %close_pending.i746 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 0, ptr %close_pending.i746, align 2
  br label %if.then289

sw.epilog:                                        ; preds = %cleanup265, %cleanup189
  %ret.14 = phi i32 [ %ret.11, %cleanup265 ], [ %ret.6, %cleanup189 ]
  %service.2 = phi ptr [ %service.1, %cleanup265 ], [ %service.0, %cleanup189 ]
  %tobool288.not = icmp eq ptr %service.2, null
  br i1 %tobool288.not, label %sw.epilog.if.end290.thread_crit_edge, label %sw.epilog.if.then289_crit_edge

sw.epilog.if.then289_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289

sw.epilog.if.end290.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290.thread

if.then289:                                       ; preds = %sw.epilog.if.then289_crit_edge, %if.then3.i, %do.end2.i.if.then289_crit_edge, %do.end136, %do.body130.if.then289_crit_edge, %cond.end126.if.then289_crit_edge, %land.lhs.true108, %if.end105.if.then289_crit_edge, %cond.end100.if.then289_crit_edge
  %status.5807 = phi i32 [ 0, %sw.epilog.if.then289_crit_edge ], [ 0, %if.then3.i ], [ 0, %do.end2.i.if.then289_crit_edge ], [ 0, %do.body130.if.then289_crit_edge ], [ 0, %do.end136 ], [ 0, %cond.end126.if.then289_crit_edge ], [ %spec.select, %land.lhs.true108 ], [ 0, %if.end105.if.then289_crit_edge ], [ %cond101, %cond.end100.if.then289_crit_edge ]
  %service.2806 = phi ptr [ %service.2, %sw.epilog.if.then289_crit_edge ], [ %call280, %if.then3.i ], [ %call280, %do.end2.i.if.then289_crit_edge ], [ %call117, %do.body130.if.then289_crit_edge ], [ %call117, %do.end136 ], [ %call117, %cond.end126.if.then289_crit_edge ], [ %call87, %land.lhs.true108 ], [ %call87, %if.end105.if.then289_crit_edge ], [ %call87, %cond.end100.if.then289_crit_edge ]
  %ret.14805 = phi i32 [ %ret.14, %sw.epilog.if.then289_crit_edge ], [ 0, %if.then3.i ], [ 0, %do.end2.i.if.then289_crit_edge ], [ %cond127, %do.body130.if.then289_crit_edge ], [ %cond127, %do.end136 ], [ 0, %cond.end126.if.then289_crit_edge ], [ 0, %land.lhs.true108 ], [ 0, %if.end105.if.then289_crit_edge ], [ 0, %cond.end100.if.then289_crit_edge ]
  call void @vchiq_service_put(ptr noundef nonnull %service.2806) #7
  br label %if.end290

if.end290.thread:                                 ; preds = %sw.epilog.if.end290.thread_crit_edge, %sw.bb278.if.end290.thread_crit_edge, %if.then275, %if.else272.if.end290.thread_crit_edge, %sw.bb268.if.end290.thread_crit_edge, %cleanup248, %sw.bb230, %cleanup227, %cleanup216, %cleanup203, %sw.bb115.if.end290.thread_crit_edge, %sw.bb85.if.end290.thread_crit_edge, %cleanup, %if.then48, %do.end35, %do.body30.if.end290.thread_crit_edge, %sw.bb21.if.end290.thread_crit_edge, %if.then19, %sw.bb.if.end290.thread_crit_edge, %do.end9.if.end290.thread_crit_edge
  %ret.14795.ph = phi i32 [ %ret.10, %cleanup248 ], [ %call232, %sw.bb230 ], [ %ret.9, %cleanup227 ], [ %ret.8, %cleanup216 ], [ %ret.7, %cleanup203 ], [ %ret.1, %cleanup ], [ 0, %if.then48 ], [ 0, %if.then19 ], [ 0, %sw.bb.if.end290.thread_crit_edge ], [ -22, %sw.bb21.if.end290.thread_crit_edge ], [ -4, %do.end35 ], [ -4, %do.body30.if.end290.thread_crit_edge ], [ -22, %sw.bb85.if.end290.thread_crit_edge ], [ -22, %sw.bb115.if.end290.thread_crit_edge ], [ 0, %if.then275 ], [ 0, %if.else272.if.end290.thread_crit_edge ], [ -22, %sw.bb268.if.end290.thread_crit_edge ], [ -22, %sw.bb278.if.end290.thread_crit_edge ], [ -25, %do.end9.if.end290.thread_crit_edge ], [ %ret.14, %sw.epilog.if.end290.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.14795.ph)
  %cmp291810 = icmp eq i32 %ret.14795.ph, 0
  br label %.thread

if.end290:                                        ; preds = %if.then289, %do.end55, %do.body50.if.end290_crit_edge, %while.body.if.end290_crit_edge
  %status.5796 = phi i32 [ %status.5807, %if.then289 ], [ %call44, %do.body50.if.end290_crit_edge ], [ %call44, %do.end55 ], [ %call14, %while.body.if.end290_crit_edge ]
  %ret.14795 = phi i32 [ %ret.14805, %if.then289 ], [ 0, %do.body50.if.end290_crit_edge ], [ 0, %do.end55 ], [ 0, %while.body.if.end290_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.14795)
  %cmp291 = icmp eq i32 %ret.14795, 0
  %424 = zext i32 %status.5796 to i64
  call void @__sanitizer_cov_trace_switch(i64 %424, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %status.5796, label %if.end290..thread_crit_edge [
    i32 1, label %.thread.thread
    i32 -1, label %.thread822
  ]

if.end290..thread_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

.thread.thread:                                   ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  %ret.15837 = select i1 %cmp291, i32 -4, i32 %ret.14795
  br label %do.body340

.thread822:                                       ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  %ret.15826 = select i1 %cmp291, i32 -5, i32 %ret.14795
  br label %do.body340

.thread:                                          ; preds = %if.end290..thread_crit_edge, %if.end290.thread
  %status.5796812821 = phi i32 [ 0, %if.end290.thread ], [ %status.5796, %if.end290..thread_crit_edge ]
  %ret.14795813820 = phi i32 [ %ret.14795.ph, %if.end290.thread ], [ %ret.14795, %if.end290..thread_crit_edge ]
  %cmp291814819 = phi i1 [ %cmp291810, %if.end290.thread ], [ %cmp291, %if.end290..thread_crit_edge ]
  %ret.15 = select i1 %cmp291814819, i32 0, i32 %ret.14795813820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.5796812821)
  %cmp304 = icmp ne i32 %status.5796812821, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.15)
  %cmp307 = icmp sgt i32 %ret.15, -1
  %or.cond = select i1 %cmp304, i1 true, i1 %cmp307
  %425 = freeze i1 %or.cond
  br i1 %425, label %.thread.do.body340_crit_edge, label %switch.early.test

.thread.do.body340_crit_edge:                     ; preds = %.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body340

switch.early.test:                                ; preds = %.thread
  %426 = zext i32 %ret.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %426, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %ret.15, label %do.body316 [
    i32 -4, label %switch.early.test.do.body340_crit_edge
    i32 -11, label %switch.early.test.do.body340_crit_edge1056
  ]

switch.early.test.do.body340_crit_edge1056:       ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body340

switch.early.test.do.body340_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body340

do.body316:                                       ; preds = %switch.early.test
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %427 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %427)
  %cmp317 = icmp sgt i32 %427, 5
  br i1 %cmp317, label %do.end322, label %do.body316.if.end363_crit_edge

do.body316.if.end363_crit_edge:                   ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363

do.end322:                                        ; preds = %do.body316
  %and325 = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and325)
  %cmp326 = icmp ult i32 %and325, 18
  br i1 %cmp326, label %cond.true328, label %do.end322.cond.end333_crit_edge

do.end322.cond.end333_crit_edge:                  ; preds = %do.end322
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end333

cond.true328:                                     ; preds = %do.end322
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx331 = getelementptr [18 x ptr], ptr @ioctl_names, i32 0, i32 %and325
  %428 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx331, align 4
  br label %cond.end333

cond.end333:                                      ; preds = %cond.true328, %do.end322.cond.end333_crit_edge
  %cond334 = phi ptr [ %429, %cond.true328 ], [ @.str.4, %do.end322.cond.end333_crit_edge ]
  %call335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef %cond334, i32 noundef 0, i32 noundef %ret.15) #10
  br label %if.end363

do.body340:                                       ; preds = %switch.early.test.do.body340_crit_edge, %switch.early.test.do.body340_crit_edge1056, %.thread.do.body340_crit_edge, %.thread822, %.thread.thread
  %ret.15832 = phi i32 [ %ret.15826, %.thread822 ], [ %ret.14795813820, %switch.early.test.do.body340_crit_edge ], [ %ret.14795813820, %switch.early.test.do.body340_crit_edge1056 ], [ %ret.15, %.thread.do.body340_crit_edge ], [ %ret.15837, %.thread.thread ]
  %status.5796812821831 = phi i32 [ -1, %.thread822 ], [ %status.5796812821, %switch.early.test.do.body340_crit_edge ], [ %status.5796812821, %switch.early.test.do.body340_crit_edge1056 ], [ %status.5796812821, %.thread.do.body340_crit_edge ], [ 1, %.thread.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %430 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %430)
  %cmp341 = icmp sgt i32 %430, 6
  br i1 %cmp341, label %do.end346, label %do.body340.if.end363_crit_edge

do.body340.if.end363_crit_edge:                   ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363

do.end346:                                        ; preds = %do.body340
  %and349 = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and349)
  %cmp350 = icmp ult i32 %and349, 18
  br i1 %cmp350, label %cond.true352, label %do.end346.cond.end357_crit_edge

do.end346.cond.end357_crit_edge:                  ; preds = %do.end346
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end357

cond.true352:                                     ; preds = %do.end346
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx355 = getelementptr [18 x ptr], ptr @ioctl_names, i32 0, i32 %and349
  %431 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %arrayidx355, align 4
  br label %cond.end357

cond.end357:                                      ; preds = %cond.true352, %do.end346.cond.end357_crit_edge
  %cond358 = phi ptr [ %432, %cond.true352 ], [ @.str.4, %do.end346.cond.end357_crit_edge ]
  %call359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef %cond358, i32 noundef %status.5796812821831, i32 noundef %ret.15832) #10
  br label %if.end363

if.end363:                                        ; preds = %cond.end357, %do.body340.if.end363_crit_edge, %cond.end333, %do.body316.if.end363_crit_edge
  %ret.15833 = phi i32 [ %ret.15832, %do.body340.if.end363_crit_edge ], [ %ret.15832, %cond.end357 ], [ %ret.15, %do.body316.if.end363_crit_edge ], [ %ret.15, %cond.end333 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #7
  ret i32 %ret.15833
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vchiq_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vchiq_get_state() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %0 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body6, label %if.end17

do.body6:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %1 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7 = icmp sgt i32 %1, 2
  br i1 %cmp7, label %do.end11, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #10
  br label %cleanup

if.end17:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2392) #12
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %call7.i.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 69
  %8 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pid, align 8
  tail call void @vchiq_debugfs_add_instance(ptr noundef nonnull %call7.i.i) #7
  %insert_event = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %insert_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %insert_event, align 4
  %wait.i = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #7
  %remove_event = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %remove_event to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %remove_event, align 4
  %wait.i41 = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i41, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #7
  %completion_mutex = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %completion_mutex, ptr noundef nonnull @.str.70, ptr noundef nonnull @vchiq_open.__key) #7
  %bulk_waiter_list_mutex = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %bulk_waiter_list_mutex, ptr noundef nonnull @.str.72, ptr noundef nonnull @vchiq_open.__key.71) #7
  %bulk_waiter_list = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %bulk_waiter_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %bulk_waiter_list, ptr %bulk_waiter_list, align 8
  %prev.i = getelementptr inbounds %struct.vchiq_instance, ptr %call7.i.i, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bulk_waiter_list, ptr %prev.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %do.end11, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -107, %do.end11 ], [ -107, %do.body6.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vchiq_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @vchiq_get_state() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_arm_log_level to i32))
  %2 = load i32, ptr @vchiq_arm_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp sgt i32 %2, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %1 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %3) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end4.out_crit_edge, label %if.end6

do.end4.out_crit_edge:                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %do.end4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call8 = tail call i32 @vchiq_use_internal(ptr noundef %5, ptr noundef null, i32 noundef 1) #7
  %completion_mutex = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %completion_mutex, i32 noundef 0) #7
  %closing = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %closing, align 4
  %insert_event = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %insert_event) #7
  tail call void @mutex_unlock(ptr noundef %completion_mutex) #7
  %remove_event = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %remove_event) #7
  %7 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %i, align 4
  %call10129 = call ptr @next_service_by_instance(ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull %i) #7
  %tobool11.not130 = icmp eq ptr %call10129, null
  br i1 %tobool11.not130, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end6.while.body_crit_edge
  %call10131 = phi ptr [ %call10, %while.body.while.body_crit_edge ], [ %call10129, %if.end6.while.body_crit_edge ]
  %userdata = getelementptr inbounds %struct.vchiq_service_base, ptr %call10131, i32 0, i32 2
  %8 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %userdata, align 8
  %remove_event12 = getelementptr inbounds %struct.user_service, ptr %9, i32 0, i32 10
  call void @complete(ptr noundef %remove_event12) #7
  call void @vchiq_terminate_service_internal(ptr noundef nonnull %call10131) #7
  call void @vchiq_service_put(ptr noundef nonnull %call10131) #7
  %call10 = call ptr @next_service_by_instance(ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull %i) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end6.while.end_crit_edge
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i, align 4
  %call14133 = call ptr @next_service_by_instance(ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull %i) #7
  %tobool15.not134 = icmp eq ptr %call14133, null
  br i1 %tobool15.not134, label %while.end.while.end59_crit_edge, label %while.end.while.body16_crit_edge

while.end.while.body16_crit_edge:                 ; preds = %while.end
  br label %while.body16

while.end.while.end59_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end59

while.body16:                                     ; preds = %cleanup.while.body16_crit_edge, %while.end.while.body16_crit_edge
  %call14135 = phi ptr [ %call14, %cleanup.while.body16_crit_edge ], [ %call14133, %while.end.while.body16_crit_edge ]
  %userdata19 = getelementptr inbounds %struct.vchiq_service_base, ptr %call14135, i32 0, i32 2
  %11 = ptrtoint ptr %userdata19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %userdata19, align 8
  %remove_event20 = getelementptr inbounds %struct.vchiq_service, ptr %call14135, i32 0, i32 23
  call void @wait_for_completion(ptr noundef %remove_event20) #7
  %srvstate = getelementptr inbounds %struct.vchiq_service, ptr %call14135, i32 0, i32 4
  %13 = ptrtoint ptr %srvstate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srvstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21.not = icmp eq i32 %14, 0
  br i1 %cmp21.not, label %if.end49, label %cleanup.thread, !prof !156

cleanup.thread:                                   ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1250, i32 noundef 9, ptr noundef null) #7
  call void @vchiq_service_put(ptr noundef nonnull %call14135) #7
  br label %while.end59

if.end49:                                         ; preds = %while.body16
  call void @_raw_spin_lock(ptr noundef nonnull @msg_queue_spinlock) #7
  %msg_remove = getelementptr inbounds %struct.user_service, ptr %12, i32 0, i32 8
  %msg_insert = getelementptr inbounds %struct.user_service, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %msg_remove to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_remove, align 4
  %17 = ptrtoint ptr %msg_insert to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_insert, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp51.not132 = icmp eq i32 %16, %18
  br i1 %cmp51.not132, label %if.end49.cleanup_crit_edge, label %while.body52.lr.ph

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body52.lr.ph:                               ; preds = %if.end49
  %handle = getelementptr inbounds %struct.vchiq_service, ptr %call14135, i32 0, i32 1
  br label %while.body52

while.body52:                                     ; preds = %if.end57.while.body52_crit_edge, %while.body52.lr.ph
  %19 = phi i32 [ %16, %while.body52.lr.ph ], [ %26, %if.end57.while.body52_crit_edge ]
  %and = and i32 %19, 127
  %arrayidx = getelementptr %struct.user_service, ptr %12, i32 0, i32 12, i32 %and
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %inc = add i32 %19, 1
  %22 = ptrtoint ptr %msg_remove to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %msg_remove, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @msg_queue_spinlock) #7
  %tobool55.not = icmp eq ptr %21, null
  br i1 %tobool55.not, label %while.body52.if.end57_crit_edge, label %if.then56

while.body52.if.end57_crit_edge:                  ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then56:                                        ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle, align 4
  call void @vchiq_release_message(i32 noundef %24, ptr noundef nonnull %21) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %while.body52.if.end57_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @msg_queue_spinlock) #7
  %25 = ptrtoint ptr %msg_remove to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_remove, align 4
  %27 = ptrtoint ptr %msg_insert to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_insert, align 4
  %cmp51.not = icmp eq i32 %26, %28
  br i1 %cmp51.not, label %if.end57.cleanup_crit_edge, label %if.end57.while.body52_crit_edge

if.end57.while.body52_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body52

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %if.end49.cleanup_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @msg_queue_spinlock) #7
  call void @vchiq_service_put(ptr noundef nonnull %call14135) #7
  %call14 = call ptr @next_service_by_instance(ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull %i) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %cleanup.while.end59_crit_edge, label %cleanup.while.body16_crit_edge

cleanup.while.body16_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16

cleanup.while.end59_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end59

while.end59:                                      ; preds = %cleanup.while.end59_crit_edge, %cleanup.thread, %while.end.while.end59_crit_edge
  %completion_remove = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 3
  %completion_insert = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %completion_remove to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %completion_remove, align 4
  %31 = ptrtoint ptr %completion_insert to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %completion_insert, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp61.not137 = icmp eq i32 %30, %32
  br i1 %cmp61.not137, label %while.end59.while.end78_crit_edge, label %while.body62.lr.ph

while.end59.while.end78_crit_edge:                ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end78

while.body62.lr.ph:                               ; preds = %while.end59
  %use_close_delivered = getelementptr inbounds %struct.vchiq_instance, ptr %1, i32 0, i32 11
  br label %while.body62

while.body62:                                     ; preds = %if.end75.while.body62_crit_edge, %while.body62.lr.ph
  %33 = phi i32 [ %30, %while.body62.lr.ph ], [ %inc77, %if.end75.while.body62_crit_edge ]
  %and65 = and i32 %33, 127
  %arrayidx66 = getelementptr %struct.vchiq_instance, ptr %1, i32 0, i32 1, i32 %and65
  %service_userdata = getelementptr %struct.vchiq_instance, ptr %1, i32 0, i32 1, i32 %and65, i32 2
  %34 = ptrtoint ptr %service_userdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %service_userdata, align 4
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp67 = icmp eq i32 %37, 1
  br i1 %cmp67, label %if.then68, label %while.body62.if.end75_crit_edge

while.body62.if.end75_crit_edge:                  ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then68:                                        ; preds = %while.body62
  %38 = ptrtoint ptr %use_close_delivered to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %use_close_delivered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool72.not = icmp eq i32 %39, 0
  br i1 %tobool72.not, label %if.then68.if.end74_crit_edge, label %if.then73

if.then68.if.end74_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %userdata71 = getelementptr inbounds %struct.vchiq_service_base, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %userdata71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %userdata71, align 8
  %close_event = getelementptr inbounds %struct.user_service, ptr %41, i32 0, i32 11
  call void @complete(ptr noundef %close_event) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then68.if.end74_crit_edge
  call void @vchiq_service_put(ptr noundef %35) #7
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %while.body62.if.end75_crit_edge
  %42 = ptrtoint ptr %completion_remove to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %completion_remove, align 4
  %inc77 = add i32 %43, 1
  store i32 %inc77, ptr %completion_remove, align 4
  %44 = ptrtoint ptr %completion_insert to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %completion_insert, align 4
  %cmp61.not = icmp eq i32 %inc77, %45
  br i1 %cmp61.not, label %if.end75.while.end78_crit_edge, label %if.end75.while.body62_crit_edge

if.end75.while.body62_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body62

if.end75.while.end78_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end78

while.end78:                                      ; preds = %if.end75.while.end78_crit_edge, %while.end59.while.end78_crit_edge
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call80 = call i32 @vchiq_release_internal(ptr noundef %47, ptr noundef null) #7
  call void @free_bulk_waiter(ptr noundef %1) #7
  call void @vchiq_debugfs_remove_instance(ptr noundef %1) #7
  call void @kfree(ptr noundef %1) #7
  %48 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %while.end78, %do.end4.out_crit_edge
  %ret.0 = phi i32 [ 0, %while.end78 ], [ -1, %do.end4.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_dump_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_service_by_instance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_remove_service(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_service_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_connect_internal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_service_for_instance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_close_service(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_use_service_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_release_service_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vchiq_ioc_queue_message(i32 noundef %handle, ptr noundef %elements, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %context = alloca %struct.vchiq_io_copy_callback_context, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %context) #7
  %0 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, ptr %context, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %elements, ptr %context, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp27.not = icmp eq i32 %count, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %total_size.029 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.028 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vchiq_element, ptr %elements, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr %struct.vchiq_element, ptr %elements, i32 %i.028, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not = icmp eq i32 %8, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %size4 = getelementptr %struct.vchiq_element, ptr %elements, i32 %i.028, i32 1
  %9 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size4, align 4
  %add = add i32 %10, %total_size.029
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ]
  %call = call i32 @vchiq_queue_message(i32 noundef %handle, ptr noundef nonnull @vchiq_ioc_copy_element_data, ptr noundef nonnull %context, i32 noundef %total_size.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %switch.selectcmp = icmp eq i32 %call, 1
  %switch.select = select i1 %switch.selectcmp, i32 -4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %switch.selectcmp24 = icmp eq i32 %call, -1
  %switch.select25 = select i1 %switch.selectcmp24, i32 -5, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.select25, %for.end ], [ -14, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %context) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_get_client_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_get_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_set_service_option(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_closed_service_for_instance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_callback(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchiq_add_service_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_service_free(ptr noundef %userdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %userdata) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_open_service_internal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_queue_message(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vchiq_ioc_copy_element_data(ptr nocapture noundef %context, ptr noundef %dest, i32 noundef %offset, i32 noundef %maxsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxsize)
  %cmp66.not = icmp eq i32 %maxsize, 0
  br i1 %cmp66.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %elements_to_go = getelementptr inbounds %struct.vchiq_io_copy_callback_context, ptr %context, i32 0, i32 2
  %element_offset8 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, ptr %context, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %total_bytes_copied.067 = phi i32 [ 0, %while.body.lr.ph ], [ %total_bytes_copied.0.be, %while.cond.backedge.while.body_crit_edge ]
  %0 = ptrtoint ptr %elements_to_go to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %elements_to_go, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %size = getelementptr inbounds %struct.vchiq_element, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.while.cond.backedge.sink.split_crit_edge, label %if.end5

if.end.while.cond.backedge.sink.split_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %if.then23, %if.end.while.cond.backedge.sink.split_crit_edge
  %.sink80 = phi i32 [ %26, %if.then23 ], [ %1, %if.end.while.cond.backedge.sink.split_crit_edge ]
  %.sink = phi ptr [ %22, %if.then23 ], [ %3, %if.end.while.cond.backedge.sink.split_crit_edge ]
  %total_bytes_copied.0.be.ph = phi i32 [ %add18, %if.then23 ], [ %total_bytes_copied.067, %if.end.while.cond.backedge.sink.split_crit_edge ]
  %dec25 = add i32 %.sink80, -1
  %6 = ptrtoint ptr %elements_to_go to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec25, ptr %elements_to_go, align 4
  %incdec.ptr27 = getelementptr %struct.vchiq_element, ptr %.sink, i32 1
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr27, ptr %context, align 4
  %8 = ptrtoint ptr %element_offset8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %element_offset8, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end16.while.cond.backedge_crit_edge, %while.cond.backedge.sink.split
  %total_bytes_copied.0.be = phi i32 [ %add18, %if.end16.while.cond.backedge_crit_edge ], [ %total_bytes_copied.0.be.ph, %while.cond.backedge.sink.split ]
  %cmp = icmp ult i32 %total_bytes_copied.0.be, %maxsize
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %element_offset8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %element_offset8, align 4
  %sub = sub i32 %5, %10
  %sub9 = sub i32 %maxsize, %total_bytes_copied.067
  %11 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub9)
  %add.ptr = getelementptr i8, ptr %dest, i32 %total_bytes_copied.067
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.i.i = icmp slt i32 %11, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end5
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !156

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end5
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %11, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr13, i32 %11, i32 -1226833920) #11, !srcloc !155
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %11) #7
  %15 = tail call i32 @llvm.read_register.i32(metadata !144) #7
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !157
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %add.ptr13, i32 noundef %11) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %11, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %11, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.then11.i.i, !prof !156

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %11, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end16:                                         ; preds = %if.end.i.i
  %19 = ptrtoint ptr %element_offset8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %element_offset8, align 4
  %add = add i32 %20, %11
  store i32 %add, ptr %element_offset8, align 4
  %add18 = add i32 %11, %total_bytes_copied.067
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  %size21 = getelementptr inbounds %struct.vchiq_element, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp22 = icmp eq i32 %add, %24
  br i1 %cmp22, label %if.then23, label %if.end16.while.cond.backedge_crit_edge

if.end16.while.cond.backedge_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %elements_to_go to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %elements_to_go, align 4
  br label %while.cond.backedge.sink.split

cleanup:                                          ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %total_bytes_copied.067, %while.body.cleanup_crit_edge ], [ %maxsize, %while.cond.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_bulk_transfer(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_release_message(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchiq_get_state() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_debugfs_add_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_use_internal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_terminate_service_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_release_internal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_bulk_waiter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_debugfs_remove_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !143}
!llvm.named.register.sp = !{!144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1344, i32 10}
!2 = !{ptr @vchiq_miscdev, !3, !"vchiq_miscdev", i1 false, i1 false}
!3 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1341, i32 26}
!4 = !{ptr @vchiq_fops, !5, !"vchiq_fops", i1 false, i1 false}
!5 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1330, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 587, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vchiq_ioctl._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vchiq_ioctl._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 623, i32 4}
!15 = !{ptr @vchiq_ioctl._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @vchiq_ioctl._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 635, i32 4}
!19 = !{ptr @vchiq_ioctl._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @vchiq_ioctl._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 705, i32 5}
!23 = !{ptr @vchiq_ioctl._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @vchiq_ioctl._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 874, i32 3}
!29 = !{ptr @vchiq_ioctl._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vchiq_ioctl._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @vchiq_ioctl._entry.19, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 879, i32 3}
!33 = !{ptr @vchiq_ioctl._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 20, i32 2}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 21, i32 2}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 22, i32 2}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 23, i32 2}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 24, i32 2}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 25, i32 2}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 26, i32 2}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 27, i32 2}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 28, i32 2}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 29, i32 2}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 30, i32 2}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 31, i32 2}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 32, i32 2}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 33, i32 2}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 34, i32 2}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 35, i32 2}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 36, i32 2}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 37, i32 2}
!70 = !{ptr @ioctl_names, !71, !"ioctl_names", i1 false, i1 false}
!71 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 19, i32 26}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!79 = !{ptr @init_completion.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../include/linux/completion.h", i32 87, i32 2}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 323, i32 4}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vchiq_irq_queue_bulk_tx_rx._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @vchiq_irq_queue_bulk_tx_rx._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 328, i32 3}
!89 = !{ptr @vchiq_irq_queue_bulk_tx_rx._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @vchiq_irq_queue_bulk_tx_rx._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 360, i32 3}
!93 = !{ptr @vchiq_irq_queue_bulk_tx_rx._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @vchiq_irq_queue_bulk_tx_rx._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 460, i32 4}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @vchiq_ioc_await_completion._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @vchiq_ioc_await_completion._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 506, i32 5}
!102 = !{ptr @vchiq_ioc_await_completion._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vchiq_ioc_await_completion._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 509, i32 7}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 239, i32 5}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vchiq_ioc_dequeue_message._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @vchiq_ioc_dequeue_message._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 251, i32 6}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 275, i32 3}
!115 = !{ptr @vchiq_ioc_dequeue_message._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @vchiq_ioc_dequeue_message._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 278, i32 3}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 50, i32 2}
!121 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @close_delivered._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @close_delivered._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1173, i32 2}
!126 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @vchiq_open._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @vchiq_open._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1176, i32 3}
!131 = !{ptr @vchiq_open._entry.67, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @vchiq_open._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @vchiq_open.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1192, i32 2}
!135 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @vchiq_open.__key.71, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1193, i32 2}
!138 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_dev.c", i32 1209, i32 2}
!141 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @vchiq_release._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @vchiq_release._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{!"sp"}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{i64 2152676281, i64 2152676306}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 5171836}
!158 = !{i64 5172033}
!159 = !{i64 2152657266}
!160 = !{i64 2153662021, i64 2153662301, i64 2153662635, i64 2153662969}
!161 = !{i64 2153605726, i64 2153606006, i64 2153606340, i64 2153606674}
!162 = !{i64 2153633560}
!163 = !{i64 2153633819}
!164 = !{i64 2153634019}
!165 = !{i64 2153634274}
!166 = !{i64 2153636207}
!167 = !{i64 2153636302}
!168 = !{i64 2153629706, i64 2153629986, i64 2153630320, i64 2153630654}
!169 = !{i64 2152676962, i64 2152676987}
!170 = !{i64 2153638892}
!171 = !{i64 2153644861, i64 2153645141, i64 2153645475, i64 2153645809}
!172 = !{i64 2153647965}
!173 = !{i64 2153580247}
!174 = !{i64 2153580451}
!175 = !{i64 2153580659}
!176 = !{i64 2153590196}
!177 = !{!"branch_weights", i32 1, i32 2000}
