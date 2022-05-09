; ModuleID = '/llk/IR_all_yes/fs/cifs/cifs_spnego.c_pt.bc'
source_filename = "../fs/cifs/cifs_spnego.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.129, ptr }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.129 = type { %union.key_payload }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.__kernel_sockaddr_storage = type { %union.anon.149 }
%union.anon.149 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.107, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.107 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cifs_spnego_msg = type { i32, i32, i32, i32, [1 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cifs.spnego\00", [20 x i8] zeroinitializer }, align 32
@cifs_spnego_key_type = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @cifs_spnego_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @cifs_spnego_key_destroy, ptr @user_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ver=0x%x;host=%s;\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ip4=%pI4\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ip6=%pI6\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c";sec=krb5\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c";sec=mskrb5\00", [20 x i8] zeroinitializer }, align 32
@cifs_get_spnego_key._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cifs_get_spnego_key = private unnamed_addr constant [20 x i8] c"cifs_get_spnego_key\00", align 1
@cifs_get_spnego_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.cifs_get_spnego_key, ptr @.str.8, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: unknown or missing server auth type, use krb5\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/cifs/cifs_spnego.c\00", [42 x i8] zeroinitializer }, align 32
@cifs_get_spnego_key._entry_ptr = internal global ptr @cifs_get_spnego_key._entry, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c";uid=0x%x\00", [22 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c";creduid=0x%x\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c";user=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c";pid=0x%x\00", [22 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_get_spnego_key._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_spnego_key.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @__func__.cifs_get_spnego_key, ptr @.str.8, ptr @.str.15, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: key description = %s\0A\00", [32 x i8] zeroinitializer }, align 32
@spnego_cred = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPNEGO reply blob:\00", [45 x i8] zeroinitializer }, align 32
@init_cifs_spnego._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs_spnego.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.18, ptr @.str.8, ptr @.str.19, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_cifs_spnego\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: Registering the %s key type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c".cifs_spnego\00", [19 x i8] zeroinitializer }, align 32
@init_cifs_spnego._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs_spnego.descriptor.22 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.18, ptr @.str.8, ptr @.str.23, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: cifs spnego keyring: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@exit_cifs_spnego._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@exit_cifs_spnego.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.8, ptr @.str.25, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exit_cifs_spnego\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: Unregistered %s key type\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 54, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"cifs_spnego_key_type\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 53, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 119, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 125, i32 15 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 127, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 135, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 137, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 139, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 144, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 148, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 153, i32 15 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 157, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 159, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"spnego_cred\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 21, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 161, i32 63 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 167, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 184, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 196, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 219, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.118 = private constant [25 x i8] c"../fs/cifs/cifs_spnego.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 235, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 286, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @cifs_get_spnego_key._entry, ptr @cifs_get_spnego_key._entry_ptr, ptr @.str, ptr @cifs_spnego_key_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cifs_get_spnego_key._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cifs_get_spnego_key._rs.13, ptr @.str.14, ptr @.str.15, ptr @spnego_cred, ptr @.str.16, ptr @.str.17, ptr @init_cifs_spnego._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_cifs_spnego._rs.21, ptr @.str.23, ptr @exit_cifs_spnego._rs, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_spnego_key_type to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_spnego_key._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_spnego_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_spnego_key._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spnego_cred to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs_spnego._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs_spnego._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_cifs_spnego._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_spnego_key_instantiate(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %3, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %4, align 4
  br label %error

error:                                            ; preds = %if.end, %entry.error_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -12, %entry.error_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_spnego_key_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_get_spnego_key(ptr nocapture noundef readonly %sesInfo, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10
  %hostname2 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 8
  %0 = ptrtoint ptr %hostname2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostname2, align 8
  %call = tail call i32 @strlen(ptr noundef %1) #12
  %add12 = add i32 %call, 129
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %sesInfo, i32 0, i32 17
  %2 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_name, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %if.then

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @strlen(ptr noundef nonnull %3) #12
  %add15 = add i32 %call, 135
  %add16 = add i32 %add15, %call14
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then, %entry.if.end8.i.i_crit_edge
  %desc_len.0 = phi i32 [ %add16, %if.then ], [ %add12, %entry.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %desc_len.0, i32 noundef 3520) #13
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %if.end8.i.i.out_crit_edge, label %if.end20

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end20:                                         ; preds = %if.end8.i.i
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef %1)
  %call23 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i) #12
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %call23
  %4 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dstaddr, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end20.out_crit_edge [
    i16 2, label %if.then27
    i16 10, label %if.then34
  ]

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sin_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10, i32 0, i32 1
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.2, ptr noundef %sin_addr)
  br label %if.end38

if.then34:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10, i32 0, i32 1, i32 4
  %call35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, ptr noundef %sin6_addr)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then27
  %call39 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i) #12
  %add.ptr40 = getelementptr i8, ptr %call9.i.i, i32 %call39
  %sec_kerberos = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 54
  %7 = ptrtoint ptr %sec_kerberos to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sec_kerberos, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool41.not = icmp eq i8 %8, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memcpy(ptr %add.ptr40, ptr @.str.4, i32 10)
  br label %if.end62

