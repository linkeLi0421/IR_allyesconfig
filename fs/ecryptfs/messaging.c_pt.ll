; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/messaging.c_pt.bc'
source_filename = "../fs/ecryptfs/messaging.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ecryptfs_msg_ctx = type { i8, i8, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.ecryptfs_daemon = type { i32, i32, ptr, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ecryptfs_message = type { i32, i32, [0 x i8] }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ecryptfs_daemon_hash_mux.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_daemon_hash_mux = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ecryptfs_daemon_hash_mux, i64 52), ptr getelementptr (i8, ptr @ecryptfs_daemon_hash_mux, i64 52) }, ptr @ecryptfs_daemon_hash_mux, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ecryptfs_daemon_hash_mux\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_msg_ctx_free_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ecryptfs_msg_ctx_free_list, ptr @ecryptfs_msg_ctx_free_list }, [24 x i8] zeroinitializer }, align 32
@ecryptfs_daemon_hash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ecryptfs_hash_bits = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ecryptfs_spawn_daemon.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&(*daemon)->mux\00", [16 x i8] zeroinitializer }, align 32
@ecryptfs_spawn_daemon.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&(*daemon)->wait\00", [47 x i8] zeroinitializer }, align 32
@ecryptfs_exorcise_daemon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014%s: Warning: dropping message that is in the out queue of a dying daemon\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ecryptfs_exorcise_daemon\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/ecryptfs/messaging.c\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_exorcise_daemon._entry_ptr = internal global ptr @ecryptfs_exorcise_daemon._entry, section ".printk_index", align 4
@ecryptfs_message_buf_len = external dso_local local_unnamed_addr global i32, align 4
@ecryptfs_process_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013%s: Attempt to reference context buffer at index [%d]; maximum allowable is [%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_process_response\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_process_response._entry_ptr = internal global ptr @ecryptfs_process_response._entry, section ".printk_index", align 4
@ecryptfs_msg_ctx_arr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ecryptfs_process_response._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.8, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: Desired context element is not pending a response\0A\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_process_response._entry_ptr.13 = internal global ptr @ecryptfs_process_response._entry.11, section ".printk_index", align 4
@ecryptfs_process_response._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.8, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s: Invalid message sequence; expected [%d]; received [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@ecryptfs_process_response._entry_ptr.16 = internal global ptr @ecryptfs_process_response._entry.14, section ".printk_index", align 4
@ecryptfs_message_wait_timeout = external dso_local local_unnamed_addr global i32, align 4
@ecryptfs_msg_ctx_lists_mux = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ecryptfs_msg_ctx_lists_mux, i64 52), ptr getelementptr (i8, ptr @ecryptfs_msg_ctx_lists_mux, i64 52) }, ptr @ecryptfs_msg_ctx_lists_mux, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ecryptfs_number_of_users = external dso_local local_unnamed_addr global i32, align 4
@ecryptfs_init_messaging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: Specified number of users is too large, defaulting to [%d] users\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ecryptfs_init_messaging\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_init_messaging._entry_ptr = internal global ptr @ecryptfs_init_messaging._entry, section ".printk_index", align 4
@ecryptfs_msg_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ecryptfs_init_messaging.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&ecryptfs_msg_ctx_arr[i].mux\00", [35 x i8] zeroinitializer }, align 32
@ecryptfs_release_messaging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013%s: Error whilst attempting to destroy daemon; rc = [%d]. Dazed and confused, but trying to continue.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ecryptfs_release_messaging\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_release_messaging._entry_ptr = internal global ptr @ecryptfs_release_messaging._entry, section ".printk_index", align 4
@ecryptfs_send_message_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Could not claim a free context element\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ecryptfs_send_message_locked\00", [35 x i8] zeroinitializer }, align 32
@ecryptfs_send_message_locked._entry_ptr = internal global ptr @ecryptfs_send_message_locked._entry, section ".printk_index", align 4
@ecryptfs_send_message_locked._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.8, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s: Error attempting to send message to userspace daemon; rc = [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@ecryptfs_send_message_locked._entry_ptr.26 = internal global ptr @ecryptfs_send_message_locked._entry.24, section ".printk_index", align 4
@ecryptfs_acquire_free_msg_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"\014%s: The eCryptfs free context list is empty.  It may be helpful to specify the ecryptfs_message_buf_len parameter to be greater than the current value of [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ecryptfs_acquire_free_msg_ctx\00", [34 x i8] zeroinitializer }, align 32
@ecryptfs_acquire_free_msg_ctx._entry_ptr = internal global ptr @ecryptfs_acquire_free_msg_ctx._entry, section ".printk_index", align 4
@ecryptfs_msg_ctx_alloc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ecryptfs_msg_ctx_alloc_list, ptr @ecryptfs_msg_ctx_alloc_list }, [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ecryptfs_msg_ctx_lists_mux.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ecryptfs_msg_ctx_lists_mux\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"ecryptfs_daemon_hash_mux\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 20, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"ecryptfs_msg_ctx_free_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 15, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"ecryptfs_daemon_hash\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 19, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"ecryptfs_hash_bits\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 21, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 140, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 142, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 172, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 215, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"ecryptfs_msg_ctx_arr\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 26, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 225, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 230, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"ecryptfs_msg_ctx_lists_mux\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 360, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"ecryptfs_msg_counter\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 25, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 392, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 439, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 277, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 287, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 44, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [28 x i8] c"ecryptfs_msg_ctx_alloc_list\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 16, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [27 x i8] c"../fs/ecryptfs/messaging.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 17, i32 8 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @ecryptfs_acquire_free_msg_ctx._entry, ptr @ecryptfs_acquire_free_msg_ctx._entry_ptr, ptr @ecryptfs_exorcise_daemon._entry, ptr @ecryptfs_exorcise_daemon._entry_ptr, ptr @ecryptfs_init_messaging._entry, ptr @ecryptfs_init_messaging._entry_ptr, ptr @ecryptfs_process_response._entry, ptr @ecryptfs_process_response._entry.11, ptr @ecryptfs_process_response._entry.14, ptr @ecryptfs_process_response._entry_ptr, ptr @ecryptfs_process_response._entry_ptr.13, ptr @ecryptfs_process_response._entry_ptr.16, ptr @ecryptfs_release_messaging._entry, ptr @ecryptfs_release_messaging._entry_ptr, ptr @ecryptfs_send_message_locked._entry, ptr @ecryptfs_send_message_locked._entry.24, ptr @ecryptfs_send_message_locked._entry_ptr, ptr @ecryptfs_send_message_locked._entry_ptr.26, ptr @.str, ptr @ecryptfs_daemon_hash_mux, ptr @.str.1, ptr @ecryptfs_msg_ctx_free_list, ptr @ecryptfs_daemon_hash, ptr @ecryptfs_hash_bits, ptr @ecryptfs_spawn_daemon.__key, ptr @.str.3, ptr @ecryptfs_spawn_daemon.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ecryptfs_msg_ctx_arr, ptr @.str.12, ptr @.str.15, ptr @ecryptfs_msg_ctx_lists_mux, ptr @.str.17, ptr @.str.18, ptr @ecryptfs_msg_counter, ptr @ecryptfs_init_messaging.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @ecryptfs_msg_ctx_alloc_list, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_daemon_hash_mux to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_msg_ctx_free_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_daemon_hash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_hash_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_spawn_daemon.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_spawn_daemon.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_exorcise_daemon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_process_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_msg_ctx_arr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_process_response._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_process_response._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_msg_ctx_lists_mux to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_messaging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_msg_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_messaging.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_release_messaging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_send_message_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_send_message_locked._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_acquire_free_msg_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_msg_ctx_alloc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_msg_ctx_alloc_to_free(ptr noundef %msg_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %6 = load ptr, ptr @ecryptfs_msg_ctx_free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @ecryptfs_msg_ctx_free_list, ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node, ptr %prev1.i.i2.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ecryptfs_msg_ctx_free_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %node, ptr @ecryptfs_msg_ctx_free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %msg = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 5
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %msg, align 4
  %13 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %msg_ctx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_find_daemon_by_euid(ptr nocapture noundef %daemon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call1 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert30) #8
  %8 = load i32, ptr @ecryptfs_hash_bits, align 4
  %mul.i.i = mul i32 %call1, 1640531527
  %sub.i = sub i32 32, %8
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %arrayidx = getelementptr %struct.hlist_head, ptr %0, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 -164
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %11 = ptrtoint ptr %daemon to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %daemon, align 4
  %tobool5.not41 = icmp eq ptr %spec.select, null
  br i1 %tobool5.not41, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %storemerge42 = phi ptr [ %add.ptr25, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %file = getelementptr inbounds %struct.ecryptfs_daemon, ptr %storemerge42, i32 0, i32 2
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_cred, align 8
  %euid6 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cred14 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred14, align 16
  %euid15 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %euid15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %agg.tmp7.sroa.0.0.copyload = load i32, ptr %euid15, align 4
  %21 = ptrtoint ptr %euid6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %euid6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp7.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp7.sroa.0.0.copyload
  br i1 %cmp.i, label %for.body.out_crit_edge, label %for.inc

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc:                                          ; preds = %for.body
  %euid_chain = getelementptr inbounds %struct.ecryptfs_daemon, ptr %storemerge42, i32 0, i32 6
  %22 = ptrtoint ptr %euid_chain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %euid_chain, align 4
  %tobool21.not = icmp eq ptr %23, null
  %add.ptr25 = getelementptr i8, ptr %23, i32 -164
  %spec.select40 = select i1 %tobool21.not, ptr null, ptr %add.ptr25
  %24 = ptrtoint ptr %daemon to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.select40, ptr %daemon, align 4
  %tobool5.not = icmp eq ptr %spec.select40, null
  br i1 %tobool5.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %for.body.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %for.inc.out_crit_edge ], [ 0, %for.body.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_spawn_daemon(ptr nocapture noundef %daemon, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 172) #11
  %1 = ptrtoint ptr %daemon to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %daemon, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %file1 = getelementptr inbounds %struct.ecryptfs_daemon, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %file, ptr %file1, align 8
  %mux = getelementptr inbounds %struct.ecryptfs_daemon, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mux, ptr noundef nonnull @.str.3, ptr noundef nonnull @ecryptfs_spawn_daemon.__key) #8
  %3 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %daemon, align 4
  %msg_ctx_out_queue = getelementptr inbounds %struct.ecryptfs_daemon, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg_ctx_out_queue, ptr %msg_ctx_out_queue, align 4
  %prev.i = getelementptr inbounds %struct.ecryptfs_daemon, ptr %4, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg_ctx_out_queue, ptr %prev.i, align 4
  %7 = load ptr, ptr %daemon, align 4
  %wait = getelementptr inbounds %struct.ecryptfs_daemon, ptr %7, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @ecryptfs_spawn_daemon.__key.4) #8
  %8 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %daemon, align 4
  %num_queued_msg_ctx = getelementptr inbounds %struct.ecryptfs_daemon, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_queued_msg_ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_queued_msg_ctx, align 4
  %11 = load ptr, ptr %daemon, align 4
  %euid_chain = getelementptr inbounds %struct.ecryptfs_daemon, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call9 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #8
  %20 = load i32, ptr @ecryptfs_hash_bits, align 4
  %mul.i.i = mul i32 %call9, 1640531527
  %sub.i = sub i32 32, %20
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %arrayidx = getelementptr %struct.hlist_head, ptr %12, i32 %shr.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %euid_chain to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %euid_chain, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end.hlist_add_head.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %euid_chain, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end.hlist_add_head.exit_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %euid_chain, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.ecryptfs_daemon, ptr %11, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %out

