; ModuleID = '/llk/IR_all_yes/fs/ksmbd/connection.c_pt.bc'
source_filename = "../fs/ksmbd/connection.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kvec = type { ptr, i32 }
%struct.ksmbd_transport = type { ptr, ptr, ptr }
%struct.ksmbd_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.160, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.138 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.160 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ksmbd_conn_ops = type { ptr, ptr }

@conn_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @conn_list, ptr @conn_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"conn_list_lock\00", [17 x i8] zeroinitializer }, align 32
@conn_list_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@ksmbd_conn_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&conn->req_running_q\00", [43 x i8] zeroinitializer }, align 32
@ksmbd_conn_alloc.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&conn->request_lock\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_conn_alloc.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&conn->credits_lock\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_conn_alloc.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&conn->llist_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ksmbd/connection.c\00", [42 x i8] zeroinitializer }, align 32
@ksmbd_conn_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.9, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ksmbd: NULL response header\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_conn_write\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_conn_write._entry_ptr = internal global ptr @ksmbd_conn_write._entry, section ".printk_index", align 4
@ksmbd_conn_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.9, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ksmbd: Failed to send message: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ksmbd_conn_write._entry_ptr.14 = internal global ptr @ksmbd_conn_write._entry.12, section ".printk_index", align 4
@server_conf = external dso_local global %struct.ksmbd_server_config, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_conn_alive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ksmbd: No response from client in %lu minutes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_conn_alive\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_conn_alive._entry_ptr = internal global ptr @ksmbd_conn_alive._entry, section ".printk_index", align 4
@ksmbd_conn_handler_loop.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&conn->srv_mutex\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_conn_handler_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: RFC1002 header %u bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ksmbd_conn_handler_loop\00", [40 x i8] zeroinitializer }, align 32
@ksmbd_conn_handler_loop._entry_ptr = internal global ptr @ksmbd_conn_handler_loop._entry, section ".printk_index", align 4
@ksmbd_conn_handler_loop._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.9, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ksmbd: sock_read failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_conn_handler_loop._entry_ptr.22 = internal global ptr @ksmbd_conn_handler_loop._entry.20, section ".printk_index", align 4
@ksmbd_conn_handler_loop._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.9, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ksmbd: PDU error. Read: %d, Expected: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ksmbd_conn_handler_loop._entry_ptr.25 = internal global ptr @ksmbd_conn_handler_loop._entry.23, section ".printk_index", align 4
@default_conn_ops.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@default_conn_ops.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ksmbd_conn_handler_loop._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.9, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ksmbd: No connection request callback\0A\00", [55 x i8] zeroinitializer }, align 32
@ksmbd_conn_handler_loop._entry_ptr.28 = internal global ptr @ksmbd_conn_handler_loop._entry.26, section ".printk_index", align 4
@ksmbd_conn_handler_loop._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.9, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ksmbd: Cannot handle request\0A\00", [32 x i8] zeroinitializer }, align 32
@ksmbd_conn_handler_loop._entry_ptr.31 = internal global ptr @ksmbd_conn_handler_loop._entry.29, section ".printk_index", align 4
@init_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_lock, i64 52), ptr getelementptr (i8, ptr @init_lock, i64 52) }, ptr @init_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ksmbd_conn_transport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.9, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ksmbd: Failed to init TCP subsystem: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ksmbd_conn_transport_init\00", [38 x i8] zeroinitializer }, align 32
@ksmbd_conn_transport_init._entry_ptr = internal global ptr @ksmbd_conn_transport_init._entry, section ".printk_index", align 4
@ksmbd_conn_transport_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.9, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ksmbd: Failed to init RDMA subsystem: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ksmbd_conn_transport_init._entry_ptr.36 = internal global ptr @ksmbd_conn_transport_init._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_lock\00", [22 x i8] zeroinitializer }, align 32
@stop_sessions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.9, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: Stop session handler %s/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stop_sessions\00", [18 x i8] zeroinitializer }, align 32
@stop_sessions._entry_ptr = internal global ptr @stop_sessions._entry, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"conn_list\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 22, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"conn_list_lock\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 23, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 59, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 67, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 72, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 73, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 76, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 156, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 169, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 201, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 257, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 280, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 299, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 326, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 331, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"default_conn_ops.0\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"default_conn_ops.1\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 337, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 342, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"init_lock\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 373, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 379, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 378, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 57, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 18, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [25 x i8] c"../fs/ksmbd/connection.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 400, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @ksmbd_conn_alive._entry, ptr @ksmbd_conn_alive._entry_ptr, ptr @ksmbd_conn_handler_loop._entry, ptr @ksmbd_conn_handler_loop._entry.20, ptr @ksmbd_conn_handler_loop._entry.23, ptr @ksmbd_conn_handler_loop._entry.26, ptr @ksmbd_conn_handler_loop._entry.29, ptr @ksmbd_conn_handler_loop._entry_ptr, ptr @ksmbd_conn_handler_loop._entry_ptr.22, ptr @ksmbd_conn_handler_loop._entry_ptr.25, ptr @ksmbd_conn_handler_loop._entry_ptr.28, ptr @ksmbd_conn_handler_loop._entry_ptr.31, ptr @ksmbd_conn_transport_init._entry, ptr @ksmbd_conn_transport_init._entry.34, ptr @ksmbd_conn_transport_init._entry_ptr, ptr @ksmbd_conn_transport_init._entry_ptr.36, ptr @ksmbd_conn_write._entry, ptr @ksmbd_conn_write._entry.12, ptr @ksmbd_conn_write._entry_ptr, ptr @ksmbd_conn_write._entry_ptr.14, ptr @stop_sessions._entry, ptr @stop_sessions._entry_ptr, ptr @conn_list, ptr @.str, ptr @conn_list_lock, ptr @.str.1, ptr @ksmbd_conn_alloc.__key, ptr @.str.2, ptr @ksmbd_conn_alloc.__key.3, ptr @.str.4, ptr @ksmbd_conn_alloc.__key.5, ptr @.str.6, ptr @ksmbd_conn_alloc.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @ksmbd_conn_handler_loop.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @default_conn_ops.0, ptr @default_conn_ops.1, ptr @.str.27, ptr @.str.30, ptr @init_lock, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @xa_init_flags.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_alloc.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_alloc.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_alloc.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_alive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_handler_loop.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_handler_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_handler_loop._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_handler_loop._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_conn_ops.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_conn_ops.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_handler_loop._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_handler_loop._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_transport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_conn_transport_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_sessions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_conn_free(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @conn_list_lock) #10
  %conns_list = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %conns_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %conns_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conns_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %conns_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %conns_list, align 4
  %prev.i = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @conn_list_lock) #10
  %request_buf = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 7
  %8 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_buf, align 4
  tail call void @kvfree(ptr noundef %9) #10
  %preauth_info = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 28
  %10 = ptrtoint ptr %preauth_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %preauth_info, align 8
  tail call void @kfree(ptr noundef %11) #10
  tail call void @kfree(ptr noundef %conn) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_conn_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 680) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %need_neg = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 29
  %1 = ptrtoint ptr %need_neg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %need_neg, align 4
  %status = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %call1 = tail call ptr @load_nls(ptr noundef nonnull @.str.1) #10
  %local_nls = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %local_nls to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %local_nls, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call ptr @load_nls_default() #10
  %4 = ptrtoint ptr %local_nls to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %local_nls, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %req_running = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_running, i32 noundef 4) #10
  %5 = ptrtoint ptr %req_running to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %req_running, align 4
  %r_count = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 14
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_count, i32 noundef 4) #10
  %6 = ptrtoint ptr %r_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %r_count, align 8
  %total_credits = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %total_credits to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %total_credits, align 4
  %outstanding_credits = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %outstanding_credits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %outstanding_credits, align 8
  %req_running_q = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %req_running_q, ptr noundef nonnull @.str.2, ptr noundef nonnull @ksmbd_conn_alloc.__key) #10
  %conns_list = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %conns_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %conns_list, ptr %conns_list, align 8
  %prev.i = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %conns_list, ptr %prev.i, align 4
  %sessions = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %sessions to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sessions, ptr %sessions, align 8
  %prev.i43 = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sessions, ptr %prev.i43, align 4
  %requests = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 20
  %13 = ptrtoint ptr %requests to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %requests, ptr %requests, align 8
  %prev.i44 = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %requests, ptr %prev.i44, align 4
  %async_requests = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 21
  %15 = ptrtoint ptr %async_requests to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %async_requests, ptr %async_requests, align 8
  %prev.i45 = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 21, i32 1
  %16 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %async_requests, ptr %prev.i45, align 4
  %request_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %request_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ksmbd_conn_alloc.__key.3, i16 noundef signext 3) #10
  %credits_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %credits_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ksmbd_conn_alloc.__key.5, i16 noundef signext 3) #10
  %async_ida = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 41
  tail call void @__raw_spin_lock_init(ptr noundef %async_ida, ptr noundef nonnull @.str.37, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 41, i32 0, i32 1
  %17 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 41, i32 0, i32 2
  %18 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %xa_head.i.i, align 8
  %llist_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %llist_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ksmbd_conn_alloc.__key.7, i16 noundef signext 3) #10
  %lock_list = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 27
  %19 = ptrtoint ptr %lock_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %lock_list, ptr %lock_list, align 8
  %prev.i46 = getelementptr inbounds %struct.ksmbd_conn, ptr %call7.i.i, i32 0, i32 27, i32 1
  %20 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lock_list, ptr %prev.i46, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @conn_list_lock) #10
  %21 = load ptr, ptr @conn_list, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %conns_list, ptr noundef nonnull @conn_list, ptr noundef %21) #10
  br i1 %call.i.i47, label %if.end.i.i, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %conns_list, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %conns_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %conns_list, align 8
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @conn_list, ptr %prev.i, align 4
  store volatile ptr %conns_list, ptr @conn_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end7.list_add.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @conn_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ksmbd_conn_lookup_dialect(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @conn_list_lock) #10
  %ClientGUID1 = getelementptr inbounds %struct.ksmbd_conn, ptr %c, i32 0, i32 24
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @conn_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @conn_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ClientGUID = getelementptr i8, ptr %.pn, i32 216
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %ClientGUID, ptr noundef dereferenceable(16) %ClientGUID1, i32 16) #14
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %1 = xor i1 %cmp.not, true
  tail call void @_raw_read_unlock(ptr noundef nonnull @conn_list_lock) #10
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_conn_enqueue_request(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work, align 8
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call zeroext i16 %5(ptr noundef %work) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %call)
  %cmp.not = icmp eq i16 %call, 12
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end:                                           ; preds = %entry
  %requests = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 20
  %syncronous = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 18
  %6 = ptrtoint ptr %syncronous to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %syncronous, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %syncronous, align 1
  %tobool.not = icmp eq ptr %requests, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %req_running = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_running, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %req_running, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_running, ptr %req_running, i32 1, ptr elementtype(i32) %req_running) #10, !srcloc !94
  %request_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %request_lock) #10
  %request_entry = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 24
  %prev.i = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %request_entry, ptr noundef %9, ptr noundef nonnull %requests) #10
  br i1 %call.i.i14, label %if.end.i.i, label %if.then3.list_add_tail.exit_crit_edge

