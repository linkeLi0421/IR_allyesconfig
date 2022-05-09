; ModuleID = '/llk/IR_all_yes/net/rxrpc/server_key.c_pt.bc'
source_filename = "../net/rxrpc/server_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.131, ptr }
%union.anon = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.131 = type { %union.key_payload }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.158, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.75, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.76, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.77, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.35, %union.anon.37, %union.anon.38, i16, i8, i8, i32, %union.anon.40, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.67, [0 x i32], %union.anon.68, i16, i16, %union.anon.69, %struct.refcount_struct, [0 x i32], %union.anon.70 }
%union.anon.35 = type { i64 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.40 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { %struct.hlist_node }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.75 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.sk_buff_head = type { %union.anon.73, i32, %struct.spinlock }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.158 = type { i16, i16 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.150 }
%union.anon.150 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rxrpc_s\00", [24 x i8] zeroinitializer }, align 32
@key_type_rxrpc_s = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 1, ptr @rxrpc_vet_description_s, ptr @rxrpc_preparse_s, ptr @rxrpc_free_preparse_s, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @rxrpc_destroy_s, ptr @rxrpc_describe_s, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_server_keyring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxrpc_server_keyring\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/rxrpc/server_key.c\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_server_keyring._entry_ptr = internal global ptr @rxrpc_server_keyring._entry, section ".printk_index", align 4
@key_type_keyring = external dso_local global %struct.key_type, align 4
@rxrpc_server_keyring._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_server_keyring._entry_ptr.6 = internal global ptr @rxrpc_server_keyring._entry.4, section ".printk_index", align 4
@rxrpc_server_keyring._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] <== %s() = 0 [key %x]\0A\00", [32 x i8] zeroinitializer }, align 32
@rxrpc_server_keyring._entry_ptr.9 = internal global ptr @rxrpc_server_keyring._entry.7, section ".printk_index", align 4
@rxrpc_preparse_s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(%zu)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxrpc_preparse_s\00", [47 x i8] zeroinitializer }, align 32
@rxrpc_preparse_s._entry_ptr = internal global ptr @rxrpc_preparse_s._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u:%u%n\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 37, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"key_type_rxrpc_s\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 36, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 123, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 135, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 141, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 73, i32 2 }
@___asan_gen_.56 = private constant [26 x i8] c"../net/rxrpc/server_key.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 78, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 230, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 214, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @rxrpc_preparse_s._entry, ptr @rxrpc_preparse_s._entry_ptr, ptr @rxrpc_server_keyring._entry, ptr @rxrpc_server_keyring._entry.4, ptr @rxrpc_server_keyring._entry.7, ptr @rxrpc_server_keyring._entry_ptr, ptr @rxrpc_server_keyring._entry_ptr.6, ptr @rxrpc_server_keyring._entry_ptr.9, ptr @.str, ptr @key_type_rxrpc_s, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_rxrpc_s to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_server_keyring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_server_keyring._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_server_keyring._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_preparse_s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxrpc_vet_description_s(ptr noundef %desc) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #7
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !42
  %call = call i32 @simple_strtoul(ptr noundef %desc, ptr noundef nonnull %p, i32 noundef 10) #7
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %4)
  %cmp.not = icmp ne i8 %4, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call)
  %cmp2 = icmp ugt i32 %call, 65535
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %call4 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef nonnull %p, i32 noundef 10) #7
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.lor.lhs.false9_crit_edge
    i8 58, label %if.end.lor.lhs.false9_crit_edge21
  ]

if.end.lor.lhs.false9_crit_edge21:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false9

if.end.lor.lhs.false9_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end.lor.lhs.false9_crit_edge, %if.end.lor.lhs.false9_crit_edge21
  %10 = add i32 %call4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %10)
  %11 = icmp ult i32 %10, -255
  %spec.select = select i1 %11, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxrpc_preparse_s(ptr noundef %prep) #0 align 64 {
