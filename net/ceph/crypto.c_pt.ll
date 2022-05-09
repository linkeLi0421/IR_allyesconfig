; ModuleID = '/llk/IR_all_yes/net/ceph/crypto.c_pt.bc'
source_filename = "../net/ceph/crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceph_crypto_key = type { i32, %struct.ceph_timespec, i32, ptr, ptr }
%struct.ceph_timespec = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12 }
%struct.llist_node = type { ptr }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.21 }
%union.anon.21 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.19, %union.anon.45, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.45 = type { %struct.atomic_t }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.3, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.6, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.7, %union.anon.10, ptr }
%union.anon.3 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.6 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.7 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.8, ptr, ptr, ptr }
%union.anon.8 = type { i32 }
%union.anon.10 = type { %union.key_payload }

@ceph_crypto_key_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_crypto_key_decode\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ceph/crypto.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : failed to decode crypto key\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : failed to decode crypto key\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ceph_crypto_key_unarmor\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : crypto_key_unarmor %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"libceph: %.*s %12.12s:%-4d : crypto_key_unarmor %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : crypto_key_unarmor key %p type %d len %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"libceph: %.*s %12.12s:%-4d : crypto_key_unarmor key %p type %d len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@key_type_ceph = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.11, i32 0, i32 0, ptr null, ptr @ceph_key_preparse, ptr @ceph_key_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @ceph_key_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ceph_aes_crypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013libceph: %s %scrypt failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_aes_crypt\00", [17 x i8] zeroinitializer }, align 32
@ceph_aes_crypt._entry_ptr = internal global ptr @ceph_aes_crypt._entry, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"de\00", [29 x i8] zeroinitializer }, align 32
@ceph_aes_crypt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013libceph: %s got bad padding %d on in_len %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_aes_crypt._entry_ptr.19 = internal global ptr @ceph_aes_crypt._entry.17, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cephsageyudagreg\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 104, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 115, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 130, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 346, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"key_type_ceph\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 345, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 51, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 254, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 271, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [21 x i8] c"../net/ceph/crypto.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 147, i32 33 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ceph_aes_crypt._entry, ptr @ceph_aes_crypt._entry.17, ptr @ceph_aes_crypt._entry_ptr, ptr @ceph_aes_crypt._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @key_type_ceph, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_ceph to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_aes_crypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_aes_crypt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_crypto_key_clone(ptr noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 24)
  %key = getelementptr inbounds %struct.ceph_crypto_key, ptr %src, i32 0, i32 3
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 4
  %call = tail call fastcc i32 @set_secret(ptr noundef %dst, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_secret(ptr noundef %key, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 3
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %key1, align 4
  %tfm = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 4
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tfm, align 4
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.epilog
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %len = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %call = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %6, i32 noundef 3072) #11
  %7 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %key1, align 4
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.fail_crit_edge, label %if.end7

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end7:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !38) #11
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %13, 524288
  %or.i = or i32 %13, 524288
  store i32 %or.i, ptr %flags1.i, align 4
  %call9 = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) #11
  %14 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %tfm, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !38) #11
  %and.i.i41 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i41 to ptr
  %task.i42 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i42, align 8
  %flags1.i43 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags1.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags1.i43, align 4
  %and.i44 = and i32 %20, -524289
  %or.i45 = or i32 %and.i44, %and.i
  store i32 %or.i45, ptr %flags1.i43, align 4
  %21 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfm, align 4
  %cmp.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tfm, align 4
  br label %fail