if.then3.list_add_tail.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %request_entry, ptr %prev.i, align 4
  %11 = ptrtoint ptr %request_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %requests, ptr %request_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %request_entry, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then3.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %request_lock) #10
  br label %if.end5

if.end5:                                          ; preds = %list_add_tail.exit, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_conn_try_dequeue_request(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work, align 8
  %request_entry = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 24
  %2 = ptrtoint ptr %request_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %request_entry, align 4
  %cmp.i.not = icmp eq ptr %3, %request_entry
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %async_request_entry = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 25
  %4 = ptrtoint ptr %async_request_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %async_request_entry, align 4
  %cmp.i32.not = icmp eq ptr %5, %async_request_entry
  br i1 %cmp.i32.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %multiRsp = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 18
  %6 = ptrtoint ptr %multiRsp to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %multiRsp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %req_running = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_running, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %req_running, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_running, ptr %req_running, i32 1, ptr elementtype(i32) %req_running) #10, !srcloc !95
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %request_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %request_lock) #10
  %8 = ptrtoint ptr %multiRsp to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load7 = load i8, ptr %multiRsp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7)
  %bf.cast9.not = icmp sgt i8 %bf.load7, -1
  br i1 %bf.cast9.not, label %if.then10, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then10:                                        ; preds = %if.end5
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %request_entry) #10
  br i1 %call.i.i34, label %if.end.i.i, label %if.then10.list_del_init.exit_crit_edge