out:                                              ; preds = %hlist_add_head.exit, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %hlist_add_head.exit ], [ -12, %entry.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_exorcise_daemon(ptr noundef %daemon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mux = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %0 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daemon, align 4
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mux) #8
  br label %out

if.end:                                           ; preds = %entry
  %msg_ctx_out_queue = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 4
  %4 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.not33 = icmp eq ptr %5, %msg_ctx_out_queue
  br i1 %cmp.not33, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %num_queued_msg_ctx = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ecryptfs_msg_ctx_alloc_to_free.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in34 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn, %ecryptfs_msg_ctx_alloc_to_free.exit.for.body_crit_edge ]
  %msg_ctx.0 = getelementptr i8, ptr %.pn.in34, i32 -32
  %6 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in34, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %num_queued_msg_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_queued_msg_ctx, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %num_queued_msg_ctx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  %node.i = getelementptr i8, ptr %.pn.in34, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.__list_del_entry.exit.i.i_crit_edge

list_del.exit.__list_del_entry.exit.i.i_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %.pn.in34, i32 -4
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %list_del.exit.__list_del_entry.exit.i.i_crit_edge
  %23 = load ptr, ptr @ecryptfs_msg_ctx_free_list, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef nonnull @ecryptfs_msg_ctx_free_list, ptr noundef %23) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.ecryptfs_msg_ctx_alloc_to_free.exit_crit_edge