if.end17:                                         ; preds = %if.end7
  %25 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key1, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %22, ptr noundef %26, i32 noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end17.cleanup_crit_edge, label %if.end17.fail_crit_edge

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail:                                             ; preds = %if.end17.fail_crit_edge, %if.then13, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ %23, %if.then13 ], [ %call.i, %if.end17.fail_crit_edge ], [ -12, %if.end.fail_crit_edge ]
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %fail.cleanup_crit_edge, label %if.then.i

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %fail
  %29 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %key1, align 4
  tail call void @kfree_sensitive(ptr noundef %30) #11
  %31 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %key1, align 4
  %32 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tfm, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then4.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %33, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %33, ptr noundef %base.i.i.i.i) #11
  %34 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %tfm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.then.i.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %sw.default ], [ %3, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %ret.0, %fail.cleanup_crit_edge ], [ %ret.0, %if.then.i.cleanup_crit_edge ], [ %ret.0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ceph_crypto_key_encode(ptr nocapture noundef readonly %key, ptr nocapture noundef %p, ptr noundef readnone %end) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 12
  %len = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %3
  %cmp = icmp ugt ptr %add.ptr3, %end
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv) #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i, ptr %p, align 4
  %created = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %created to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %created, align 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %add.ptr.i, align 1
  %13 = load ptr, ptr %p, align 4
  %add.ptr.i17 = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i17, ptr %p, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %conv5 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv5) #11
  %17 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %add.ptr.i17, align 1
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p, align 4
  %add.ptr.i18 = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr.i18, ptr %p, align 4
  %key6 = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 3
  %20 = ptrtoint ptr %key6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key6, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = call ptr @memcpy(ptr %add.ptr.i18, ptr %21, i32 %23)
  %25 = load ptr, ptr %p, align 4
  %add.ptr.i19 = getelementptr i8, ptr %25, i32 %23
  store ptr %add.ptr.i19, ptr %p, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_crypto_key_decode(ptr noundef %key, ptr nocapture noundef %p, ptr noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %cmp.not.i = icmp ule ptr %1, %end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 11
  %2 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %2, label %do.end, label %entry.do.body21_crit_edge, !prof !48

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %p, align 4
  %conv = zext i16 %5 to i32
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %key, align 4
  %created = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 1
  %8 = load ptr, ptr %p, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %8, align 1
  %11 = ptrtoint ptr %created to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %created, align 1
  %12 = load ptr, ptr %p, align 4
  %add.ptr.i49 = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i49, ptr %p, align 4
  %13 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr.i49, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #11
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 10
  %16 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i50, ptr %p, align 4
  %conv4 = zext i16 %15 to i32
  %len = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv4, ptr %len, align 4
  %18 = load ptr, ptr %p, align 4
  %cmp.not.i51 = icmp ule ptr %18, %end
  %sub.ptr.rhs.cast.i53 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i54 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i53
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i54, i32 %conv4)
  %cmp1.i55 = icmp uge i32 %sub.ptr.sub.i54, %conv4
  %19 = select i1 %cmp.not.i51, i1 %cmp1.i55, i1 false
  br i1 %19, label %do.end17, label %do.end.do.body21_crit_edge, !prof !48

do.end.do.body21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call fastcc i32 @set_secret(ptr noundef %key, ptr noundef %18)
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = call ptr @memset(ptr %21, i32 0, i32 %23)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %21) #11, !srcloc !49
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %26
  store ptr %add.ptr, ptr %p, align 4
  br label %cleanup

do.body21:                                        ; preds = %do.end.do.body21_crit_edge, %entry.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_crypto_key_decode, %if.then30)) #11
          to label %cleanup [label %if.then30], !srcloc !50

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 104) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body21, %do.end17
  %retval.0 = phi i32 [ %call18, %do.end17 ], [ -22, %if.then30 ], [ -22, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_crypto_key_unarmor(ptr noundef %key, ptr noundef %inkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %inkey) #14
  %mul = mul i32 %call, 3
  %div = sdiv i32 %mul, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_crypto_key_unarmor, %if.then)) #11
          to label %if.end8.i [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 115, ptr noundef %inkey) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then, %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div, i32 noundef 3136) #15
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end8.i.cleanup_crit_edge, label %if.end8

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i
  %add.ptr = getelementptr i8, ptr %inkey, i32 %call
  %call9 = tail call i32 @ceph_unarmor(ptr noundef nonnull %call9.i, ptr noundef %inkey, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %add.ptr12 = getelementptr i8, ptr %call9.i, i32 %call9
  %cmp.not.i.i = icmp ule ptr %call9.i, %add.ptr12
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call9)
  %cmp1.i.i = icmp ugt i32 %call9, 11
  %0 = and i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %0, label %do.end.i, label %if.end11.do.body21.i_crit_edge, !prof !48

if.end11.do.body21.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21.i