entry:
  %service = alloca i32, align 4
  %sec_class = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %service) #7
  %0 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %service, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sec_class) #7
  %1 = ptrtoint ptr %sec_class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sec_class, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %3 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !43

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %8 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %datalen, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm, ptr noundef nonnull @.str.11, i32 noundef %9) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %10 = ptrtoint ptr %prep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prep, align 8
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %call11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str.12, ptr noundef nonnull %service, ptr noundef nonnull %sec_class, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 2
  br i1 %cmp.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %sec_class to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sec_class, align 4
  %conv = trunc i32 %13 to i8
  %call14 = call ptr @rxrpc_security_lookup(i8 noundef zeroext %conv) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call14, ptr %arrayidx, align 4
  %preparse_server_key = getelementptr inbounds %struct.rxrpc_security, ptr %call14, i32 0, i32 5
  %15 = ptrtoint ptr %preparse_server_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %preparse_server_key, align 4
  %call18 = call i32 %16(ptr noundef %prep) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ -22, %do.end6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -65, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sec_class) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %service) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_free_preparse_s(ptr noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %free_preparse_server_key = getelementptr inbounds %struct.rxrpc_security, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %free_preparse_server_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_preparse_server_key, align 4
  tail call void %3(ptr noundef %prep) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_destroy_s(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %destroy_server_key = getelementptr inbounds %struct.rxrpc_security, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %destroy_server_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_server_key, align 4
  tail call void %3(ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_describe_s(ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %2 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %3) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %describe_server_key = getelementptr inbounds %struct.rxrpc_security, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %describe_server_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %describe_server_key, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %key, ptr noundef %m) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_server_keyring(ptr nocapture noundef writeonly %rx, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !43

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.2) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = add i32 %optlen, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %5)
  %6 = icmp ult i32 %5, -4095
  br i1 %6, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %add.i = add nuw nsw i32 %optlen, 1
  %7 = tail call ptr @llvm.returnaddress(i32 0) #7
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call ptr @__kmalloc_track_caller(i32 noundef %add.i, i32 noundef 3264, i32 noundef %8) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.if.then12_crit_edge, label %if.end.i

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.i:                                         ; preds = %if.end9
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %9 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %optlen, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #7
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %optlen, i32 -1226833920) #11, !srcloc !44
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !43

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %optlen) #7
  %11 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i.i.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #5, !srcloc !45
  %and.i.i.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %call1.i.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %9, i32 noundef %optlen) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.memdup_sockptr_nul.exit_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !43

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.memdup_sockptr_nul.exit_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %memdup_sockptr_nul.exit

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i.i82 = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %optlen, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %optlen, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 %optlen, %res.0.i.i.i.i.i82
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i.i82)
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  br label %if.then12

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memcpy(ptr %call.i, ptr %9, i32 %optlen)
  br label %memdup_sockptr_nul.exit

memdup_sockptr_nul.exit:                          ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.memdup_sockptr_nul.exit_crit_edge
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %optlen
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx.i, align 1
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %memdup_sockptr_nul.exit.if.then12_crit_edge, label %if.end14

memdup_sockptr_nul.exit.if.then12_crit_edge:      ; preds = %memdup_sockptr_nul.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %memdup_sockptr_nul.exit.if.then12_crit_edge, %if.then11.i.i.i.i.i, %if.end9.if.then12_crit_edge
  %retval.0.i85 = phi ptr [ %call.i, %memdup_sockptr_nul.exit.if.then12_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.if.then12_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i.i.i ]
  %17 = ptrtoint ptr %retval.0.i85 to i32
  br label %cleanup

if.end14:                                         ; preds = %memdup_sockptr_nul.exit
  %call.i76 = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_keyring, ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null) #7
  %cmp.i77 = icmp ugt ptr %call.i76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then17, label %if.end42

if.then17:                                        ; preds = %if.end14
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %18 = load i32, ptr @rxrpc_debug, align 4
  %and19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then17.do.end40_crit_edge, label %do.end30, !prof !43

if.then17.do.end40_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = ptrtoint ptr %call.i76 to i32
  br label %cleanup

do.end30:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i78 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i78 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %23 = ptrtoint ptr %call.i76 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm34, ptr noundef nonnull @.str.2, i32 noundef %23) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end14
  %securities = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 11
  %24 = ptrtoint ptr %securities to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i76, ptr %securities, align 4
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %25 = load i32, ptr @rxrpc_debug, align 4
  %and44 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.cleanup_crit_edge, label %do.end55, !prof !43

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end55:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i79 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i79 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task58, align 8
  %comm59 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %serial = getelementptr inbounds %struct.key, ptr %call.i76, i32 0, i32 1
  %30 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %serial, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm59, ptr noundef nonnull @.str.2, i32 noundef %31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end42.cleanup_crit_edge, %do.end30, %if.then17.do.end40_crit_edge, %if.then12, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then12 ], [ -22, %do.end6.cleanup_crit_edge ], [ 0, %do.end55 ], [ 0, %if.end42.cleanup_crit_edge ], [ %.pre, %if.then17.do.end40_crit_edge ], [ %23, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_security_lookup(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/server_key.c", i32 37, i32 11}
!2 = !{ptr @key_type_rxrpc_s, !3, !"key_type_rxrpc_s", i1 false, i1 false}
!3 = !{!"../net/rxrpc/server_key.c", i32 36, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rxrpc/server_key.c", i32 123, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rxrpc_server_keyring._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rxrpc_server_keyring._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rxrpc/server_key.c", i32 135, i32 3}
!12 = !{ptr @rxrpc_server_keyring._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rxrpc_server_keyring._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/rxrpc/server_key.c", i32 141, i32 2}
!16 = !{ptr @rxrpc_server_keyring._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rxrpc_server_keyring._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rxrpc/server_key.c", i32 73, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rxrpc_preparse_s._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @rxrpc_preparse_s._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/rxrpc/server_key.c", i32 78, i32 37}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2152919727, i64 2152919752}
!45 = !{i64 5415282}
!46 = !{i64 5415479}
!47 = !{i64 2152900712}