__list_del_entry.exit.i.i.ecryptfs_msg_ctx_alloc_to_free.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_msg_ctx_alloc_to_free.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node.i, ptr %prev1.i.i2.i.i, align 4
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %node.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in34, i32 -4
  %26 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ecryptfs_msg_ctx_free_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %node.i, ptr @ecryptfs_msg_ctx_free_list, align 4
  br label %ecryptfs_msg_ctx_alloc_to_free.exit

ecryptfs_msg_ctx_alloc_to_free.exit:              ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.ecryptfs_msg_ctx_alloc_to_free.exit_crit_edge
  %msg.i = getelementptr i8, ptr %.pn.in34, i32 -16
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msg.i, align 4
  tail call void @kfree(ptr noundef %28) #8
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %msg.i, align 4
  %30 = ptrtoint ptr %msg_ctx.0 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %msg_ctx.0, align 4
  %cmp.not = icmp eq ptr %.pn, %msg_ctx_out_queue
  br i1 %cmp.not, label %ecryptfs_msg_ctx_alloc_to_free.exit.for.end_crit_edge, label %ecryptfs_msg_ctx_alloc_to_free.exit.for.body_crit_edge

ecryptfs_msg_ctx_alloc_to_free.exit.for.body_crit_edge: ; preds = %ecryptfs_msg_ctx_alloc_to_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

ecryptfs_msg_ctx_alloc_to_free.exit.for.end_crit_edge: ; preds = %ecryptfs_msg_ctx_alloc_to_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %ecryptfs_msg_ctx_alloc_to_free.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %euid_chain = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 6
  %31 = ptrtoint ptr %euid_chain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %euid_chain, align 4
  %pprev2.i.i = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev2.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %32, ptr %34, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %for.end.hlist_del.exit_crit_edge, label %do.body13.i.i

for.end.hlist_del.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %for.end.hlist_del.exit_crit_edge
  %37 = ptrtoint ptr %euid_chain to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %euid_chain, align 4
  %38 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mux) #8
  tail call void @kfree_sensitive(ptr noundef %daemon) #8
  br label %out

out:                                              ; preds = %hlist_del.exit, %if.then
  %rc.0 = phi i32 [ -16, %if.then ], [ 0, %hlist_del.exit ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_process_response(ptr nocapture noundef readnone %daemon, ptr noundef %msg, i32 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %2 = load i32, ptr @ecryptfs_message_buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp ult i32 %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %2, -1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %sub) #12
  br label %out

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %arrayidx = getelementptr %struct.ecryptfs_msg_ctx, ptr %3, i32 %1
  %mux = getelementptr %struct.ecryptfs_msg_ctx, ptr %3, i32 %1, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp3.not = icmp eq i8 %5, 2
  br i1 %cmp3.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #12
  br label %unlock

if.else:                                          ; preds = %if.end
  %counter = getelementptr %struct.ecryptfs_msg_ctx, ptr %3, i32 %1, i32 3
  %6 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %seq)
  %cmp11.not = icmp eq i32 %7, %seq
  br i1 %cmp11.not, label %if.end21, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef %7, i32 noundef %seq) #12
  br label %unlock