do.end.i:                                         ; preds = %if.end11
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %call9.i, align 128
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #11
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 2
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %key, align 4
  %created.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %add.ptr.i.i, align 2
  %7 = ptrtoint ptr %created.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %created.i, align 1
  %add.ptr.i49.i = getelementptr i8, ptr %call9.i, i32 10
  %8 = ptrtoint ptr %add.ptr.i49.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i49.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #11
  %add.ptr.i50.i = getelementptr i8, ptr %call9.i, i32 12
  %conv4.i = zext i16 %10 to i32
  %len.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4.i, ptr %len.i, align 4
  %cmp.not.i51.i = icmp ule ptr %add.ptr.i50.i, %add.ptr12
  %gepdiff = add nsw i32 %call9, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %gepdiff, i32 %conv4.i)
  %cmp1.i55.i = icmp uge i32 %gepdiff, %conv4.i
  %12 = select i1 %cmp.not.i51.i, i1 %cmp1.i55.i, i1 false
  br i1 %12, label %do.end17.i, label %do.end.i.do.body21.i_crit_edge, !prof !48

do.end.i.do.body21.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21.i

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call fastcc i32 @set_secret(ptr noundef %key, ptr noundef %add.ptr.i50.i) #11
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %15 = call ptr @memset(ptr %add.ptr.i50.i, i32 0, i32 %14)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr.i50.i) #11, !srcloc !49
  br label %ceph_crypto_key_decode.exit

do.body21.i:                                      ; preds = %do.end.i.do.body21.i_crit_edge, %if.end11.do.body21.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_crypto_key_unarmor, %ceph_crypto_key_decode.exit.thread)) #11
          to label %ceph_crypto_key_decode.exit [label %ceph_crypto_key_decode.exit.thread], !srcloc !50

ceph_crypto_key_decode.exit.thread:               ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 104) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

ceph_crypto_key_decode.exit:                      ; preds = %do.body21.i, %do.end17.i
  %retval.0.i56 = phi i32 [ %call18.i, %do.end17.i ], [ -22, %do.body21.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i56)
  %tobool14.not = icmp eq i32 %retval.0.i56, 0
  br i1 %tobool14.not, label %do.body17, label %ceph_crypto_key_decode.exit.cleanup_crit_edge

ceph_crypto_key_decode.exit.cleanup_crit_edge:    ; preds = %ceph_crypto_key_decode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body17:                                        ; preds = %ceph_crypto_key_decode.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_crypto_key_unarmor, %if.then29)) #11
          to label %cleanup [label %if.then29], !srcloc !50

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key, align 4
  %len = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 131, ptr noundef %key, i32 noundef %17, i32 noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %ceph_crypto_key_decode.exit.cleanup_crit_edge, %ceph_crypto_key_decode.exit.thread, %if.then10, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then10 ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %retval.0.i56, %ceph_crypto_key_decode.exit.cleanup_crit_edge ], [ 0, %if.then29 ], [ -22, %ceph_crypto_key_decode.exit.thread ], [ 0, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_unarmor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_crypto_key_destroy(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %key1 = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 3
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #11
  %2 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %key1, align 4
  %tfm = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 4
  %3 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %base.i.i.i) #11
  %5 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tfm, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_crypt(ptr nocapture noundef readonly %key, i1 noundef zeroext %encrypt, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %in_len, ptr nocapture noundef writeonly %pout_len) local_unnamed_addr #0 align 64 {
entry:
  %__req_desc.i = alloca [512 x i8], align 128
  %sgt.i = alloca %struct.sg_table, align 4
  %prealloc_sg.i = alloca %struct.scatterlist, align 4
  %iv.i = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %pout_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %in_len, ptr %pout_len, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc.i) #11
  %4 = call ptr @memset(ptr %__req_desc.i, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgt.i) #11
  %5 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgt.i, align 4, !annotation !51
  %6 = getelementptr inbounds %struct.sg_table, ptr %sgt.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !51
  %8 = getelementptr inbounds %struct.sg_table, ptr %sgt.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %prealloc_sg.i) #11
  %10 = call ptr @memset(ptr %prealloc_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #11
  %and.i = and i32 %in_len, 15
  %sub.i = sub nuw nsw i32 16, %and.i
  %add.i = select i1 %encrypt, i32 %sub.i, i32 0
  %cond.i = add i32 %add.i, %in_len
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %buf_len)
  %cmp.i = icmp sgt i32 %cond.i, %buf_len
  br i1 %cmp.i, label %do.end.i, label %sw.bb1.if.end.i_crit_edge, !prof !52

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb1.if.end.i_crit_edge
  br i1 %encrypt, label %if.then21.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %in_len
  %11 = trunc i32 %sub.i to i8
  %12 = zext i8 %11 to i32
  %13 = call ptr @memset(ptr %add.ptr.i, i32 %12, i32 %sub.i)
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end.i.if.end22.i_crit_edge
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #11
  %14 = ptrtoint ptr %buf to i32
  %and.i.i = and i32 %14, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i.i = icmp eq i32 %cond.i, 0
  br i1 %cmp.i.i, label %if.end22.i.ceph_aes_crypt.exit_crit_edge, label %if.end.i.i