if.else44:                                        ; preds = %if.end38
  %sec_mskerberos = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 55
  %10 = ptrtoint ptr %sec_mskerberos to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sec_mskerberos, align 8, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool45.not = icmp eq i8 %11, 0
  br i1 %tobool45.not, label %do.body49, label %if.then46

if.then46:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %add.ptr40, ptr @.str.5, i32 12)
  br label %if.end62

do.body49:                                        ; preds = %if.else44
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_spnego_key._rs, ptr noundef nonnull @__func__.cifs_get_spnego_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body49.do.end59_crit_edge, label %do.end

do.body49.do.end59_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

do.end:                                           ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %do.end59

do.end59:                                         ; preds = %do.end, %do.body49.do.end59_crit_edge
  %13 = call ptr @memcpy(ptr %add.ptr40, ptr @.str.4, i32 10)
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.then46, %if.then42
  %call63 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i) #12
  %add.ptr64 = getelementptr i8, ptr %call9.i.i, i32 %call63
  %linux_uid = getelementptr inbounds %struct.cifs_ses, ptr %sesInfo, i32 0, i32 13
  %14 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %linux_uid, align 8
  %15 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call65 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %15) #9
  %call66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr64, ptr noundef nonnull @.str.9, i32 noundef %call65)
  %call67 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i) #12
  %add.ptr68 = getelementptr i8, ptr %call9.i.i, i32 %call67
  %cred_uid = getelementptr inbounds %struct.cifs_ses, ptr %sesInfo, i32 0, i32 14
  %16 = ptrtoint ptr %cred_uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack162 = load i32, ptr %cred_uid, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack162, 0
  %call70 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %17) #9
  %call71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr68, ptr noundef nonnull @.str.10, i32 noundef %call70)
  %18 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_name, align 8
  %tobool73.not = icmp eq ptr %19, null
  br i1 %tobool73.not, label %if.end62.if.end79_crit_edge, label %if.then74

if.end62.if.end79_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then74:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i) #12
  %add.ptr76 = getelementptr i8, ptr %call9.i.i, i32 %call75
  %call78 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr76, ptr noundef nonnull @.str.11, ptr noundef nonnull %19)
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end62.if.end79_crit_edge
  %call80 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i) #12
  %add.ptr81 = getelementptr i8, ptr %call9.i.i, i32 %call80
  %20 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr81, ptr noundef nonnull @.str.12, i32 noundef %25)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %if.end79.do.end105_crit_edge, label %do.body88

if.end79.do.end105_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end105

do.body88:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_spnego_key.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_spnego_key, %land.lhs.true)) #9
          to label %do.end105 [label %land.lhs.true], !srcloc !70

land.lhs.true:                                    ; preds = %do.body88
  %call94 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_spnego_key._rs.13, ptr noundef nonnull @__func__.cifs_get_spnego_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true.do.end105_crit_edge, label %if.then96

land.lhs.true.do.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end105