if.end21:                                         ; preds = %if.else
  %data_len = getelementptr inbounds %struct.ecryptfs_message, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len, align 4
  %add = add i32 %9, 8
  %call22 = tail call ptr @kmemdup(ptr noundef %msg, i32 noundef %add, i32 noundef 3264) #8
  %msg23 = getelementptr %struct.ecryptfs_msg_ctx, ptr %3, i32 %1, i32 5
  %10 = ptrtoint ptr %msg23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %msg23, align 4
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %if.end21.unlock_crit_edge, label %if.end26

if.end21.unlock_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx, align 4
  %task = getelementptr %struct.ecryptfs_msg_ctx, ptr %3, i32 %1, i32 6
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 4
  %call28 = tail call i32 @wake_up_process(ptr noundef %13) #8
  br label %unlock

unlock:                                           ; preds = %if.end26, %if.end21.unlock_crit_edge, %if.then13, %if.then5
  %rc.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then13 ], [ 0, %if.end26 ], [ -12, %if.end21.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mux) #8
  br label %out

out:                                              ; preds = %unlock, %if.then
  %rc.1 = phi i32 [ -22, %if.then ], [ %rc.0, %unlock ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_send_message(ptr noundef %data, i32 noundef %data_len, ptr nocapture noundef %msg_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_daemon_hash_mux, i32 noundef 0) #8
  %0 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i.i, align 16
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %euid.i.i, align 4
  %.fca.0.insert30.i.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  %call1.i.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert30.i.i) #8
  %8 = load i32, ptr @ecryptfs_hash_bits, align 4
  %mul.i.i.i.i = mul i32 %call1.i.i, 1640531527
  %sub.i.i.i = sub i32 32, %8
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %0, i32 %shr.i.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -164
  %tobool5.not41.i13.i = icmp eq ptr %add.ptr.i.i, null
  %tobool5.not41.i.i = or i1 %tobool.not.i.i, %tobool5.not41.i13.i
  br i1 %tobool5.not41.i.i, label %entry.ecryptfs_send_message_locked.exit_crit_edge, label %for.body.i.preheader.i

entry.ecryptfs_send_message_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_send_message_locked.exit

for.body.i.preheader.i:                           ; preds = %entry
  %11 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i, align 8
  %cred14.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred14.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred14.i.i, align 16
  %euid15.i.i = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %euid15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp7.sroa.0.0.copyload.i.i = load i32, ptr %euid15.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %daemon.0.i = phi ptr [ %add.ptr25.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.i.preheader.i ]
  %file.i.i = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_cred.i.i, align 8
  %euid6.i.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %euid6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack.i.i = load i32, ptr %euid6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %agg.tmp7.sroa.0.0.copyload.i.i)
  %cmp.i.i.i = icmp eq i32 %.unpack.i.i, %agg.tmp7.sroa.0.0.copyload.i.i
  br i1 %cmp.i.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %euid_chain.i.i = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon.0.i, i32 0, i32 6
  %21 = ptrtoint ptr %euid_chain.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %euid_chain.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %22, null
  %add.ptr25.i.i = getelementptr i8, ptr %22, i32 -164
  %tobool5.not.i14.i = icmp eq ptr %add.ptr25.i.i, null
  %tobool5.not.i.i = or i1 %tobool21.not.i.i, %tobool5.not.i14.i
  br i1 %tobool5.not.i.i, label %for.inc.i.i.ecryptfs_send_message_locked.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.ecryptfs_send_message_locked.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_send_message_locked.exit

if.end.i:                                         ; preds = %for.body.i.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux, i32 noundef 0) #8
  %23 = load volatile ptr, ptr @ecryptfs_msg_ctx_free_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, @ecryptfs_msg_ctx_free_list
  br i1 %cmp.i.not.i.i, label %do.end.i.i, label %if.end.i.for.body.i3.i_crit_edge

if.end.i.for.body.i3.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i3.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %24 = load i32, ptr @ecryptfs_message_buf_len, align 4
  %call1.i1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %24) #12
  br label %if.then3.i

for.condthread-pre-split.i.i:                     ; preds = %for.body.i3.i
  %25 = ptrtoint ptr %p.0.i17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.0.pr.i.i = load ptr, ptr %p.0.i17.i, align 4
  %cmp.i15.not.i.i = icmp eq ptr %p.0.pr.i.i, @ecryptfs_msg_ctx_free_list
  br i1 %cmp.i15.not.i.i, label %for.condthread-pre-split.i.i.if.then3.i_crit_edge, label %for.condthread-pre-split.i.i.for.body.i3.i_crit_edge

for.condthread-pre-split.i.i.for.body.i3.i_crit_edge: ; preds = %for.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i3.i

for.condthread-pre-split.i.i.if.then3.i_crit_edge: ; preds = %for.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

