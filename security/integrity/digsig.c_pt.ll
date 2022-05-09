; ModuleID = '/llk/IR_all_yes/security/integrity/digsig.c_pt.bc'
source_filename = "../security/integrity/digsig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.7, ptr }
%union.anon = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.7 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@integrity_load_x509._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013integrity: Unable to open file: %s (%d)\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"integrity_load_x509\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"security/integrity/digsig.c\00", [36 x i8] zeroinitializer }, align 32
@integrity_load_x509._entry_ptr = internal global ptr @integrity_load_x509._entry, section ".printk_index", align 4
@integrity_load_x509._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016integrity: Loading X.509 certificate: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@integrity_load_x509._entry_ptr.5 = internal global ptr @integrity_load_x509._entry.3, section ".printk_index", align 4
@integrity_load_cert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"integrity_load_cert\00", [44 x i8] zeroinitializer }, align 32
@integrity_load_cert._entry_ptr = internal global ptr @integrity_load_cert._entry, section ".printk_index", align 4
@keyring = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@key_type_keyring = external dso_local global %struct.key_type, align 4
@keyring_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@integrity_keyring_from_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013integrity: no %s keyring: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"integrity_keyring_from_id\00", [38 x i8] zeroinitializer }, align 32
@integrity_keyring_from_id._entry_ptr = internal global ptr @integrity_keyring_from_id._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".evm\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".ima\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".platform\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__integrity_init_keyring._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 109, ptr null, ptr null }, align 1
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016integrity: Can't allocate %s keyring (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__integrity_init_keyring\00", [39 x i8] zeroinitializer }, align 32
@__integrity_init_keyring._entry_ptr = internal global ptr @__integrity_init_keyring._entry, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asymmetric\00", [21 x i8] zeroinitializer }, align 32
@integrity_add_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013integrity: Problem loading X.509 certificate %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"integrity_add_key\00", [46 x i8] zeroinitializer }, align 32
@integrity_add_key._entry_ptr = internal global ptr @integrity_add_key._entry, section ".printk_index", align 4
@integrity_add_key._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015integrity: Loaded X.509 cert '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@integrity_add_key._entry_ptr.19 = internal global ptr @integrity_add_key._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 183, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 190, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 203, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"keyring\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 22, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"keyring_name\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 24, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 51, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 29, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 30, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 32, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 108, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 157, i32 59 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 162, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [31 x i8] c"../security/integrity/digsig.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 164, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__integrity_init_keyring._entry, ptr @__integrity_init_keyring._entry_ptr, ptr @integrity_add_key._entry, ptr @integrity_add_key._entry.17, ptr @integrity_add_key._entry_ptr, ptr @integrity_add_key._entry_ptr.19, ptr @integrity_keyring_from_id._entry, ptr @integrity_keyring_from_id._entry_ptr, ptr @integrity_load_cert._entry, ptr @integrity_load_cert._entry_ptr, ptr @integrity_load_x509._entry, ptr @integrity_load_x509._entry.3, ptr @integrity_load_x509._entry_ptr, ptr @integrity_load_x509._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @keyring, ptr @keyring_name, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_load_x509._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_load_x509._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_load_cert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyring_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_keyring_from_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_add_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_add_key._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @integrity_digsig_verify(i32 noundef %id, ptr noundef %sig, i32 noundef %siglen, ptr noundef %digest, i32 noundef %digestlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %siglen)
  %cmp = icmp slt i32 %siglen, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %cmp.i = icmp ugt i32 %id, 2
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr [3 x ptr], ptr @keyring, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then1.i:                                       ; preds = %if.end.i
  %arrayidx2.i = getelementptr [3 x ptr], ptr @keyring_name, i32 0, i32 %id
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_keyring, ptr noundef %3, ptr noundef null, ptr noundef null) #7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.then1.i.if.end15.i_crit_edge

if.then1.i.if.end15.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i.i to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %5) #10
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  br label %integrity_keyring_from_id.exit

if.end15.i:                                       ; preds = %if.then1.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  br label %integrity_keyring_from_id.exit

integrity_keyring_from_id.exit:                   ; preds = %if.end15.i, %if.then7.i
  %retval.0.i = phi ptr [ %8, %if.end15.i ], [ %call.i.i, %if.then7.i ]
  %cmp.i17 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %integrity_keyring_from_id.exit.if.then2_crit_edge, label %if.end4

integrity_keyring_from_id.exit.if.then2_crit_edge: ; preds = %integrity_keyring_from_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %integrity_keyring_from_id.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %retval.0.i20 = phi ptr [ %retval.0.i, %integrity_keyring_from_id.exit.if.then2_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then2_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end4:                                          ; preds = %integrity_keyring_from_id.exit
  %arrayidx = getelementptr i8, ptr %sig, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end4.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %siglen, -1
  %call5 = tail call i32 @digsig_verify(ptr noundef %retval.0.i, ptr noundef %arrayidx, i32 noundef %sub, ptr noundef %digest, i32 noundef %digestlen) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @asymmetric_verify(ptr noundef %retval.0.i, ptr noundef %sig, i32 noundef %siglen, ptr noundef %digest, i32 noundef %digestlen) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then2 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digsig_verify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asymmetric_verify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @integrity_modsig_verify(i32 noundef %id, ptr noundef %modsig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %cmp.i = icmp ugt i32 %id, 2
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr [3 x ptr], ptr @keyring, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then1.i:                                       ; preds = %if.end.i
  %arrayidx2.i = getelementptr [3 x ptr], ptr @keyring_name, i32 0, i32 %id
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_keyring, ptr noundef %3, ptr noundef null, ptr noundef null) #7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.then1.i.if.end15.i_crit_edge

if.then1.i.if.end15.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i.i to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %5) #10
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  br label %integrity_keyring_from_id.exit