if.end22.i.ceph_aes_crypt.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_aes_crypt.exit

if.end.i.i:                                       ; preds = %if.end22.i
  %add.i.i = add nuw nsw i32 %and.i.i, 4095
  %add1.i.i = add i32 %add.i.i, %cond.i
  %and2.i.i = and i32 %add1.i.i, -4096
  %shr.i.i = lshr i32 %add1.i.i, 12
  %spec.select.i.i = select i1 %call.i.i, i32 %shr.i.i, i32 1
  %spec.select118.i.i = select i1 %call.i.i, i32 4096, i32 %and2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp5.i.i = icmp ugt i32 %spec.select.i.i, 1
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call7.i.i = call i32 @sg_alloc_table(ptr noundef nonnull %sgt.i, i32 noundef %spec.select.i.i, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end33.i.i, label %if.then6.i.i.ceph_aes_crypt.exit_crit_edge

if.then6.i.i.ceph_aes_crypt.exit_crit_edge:       ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_aes_crypt.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp11.not.i.i = icmp eq i32 %spec.select.i.i, 1
  br i1 %cmp11.not.i.i, label %if.else.i.i.if.end33.i.thread.i_crit_edge, label %do.end.i.i, !prof !48

if.else.i.i.if.end33.i.thread.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.thread.i

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 187, i32 noundef 9, ptr noundef null) #11
  br label %if.end33.i.thread.i

if.end33.i.thread.i:                              ; preds = %do.end.i.i, %if.else.i.i.if.end33.i.thread.i_crit_edge
  call void @sg_init_table(ptr noundef nonnull %prealloc_sg.i, i32 noundef 1) #11
  %15 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %prealloc_sg.i, ptr %sgt.i, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %8, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %6, align 4
  br label %for.body.preheader.i.i

if.end33.i.i:                                     ; preds = %if.then6.i.i
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %8, align 4
  %19 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sgt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp36121.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp36121.not.i.i, label %if.end33.i.i.do.end68.i.i_crit_edge, label %if.end33.i.i.for.body.preheader.i.i_crit_edge

if.end33.i.i.for.body.preheader.i.i_crit_edge:    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader.i.i

if.end33.i.i.do.end68.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68.i.i

for.body.preheader.i.i:                           ; preds = %if.end33.i.i.for.body.preheader.i.i_crit_edge, %if.end33.i.thread.i
  %21 = phi ptr [ %prealloc_sg.i, %if.end33.i.thread.i ], [ %20, %if.end33.i.i.for.body.preheader.i.i_crit_edge ]
  %sub.peel.i.i = sub i32 %spec.select118.i.i, %and.i.i
  %22 = call i32 @llvm.umin.i32(i32 %sub.peel.i.i, i32 %cond.i) #11
  br i1 %call.i.i, label %if.then40.peel.i.i, label %if.else42.peel.i.i

if.else42.peel.i.i:                               ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %sub43.peel.i.i = add i32 %14, 1073741824
  %shr44.peel.i.i = lshr i32 %sub43.peel.i.i, 12
  %add.ptr.peel.i.i = getelementptr %struct.page, ptr %23, i32 %shr44.peel.i.i
  br label %if.end47.peel.i.i

if.then40.peel.i.i:                               ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call41.peel.i.i = call ptr @vmalloc_to_page(ptr noundef %buf) #11
  br label %if.end47.peel.i.i

if.end47.peel.i.i:                                ; preds = %if.then40.peel.i.i, %if.else42.peel.i.i
  %page.0.peel.i.i = phi ptr [ %call41.peel.i.i, %if.then40.peel.i.i ], [ %add.ptr.peel.i.i, %if.else42.peel.i.i ]
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %26 = ptrtoint ptr %page.0.peel.i.i to i32
  %and2.i.i.peel.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.peel.i.i)
  %tobool.not.i.i.peel.i.i = icmp eq i32 %and2.i.i.peel.i.i, 0
  br i1 %tobool.not.i.i.peel.i.i, label %do.body11.i.i.peel.i.i, label %if.end47.peel.i.i.do.body5.i.i.i.i_crit_edge, !prof !48