for.body.i3.i:                                    ; preds = %for.condthread-pre-split.i.i.for.body.i3.i_crit_edge, %if.end.i.for.body.i3.i_crit_edge
  %p.0.i17.i = phi ptr [ %p.0.pr.i.i, %for.condthread-pre-split.i.i.for.body.i3.i_crit_edge ], [ %23, %if.end.i.for.body.i3.i_crit_edge ]
  %add.ptr.i2.i = getelementptr i8, ptr %p.0.i17.i, i32 -24
  %26 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i2.i, ptr %msg_ctx, align 4
  %mux.i.i = getelementptr i8, ptr %p.0.i17.i, i32 16
  %call5.i.i = tail call i32 @mutex_trylock(ptr noundef %mux.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %for.condthread-pre-split.i.i, label %if.end5.i

if.then3.i:                                       ; preds = %for.condthread-pre-split.i.i.if.then3.i_crit_edge, %do.end.i.i
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux) #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #12
  br label %ecryptfs_send_message_locked.exit

if.end5.i:                                        ; preds = %for.body.i3.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i4.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i4.i to ptr
  %task.i5.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i5.i, align 8
  %31 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msg_ctx, align 4
  %task9.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %task9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %task9.i.i, align 4
  %34 = load ptr, ptr %msg_ctx, align 4
  %node.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %34, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.i.__list_del_entry.exit.i.i.i_crit_edge

if.end5.i.__list_del_entry.exit.i.i.i_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %34, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i.i, align 4
  %37 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end5.i.__list_del_entry.exit.i.i.i_crit_edge
  %41 = load ptr, ptr @ecryptfs_msg_ctx_alloc_list, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef nonnull @ecryptfs_msg_ctx_alloc_list, ptr noundef %41) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.ecryptfs_msg_ctx_free_to_alloc.exit.i_crit_edge

__list_del_entry.exit.i.i.i.ecryptfs_msg_ctx_free_to_alloc.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_msg_ctx_free_to_alloc.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %43 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %node.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %34, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ecryptfs_msg_ctx_alloc_list, ptr %prev3.i.i.i.i.i, align 4
  store volatile ptr %node.i.i, ptr @ecryptfs_msg_ctx_alloc_list, align 4
  br label %ecryptfs_msg_ctx_free_to_alloc.exit.i

ecryptfs_msg_ctx_free_to_alloc.exit.i:            ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.ecryptfs_msg_ctx_free_to_alloc.exit.i_crit_edge
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %34, align 4
  %46 = load i32, ptr @ecryptfs_msg_counter, align 4
  %inc.i.i = add i32 %46, 1
  store i32 %inc.i.i, ptr @ecryptfs_msg_counter, align 4
  %counter.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %34, i32 0, i32 3
  %47 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc.i.i, ptr %counter.i.i, align 4
  %48 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg_ctx, align 4
  %mux.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %49, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mux.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux) #8
  %50 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %msg_ctx, align 4
  %call6.i = tail call i32 @ecryptfs_send_miscdev(ptr noundef %data, i32 noundef %data_len, ptr noundef %51, i8 noundef zeroext 102, i16 noundef zeroext 0, ptr noundef %daemon.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %ecryptfs_msg_ctx_free_to_alloc.exit.i.ecryptfs_send_message_locked.exit_crit_edge, label %do.end11.i

ecryptfs_msg_ctx_free_to_alloc.exit.i.ecryptfs_send_message_locked.exit_crit_edge: ; preds = %ecryptfs_msg_ctx_free_to_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_send_message_locked.exit

do.end11.i:                                       ; preds = %ecryptfs_msg_ctx_free_to_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %call6.i) #12
  br label %ecryptfs_send_message_locked.exit

ecryptfs_send_message_locked.exit:                ; preds = %do.end11.i, %ecryptfs_msg_ctx_free_to_alloc.exit.i.ecryptfs_send_message_locked.exit_crit_edge, %if.then3.i, %for.inc.i.i.ecryptfs_send_message_locked.exit_crit_edge, %entry.ecryptfs_send_message_locked.exit_crit_edge
  %rc.0.i = phi i32 [ -12, %if.then3.i ], [ %call6.i, %do.end11.i ], [ 0, %ecryptfs_msg_ctx_free_to_alloc.exit.i.ecryptfs_send_message_locked.exit_crit_edge ], [ -107, %entry.ecryptfs_send_message_locked.exit_crit_edge ], [ -107, %for.inc.i.i.ecryptfs_send_message_locked.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_daemon_hash_mux) #8
  ret i32 %rc.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_wait_for_response(ptr noundef %msg_ctx, ptr nocapture noundef writeonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_wait_timeout to i32))
  %0 = load i32, ptr @ecryptfs_message_wait_timeout, align 4
  %mul = mul i32 %0, 100
  %call17 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux, i32 noundef 0) #8
  %mux = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %1 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %msg_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp.not18 = icmp eq i8 %2, 3
  br i1 %cmp.not18, label %entry.if.else_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %if.then2.if.then_crit_edge, %entry.if.then_crit_edge
  %call19 = phi i32 [ %call, %if.then2.if.then_crit_edge ], [ %call17, %entry.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.then
  tail call void @mutex_unlock(ptr noundef %mux) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux) #8
  %call = tail call i32 @schedule_timeout_interruptible(i32 noundef %call19) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux, i32 noundef 0) #8
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %3 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_ctx, align 4
  %cmp.not = icmp eq i8 %4, 3
  br i1 %cmp.not, label %if.then2.if.else_crit_edge, label %if.then2.if.then_crit_edge