if.then10.list_del_init.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %request_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then10.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %request_entry to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %request_entry, ptr %request_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 24, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %request_entry, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %multiRsp to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load12 = load i8, ptr %multiRsp, align 1
  %18 = and i8 %bf.load12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %if.then16, label %list_del_init.exit.if.end19_crit_edge

list_del_init.exit.if.end19_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %list_del_init.exit
  %async_request_entry17 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 25
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %async_request_entry17) #10
  br i1 %call.i.i35, label %if.end.i.i38, label %if.then16.list_del_init.exit40_crit_edge

if.then16.list_del_init.exit40_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit40

if.end.i.i38:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i36 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 25, i32 1
  %19 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i36, align 4
  %21 = ptrtoint ptr %async_request_entry17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %async_request_entry17, align 4
  %prev1.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i37, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit40

list_del_init.exit40:                             ; preds = %if.end.i.i38, %if.then16.list_del_init.exit40_crit_edge
  %25 = ptrtoint ptr %async_request_entry17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %async_request_entry17, ptr %async_request_entry17, align 4
  %prev.i3.i39 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 25, i32 1
  %26 = ptrtoint ptr %prev.i3.i39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %async_request_entry17, ptr %prev.i3.i39, align 4
  br label %if.end19

if.end19:                                         ; preds = %list_del_init.exit40, %list_del_init.exit.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %ret.0 = phi i32 [ 1, %if.end5.if.end19_crit_edge ], [ 0, %list_del_init.exit40 ], [ 0, %list_del_init.exit.if.end19_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %request_lock) #10
  %req_running_q = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %req_running_q, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end19 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_conn_wait_idle(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %req_running = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %req_running, i32 noundef 4) #10
  %0 = ptrtoint ptr %req_running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %req_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %req_running_q = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 18
  %call418 = call i32 @prepare_to_wait_event(ptr noundef %req_running_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i1519 = call zeroext i1 @__kasan_check_read(ptr noundef %req_running, i32 noundef 4) #10
  %3 = ptrtoint ptr %req_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %req_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp720 = icmp slt i32 %4, 2
  br i1 %cmp720, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #10
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %req_running_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %req_running, i32 noundef 4) #10
  %5 = ptrtoint ptr %req_running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %req_running, align 4
  %cmp7 = icmp slt i32 %6, 2
  br i1 %cmp7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %req_running_q, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_conn_write(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca [3 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov) #10
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %iov, i32 255, i32 24)
  %call = tail call i32 @ksmbd_conn_try_dequeue_request(ptr noundef %work)
  %response_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 4
  %5 = ptrtoint ptr %response_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %response_buf, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tr_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 16
  %7 = ptrtoint ptr %tr_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tr_buf, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end8, label %if.end8.thread