if.then96:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_spnego_key.descriptor, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, ptr noundef nonnull %call9.i.i) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then96, %land.lhs.true.do.end105_crit_edge, %do.body88, %if.end79.do.end105_crit_edge
  %27 = load ptr, ptr @spnego_cred, align 4
  %call106 = tail call ptr @override_creds(ptr noundef %27) #9
  %call.i = tail call ptr @request_key_tag(ptr noundef nonnull @cifs_spnego_key_type, ptr noundef nonnull %call9.i.i, ptr noundef null, ptr noundef nonnull @.str.16) #9
  tail call void @revert_creds(ptr noundef %call106) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %28 = load i32, ptr @cifsFYI, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool108.not = icmp eq i32 %28, 0
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %tobool108.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %do.end105.out_crit_edge, label %if.then111

do.end105.out_crit_edge:                          ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then111:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  %29 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 17
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %data = getelementptr inbounds %struct.cifs_spnego_msg, ptr %31, i32 0, i32 4
  %secblob_len = getelementptr inbounds %struct.cifs_spnego_msg, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %secblob_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %secblob_len, align 4
  %sesskey_len = getelementptr inbounds %struct.cifs_spnego_msg, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %sesskey_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sesskey_len, align 4
  %add112 = add i32 %35, %33
  %36 = tail call i32 @llvm.umin.i32(i32 %add112, i32 1024)
  tail call void @cifs_dump_mem(ptr noundef nonnull @.str.17, ptr noundef %data, i32 noundef %36) #9
  br label %out

out:                                              ; preds = %if.then111, %do.end105.out_crit_edge, %if.end20.out_crit_edge, %if.end8.i.i.out_crit_edge
  %retval.1.i.i166 = phi ptr [ null, %if.end8.i.i.out_crit_edge ], [ %call9.i.i, %if.then111 ], [ %call9.i.i, %do.end105.out_crit_edge ], [ %call9.i.i, %if.end20.out_crit_edge ]
  %spnego_key.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end8.i.i.out_crit_edge ], [ %call.i, %if.then111 ], [ %call.i, %do.end105.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end20.out_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i.i166) #9
  ret ptr %spnego_key.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_dump_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_cifs_spnego() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs_spnego.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs_spnego, %land.lhs.true)) #9
          to label %do.end13 [label %land.lhs.true], !srcloc !70

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs_spnego._rs, ptr noundef nonnull @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load ptr, ptr @cifs_spnego_key_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs_spnego.descriptor, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, ptr noundef %1) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %call14 = tail call ptr @prepare_kernel_cred(ptr noundef null) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end13.cleanup_crit_edge, label %if.end17

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  %call21 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.20, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %call14, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call21 to i32
  br label %do.body.i

if.end25:                                         ; preds = %if.end17
  %call26 = tail call i32 @register_key_type(ptr noundef nonnull @cifs_spnego_key_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %failed_put_key, label %if.end28

if.end28:                                         ; preds = %if.end25
  %flags = getelementptr inbounds %struct.key, ptr %call21, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #9
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 21
  %3 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call21, ptr %thread_keyring, align 4
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 18
  %4 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %jit_keyring, align 4
  store ptr %call14, ptr @spnego_cred, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and31 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %do.body34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs_spnego.descriptor.22, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs_spnego, %land.lhs.true46)) #9
          to label %cleanup [label %land.lhs.true46], !srcloc !70

land.lhs.true46:                                  ; preds = %do.body34
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs_spnego._rs.21, ptr noundef nonnull @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.cleanup_crit_edge, label %if.then49

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49:                                        ; preds = %land.lhs.true46
  %tobool.not.i = icmp eq ptr %call21, null
  br i1 %tobool.not.i, label %if.then49.key_serial.exit_crit_edge, label %cond.true.i

if.then49.key_serial.exit_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_serial.exit

cond.true.i:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %serial.i = getelementptr inbounds %struct.key, ptr %call21, i32 0, i32 1
  %6 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %if.then49.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.then49.key_serial.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs_spnego.descriptor.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8, i32 noundef %cond.i) #9
  br label %cleanup

failed_put_key:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @key_put(ptr noundef %call21) #9
  br label %do.body.i