if.then2.if.then_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then2.if.else_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %if.then2.if.else_crit_edge, %entry.if.else_crit_edge
  %msg4 = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 5
  %5 = ptrtoint ptr %msg4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg4, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %msg, align 4
  store ptr null, ptr %msg4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then.if.end6_crit_edge
  %rc.0 = phi i32 [ 0, %if.else ], [ -42, %if.then.if.end6_crit_edge ]
  %node.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.__list_del_entry.exit.i.i_crit_edge

if.end6.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end6.__list_del_entry.exit.i.i_crit_edge
  %14 = load ptr, ptr @ecryptfs_msg_ctx_free_list, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef nonnull @ecryptfs_msg_ctx_free_list, ptr noundef %14) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.ecryptfs_msg_ctx_alloc_to_free.exit_crit_edge

__list_del_entry.exit.i.i.ecryptfs_msg_ctx_alloc_to_free.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_msg_ctx_alloc_to_free.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev1.i.i2.i.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %node.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ecryptfs_msg_ctx_free_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %node.i, ptr @ecryptfs_msg_ctx_free_list, align 4
  br label %ecryptfs_msg_ctx_alloc_to_free.exit

ecryptfs_msg_ctx_alloc_to_free.exit:              ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.ecryptfs_msg_ctx_alloc_to_free.exit_crit_edge
  %msg.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 5
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg.i, align 4
  tail call void @kfree(ptr noundef %19) #8
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %msg.i, align 4
  %21 = ptrtoint ptr %msg_ctx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %msg_ctx, align 4
  tail call void @mutex_unlock(ptr noundef %mux) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux) #8
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_init_messaging() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_number_of_users to i32))
  %0 = load i32, ptr @ecryptfs_number_of_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %0)
  %cmp = icmp ugt i32 %0, 32768
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ecryptfs_number_of_users to i32))
  store i32 32768, ptr @ecryptfs_number_of_users, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 32768) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_daemon_hash_mux, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_number_of_users to i32))
  %1 = load i32, ptr @ecryptfs_number_of_users, align 4
  %.numleadingzeros = call i32 @llvm.ctlz.i32(i32 %1, i1 false), !range !88
  %.numactivebits = sub nuw nsw i32 32, %.numleadingzeros
  %iv.final = call i32 @llvm.smax.i32(i32 %.numactivebits, i32 1)
  store i32 %iv.final, ptr @ecryptfs_hash_bits, align 4
  %mul = shl i32 4, %iv.final
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #13
  store ptr %call9.i, ptr @ecryptfs_daemon_hash, align 4
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %2 = load i32, ptr @ecryptfs_hash_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp692.not = icmp eq i32 %2, 31
  br i1 %cmp692.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %3 = load i32, ptr @ecryptfs_hash_bits, align 4
  %shl5 = shl nuw i32 1, %3
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_daemon_hash_mux) #8
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.093 = phi i32 [ %inc7, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.hlist_head, ptr %call9.i, i32 %i.093
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %inc7 = add nuw nsw i32 %i.093, 1
  %cmp6 = icmp slt i32 %inc7, %shl5
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_daemon_hash_mux) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %5 = load i32, ptr @ecryptfs_message_buf_len, align 4
  %mul8 = mul i32 %5, 132
  %call9.i82 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul8, i32 noundef 3264) #13
  store ptr %call9.i82, ptr @ecryptfs_msg_ctx_arr, align 4
  %tobool10.not = icmp eq ptr %call9.i82, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  tail call void @kfree(ptr noundef %6) #8
  br label %out

if.end12:                                         ; preds = %for.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux, i32 noundef 0) #8
  store i32 0, ptr @ecryptfs_msg_counter, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %7 = load i32, ptr @ecryptfs_message_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1494.not = icmp eq i32 %7, 0
  br i1 %cmp1494.not, label %if.end12.for.end35_crit_edge, label %if.end12.for.body15_crit_edge

if.end12.for.body15_crit_edge:                    ; preds = %if.end12
  br label %for.body15

if.end12.for.end35_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.body15:                                       ; preds = %list_add_tail.exit.for.body15_crit_edge, %if.end12.for.body15_crit_edge
  %i.195 = phi i32 [ %inc34, %list_add_tail.exit.for.body15_crit_edge ], [ 0, %if.end12.for.body15_crit_edge ]
  %8 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %node = getelementptr %struct.ecryptfs_msg_ctx, ptr %8, i32 %i.195, i32 7
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %node, align 4
  %prev.i = getelementptr %struct.ecryptfs_msg_ctx, ptr %8, i32 %i.195, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %prev.i, align 4
  %daemon_out_list = getelementptr %struct.ecryptfs_msg_ctx, ptr %8, i32 %i.195, i32 8
  %11 = ptrtoint ptr %daemon_out_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %daemon_out_list, ptr %daemon_out_list, align 4
  %prev.i86 = getelementptr %struct.ecryptfs_msg_ctx, ptr %8, i32 %i.195, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %daemon_out_list, ptr %prev.i86, align 4
  %mux = getelementptr %struct.ecryptfs_msg_ctx, ptr %8, i32 %i.195, i32 9
  tail call void @__mutex_init(ptr noundef %mux, ptr noundef nonnull @.str.19, ptr noundef nonnull @ecryptfs_init_messaging.__key) #8
  %13 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %mux23 = getelementptr %struct.ecryptfs_msg_ctx, ptr %13, i32 %i.195, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mux23, i32 noundef 0) #8
  %14 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %index = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.195, ptr %index, align 4
  %arrayidx25 = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx25, align 4
  %counter = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195, i32 3
  %17 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %counter, align 4
  %task = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195, i32 6
  %18 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %task, align 4
  %msg = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195, i32 5
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %msg, align 4
  %node30 = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195, i32 7
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ecryptfs_msg_ctx_free_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node30, ptr noundef %20, ptr noundef nonnull @ecryptfs_msg_ctx_free_list) #8
  br i1 %call.i.i, label %if.end.i.i87, label %for.body15.list_add_tail.exit_crit_edge