if.end8:                                          ; preds = %if.end
  %aux_payload_sz = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 15
  %9 = ptrtoint ptr %aux_payload_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aux_payload_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.else35, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end8.thread:                                   ; preds = %if.end
  %11 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %iov, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 56, ptr %2, align 4
  %aux_payload_sz101 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 15
  %13 = ptrtoint ptr %aux_payload_sz101 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aux_payload_sz101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not102 = icmp eq i32 %14, 0
  br i1 %tobool9.not102, label %if.then31, label %if.end8.thread.if.then10_crit_edge

if.end8.thread.if.then10_crit_edge:               ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %if.end8.thread.if.then10_crit_edge, %if.end8.if.then10_crit_edge
  %15 = phi i32 [ %14, %if.end8.thread.if.then10_crit_edge ], [ %10, %if.end8.if.then10_crit_edge ]
  %len.0105 = phi i32 [ 56, %if.end8.thread.if.then10_crit_edge ], [ 0, %if.end8.if.then10_crit_edge ]
  %iov_idx.0103 = phi i32 [ 1, %if.end8.thread.if.then10_crit_edge ], [ 0, %if.end8.if.then10_crit_edge ]
  %arrayidx11 = getelementptr [3 x %struct.kvec], ptr %iov, i32 0, i32 %iov_idx.0103
  %resp_hdr_sz = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 13
  %16 = ptrtoint ptr %resp_hdr_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp_hdr_sz, align 8
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %arrayidx11, align 4
  %.compoundliteral12.sroa.2.0.arrayidx11.sroa_idx = getelementptr inbounds i8, ptr %arrayidx11, i32 4
  %19 = ptrtoint ptr %.compoundliteral12.sroa.2.0.arrayidx11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %.compoundliteral12.sroa.2.0.arrayidx11.sroa_idx, align 4
  %inc16 = add nuw nsw i32 %iov_idx.0103, 1
  %add19 = add i32 %17, %len.0105
  %arrayidx20 = getelementptr [3 x %struct.kvec], ptr %iov, i32 0, i32 %inc16
  %aux_payload_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 5
  %20 = ptrtoint ptr %aux_payload_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aux_payload_buf, align 4
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx20, align 4
  %.compoundliteral21.sroa.2.0.arrayidx20.sroa_idx = getelementptr inbounds i8, ptr %arrayidx20, i32 4
  %23 = ptrtoint ptr %.compoundliteral21.sroa.2.0.arrayidx20.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %.compoundliteral21.sroa.2.0.arrayidx20.sroa_idx, align 4
  %add28 = add i32 %add19, %15
  br label %if.end49

if.then31:                                        ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #12
  %resp_hdr_sz32 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 13
  %24 = ptrtoint ptr %resp_hdr_sz32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resp_hdr_sz32, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %3, align 4
  br label %if.end41