do.body.i:                                        ; preds = %failed_put_key, %if.then23
  %ret.0 = phi i32 [ %2, %if.then23 ], [ %call26, %failed_put_key ]
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call14) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !71

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %call14, ptr noundef nonnull @.str.26, i32 noundef 286) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call14, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr nonnull %call14, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call14, ptr nonnull %call14, i32 1, ptr nonnull elementtype(i32) %call14) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge, %key_serial.exit, %land.lhs.true46.cleanup_crit_edge, %do.body34, %if.end28.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end13.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %land.lhs.true46.cleanup_crit_edge ], [ 0, %key_serial.exit ], [ 0, %do.body34 ], [ %ret.0, %__validate_creds.exit.i.cleanup_crit_edge ], [ %ret.0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_cifs_spnego() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @spnego_cred, align 4
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %thread_keyring, align 4
  tail call void @key_revoke(ptr noundef %2) #9
  tail call void @unregister_key_type(ptr noundef nonnull @cifs_spnego_key_type) #9
  %3 = load ptr, ptr @spnego_cred, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !71

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.26, i32 noundef 286) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %3) #9
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %put_cred.exit.do.end11_crit_edge, label %do.body2

put_cred.exit.do.end11_crit_edge:                 ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.body2:                                         ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_cifs_spnego.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_cifs_spnego, %land.lhs.true)) #9
          to label %do.end11 [label %land.lhs.true], !srcloc !70

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @exit_cifs_spnego._rs, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %if.then8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @cifs_spnego_key_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_cifs_spnego.descriptor, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, ptr noundef %6) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true.do.end11_crit_edge, %do.body2, %put_cred.exit.do.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifs_spnego.c", i32 54, i32 11}
!2 = !{ptr @cifs_spnego_key_type, !3, !"cifs_spnego_key_type", i1 false, i1 false}
!3 = !{!"../fs/cifs/cifs_spnego.c", i32 53, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/cifs/cifs_spnego.c", i32 119, i32 14}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cifs/cifs_spnego.c", i32 125, i32 15}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/cifs/cifs_spnego.c", i32 127, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cifs/cifs_spnego.c", i32 135, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/cifs/cifs_spnego.c", i32 137, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cifs/cifs_spnego.c", i32 139, i32 3}
!16 = !{ptr @cifs_get_spnego_key._rs, !15, !"_rs", i1 false, i1 false}
!17 = !{ptr @__func__.cifs_get_spnego_key, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cifs_get_spnego_key._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cifs_get_spnego_key._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/cifs/cifs_spnego.c", i32 144, i32 14}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/cifs/cifs_spnego.c", i32 148, i32 14}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/cifs/cifs_spnego.c", i32 153, i32 15}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/cifs/cifs_spnego.c", i32 157, i32 14}
!30 = !{ptr @cifs_get_spnego_key._rs.13, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../fs/cifs/cifs_spnego.c", i32 159, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cifs_get_spnego_key.descriptor, !31, !"descriptor", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/cifs/cifs_spnego.c", i32 161, i32 63}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/cifs/cifs_spnego.c", i32 167, i32 17}
!39 = !{ptr @init_cifs_spnego._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/cifs/cifs_spnego.c", i32 184, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @init_cifs_spnego.descriptor, !40, !"descriptor", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cifs/cifs_spnego.c", i32 196, i32 26}
!46 = !{ptr @init_cifs_spnego._rs.21, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../fs/cifs/cifs_spnego.c", i32 219, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @init_cifs_spnego.descriptor.22, !47, !"descriptor", i1 false, i1 false}
!50 = !{ptr @exit_cifs_spnego._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/cifs_spnego.c", i32 235, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @exit_cifs_spnego.descriptor, !51, !"descriptor", i1 false, i1 false}
!55 = !{ptr @spnego_cred, !56, !"spnego_cred", i1 false, i1 false}
!56 = !{!"../fs/cifs/cifs_spnego.c", i32 21, i32 27}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/cred.h", i32 286, i32 3}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148321177, i64 2148321182, i64 2148321195, i64 2148321239, i64 2148321273, i64 2148321294}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2148672826}
!73 = !{i64 2148587535, i64 2148587567, i64 2148587596, i64 2148587630, i64 2148587661, i64 2148587684}
!74 = !{i64 2148673055}