if.end47.peel.i.i.do.body5.i.i.i.i_crit_edge:     ; preds = %if.end47.peel.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i.i.i.i

do.body11.i.i.peel.i.i:                           ; preds = %if.end47.peel.i.i
  %and.i.i.i.peel.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.peel.i.i)
  %tobool.i.not.i.i.peel.i.i = icmp eq i32 %and.i.i.i.peel.i.i, 0
  br i1 %tobool.i.not.i.i.peel.i.i, label %sg_set_page.exit.peel.i.i, label %do.body11.i.i.peel.i.i.do.body19.i.i.i.i_crit_edge, !prof !48

do.body11.i.i.peel.i.i.do.body19.i.i.i.i_crit_edge: ; preds = %do.body11.i.i.peel.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19.i.i.i.i

sg_set_page.exit.peel.i.i:                        ; preds = %do.body11.i.i.peel.i.i
  %and.i.i.peel.i.i = and i32 %25, 3
  %or.i.i.peel.i.i = or i32 %and.i.i.peel.i.i, %26
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i.peel.i.i, ptr %21, align 4
  %offset1.i.peel.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %offset1.i.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i.i, ptr %offset1.i.peel.i.i, align 4
  %length.i.peel.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %22, ptr %length.i.peel.i.i, align 4
  %sub49.peel.i.i = sub i32 %cond.i, %22
  %call50.peel.i.i = call ptr @sg_next(ptr noundef %21) #11
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp36.peel.i.i = icmp ugt i32 %31, 1
  br i1 %cmp36.peel.i.i, label %for.body.peel.next.i.i, label %sg_set_page.exit.peel.i.i.for.end.i.i_crit_edge

sg_set_page.exit.peel.i.i.for.end.i.i_crit_edge:  ; preds = %sg_set_page.exit.peel.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.peel.next.i.i:                           ; preds = %sg_set_page.exit.peel.i.i
  %add.ptr48.peel.i.i = getelementptr i8, ptr %buf, i32 %22
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %sg_set_page.exit.i.i.for.body.i.i_crit_edge, %for.body.peel.next.i.i
  %buf.addr.0126.i.i = phi ptr [ %add.ptr48.i.i, %sg_set_page.exit.i.i.for.body.i.i_crit_edge ], [ %add.ptr48.peel.i.i, %for.body.peel.next.i.i ]
  %buf_len.addr.0125.i.i = phi i32 [ %sub49.i.i, %sg_set_page.exit.i.i.for.body.i.i_crit_edge ], [ %sub49.peel.i.i, %for.body.peel.next.i.i ]
  %i.0124.i.i = phi i32 [ %inc.i.i, %sg_set_page.exit.i.i.for.body.i.i_crit_edge ], [ 1, %for.body.peel.next.i.i ]
  %sg.0122.i.i = phi ptr [ %call50.i.i, %sg_set_page.exit.i.i.for.body.i.i_crit_edge ], [ %call50.peel.i.i, %for.body.peel.next.i.i ]
  %32 = call i32 @llvm.umin.i32(i32 %spec.select118.i.i, i32 %buf_len.addr.0125.i.i) #11
  br i1 %call.i.i, label %if.then40.i.i, label %if.else42.i.i

if.then40.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call41.i.i = call ptr @vmalloc_to_page(ptr noundef %buf.addr.0126.i.i) #11
  br label %if.end47.i.i

if.else42.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %buf.addr.0126.i.i to i32
  %sub43.i.i = add i32 %34, 1073741824
  %shr44.i.i = lshr i32 %sub43.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %33, i32 %shr44.i.i
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.else42.i.i, %if.then40.i.i
  %page.0.i.i = phi ptr [ %call41.i.i, %if.then40.i.i ], [ %add.ptr.i.i, %if.else42.i.i ]
  %35 = ptrtoint ptr %sg.0122.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg.0122.i.i, align 4
  %37 = ptrtoint ptr %page.0.i.i to i32
  %and2.i.i.i.i = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %if.end47.i.i.do.body5.i.i.i.i_crit_edge, !prof !48

if.end47.i.i.do.body5.i.i.i.i_crit_edge:          ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %if.end47.i.i.do.body5.i.i.i.i_crit_edge, %if.end47.peel.i.i.do.body5.i.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.body11.i.i.i.i:                                ; preds = %if.end47.i.i
  %and.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_page.exit.i.i, label %do.body11.i.i.i.i.do.body19.i.i.i.i_crit_edge, !prof !48