if.else35:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %6, align 4
  %and.i = and i32 %28, 16777215
  %add38 = add nuw nsw i32 %and.i, 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add38, ptr %2, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else35, %if.then31
  %iov_idx.0104111 = phi i32 [ 0, %if.else35 ], [ 1, %if.then31 ]
  %len.0106109 = phi i32 [ 0, %if.else35 ], [ 56, %if.then31 ]
  %arrayidx43 = getelementptr [3 x %struct.kvec], ptr %iov, i32 0, i32 %iov_idx.0104111
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %6, ptr %arrayidx43, align 4
  %iov_len47 = getelementptr [3 x %struct.kvec], ptr %iov, i32 0, i32 %iov_idx.0104111, i32 1
  %31 = ptrtoint ptr %iov_len47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iov_len47, align 4
  %add48 = add i32 %32, %len.0106109
  br label %if.end49

if.end49:                                         ; preds = %if.end41, %if.then10
  %iov_idx.1.in = phi i32 [ %inc16, %if.then10 ], [ %iov_idx.0104111, %if.end41 ]
  %len.1 = phi i32 [ %add28, %if.then10 ], [ %add48, %if.end41 ]
  %iov_idx.1 = add nuw nsw i32 %iov_idx.1.in, 1
  %srv_mutex.i = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex.i, i32 noundef 0) #10
  %transport = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transport, align 8
  %ops = getelementptr inbounds %struct.ksmbd_transport, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %writev = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %writev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %writev, align 4
  %need_invalidate_rkey = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 18
  %39 = ptrtoint ptr %need_invalidate_rkey to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %need_invalidate_rkey, align 1
  %40 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %bf.cast = icmp ne i8 %40, 0
  %remote_key = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 19
  %41 = ptrtoint ptr %remote_key to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %remote_key, align 4
  %call52 = call i32 %38(ptr noundef %34, ptr noundef nonnull %iov, i32 noundef %iov_idx.1, i32 noundef %len.1, i1 noundef zeroext %bf.cast, i32 noundef %42) #10
  call void @mutex_unlock(ptr noundef %srv_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp = icmp slt i32 %call52, 0
  br i1 %cmp, label %do.end56, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call52) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end49.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call52, %do.end56 ], [ -22, %do.end ], [ 0, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_conn_rdma_read(ptr nocapture noundef readonly %conn, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i32 noundef %remote_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 8
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %ops = getelementptr inbounds %struct.ksmbd_transport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %rdma_read = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rdma_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdma_read, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i32 noundef %remote_len) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_conn_rdma_write(ptr nocapture noundef readonly %conn, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i32 noundef %remote_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 8
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %ops = getelementptr inbounds %struct.ksmbd_transport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %rdma_write = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rdma_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdma_write, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %buf, i32 noundef %buflen, i32 noundef %remote_key, i64 noundef %remote_offset, i32 noundef %remote_len) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ksmbd_conn_alive(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1) to i32))
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i.not = icmp eq i32 %0, 1
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 5
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %call3, label %if.end2.return_crit_edge, label %if.end5

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end2
  %stats = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #10
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp sgt i32 %4, 0
  br i1 %cmp7, label %if.end5.return_crit_edge, label %if.end9

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 9) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not = icmp eq i32 %5, 0
  br i1 %cmp10.not, label %if.end9.return_crit_edge, label %land.lhs.true

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true:                                    ; preds = %if.end9
  %last_active = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 12
  %6 = ptrtoint ptr %last_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_active, align 8
  %add = add i32 %7, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %do.body, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %9 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %5, 6000
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %div) #15
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end9.return_crit_edge, %if.end5.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end2.return_crit_edge ], [ true, %if.end5.return_crit_edge ], [ false, %do.body.return_crit_edge ], [ false, %do.end ], [ true, %land.lhs.true.return_crit_edge ], [ true, %if.end9.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_conn_handler_loop(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %hdr_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr_buf) #10
  %2 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hdr_buf, align 4
  %srv_mutex = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %srv_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @ksmbd_conn_handler_loop.__key) #10
  tail call void @__module_get(ptr noundef null) #10
  %ops = getelementptr inbounds %struct.ksmbd_transport, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %6(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_active = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 12
  %8 = ptrtoint ptr %last_active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_active, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1) to i32))
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.not.i130 = icmp eq i32 %9, 1
  br i1 %cmp.i.not.i130, label %if.end.i.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.lr.ph:                                   ; preds = %if.end
  %status.i = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 5
  %stats.i = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 23
  %request_buf = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %while.cond.backedge.if.end.i_crit_edge, %if.end.i.lr.ph
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %if.end.i.out_crit_edge, label %if.end2.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = call zeroext i1 @kthread_should_stop() #10
  br i1 %call3.i, label %if.end2.i.out_crit_edge, label %if.end5.i