if.end15.i:                                       ; preds = %if.then1.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  br label %integrity_keyring_from_id.exit

integrity_keyring_from_id.exit:                   ; preds = %if.end15.i, %if.then7.i
  %retval.0.i = phi ptr [ %8, %if.end15.i ], [ %call.i.i, %if.then7.i ]
  %cmp.i6 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6, label %integrity_keyring_from_id.exit.if.then_crit_edge, label %if.end

integrity_keyring_from_id.exit.if.then_crit_edge: ; preds = %integrity_keyring_from_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %integrity_keyring_from_id.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i9 = phi ptr [ %retval.0.i, %integrity_keyring_from_id.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i9 to i32
  br label %cleanup

if.end:                                           ; preds = %integrity_keyring_from_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @ima_modsig_verify(ptr noundef %retval.0.i, ptr noundef %modsig) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_modsig_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @integrity_init_keyring(i32 noundef %id) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %cmp = icmp eq i32 %id, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @restrict_link_by_builtin_and_secondary_trusted, ptr %call7.i.i, align 8
  br label %out

out:                                              ; preds = %if.end2, %entry.out_crit_edge
  %restriction.0 = phi ptr [ %call7.i.i, %if.end2 ], [ null, %entry.out_crit_edge ]
  %perm.0 = phi i32 [ 521076736, %if.end2 ], [ 520814592, %entry.out_crit_edge ]
  %call3 = tail call fastcc i32 @__integrity_init_keyring(i32 noundef %id, i32 noundef %perm.0, ptr noundef %restriction.0) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restrict_link_by_builtin_and_secondary_trusted(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__integrity_init_keyring(i32 noundef %id, i32 noundef %perm, ptr noundef %restriction) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %arrayidx = getelementptr [3 x ptr], ptr @keyring_name, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call ptr @keyring_alloc(ptr noundef %7, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %5, i32 noundef %perm, i32 noundef 2, ptr noundef %restriction, ptr noundef null) #7
  %arrayidx6 = getelementptr [3 x ptr], ptr @keyring, i32 0, i32 %id
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %arrayidx6, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call5 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %7, i32 noundef %9) #10
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx6, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %11 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %id, label %if.else.if.end25_crit_edge [
    i32 2, label %if.then18
    i32 1, label %if.then21
  ]

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_platform_trusted_keys(ptr noundef %call5) #10
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @load_module_cert(ptr noundef %call5) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then18, %if.else.if.end25_crit_edge, %if.then
  %err.0 = phi i32 [ %9, %if.then ], [ 0, %if.then21 ], [ 0, %if.then18 ], [ 0, %if.else.if.end25_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @integrity_load_x509(i32 noundef %id, ptr noundef %path) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %data, align 4
  %call = call i32 @kernel_read_file_from_path(ptr noundef %path, i64 noundef 0, ptr noundef nonnull %data, i32 noundef 2147483647, ptr noundef null, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %path, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %path) #10
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call7 = call fastcc i32 @integrity_add_key(i32 noundef %id, ptr noundef %2, i32 noundef %call, i32 noundef 520290304) #12
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void @vfree(ptr noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read_file_from_path(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @integrity_add_key(i32 noundef %id, ptr noundef %data, i32 noundef %size, i32 noundef %perm) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @keyring, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  %or.i = or i32 %2, 1
  %3 = inttoptr i32 %or.i to ptr
  %call2 = tail call ptr @key_create_or_update(ptr noundef nonnull %3, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef %data, i32 noundef %size, i32 noundef %perm, i32 noundef 2) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call2 to i32
  br i1 %cmp.i, label %if.then4, label %do.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %4) #10
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %4, -2
  %5 = inttoptr i32 %and.i to ptr
  %description = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 16, i32 0, i32 4
  %6 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %description, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %7) #10
  tail call void @key_put(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %4, %if.then4 ], [ 0, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @integrity_load_cert(i32 noundef %id, ptr noundef %source, ptr noundef %data, i32 noundef %len, i32 noundef %perm) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %source) #10
  %call1 = tail call fastcc i32 @integrity_add_key(i32 noundef %id, ptr noundef nonnull %data, i32 noundef %len, i32 noundef %perm) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @set_platform_trusted_keys(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @load_module_cert(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/digsig.c", i32 183, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @integrity_load_x509._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @integrity_load_x509._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/digsig.c", i32 190, i32 2}
!8 = !{ptr @integrity_load_x509._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @integrity_load_x509._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/digsig.c", i32 203, i32 2}
!12 = !{ptr @integrity_load_cert._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @integrity_load_cert._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/digsig.c", i32 51, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @integrity_keyring_from_id._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @integrity_keyring_from_id._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @keyring, !20, !"keyring", i1 false, i1 false}
!20 = !{!"../security/integrity/digsig.c", i32 22, i32 20}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/integrity/digsig.c", i32 29, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/integrity/digsig.c", i32 30, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/integrity/digsig.c", i32 32, i32 2}
!27 = !{ptr @keyring_name, !28, !"keyring_name", i1 false, i1 false}
!28 = !{!"../security/integrity/digsig.c", i32 24, i32 27}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/integrity/digsig.c", i32 100, i32 28}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/integrity/digsig.c", i32 108, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__integrity_init_keyring._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @__integrity_init_keyring._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/integrity/digsig.c", i32 157, i32 59}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/integrity/digsig.c", i32 162, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @integrity_add_key._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @integrity_add_key._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../security/integrity/digsig.c", i32 164, i32 3}
!45 = !{ptr @integrity_add_key._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @integrity_add_key._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