do.body11.i.i.i.i.do.body19.i.i.i.i_crit_edge:    ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19.i.i.i.i

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i.do.body19.i.i.i.i_crit_edge, %do.body11.i.i.peel.i.i.do.body19.i.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !54
  unreachable

sg_set_page.exit.i.i:                             ; preds = %do.body11.i.i.i.i
  %and.i.i.i.i = and i32 %36, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %37
  %38 = ptrtoint ptr %sg.0122.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i.i.i, ptr %sg.0122.i.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0122.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0122.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %32, ptr %length.i.i.i, align 4
  %add.ptr48.i.i = getelementptr i8, ptr %buf.addr.0126.i.i, i32 %32
  %sub49.i.i = sub i32 %buf_len.addr.0125.i.i, %32
  %inc.i.i = add nuw i32 %i.0124.i.i, 1
  %call50.i.i = call ptr @sg_next(ptr noundef %sg.0122.i.i) #11
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %8, align 4
  %cmp36.i.i = icmp ult i32 %inc.i.i, %42
  br i1 %cmp36.i.i, label %sg_set_page.exit.i.i.for.body.i.i_crit_edge, label %sg_set_page.exit.i.i.for.end.i.i_crit_edge, !llvm.loop !55

sg_set_page.exit.i.i.for.end.i.i_crit_edge:       ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

sg_set_page.exit.i.i.for.body.i.i_crit_edge:      ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %sg_set_page.exit.i.i.for.end.i.i_crit_edge, %sg_set_page.exit.peel.i.i.for.end.i.i_crit_edge
  %buf_len.addr.0.lcssa.i.i = phi i32 [ %sub49.peel.i.i, %sg_set_page.exit.peel.i.i.for.end.i.i_crit_edge ], [ %sub49.i.i, %sg_set_page.exit.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len.addr.0.lcssa.i.i)
  %cmp52.not.i.i = icmp eq i32 %buf_len.addr.0.lcssa.i.i, 0
  br i1 %cmp52.not.i.i, label %for.end.i.i.if.end25.i_crit_edge, label %for.end.i.i.do.end68.i.i_crit_edge, !prof !48

for.end.i.i.do.end68.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68.i.i

for.end.i.i.if.end25.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

do.end68.i.i:                                     ; preds = %for.end.i.i.do.end68.i.i_crit_edge, %if.end33.i.i.do.end68.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 208, i32 noundef 9, ptr noundef null) #11
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end68.i.i, %for.end.i.i.if.end25.i_crit_edge
  %43 = call ptr @memcpy(ptr %iv.i, ptr @.str.20, i32 16)
  %tfm.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %key, i32 0, i32 4
  %44 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tfm.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %45, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %flags4.i.i, align 4
  %50 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sgt.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 2
  %52 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 3
  %53 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %dst2.i.i, align 4
  %54 = ptrtoint ptr %__req_desc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond.i, ptr %__req_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 1
  %55 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  br i1 %encrypt, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__req_desc.i) #11
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %__req_desc.i) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then30.i
  %ret.0.i = phi i32 [ %call31.i, %if.then30.i ], [ %call32.i, %if.else.i ]
  %56 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tfm1.i.i.i, align 32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 -128
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add.i108.i = add i32 %59, 128
  %60 = call ptr @memset(ptr %__req_desc.i, i32 0, i32 %add.i108.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc.i) #11, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool34.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool34.not.i, label %if.end43.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond41.i = select i1 %encrypt, ptr @.str.15, ptr @.str.16
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond41.i, i32 noundef %ret.0.i) #16
  br label %out_sgt.i

if.end43.i:                                       ; preds = %if.end33.i
  br i1 %encrypt, label %if.then45.i, label %if.else46.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %pout_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond.i, ptr %pout_len, align 4
  br label %out_sgt.i

if.else46.i:                                      ; preds = %if.end43.i
  %add.ptr47.i = getelementptr i8, ptr %buf, i32 %in_len
  %add.ptr48.i = getelementptr i8, ptr %add.ptr47.i, i32 -1
  %62 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr48.i, align 1
  %conv.i = zext i8 %63 to i32
  %64 = add i8 %63, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %64)
  %65 = icmp ult i8 %64, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %in_len)
  %cmp54.not.i = icmp sgt i32 %conv.i, %in_len
  %or.cond107.i = or i1 %65, %cmp54.not.i
  br i1 %or.cond107.i, label %do.end61.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub57.i = sub i32 %in_len, %conv.i
  %66 = ptrtoint ptr %pout_len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub57.i, ptr %pout_len, align 4
  br label %out_sgt.i