if.end2.i.out_crit_edge:                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5.i:                                        ; preds = %if.end2.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %stats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.i = icmp sgt i32 %13, 0
  br i1 %cmp7.i, label %if.end5.i.while.body_crit_edge, label %if.end9.i

if.end5.i.while.body_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end9.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 9) to i32))
  %14 = load i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.not.i = icmp eq i32 %14, 0
  br i1 %cmp10.not.i, label %if.end9.i.while.body_crit_edge, label %land.lhs.true.i

if.end9.i.while.body_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.lhs.true.i:                                  ; preds = %if.end9.i
  %15 = ptrtoint ptr %last_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_active, align 8
  %add.i = add i32 %16, %14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp slt i32 %sub.i, 0
  br i1 %cmp11.i, label %do.body.i, label %land.lhs.true.i.while.body_crit_edge

land.lhs.true.i.while.body_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %18 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.body.i.out_crit_edge, label %do.end.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = udiv i32 %14, 6000
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %div.i) #15
  br label %out

while.body:                                       ; preds = %land.lhs.true.i.while.body_crit_edge, %if.end9.i.while.body_crit_edge, %if.end5.i.while.body_crit_edge
  %19 = call i32 @llvm.read_register.i32(metadata !84) #10
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i123 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool.not.i = icmp eq i32 %and.i123, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.if.end.i124_crit_edge

while.body.if.end.i124_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i124

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @debug_check_no_locks_held() #10
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.then.i, %while.body.if.end.i124_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 57) #10
  %25 = call i32 @llvm.read_register.i32(metadata !84) #10
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %29 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %if.end.i124.if.end7_crit_edge, label %freezing.exit.i.i, !prof !96

if.end.i124.if.end7_crit_edge:                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

freezing.exit.i.i:                                ; preds = %if.end.i124
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %28) #10
  br i1 %call4.i.i.i, label %try_to_freeze.exit, label %freezing.exit.i.i.if.end7_crit_edge, !prof !97

freezing.exit.i.i.if.end7_crit_edge:              ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

try_to_freeze.exit:                               ; preds = %freezing.exit.i.i
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #10
  br i1 %call6.i.i, label %try_to_freeze.exit.while.cond.backedge_crit_edge, label %try_to_freeze.exit.if.end7_crit_edge

try_to_freeze.exit.if.end7_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

try_to_freeze.exit.while.cond.backedge_crit_edge: ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end7:                                          ; preds = %try_to_freeze.exit.if.end7_crit_edge, %freezing.exit.i.i.if.end7_crit_edge, %if.end.i124.if.end7_crit_edge
  %30 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %request_buf, align 4
  call void @kvfree(ptr noundef %31) #10
  %32 = ptrtoint ptr %request_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %request_buf, align 4
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %read = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read, align 4
  %call10 = call i32 %36(ptr noundef %1, ptr noundef nonnull %hdr_buf, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 4
  br i1 %cmp.not, label %if.end12, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end7
  %37 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hdr_buf, align 4
  %and.i125 = and i32 %38, 16777215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %39 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end12.do.end24_crit_edge, label %do.end20

if.end12.do.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and.i125) #15
  br label %do.end24

do.end24:                                         ; preds = %do.end20, %if.end12.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i125)
  %cmp25 = icmp ult i32 %and.i125, 64
  br i1 %cmp25, label %do.end24.while.cond.backedge_crit_edge, label %if.end28

do.end24.while.cond.backedge_crit_edge:           ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end28:                                         ; preds = %do.end24
  %add = add nuw nsw i32 %and.i125, 4
  %call.i = call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3264, i32 noundef -1) #16
  %40 = ptrtoint ptr %request_buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %request_buf, align 4
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.end28.while.cond.backedge_crit_edge, label %if.end34

if.end28.while.cond.backedge_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end34:                                         ; preds = %if.end28
  %41 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hdr_buf, align 4
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %call.i, align 1
  %call37 = call zeroext i1 @ksmbd_smb_request(ptr noundef %p) #10
  br i1 %call37, label %if.end39, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end39:                                         ; preds = %if.end34
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %read41 = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read41, align 4
  %48 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %request_buf, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 4
  %call43 = call i32 %47(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %and.i125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call43) #15
  br label %out