for.body15.list_add_tail.exit_crit_edge:          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i87:                                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %node30, ptr getelementptr inbounds (%struct.list_head, ptr @ecryptfs_msg_ctx_free_list, i32 0, i32 1), align 4
  %21 = ptrtoint ptr %node30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ecryptfs_msg_ctx_free_list, ptr %node30, align 4
  %prev3.i.i = getelementptr %struct.ecryptfs_msg_ctx, ptr %14, i32 %i.195, i32 7, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node30, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i87, %for.body15.list_add_tail.exit_crit_edge
  %24 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %mux32 = getelementptr %struct.ecryptfs_msg_ctx, ptr %24, i32 %i.195, i32 9
  tail call void @mutex_unlock(ptr noundef %mux32) #8
  %inc34 = add nuw i32 %i.195, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %25 = load i32, ptr @ecryptfs_message_buf_len, align 4
  %cmp14 = icmp ult i32 %inc34, %25
  br i1 %cmp14, label %list_add_tail.exit.for.body15_crit_edge, label %list_add_tail.exit.for.end35_crit_edge

list_add_tail.exit.for.end35_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

list_add_tail.exit.for.body15_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.end35:                                        ; preds = %list_add_tail.exit.for.end35_crit_edge, %if.end12.for.end35_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux) #8
  %call36 = tail call i32 @ecryptfs_init_ecryptfs_miscdev() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.end35.out_crit_edge, label %if.then38

for.end35.out_crit_edge:                          ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then38:                                        ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ecryptfs_release_messaging()
  br label %out

out:                                              ; preds = %if.then38, %for.end35.out_crit_edge, %if.then11, %if.then3
  %rc.0 = phi i32 [ %call36, %if.then38 ], [ 0, %for.end35.out_crit_edge ], [ -12, %if.then11 ], [ -12, %if.then3 ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_init_ecryptfs_miscdev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_release_messaging() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %1 = load i32, ptr @ecryptfs_message_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp54.not = icmp eq i32 %1, 0
  br i1 %cmp54.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %2 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %mux = getelementptr %struct.ecryptfs_msg_ctx, ptr %2, i32 %i.055, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %3 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %msg = getelementptr %struct.ecryptfs_msg_ctx, ptr %3, i32 %i.055, i32 5
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  %mux3 = getelementptr %struct.ecryptfs_msg_ctx, ptr %6, i32 %i.055, i32 9
  tail call void @mutex_unlock(ptr noundef %mux3) #8
  %inc = add nuw i32 %i.055, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ecryptfs_message_buf_len to i32))
  %7 = load i32, ptr @ecryptfs_message_buf_len, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %8 = load ptr, ptr @ecryptfs_msg_ctx_arr, align 4
  tail call void @kfree(ptr noundef %8) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_msg_ctx_lists_mux) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %9 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end38_crit_edge, label %if.then5

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then5:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_daemon_hash_mux, i32 noundef 0) #8
  %10 = load i32, ptr @ecryptfs_hash_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp859.not = icmp eq i32 %10, 31
  br i1 %cmp859.not, label %if.then5.for.end37_crit_edge, label %if.then5.for.body9_crit_edge

if.then5.for.body9_crit_edge:                     ; preds = %if.then5
  br label %for.body9

if.then5.for.end37_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.body9:                                        ; preds = %for.end34.for.body9_crit_edge, %if.then5.for.body9_crit_edge
  %i6.060 = phi i32 [ %inc36, %for.end34.for.body9_crit_edge ], [ 0, %if.then5.for.body9_crit_edge ]
  %11 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  %arrayidx10 = getelementptr %struct.hlist_head, ptr %11, i32 %i6.060
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %13, null
  %add.ptr = getelementptr i8, ptr %13, i32 -164
  %tobool14.not5661 = icmp eq ptr %add.ptr, null
  %tobool14.not56 = or i1 %tobool11.not, %tobool14.not5661
  br i1 %tobool14.not56, label %for.body9.for.end34_crit_edge, label %for.body9.land.rhs_crit_edge

for.body9.land.rhs_crit_edge:                     ; preds = %for.body9
  br label %land.rhs

for.body9.for.end34_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

land.rhs:                                         ; preds = %for.inc23.land.rhs_crit_edge, %for.body9.land.rhs_crit_edge
  %daemon.057 = phi ptr [ %add.ptr30, %for.inc23.land.rhs_crit_edge ], [ %add.ptr, %for.body9.land.rhs_crit_edge ]
  %euid_chain = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon.057, i32 0, i32 6
  %14 = ptrtoint ptr %euid_chain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %euid_chain, align 4
  %call = tail call i32 @ecryptfs_exorcise_daemon(ptr noundef nonnull %daemon.057)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %land.rhs.for.inc23_crit_edge, label %do.end