do.end61.i:                                       ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef %conv.i, i32 noundef %in_len) #16
  br label %out_sgt.i

out_sgt.i:                                        ; preds = %do.end61.i, %if.then56.i, %if.then45.i, %do.end38.i
  %ret.1.i = phi i32 [ %ret.0.i, %do.end38.i ], [ 0, %if.then45.i ], [ 0, %if.then56.i ], [ -1, %do.end61.i ]
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i110.i = icmp ugt i32 %68, 1
  br i1 %cmp.i110.i, label %if.then.i111.i, label %out_sgt.i.ceph_aes_crypt.exit_crit_edge

out_sgt.i.ceph_aes_crypt.exit_crit_edge:          ; preds = %out_sgt.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_aes_crypt.exit

if.then.i111.i:                                   ; preds = %out_sgt.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sg_free_table(ptr noundef nonnull %sgt.i) #11
  br label %ceph_aes_crypt.exit

ceph_aes_crypt.exit:                              ; preds = %if.then.i111.i, %out_sgt.i.ceph_aes_crypt.exit_crit_edge, %if.then6.i.i.ceph_aes_crypt.exit_crit_edge, %if.end22.i.ceph_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i.i, %if.then6.i.i.ceph_aes_crypt.exit_crit_edge ], [ %ret.1.i, %out_sgt.i.ceph_aes_crypt.exit_crit_edge ], [ %ret.1.i, %if.then.i111.i ], [ -22, %if.end22.i.ceph_aes_crypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %prealloc_sg.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgt.i) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc.i) #11
  br label %return

return:                                           ; preds = %ceph_aes_crypt.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ceph_aes_crypt.exit ], [ 0, %sw.bb ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_key_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen1, align 4
  %2 = add i32 %1, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %2)
  %3 = icmp ult i32 %2, -32767
  br i1 %3, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 24) #17
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %1
  %cmp.not.i.i = icmp ule ptr %8, %add.ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp1.i.i = icmp ugt i32 %1, 11
  %9 = and i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %9, label %do.end.i, label %if.end6.do.body21.i_crit_edge, !prof !48

if.end6.do.body21.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21.i

do.end.i:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %8, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #11
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %call7.i, align 8
  %created.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %add.ptr.i.i, align 1
  %16 = ptrtoint ptr %created.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %created.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %8, i32 10
  %17 = ptrtoint ptr %add.ptr.i49.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr.i49.i, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #11
  %add.ptr.i50.i = getelementptr i8, ptr %8, i32 12
  %conv4.i = zext i16 %19 to i32
  %len.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %call7.i, i32 0, i32 2
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv4.i, ptr %len.i, align 4
  %cmp.not.i51.i = icmp ule ptr %add.ptr.i50.i, %add.ptr
  %gepdiff = add nsw i32 %1, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %gepdiff, i32 %conv4.i)
  %cmp1.i55.i = icmp uge i32 %gepdiff, %conv4.i
  %21 = select i1 %cmp.not.i51.i, i1 %cmp1.i55.i, i1 false
  br i1 %21, label %do.end17.i, label %do.end.i.do.body21.i_crit_edge, !prof !48

do.end.i.do.body21.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21.i

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call fastcc i32 @set_secret(ptr noundef nonnull %call7.i, ptr noundef %add.ptr.i50.i) #11
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %24 = call ptr @memset(ptr %add.ptr.i50.i, i32 0, i32 %23)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr.i50.i) #11, !srcloc !49
  br label %ceph_crypto_key_decode.exit

do.body21.i:                                      ; preds = %do.end.i.do.body21.i_crit_edge, %if.end6.do.body21.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_key_preparse, %ceph_crypto_key_decode.exit.thread)) #11
          to label %ceph_crypto_key_decode.exit [label %ceph_crypto_key_decode.exit.thread], !srcloc !50

ceph_crypto_key_decode.exit.thread:               ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 104) #11
  br label %err_ckey