if.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %and.i125)
  %cmp52.not = icmp eq i32 %call43, %and.i125
  br i1 %cmp52.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call43, i32 noundef %and.i125) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end67.while.cond.backedge_crit_edge, %do.end56, %if.end28.while.cond.backedge_crit_edge, %do.end24.while.cond.backedge_crit_edge, %try_to_freeze.exit.while.cond.backedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1) to i32))
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  %cmp.i.not.i = icmp eq i32 %50, 1
  br i1 %cmp.i.not.i, label %while.cond.backedge.if.end.i_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.cond.backedge.if.end.i_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end59:                                         ; preds = %if.end51
  %51 = load ptr, ptr @default_conn_ops.0, align 4
  %tobool60.not = icmp eq ptr %51, null
  br i1 %tobool60.not, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %out

if.end67:                                         ; preds = %if.end59
  %call68 = call i32 %51(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.while.cond.backedge_crit_edge, label %do.end73

if.end67.while.cond.backedge_crit_edge:           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #15
  br label %out

out:                                              ; preds = %do.end73, %do.end64, %while.cond.backedge.out_crit_edge, %do.end48, %if.end34.out_crit_edge, %if.end7.out_crit_edge, %do.end.i, %do.body.i.out_crit_edge, %if.end2.i.out_crit_edge, %if.end.i.out_crit_edge, %if.end.out_crit_edge, %land.lhs.true.out_crit_edge
  %r_count = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 14
  %call.i.i131 = call zeroext i1 @__kasan_check_read(ptr noundef %r_count, i32 noundef 4) #10
  %52 = ptrtoint ptr %r_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %r_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp79132 = icmp sgt i32 %53, 0
  br i1 %cmp79132, label %out.while.body80_crit_edge, label %out.while.end82_crit_edge

out.while.end82_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end82

out.while.body80_crit_edge:                       ; preds = %out
  br label %while.body80

while.body80:                                     ; preds = %while.body80.while.body80_crit_edge, %out.while.body80_crit_edge
  %call81 = call i32 @schedule_timeout(i32 noundef 100) #10
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %r_count, i32 noundef 4) #10
  %54 = ptrtoint ptr %r_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %r_count, align 4
  %cmp79 = icmp sgt i32 %55, 0
  br i1 %cmp79, label %while.body80.while.body80_crit_edge, label %while.body80.while.end82_crit_edge

while.body80.while.end82_crit_edge:               ; preds = %while.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end82

while.body80.while.body80_crit_edge:              ; preds = %while.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body80

while.end82:                                      ; preds = %while.body80.while.end82_crit_edge, %out.while.end82_crit_edge
  %local_nls = getelementptr inbounds %struct.ksmbd_conn, ptr %p, i32 0, i32 9
  %56 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %local_nls, align 4
  call void @unload_nls(ptr noundef %57) #10
  %58 = load ptr, ptr @default_conn_ops.1, align 4
  %tobool83.not = icmp eq ptr %58, null
  br i1 %tobool83.not, label %while.end82.if.end86_crit_edge, label %if.then84

while.end82.if.end86_crit_edge:                   ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then84:                                        ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = call i32 %58(ptr noundef %p) #10
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %while.end82.if.end86_crit_edge
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %disconnect = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %disconnect, align 4
  call void %62(ptr noundef %1) #10
  call void @module_put(ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr_buf) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ksmbd_smb_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ksmbd_conn_init_server_callbacks(ptr nocapture noundef readonly %ops) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  store ptr %1, ptr @default_conn_ops.0, align 4
  %terminate_fn = getelementptr inbounds %struct.ksmbd_conn_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %terminate_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %terminate_fn, align 4
  store ptr %3, ptr @default_conn_ops.1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_conn_transport_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @init_lock, i32 noundef 0) #10
  %call = tail call i32 @ksmbd_tcp_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call) #15
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ksmbd_rdma_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %do.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call2) #15
  br label %out

out:                                              ; preds = %do.end7, %if.end.out_crit_edge, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @init_lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_tcp_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_rdma_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_conn_transport_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @init_lock, i32 noundef 0) #10
  tail call void @ksmbd_tcp_destroy() #10
  tail call void @ksmbd_rdma_destroy() #10
  br label %again.i

again.i:                                          ; preds = %if.then20.i, %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @conn_list_lock) #10
  %.pn31.i = load ptr, ptr @conn_list, align 4
  %cmp.not32.i = icmp eq ptr %.pn31.i, @conn_list
  br i1 %cmp.not32.i, label %again.i.for.end.i_crit_edge, label %again.i.for.body.i_crit_edge

again.i.for.body.i_crit_edge:                     ; preds = %again.i
  br label %for.body.i