land.rhs.for.inc23_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc23

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call) #12
  br label %for.inc23

for.inc23:                                        ; preds = %do.end, %land.rhs.for.inc23_crit_edge
  %tobool26.not = icmp eq ptr %15, null
  %add.ptr30 = getelementptr i8, ptr %15, i32 -164
  %tobool14.not62 = icmp eq ptr %add.ptr30, null
  %tobool14.not = or i1 %tobool26.not, %tobool14.not62
  br i1 %tobool14.not, label %for.inc23.for.end34_crit_edge, label %for.inc23.land.rhs_crit_edge

for.inc23.land.rhs_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc23.for.end34_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.end34:                                        ; preds = %for.inc23.for.end34_crit_edge, %for.body9.for.end34_crit_edge
  %inc36 = add nuw nsw i32 %i6.060, 1
  %16 = load i32, ptr @ecryptfs_hash_bits, align 4
  %shl = shl nuw i32 1, %16
  %cmp8 = icmp slt i32 %inc36, %shl
  br i1 %cmp8, label %for.end34.for.body9_crit_edge, label %for.end34.for.end37_crit_edge

for.end34.for.end37_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.end34.for.body9_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end37:                                        ; preds = %for.end34.for.end37_crit_edge, %if.then5.for.end37_crit_edge
  %17 = load ptr, ptr @ecryptfs_daemon_hash, align 4
  tail call void @kfree(ptr noundef %17) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_daemon_hash_mux) #8
  br label %if.end38

if.end38:                                         ; preds = %for.end37, %if.end.if.end38_crit_edge
  tail call void @ecryptfs_destroy_ecryptfs_miscdev() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_destroy_ecryptfs_miscdev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_send_miscdev(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/messaging.c", i32 20, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ecryptfs_daemon_hash_mux, !1, !"ecryptfs_daemon_hash_mux", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/ecryptfs/messaging.c", i32 106, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../fs/ecryptfs/messaging.c", i32 109, i32 45}
!8 = !{ptr @ecryptfs_spawn_daemon.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/ecryptfs/messaging.c", i32 140, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ecryptfs_spawn_daemon.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../fs/ecryptfs/messaging.c", i32 142, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/ecryptfs/messaging.c", i32 145, i32 32}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ecryptfs/messaging.c", i32 172, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ecryptfs_exorcise_daemon._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @ecryptfs_exorcise_daemon._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ecryptfs/messaging.c", i32 215, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ecryptfs_process_response._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ecryptfs_process_response._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ecryptfs/messaging.c", i32 225, i32 3}
!29 = !{ptr @ecryptfs_process_response._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ecryptfs_process_response._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ecryptfs/messaging.c", i32 230, i32 3}
!33 = !{ptr @ecryptfs_process_response._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ecryptfs_process_response._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ecryptfs/messaging.c", i32 360, i32 3}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ecryptfs_init_messaging._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ecryptfs_init_messaging._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ecryptfs_init_messaging.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/ecryptfs/messaging.c", i32 392, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ecryptfs/messaging.c", i32 439, i32 6}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ecryptfs_release_messaging._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ecryptfs_release_messaging._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ecryptfs_daemon_hash, !49, !"ecryptfs_daemon_hash", i1 false, i1 false}
!49 = !{!"../fs/ecryptfs/messaging.c", i32 19, i32 27}
!50 = !{ptr @ecryptfs_hash_bits, !51, !"ecryptfs_hash_bits", i1 false, i1 false}
!51 = !{!"../fs/ecryptfs/messaging.c", i32 21, i32 12}
!52 = !{ptr @ecryptfs_msg_counter, !53, !"ecryptfs_msg_counter", i1 false, i1 false}
!53 = !{!"../fs/ecryptfs/messaging.c", i32 25, i32 12}
!54 = !{ptr @ecryptfs_msg_ctx_arr, !55, !"ecryptfs_msg_ctx_arr", i1 false, i1 false}
!55 = !{!"../fs/ecryptfs/messaging.c", i32 26, i32 33}
!56 = !{ptr @ecryptfs_msg_ctx_free_list, !57, !"ecryptfs_msg_ctx_free_list", i1 false, i1 false}
!57 = !{!"../fs/ecryptfs/messaging.c", i32 15, i32 8}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ecryptfs/messaging.c", i32 277, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ecryptfs_send_message_locked._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ecryptfs_send_message_locked._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ecryptfs/messaging.c", i32 287, i32 3}
!65 = !{ptr @ecryptfs_send_message_locked._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ecryptfs_send_message_locked._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ecryptfs/messaging.c", i32 44, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ecryptfs_acquire_free_msg_ctx._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ecryptfs_acquire_free_msg_ctx._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ecryptfs_msg_ctx_alloc_list, !73, !"ecryptfs_msg_ctx_alloc_list", i1 false, i1 false}
!73 = !{!"../fs/ecryptfs/messaging.c", i32 16, i32 8}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ecryptfs/messaging.c", i32 17, i32 8}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ecryptfs_msg_ctx_lists_mux, !75, !"ecryptfs_msg_ctx_lists_mux", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i32 0, i32 33}