ceph_crypto_key_decode.exit:                      ; preds = %do.body21.i, %do.end17.i
  %retval.0.i = phi i32 [ %call18.i, %do.end17.i ], [ -22, %do.body21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp10, label %ceph_crypto_key_decode.exit.err_ckey_crit_edge, label %if.end12

ceph_crypto_key_decode.exit.err_ckey_crit_edge:   ; preds = %ceph_crypto_key_decode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ckey

if.end12:                                         ; preds = %ceph_crypto_key_decode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %25 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %payload, align 8
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %26 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %1, ptr %quotalen, align 8
  br label %cleanup

err_ckey:                                         ; preds = %ceph_crypto_key_decode.exit.err_ckey_crit_edge, %ceph_crypto_key_decode.exit.thread
  %retval.0.i35 = phi i32 [ -22, %ceph_crypto_key_decode.exit.thread ], [ %retval.0.i, %ceph_crypto_key_decode.exit.err_ckey_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_ckey, %if.end12, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i35, %err_ckey ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_key_free_preparse(ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ceph_crypto_key_destroy.exit_crit_edge, label %if.then.i

entry.ceph_crypto_key_destroy.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_crypto_key_destroy.exit

if.then.i:                                        ; preds = %entry
  %key1.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key1.i, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #11
  %4 = ptrtoint ptr %key1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %key1.i, align 4
  %tfm.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %if.then.i.ceph_crypto_key_destroy.exit_crit_edge, label %if.then4.i

if.then.i.ceph_crypto_key_destroy.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_crypto_key_destroy.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %6, ptr noundef %base.i.i.i.i) #11
  %7 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tfm.i, align 4
  br label %ceph_crypto_key_destroy.exit

ceph_crypto_key_destroy.exit:                     ; preds = %if.then4.i, %if.then.i.ceph_crypto_key_destroy.exit_crit_edge, %entry.ceph_crypto_key_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_key_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.ceph_crypto_key_destroy.exit_crit_edge, label %if.then.i

entry.ceph_crypto_key_destroy.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_crypto_key_destroy.exit

if.then.i:                                        ; preds = %entry
  %key1.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key1.i, align 4
  tail call void @kfree_sensitive(ptr noundef %4) #11
  %5 = ptrtoint ptr %key1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %key1.i, align 4
  %tfm.i = getelementptr inbounds %struct.ceph_crypto_key, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.then.i.ceph_crypto_key_destroy.exit_crit_edge, label %if.then4.i

if.then.i.ceph_crypto_key_destroy.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_crypto_key_destroy.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %7, ptr noundef %base.i.i.i.i) #11
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tfm.i, align 4
  br label %ceph_crypto_key_destroy.exit

ceph_crypto_key_destroy.exit:                     ; preds = %if.then4.i, %if.then.i.ceph_crypto_key_destroy.exit_crit_edge, %entry.ceph_crypto_key_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_crypto_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_key_type(ptr noundef nonnull @key_type_ceph) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_crypto_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_ceph) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/crypto.c", i32 104, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_crypto_key_decode.__UNIQUE_ID_ddebug229, !1, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/crypto.c", i32 115, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug230, !9, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ceph/crypto.c", i32 130, i32 2}
!15 = !{ptr @ceph_crypto_key_unarmor.__UNIQUE_ID_ddebug231, !14, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ceph/crypto.c", i32 346, i32 11}
!19 = !{ptr @key_type_ceph, !20, !"key_type_ceph", i1 false, i1 false}
!20 = !{!"../net/ceph/crypto.c", i32 345, i32 17}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ceph/crypto.c", i32 51, i32 40}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ceph/crypto.c", i32 254, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ceph_aes_crypt._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ceph_aes_crypt._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ceph/crypto.c", i32 271, i32 4}
!32 = !{ptr @ceph_aes_crypt._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ceph_aes_crypt._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ceph/crypto.c", i32 147, i32 33}
!36 = distinct !{null, !37, !"aes_iv", i1 false, i1 false}
!37 = !{!"../net/ceph/crypto.c", i32 147, i32 18}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148036675}
!50 = !{i64 2148198130, i64 2148198135, i64 2148198148, i64 2148198192, i64 2148198226, i64 2148198247}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2153349627, i64 2153350119, i64 2153349664, i64 2153349720, i64 2153349754, i64 2153349778, i64 2153349819, i64 2153349840, i64 2153349868, i64 2153349902}
!54 = !{i64 2153351237, i64 2153351729, i64 2153351274, i64 2153351330, i64 2153351364, i64 2153351388, i64 2153351429, i64 2153351450, i64 2153351478, i64 2153351512}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.peeled.count", i32 1}