again.i.for.end.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %again.i.for.body.i_crit_edge
  %.pn33.i = phi ptr [ %.pn.i, %if.end13.i.for.body.i_crit_edge ], [ %.pn31.i, %again.i.for.body.i_crit_edge ]
  %transport.i = getelementptr i8, ptr %.pn33.i, i32 -8
  %0 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport.i, align 8
  %handler.i = getelementptr inbounds %struct.ksmbd_transport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.if.end8.i_crit_edge, label %do.body.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.body.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.if.end8.i_crit_edge, label %do.end.i

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %5 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid.i.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm.i, i32 noundef %6) #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %do.body.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge
  %status.i = getelementptr i8, ptr %.pn33.i, i32 -20
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %status.i, align 4
  %ops.i = getelementptr inbounds %struct.ksmbd_transport, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %shutdown.i = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shutdown.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then10.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @conn_list_lock) #10
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %shutdown12.i = getelementptr inbounds %struct.ksmbd_transport_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %shutdown12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shutdown12.i, align 4
  tail call void %15(ptr noundef %1) #10
  tail call void @_raw_read_lock(ptr noundef nonnull @conn_list_lock) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %16 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @conn_list
  br i1 %cmp.not.i, label %if.end13.i.for.end.i_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end13.i.for.end.i_crit_edge, %again.i.for.end.i_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @conn_list_lock) #10
  %17 = load volatile ptr, ptr @conn_list, align 4
  %cmp.i.not.i = icmp eq ptr %17, @conn_list
  br i1 %cmp.i.not.i, label %stop_sessions.exit, label %if.then20.i

if.then20.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  br label %again.i

stop_sessions.exit:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @init_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_tcp_destroy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_rdma_destroy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !75, !77, !78, !79, !81, !82, !83}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @conn_list, !1, !"conn_list", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/connection.c", i32 22, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/connection.c", i32 23, i32 1}
!4 = !{ptr @conn_list_lock, !3, !"conn_list_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ksmbd/connection.c", i32 59, i32 29}
!7 = !{ptr @ksmbd_conn_alloc.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../fs/ksmbd/connection.c", i32 67, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ksmbd_conn_alloc.__key.3, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/connection.c", i32 72, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ksmbd_conn_alloc.__key.5, !14, !"__key", i1 false, i1 false}
!14 = !{!"../fs/ksmbd/connection.c", i32 73, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ksmbd_conn_alloc.__key.7, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/ksmbd/connection.c", i32 76, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ksmbd/connection.c", i32 156, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ksmbd/connection.c", i32 169, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ksmbd_conn_write._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ksmbd_conn_write._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ksmbd/connection.c", i32 201, i32 3}
!28 = !{ptr @ksmbd_conn_write._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ksmbd_conn_write._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ksmbd/connection.c", i32 257, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ksmbd_conn_alive._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ksmbd_conn_alive._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ksmbd_conn_handler_loop.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/ksmbd/connection.c", i32 280, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ksmbd/connection.c", i32 299, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ksmbd_conn_handler_loop._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ksmbd_conn_handler_loop._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/connection.c", i32 326, i32 4}
!45 = !{ptr @ksmbd_conn_handler_loop._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ksmbd_conn_handler_loop._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ksmbd/connection.c", i32 331, i32 4}
!49 = !{ptr @ksmbd_conn_handler_loop._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ksmbd_conn_handler_loop._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ksmbd/connection.c", i32 337, i32 4}
!53 = !{ptr @ksmbd_conn_handler_loop._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ksmbd_conn_handler_loop._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ksmbd/connection.c", i32 342, i32 4}
!57 = !{ptr @ksmbd_conn_handler_loop._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ksmbd_conn_handler_loop._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ksmbd/connection.c", i32 373, i32 3}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ksmbd_conn_transport_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ksmbd_conn_transport_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ksmbd/connection.c", i32 379, i32 3}
!66 = !{ptr @ksmbd_conn_transport_init._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ksmbd_conn_transport_init._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"default_conn_ops", i1 false, i1 false}
!69 = !{!"../fs/ksmbd/connection.c", i32 20, i32 30}
!70 = !{ptr @xa_init_flags.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ksmbd/connection.c", i32 18, i32 8}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @init_lock, !76, !"init_lock", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ksmbd/connection.c", i32 400, i32 4}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @stop_sessions._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @stop_sessions._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148360273, i64 2148360299, i64 2148360328, i64 2148360362, i64 2148360393, i64 2148360416}
!95 = !{i64 2148362738, i64 2148362764, i64 2148362793, i64 2148362827, i64 2148362858, i64 2148362881}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{!"branch_weights", i32 1, i32 2000}
