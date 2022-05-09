; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_wrap.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_wrap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }
%struct.krb5_ctx = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.atomic_t, %struct.atomic64_t, i64, %struct.xdr_netobj, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.gss_krb5_enctype = type { i32, i32, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.107, ptr, ptr, ptr, ptr, %union.anon.108, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.107 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.108 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@gss_krb5_make_confounder.i = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@gss_wrap_kerberos_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPC:       %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gss_wrap_kerberos_v1\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/sunrpc/auth_gss/gss_krb5_wrap.c\00", [60 x i8] zeroinitializer }, align 32
@gss_wrap_kerberos_v1._entry_ptr = internal global ptr @gss_wrap_kerberos_v1._entry, section ".printk_index", align 4
@gss_wrap_kerberos_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gss_wrap_kerberos_v2\00", [43 x i8] zeroinitializer }, align 32
@gss_wrap_kerberos_v2._entry_ptr = internal global ptr @gss_wrap_kerberos_v2._entry, section ".printk_index", align 4
@gss_unwrap_kerberos_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RPC:       gss_unwrap_kerberos\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gss_unwrap_kerberos_v1\00", [41 x i8] zeroinitializer }, align 32
@gss_unwrap_kerberos_v1._entry_ptr = internal global ptr @gss_unwrap_kerberos_v1._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@gss_unwrap_kerberos_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gss_unwrap_kerberos_v2\00", [41 x i8] zeroinitializer }, align 32
@gss_unwrap_kerberos_v2._entry_ptr = internal global ptr @gss_unwrap_kerberos_v2._entry, section ".printk_index", align 4
@gss_unwrap_kerberos_v2._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: token missing expected sealed flag\0A\00", [56 x i8] zeroinitializer }, align 32
@gss_unwrap_kerberos_v2._entry_ptr.9 = internal global ptr @gss_unwrap_kerberos_v2._entry.7, section ".printk_index", align 4
@gss_unwrap_kerberos_v2._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: error %u getting decrypted_hdr\0A\00", [60 x i8] zeroinitializer }, align 32
@gss_unwrap_kerberos_v2._entry_ptr.12 = internal global ptr @gss_unwrap_kerberos_v2._entry.10, section ".printk_index", align 4
@gss_unwrap_kerberos_v2._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: token hdr, plaintext hdr mismatch!\0A\00", [56 x i8] zeroinitializer }, align 32
@gss_unwrap_kerberos_v2._entry_ptr.15 = internal global ptr @gss_unwrap_kerberos_v2._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 17, i64 18]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 17, i64 18]
@___asan_gen_.19 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 119, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 173, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 419, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 269, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 474, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 490, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 521, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [39 x i8] c"../net/sunrpc/auth_gss/gss_krb5_wrap.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 526, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @gss_unwrap_kerberos_v1._entry, ptr @gss_unwrap_kerberos_v1._entry_ptr, ptr @gss_unwrap_kerberos_v2._entry, ptr @gss_unwrap_kerberos_v2._entry.10, ptr @gss_unwrap_kerberos_v2._entry.13, ptr @gss_unwrap_kerberos_v2._entry.7, ptr @gss_unwrap_kerberos_v2._entry_ptr, ptr @gss_unwrap_kerberos_v2._entry_ptr.12, ptr @gss_unwrap_kerberos_v2._entry_ptr.15, ptr @gss_unwrap_kerberos_v2._entry_ptr.9, ptr @gss_wrap_kerberos_v1._entry, ptr @gss_wrap_kerberos_v1._entry_ptr, ptr @gss_wrap_kerberos_v2._entry, ptr @gss_wrap_kerberos_v2._entry_ptr, ptr @gss_krb5_make_confounder.i, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_krb5_make_confounder.i to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_wrap_kerberos_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_wrap_kerberos_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_unwrap_kerberos_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_unwrap_kerberos_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_unwrap_kerberos_v2._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_unwrap_kerberos_v2._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_unwrap_kerberos_v2._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gss_krb5_make_confounder(ptr nocapture noundef writeonly %p, i32 noundef %conflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @gss_krb5_make_confounder.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @prandom_u32() #9
  %conv = zext i32 %call to i64
  store i64 %conv, ptr @gss_krb5_make_confounder.i, align 8
  %shl = shl nuw i64 %conv, 32
  %call1 = tail call i32 @prandom_u32() #9
  %conv2 = zext i32 %call1 to i64
  %or = or i64 %shl, %conv2
  store i64 %or, ptr @gss_krb5_make_confounder.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = zext i32 %conflen to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conflen, label %do.body [
    i32 16, label %sw.bb
    i32 8, label %if.end.sw.bb3_crit_edge
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load i64, ptr @gss_krb5_make_confounder.i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr @gss_krb5_make_confounder.i, align 8
  %incdec.ptr = getelementptr i64, ptr %p, i32 1
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %p, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.end.sw.bb3_crit_edge
  %q.0 = phi ptr [ %p, %if.end.sw.bb3_crit_edge ], [ %incdec.ptr, %sw.bb ]
  %4 = load i64, ptr @gss_krb5_make_confounder.i, align 8
  %inc4 = add i64 %4, 1
  store i64 %inc4, ptr @gss_krb5_make_confounder.i, align 8
  %5 = ptrtoint ptr %q.0 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %q.0, align 8
  ret void

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #9, !srcloc !43
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_wrap_kerberos(ptr nocapture noundef readonly %gctx, i32 noundef %offset, ptr noundef %buf, ptr noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  %cksumdata.i = alloca [20 x i8], align 1
  %md5cksum.i = alloca %struct.xdr_netobj, align 4
  %ptr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %gctx, i32 0, i32 1
  %0 = ptrtoint ptr %internal_ctx_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_ctx_id, align 4
  %enctype = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enctype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enctype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %3, label %do.body [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge22
    i32 17, label %entry.sw.bb4_crit_edge
    i32 18, label %entry.sw.bb4_crit_edge23
  ]

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 568, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cksumdata.i) #9
  %5 = call ptr @memset(ptr %cksumdata.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %md5cksum.i) #9
  %6 = getelementptr inbounds %struct.xdr_netobj, ptr %md5cksum.i, i32 0, i32 1
  %7 = ptrtoint ptr %md5cksum.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %md5cksum.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cksumdata.i, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i) #9
  %gk5e.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gk5e.i, align 4
  %conflen1.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %conflen1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conflen1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %13 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.do.end6.i_crit_edge, label %do.end.i, !prof !45

sw.bb.do.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.bb.do.end6.i_crit_edge
  %call7.i = call i64 @ktime_get_real_seconds() #9
  %enc.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %enc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc.i, align 8
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_blocksize.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cra_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cra_blocksize.i.i.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %page_len.i.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 5
  %22 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.end6.i.if.then.i.i_crit_edge

do.end6.i.if.then.i.i_crit_edge:                  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %do.end6.i
  %iov_len.i.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.gss_krb5_add_padding.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i.gss_krb5_add_padding.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_krb5_add_padding.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %do.end6.i.if.then.i.i_crit_edge
  %tail2.i.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1
  br label %gss_krb5_add_padding.exit.i

gss_krb5_add_padding.exit.i:                      ; preds = %if.then.i.i, %lor.lhs.false.i.i.gss_krb5_add_padding.exit.i_crit_edge
  %iov.0.i.i = phi ptr [ %tail2.i.i, %if.then.i.i ], [ %buf, %lor.lhs.false.i.i.gss_krb5_add_padding.exit.i_crit_edge ]
  %sub.i.i = sub i32 %21, %offset
  %rem.i.i.i = srem i32 %sub.i.i, %19
  %sub.i.i.i = sub i32 %19, %rem.i.i.i
  %26 = ptrtoint ptr %iov.0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iov.0.i.i, align 4
  %iov_len5.i.i = getelementptr inbounds %struct.kvec, ptr %iov.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %iov_len5.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iov_len5.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %29
  %add.i.i = add i32 %29, %sub.i.i.i
  store i32 %add.i.i, ptr %iov_len5.i.i, align 4
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %add8.i.i = add i32 %31, %sub.i.i.i
  store i32 %add8.i.i, ptr %len.i.i, align 4
  %32 = trunc i32 %sub.i.i.i to i8
  %33 = zext i8 %32 to i32
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 %33, i32 %sub.i.i.i)
  %35 = load i32, ptr %len.i.i, align 4
  %sub.i = sub i32 %35, %offset
  %rem.i = urem i32 %sub.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool11.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool11.not.i, label %do.end27.i, label %do.body19.i, !prof !45

do.body19.i:                                      ; preds = %gss_krb5_add_padding.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #9, !srcloc !46
  unreachable

do.end27.i:                                       ; preds = %gss_krb5_add_padding.exit.i
  %mech_used.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gk5e.i, align 4
  %cksumlength.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %cksumlength.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cksumlength.i, align 4
  %add.i = sub i32 16, %offset
  %sub29.i = add i32 %add.i, %12
  %add31.i = add i32 %sub29.i, %35
  %add32.i = add i32 %39, %add31.i
  %call33.i = call i32 @g_token_size(ptr noundef %mech_used.i, i32 noundef %add32.i) #9
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  %sub35.neg.i = sub i32 %offset, %41
  %sub36.i = add i32 %sub35.neg.i, %call33.i
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %offset
  %44 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %ptr.i, align 4
  %call37.i = call i32 @xdr_extend_head(ptr noundef %buf, i32 noundef %offset, i32 noundef %sub36.i) #9
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  %47 = add i32 %sub36.i, %offset
  %sub41.i = sub i32 %46, %47
  %rem42.i = urem i32 %sub41.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem42.i)
  %tobool43.not.i = icmp eq i32 %rem42.i, 0
  br i1 %tobool43.not.i, label %do.end59.i, label %do.body51.i, !prof !45

do.body51.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

do.end59.i:                                       ; preds = %do.end27.i
  %48 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gk5e.i, align 4
  %cksumlength62.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %cksumlength62.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cksumlength62.i, align 4
  %add64.i = add i32 %51, %add31.i
  call void @g_make_token_header(ptr noundef %mech_used.i, i32 noundef %add64.i, ptr noundef nonnull %ptr.i) #9
  %52 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptr.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %53, align 1
  %55 = load ptr, ptr %ptr.i, align 4
  %arrayidx66.i = getelementptr i8, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %arrayidx66.i, align 1
  %57 = load ptr, ptr %ptr.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %57, i32 16
  %58 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gk5e.i, align 4
  %cksumlength69.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %cksumlength69.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cksumlength69.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %add.ptr67.i, i32 %61
  %signalg.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %signalg.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %signalg.i, align 4
  %64 = call i16 @llvm.bswap.i16(i16 %63) #9
  %add.ptr72.i = getelementptr i8, ptr %57, i32 2
  %65 = ptrtoint ptr %add.ptr72.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %add.ptr72.i, align 2
  %66 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gk5e.i, align 4
  %sealalg.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %sealalg.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sealalg.i, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69) #9
  %71 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptr.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %70, ptr %add.ptr74.i, align 2
  %74 = load ptr, ptr %ptr.i, align 4
  %arrayidx75.i = getelementptr i8, ptr %74, i32 6
  %75 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %arrayidx75.i, align 1
  %76 = load ptr, ptr %ptr.i, align 4
  %arrayidx76.i = getelementptr i8, ptr %76, i32 7
  %77 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %arrayidx76.i, align 1
  %78 = load i64, ptr @gss_krb5_make_confounder.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %cmp.i.i = icmp eq i64 %78, 0
  br i1 %cmp.i.i, label %if.then.i168.i, label %do.end59.i.if.end.i.i_crit_edge

do.end59.i.if.end.i.i_crit_edge:                  ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i168.i:                                   ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @prandom_u32() #9
  %conv.i.i = zext i32 %call.i.i to i64
  store i64 %conv.i.i, ptr @gss_krb5_make_confounder.i, align 8
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %call1.i.i = call i32 @prandom_u32() #9
  %conv2.i.i = zext i32 %call1.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  store i64 %or.i.i, ptr @gss_krb5_make_confounder.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i168.i, %do.end59.i.if.end.i.i_crit_edge
  %79 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %12, label %do.body.i.i [
    i32 16, label %sw.bb.i.i
    i32 8, label %if.end.i.i.gss_krb5_make_confounder.exit.i_crit_edge
  ]

if.end.i.i.gss_krb5_make_confounder.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_krb5_make_confounder.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = load i64, ptr @gss_krb5_make_confounder.i, align 8
  %inc.i.i = add i64 %80, 1
  store i64 %inc.i.i, ptr @gss_krb5_make_confounder.i, align 8
  %incdec.ptr.i.i = getelementptr i64, ptr %add.ptr70.i, i32 1
  %81 = ptrtoint ptr %add.ptr70.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %add.ptr70.i, align 8
  br label %gss_krb5_make_confounder.exit.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #9, !srcloc !43
  unreachable

gss_krb5_make_confounder.exit.i:                  ; preds = %sw.bb.i.i, %if.end.i.i.gss_krb5_make_confounder.exit.i_crit_edge
  %q.0.i.i = phi ptr [ %add.ptr70.i, %if.end.i.i.gss_krb5_make_confounder.exit.i_crit_edge ], [ %incdec.ptr.i.i, %sw.bb.i.i ]
  %82 = load i64, ptr @gss_krb5_make_confounder.i, align 8
  %inc4.i.i = add i64 %82, 1
  store i64 %inc4.i.i, ptr @gss_krb5_make_confounder.i, align 8
  %83 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %q.0.i.i, align 8
  %84 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gk5e.i, align 4
  %keyed_cksum.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %keyed_cksum.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %keyed_cksum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool78.not.i = icmp eq i32 %87, 0
  %cksum.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 11
  %cksumkey.0.i = select i1 %tobool78.not.i, ptr null, ptr %cksum.i
  %pages82.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 3
  %88 = ptrtoint ptr %pages82.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pages82.i, align 4
  store ptr %pages, ptr %pages82.i, align 4
  %90 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptr.i, align 4
  %sub85.i = sub i32 %47, %12
  %call86.i = call i32 @make_checksum(ptr noundef %1, ptr noundef %91, i32 noundef 8, ptr noundef %buf, i32 noundef %sub85.i, ptr noundef %cksumkey.0.i, i32 noundef 22, ptr noundef nonnull %md5cksum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %gss_krb5_make_confounder.exit.i.gss_wrap_kerberos_v1.exit_crit_edge

gss_krb5_make_confounder.exit.i.gss_wrap_kerberos_v1.exit_crit_edge: ; preds = %gss_krb5_make_confounder.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_wrap_kerberos_v1.exit

if.end89.i:                                       ; preds = %gss_krb5_make_confounder.exit.i
  %92 = ptrtoint ptr %pages82.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %pages82.i, align 4
  %93 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ptr.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %94, i32 16
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %6, align 4
  %97 = ptrtoint ptr %md5cksum.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %md5cksum.i, align 4
  %99 = call ptr @memcpy(ptr %add.ptr91.i, ptr %96, i32 %98)
  %seq_send94.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %seq_send94.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @llvm.prefetch.p0(ptr %seq_send94.i, i32 1, i32 3, i32 1) #9
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seq_send94.i, ptr %seq_send94.i, i32 1, ptr elementtype(i32) %seq_send94.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %seq.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 5
  %101 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %seq.i, align 4
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool96.not.i = icmp eq i32 %104, 0
  %cond.i = select i1 %tobool96.not.i, i32 255, i32 0
  %105 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ptr.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %106, i32 16
  %add.ptr98.i = getelementptr i8, ptr %106, i32 8
  %call99.i = call i32 @krb5_make_seq_num(ptr noundef %1, ptr noundef %102, i32 noundef %cond.i, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %add.ptr97.i, ptr noundef %add.ptr98.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %if.end89.i.gss_wrap_kerberos_v1.exit_crit_edge

if.end89.i.gss_wrap_kerberos_v1.exit_crit_edge:   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_wrap_kerberos_v1.exit

if.end102.i:                                      ; preds = %if.end89.i
  %107 = ptrtoint ptr %enc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %enc.i, align 8
  %call106.i = call i32 @gss_encrypt_xdr_buf(ptr noundef %108, ptr noundef %buf, i32 noundef %sub85.i, ptr noundef %pages) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end109.i, label %if.end102.i.gss_wrap_kerberos_v1.exit_crit_edge

if.end102.i.gss_wrap_kerberos_v1.exit_crit_edge:  ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_wrap_kerberos_v1.exit

if.end109.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %endtime.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %109 = ptrtoint ptr %endtime.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %endtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %call7.i)
  %cmp.i = icmp slt i64 %110, %call7.i
  %cond110.i = select i1 %cmp.i, i32 786432, i32 0
  br label %gss_wrap_kerberos_v1.exit

gss_wrap_kerberos_v1.exit:                        ; preds = %if.end109.i, %if.end102.i.gss_wrap_kerberos_v1.exit_crit_edge, %if.end89.i.gss_wrap_kerberos_v1.exit_crit_edge, %gss_krb5_make_confounder.exit.i.gss_wrap_kerberos_v1.exit_crit_edge
  %retval.0.i = phi i32 [ %cond110.i, %if.end109.i ], [ 851968, %gss_krb5_make_confounder.exit.i.gss_wrap_kerberos_v1.exit_crit_edge ], [ 851968, %if.end89.i.gss_wrap_kerberos_v1.exit_crit_edge ], [ 851968, %if.end102.i.gss_wrap_kerberos_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %md5cksum.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cksumdata.i) #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %111 = load i32, ptr @rpc_debug, align 4
  %and.i11 = and i32 %111, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %sw.bb4.do.end5.i_crit_edge, label %do.end.i14, !prof !45

sw.bb4.do.end5.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i14:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i14, %sw.bb4.do.end5.i_crit_edge
  %gk5e.i15 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %112 = ptrtoint ptr %gk5e.i15 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %gk5e.i15, align 4
  %encrypt_v2.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %113, i32 0, i32 16
  %114 = ptrtoint ptr %encrypt_v2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %encrypt_v2.i, align 4
  %cmp.i16 = icmp eq ptr %115, null
  br i1 %cmp.i16, label %do.end5.i.cleanup_crit_edge, label %if.end7.i

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %do.end5.i
  %call8.i = tail call i32 @xdr_extend_head(ptr noundef %buf, i32 noundef %offset, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %116 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buf, align 4
  %add.ptr.i17 = getelementptr i8, ptr %117, i32 %offset
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i17, i32 1
  %118 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 5, ptr %add.ptr.i17, align 1
  %incdec.ptr12.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %119 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 4, ptr %incdec.ptr.i, align 1
  %flags13.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 2
  %120 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags13.i, align 8
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 5
  %124 = xor i8 %123, 3
  %incdec.ptr31.i = getelementptr i8, ptr %incdec.ptr12.i, i32 1
  %125 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %incdec.ptr12.i, align 1
  %incdec.ptr32.i = getelementptr i8, ptr %incdec.ptr31.i, i32 1
  %126 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -1, ptr %incdec.ptr31.i, align 1
  %incdec.ptr33.i = getelementptr i16, ptr %incdec.ptr32.i, i32 1
  %127 = ptrtoint ptr %incdec.ptr32.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %incdec.ptr32.i, align 2
  %incdec.ptr34.i = getelementptr i16, ptr %incdec.ptr33.i, i32 1
  %128 = ptrtoint ptr %incdec.ptr33.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %incdec.ptr33.i, align 2
  %seq_send64.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 13
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %seq_send64.i, i32 noundef 8) #9
  %call.i2.i.i = tail call i64 @generic_atomic64_fetch_add(i64 noundef 1, ptr noundef %seq_send64.i) #9
  %129 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %call.i2.i.i, ptr %incdec.ptr34.i, align 8
  %130 = ptrtoint ptr %gk5e.i15 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %gk5e.i15, align 4
  %encrypt_v237.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %131, i32 0, i32 16
  %132 = ptrtoint ptr %encrypt_v237.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %encrypt_v237.i, align 4
  %call38.i = tail call i32 %133(ptr noundef %1, i32 noundef %offset, ptr noundef %buf, ptr noundef %pages) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = tail call i64 @ktime_get_real_seconds() #9
  %endtime.i19 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %134 = ptrtoint ptr %endtime.i19 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %endtime.i19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %135, i64 %call42.i)
  %cmp43.i = icmp slt i64 %135, %call42.i
  %cond.i20 = select i1 %cmp43.i, i32 786432, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end41.i, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %do.end5.i.cleanup_crit_edge, %gss_wrap_kerberos_v1.exit
  %retval.0 = phi i32 [ %retval.0.i, %gss_wrap_kerberos_v1.exit ], [ %cond.i20, %if.end41.i ], [ 851968, %do.end5.i.cleanup_crit_edge ], [ 851968, %if.end7.i.cleanup_crit_edge ], [ %call38.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_unwrap_kerberos(ptr nocapture noundef %gctx, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %headskip.i = alloca i32, align 4
  %tailskip.i = alloca i32, align 4
  %decrypted_hdr.i = alloca [16 x i8], align 1
  %cksumdata.i = alloca [20 x i8], align 1
  %md5cksum.i = alloca %struct.xdr_netobj, align 4
  %direction.i = alloca i32, align 4
  %seqnum.i = alloca i32, align 4
  %ptr.i = alloca ptr, align 4
  %bodysize.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %gctx, i32 0, i32 1
  %0 = ptrtoint ptr %internal_ctx_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_ctx_id, align 4
  %enctype = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enctype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enctype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %do.body [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge36
    i32 17, label %entry.sw.bb4_crit_edge
    i32 18, label %entry.sw.bb4_crit_edge37
  ]

entry.sw.bb4_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge36
  %slack = getelementptr inbounds %struct.gss_ctx, ptr %gctx, i32 0, i32 2
  %align = getelementptr inbounds %struct.gss_ctx, ptr %gctx, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cksumdata.i) #9
  %5 = call ptr @memset(ptr %cksumdata.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %md5cksum.i) #9
  %6 = getelementptr inbounds %struct.xdr_netobj, ptr %md5cksum.i, i32 0, i32 1
  %7 = ptrtoint ptr %md5cksum.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %md5cksum.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cksumdata.i, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %direction.i) #9
  %9 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %direction.i, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seqnum.i) #9
  %10 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %seqnum.i, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bodysize.i) #9
  %11 = ptrtoint ptr %bodysize.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %bodysize.i, align 4, !annotation !52
  %gk5e.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gk5e.i, align 4
  %conflen2.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %conflen2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %conflen2.i, align 4
  %len3.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %16 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %18 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.do.end8.i_crit_edge, label %do.end.i, !prof !45

sw.bb.do.end8.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %sw.bb.do.end8.i_crit_edge
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %offset
  %21 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %ptr.i, align 4
  %mech_used.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 15
  %sub.i = sub i32 %len, %offset
  %call9.i = call i32 @g_verify_token_header(ptr noundef %mech_used.i, ptr noundef nonnull %bodysize.i, ptr noundef nonnull %ptr.i, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %do.end8.i.gss_unwrap_kerberos_v1.exit_crit_edge

do.end8.i.gss_unwrap_kerberos_v1.exit_crit_edge:  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end12.i:                                       ; preds = %do.end8.i
  %22 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptr.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.not.i = icmp eq i8 %25, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end12.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end12.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %arrayidx15.i = getelementptr i8, ptr %23, i32 1
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp17.not.i = icmp eq i8 %27, 1
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false.i.gss_unwrap_kerberos_v1.exit_crit_edge

lor.lhs.false.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %arrayidx21.i = getelementptr i8, ptr %23, i32 2
  %28 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %29 to i32
  %arrayidx23.i = getelementptr i8, ptr %23, i32 3
  %30 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %31 to i32
  %shl.i = shl nuw nsw i32 %conv24.i, 8
  %add.i = or i32 %shl.i, %conv22.i
  %32 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gk5e.i, align 4
  %signalg26.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %signalg26.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %signalg26.i, align 4
  %conv27.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv27.i)
  %cmp28.not.i = icmp eq i32 %add.i, %conv27.i
  br i1 %cmp28.not.i, label %if.end31.i, label %if.end20.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end20.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end31.i:                                       ; preds = %if.end20.i
  %arrayidx32.i = getelementptr i8, ptr %23, i32 4
  %36 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %37 to i32
  %arrayidx34.i = getelementptr i8, ptr %23, i32 5
  %38 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %39 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %add37.i = or i32 %shl36.i, %conv33.i
  %sealalg39.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %33, i32 0, i32 6
  %40 = ptrtoint ptr %sealalg39.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sealalg39.i, align 2
  %conv40.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i, i32 %conv40.i)
  %cmp41.not.i = icmp eq i32 %add37.i, %conv40.i
  br i1 %cmp41.not.i, label %if.end44.i, label %if.end31.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end31.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end44.i:                                       ; preds = %if.end31.i
  %arrayidx45.i = getelementptr i8, ptr %23, i32 6
  %42 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp47.not.i = icmp eq i8 %43, -1
  br i1 %cmp47.not.i, label %lor.lhs.false49.i, label %if.end44.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end44.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

lor.lhs.false49.i:                                ; preds = %if.end44.i
  %arrayidx50.i = getelementptr i8, ptr %23, i32 7
  %44 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp52.not.i = icmp eq i8 %45, -1
  br i1 %cmp52.not.i, label %if.end55.i, label %lor.lhs.false49.i.gss_unwrap_kerberos_v1.exit_crit_edge

lor.lhs.false49.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end55.i:                                       ; preds = %lor.lhs.false49.i
  %cksumlength.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %33, i32 0, i32 9
  %46 = ptrtoint ptr %cksumlength.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cksumlength.i, align 4
  %add57.i = add i32 %47, 16
  %add.ptr58.i = getelementptr i8, ptr %23, i32 %add57.i
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr58.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %50 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %len, ptr %len3.i, align 4
  %enc.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %enc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %enc.i, align 8
  %call63.i = call i32 @gss_decrypt_xdr_buf(ptr noundef %52, ptr noundef %buf, i32 noundef %sub.ptr.sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.end55.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end55.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end66.i:                                       ; preds = %if.end55.i
  %53 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gk5e.i, align 4
  %keyed_cksum.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %keyed_cksum.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %keyed_cksum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool68.not.i = icmp eq i32 %56, 0
  %cksum.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 11
  %cksumkey.0.i = select i1 %tobool68.not.i, ptr null, ptr %cksum.i
  %57 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptr.i, align 4
  %call72.i = call i32 @make_checksum(ptr noundef %1, ptr noundef %58, i32 noundef 8, ptr noundef %buf, i32 noundef %sub.ptr.sub.i, ptr noundef %cksumkey.0.i, i32 noundef 22, ptr noundef nonnull %md5cksum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %if.end66.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end66.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end75.i:                                       ; preds = %if.end66.i
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %6, align 4
  %61 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ptr.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %62, i32 16
  %63 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gk5e.i, align 4
  %cksumlength79.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %cksumlength79.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cksumlength79.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %60, ptr %add.ptr77.i, i32 %66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool81.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %if.end75.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end75.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end83.i:                                       ; preds = %if.end75.i
  %call84.i = call i64 @ktime_get_real_seconds() #9
  %endtime.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %67 = ptrtoint ptr %endtime.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %endtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call84.i, i64 %68)
  %cmp85.i = icmp sgt i64 %call84.i, %68
  br i1 %cmp85.i, label %if.end83.i.gss_unwrap_kerberos_v1.exit_crit_edge, label %if.end88.i

if.end83.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end88.i:                                       ; preds = %if.end83.i
  %69 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptr.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %70, i32 16
  %add.ptr90.i = getelementptr i8, ptr %70, i32 8
  %call91.i = call i32 @krb5_get_seq_num(ptr noundef %1, ptr noundef %add.ptr89.i, ptr noundef %add.ptr90.i, ptr noundef nonnull %direction.i, ptr noundef nonnull %seqnum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end94.i, label %if.end88.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end88.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end94.i:                                       ; preds = %if.end88.i
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool95.not.i = icmp eq i32 %72, 0
  %73 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %direction.i, align 4
  br i1 %tobool95.not.i, label %land.lhs.true101.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %74)
  %cmp96.not.i = icmp eq i32 %74, 255
  br i1 %cmp96.not.i, label %land.lhs.true.i.if.end105.i_crit_edge, label %land.lhs.true.i.gss_unwrap_kerberos_v1.exit_crit_edge

land.lhs.true.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

land.lhs.true.i.if.end105.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

land.lhs.true101.i:                               ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp102.not.i = icmp eq i32 %74, 0
  br i1 %cmp102.not.i, label %land.lhs.true101.i.if.end105.i_crit_edge, label %land.lhs.true101.i.gss_unwrap_kerberos_v1.exit_crit_edge

land.lhs.true101.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

land.lhs.true101.i.if.end105.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

if.end105.i:                                      ; preds = %land.lhs.true101.i.if.end105.i_crit_edge, %land.lhs.true.i.if.end105.i_crit_edge
  %75 = ptrtoint ptr %enc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %enc.i, align 8
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %76, i32 0, i32 2, i32 3
  %77 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_blocksize.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cra_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cra_blocksize.i.i.i.i, align 4
  %81 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptr.i, align 4
  %83 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %gk5e.i, align 4
  %cksumlength109.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %cksumlength109.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cksumlength109.i, align 4
  %add110.i = add i32 %86, 16
  %add.ptr111.i = getelementptr i8, ptr %82, i32 %add110.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr111.i, i32 %15
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf, align 4
  %add.ptr116.i = getelementptr i8, ptr %88, i32 %offset
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %89 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iov_len.i, align 4
  %add.ptr122.i = getelementptr i8, ptr %88, i32 %90
  %sub.ptr.lhs.cast123.i = ptrtoint ptr %add.ptr122.i to i32
  %sub.ptr.rhs.cast124.i = ptrtoint ptr %add.ptr112.i to i32
  %sub.ptr.sub125.i = sub i32 %sub.ptr.lhs.cast123.i, %sub.ptr.rhs.cast124.i
  %91 = call ptr @memmove(ptr %add.ptr116.i, ptr %add.ptr112.i, i32 %sub.ptr.sub125.i)
  %sub.ptr.rhs.cast127.i = ptrtoint ptr %add.ptr116.i to i32
  %sub.ptr.sub128.i = sub i32 %sub.ptr.rhs.cast124.i, %sub.ptr.rhs.cast127.i
  %92 = load i32, ptr %iov_len.i, align 4
  %sub132.i = sub i32 %92, %sub.ptr.sub128.i
  store i32 %sub132.i, ptr %iov_len.i, align 4
  %sub136.i = sub i32 %len, %sub.ptr.sub128.i
  %93 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub136.i, ptr %len3.i, align 4
  %call138.i = call fastcc i32 @gss_krb5_remove_padding(ptr noundef %buf, i32 noundef %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %if.end141.i, label %if.end105.i.gss_unwrap_kerberos_v1.exit_crit_edge

if.end105.i.gss_unwrap_kerberos_v1.exit_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v1.exit

if.end141.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len3.i, align 4
  %sub143.i = add i32 %17, 3
  %add144.i = sub i32 %sub143.i, %95
  %shr.i = lshr i32 %add144.i, 2
  %96 = ptrtoint ptr %slack to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shr.i, ptr %slack, align 4
  %97 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %shr.i, ptr %align, align 4
  br label %gss_unwrap_kerberos_v1.exit

gss_unwrap_kerberos_v1.exit:                      ; preds = %if.end141.i, %if.end105.i.gss_unwrap_kerberos_v1.exit_crit_edge, %land.lhs.true101.i.gss_unwrap_kerberos_v1.exit_crit_edge, %land.lhs.true.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end88.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end83.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end75.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end66.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end55.i.gss_unwrap_kerberos_v1.exit_crit_edge, %lor.lhs.false49.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end44.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end31.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end20.i.gss_unwrap_kerberos_v1.exit_crit_edge, %lor.lhs.false.i.gss_unwrap_kerberos_v1.exit_crit_edge, %if.end12.i.gss_unwrap_kerberos_v1.exit_crit_edge, %do.end8.i.gss_unwrap_kerberos_v1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end141.i ], [ 589824, %do.end8.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %lor.lhs.false.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %if.end12.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %if.end20.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %if.end31.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %lor.lhs.false49.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %if.end44.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %if.end55.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 851968, %if.end66.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 393216, %if.end75.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 786432, %if.end83.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 393216, %if.end88.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 393216, %land.lhs.true101.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 393216, %land.lhs.true.i.gss_unwrap_kerberos_v1.exit_crit_edge ], [ 589824, %if.end105.i.gss_unwrap_kerberos_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bodysize.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seqnum.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %direction.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %md5cksum.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cksumdata.i) #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge37
  %slack5 = getelementptr inbounds %struct.gss_ctx, ptr %gctx, i32 0, i32 2
  %align6 = getelementptr inbounds %struct.gss_ctx, ptr %gctx, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %headskip.i) #9
  %98 = ptrtoint ptr %headskip.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %headskip.i, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tailskip.i) #9
  %99 = ptrtoint ptr %tailskip.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %tailskip.i, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %decrypted_hdr.i) #9
  %100 = getelementptr inbounds [16 x i8], ptr %decrypted_hdr.i, i32 0, i32 8
  %101 = call ptr @memset(ptr %decrypted_hdr.i, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %102 = load i32, ptr @rpc_debug, align 4
  %and.i17 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %sw.bb4.do.end5.i_crit_edge, label %do.end.i20, !prof !45

sw.bb4.do.end5.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i20:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i20, %sw.bb4.do.end5.i_crit_edge
  %gk5e.i21 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %103 = ptrtoint ptr %gk5e.i21 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %gk5e.i21, align 4
  %decrypt_v2.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %104, i32 0, i32 17
  %105 = ptrtoint ptr %decrypt_v2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %decrypt_v2.i, align 4
  %cmp.i = icmp eq ptr %106, null
  br i1 %cmp.i, label %do.end5.i.gss_unwrap_kerberos_v2.exit_crit_edge, label %if.end7.i

do.end5.i.gss_unwrap_kerberos_v2.exit_crit_edge:  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

if.end7.i:                                        ; preds = %do.end5.i
  %107 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buf, align 4
  %add.ptr.i22 = getelementptr i8, ptr %108, i32 %offset
  %109 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr.i22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1284, i16 %110)
  %cmp8.not.i = icmp eq i16 %110, 1284
  br i1 %cmp8.not.i, label %if.end11.i, label %if.end7.i.gss_unwrap_kerberos_v2.exit_crit_edge

if.end7.i.gss_unwrap_kerberos_v2.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

if.end11.i:                                       ; preds = %if.end7.i
  %arrayidx12.i = getelementptr i8, ptr %add.ptr.i22, i32 2
  %111 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx12.i, align 1
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool13.not.i = icmp ne i32 %114, 0
  %115 = and i8 %112, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool16.not.i = icmp eq i8 %115, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 true, i1 %tobool16.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond231.i = select i1 %tobool13.not.i, i1 %tobool16.not.i, i1 false
  %or.cond232.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond231.i
  br i1 %or.cond232.i, label %if.end11.i.gss_unwrap_kerberos_v2.exit_crit_edge, label %if.end24.i

if.end11.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

if.end24.i:                                       ; preds = %if.end11.i
  %116 = and i8 %112, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp27.i = icmp eq i8 %116, 0
  br i1 %cmp27.i, label %do.body30.i, label %if.end48.i

do.body30.i:                                      ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %117 = load i32, ptr @rpc_debug, align 4
  %and31.i = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.gss_unwrap_kerberos_v2.exit_crit_edge, label %do.end42.i, !prof !45

do.body30.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

do.end42.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #12
  br label %gss_unwrap_kerberos_v2.exit

if.end48.i:                                       ; preds = %if.end24.i
  %arrayidx49.i = getelementptr i8, ptr %add.ptr.i22, i32 3
  %118 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %119)
  %cmp51.not.i = icmp eq i8 %119, -1
  br i1 %cmp51.not.i, label %if.end54.i, label %if.end48.i.gss_unwrap_kerberos_v2.exit_crit_edge

if.end48.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

if.end54.i:                                       ; preds = %if.end48.i
  %add.ptr55.i = getelementptr i8, ptr %add.ptr.i22, i32 4
  %120 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr55.i, align 2
  %add.ptr57.i = getelementptr i8, ptr %add.ptr.i22, i32 6
  %122 = ptrtoint ptr %add.ptr57.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr57.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp60.not.i = icmp eq i16 %123, 0
  br i1 %cmp60.not.i, label %if.end54.i.if.end64.i_crit_edge, label %if.then62.i

if.end54.i.if.end64.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv59.i = zext i16 %123 to i32
  %add.i23 = add i32 %offset, 16
  tail call fastcc void @rotate_left(i32 noundef %add.i23, ptr noundef %buf, i32 noundef %conv59.i) #9
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.end54.i.if.end64.i_crit_edge
  %124 = ptrtoint ptr %gk5e.i21 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %gk5e.i21, align 4
  %decrypt_v266.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %125, i32 0, i32 17
  %126 = ptrtoint ptr %decrypt_v266.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %decrypt_v266.i, align 4
  %call67.i = call i32 %127(ptr noundef %1, i32 noundef %offset, i32 noundef %len, ptr noundef %buf, ptr noundef nonnull %headskip.i, ptr noundef nonnull %tailskip.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i24 = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i24, label %if.end70.i, label %if.end64.i.gss_unwrap_kerberos_v2.exit_crit_edge

if.end64.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

if.end70.i:                                       ; preds = %if.end64.i
  %sub.i25 = add i32 %len, -16
  %128 = ptrtoint ptr %tailskip.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tailskip.i, align 4
  %sub71.i = sub i32 %sub.i25, %129
  %call72.i26 = call i32 @read_bytes_from_xdr_buf(ptr noundef %buf, i32 noundef %sub71.i, ptr noundef nonnull %decrypted_hdr.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i26)
  %tobool73.not.i27 = icmp eq i32 %call72.i26, 0
  br i1 %tobool73.not.i27, label %if.end93.i, label %do.body75.i

do.body75.i:                                      ; preds = %if.end70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %130 = load i32, ptr @rpc_debug, align 4
  %and76.i = and i32 %130, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %do.body75.i.gss_unwrap_kerberos_v2.exit_crit_edge, label %do.end87.i, !prof !45

do.body75.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

do.end87.i:                                       ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #11
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %call72.i26) #12
  br label %gss_unwrap_kerberos_v2.exit

if.end93.i:                                       ; preds = %if.end70.i
  %bcmp.i28 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr.i22, ptr noundef nonnull dereferenceable(6) %decrypted_hdr.i, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i28)
  %tobool96.not.i = icmp eq i32 %bcmp.i28, 0
  br i1 %tobool96.not.i, label %lor.lhs.false97.i, label %if.end93.i.do.body104.i_crit_edge

if.end93.i.do.body104.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body104.i

lor.lhs.false97.i:                                ; preds = %if.end93.i
  %add.ptr98.i = getelementptr i8, ptr %add.ptr.i22, i32 8
  %bcmp230.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr98.i, ptr noundef dereferenceable(8) %100, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp230.i)
  %tobool102.not.i = icmp eq i32 %bcmp230.i, 0
  br i1 %tobool102.not.i, label %if.end122.i, label %lor.lhs.false97.i.do.body104.i_crit_edge

lor.lhs.false97.i.do.body104.i_crit_edge:         ; preds = %lor.lhs.false97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body104.i

do.body104.i:                                     ; preds = %lor.lhs.false97.i.do.body104.i_crit_edge, %if.end93.i.do.body104.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %131 = load i32, ptr @rpc_debug, align 4
  %and105.i = and i32 %131, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %do.body104.i.gss_unwrap_kerberos_v2.exit_crit_edge, label %do.end116.i, !prof !45

do.body104.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

do.end116.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6) #12
  br label %gss_unwrap_kerberos_v2.exit

if.end122.i:                                      ; preds = %lor.lhs.false97.i
  %call123.i = call i64 @ktime_get_real_seconds() #9
  %endtime.i29 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %132 = ptrtoint ptr %endtime.i29 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %endtime.i29, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call123.i, i64 %133)
  %cmp124.i = icmp sgt i64 %call123.i, %133
  br i1 %cmp124.i, label %if.end122.i.gss_unwrap_kerberos_v2.exit_crit_edge, label %do.end160.i

if.end122.i.gss_unwrap_kerberos_v2.exit_crit_edge: ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gss_unwrap_kerberos_v2.exit

do.end160.i:                                      ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  %iov_len.i30 = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %134 = ptrtoint ptr %iov_len.i30 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %iov_len.i30, align 4
  %136 = call i32 @llvm.umin.i32(i32 %135, i32 %len) #9
  %137 = ptrtoint ptr %headskip.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %headskip.i, align 4
  %139 = add i32 %138, %offset
  %add134.neg.i = sub i32 -16, %139
  %sub135.i = add i32 %add134.neg.i, %136
  %add.ptr161.i = getelementptr i8, ptr %add.ptr.i22, i32 16
  %add.ptr162.i = getelementptr i8, ptr %add.ptr161.i, i32 %138
  %140 = call ptr @memmove(ptr %add.ptr.i22, ptr %add.ptr162.i, i32 %sub135.i)
  %141 = load i32, ptr %headskip.i, align 4
  %add163.i = add i32 %141, 16
  %142 = ptrtoint ptr %iov_len.i30 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %iov_len.i30, align 4
  %sub167.i = sub i32 %143, %add163.i
  store i32 %sub167.i, ptr %iov_len.i30, align 4
  %sub169.i = sub i32 %len, %add163.i
  %len170.i = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %144 = ptrtoint ptr %len170.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub169.i, ptr %len170.i, align 4
  %conv171.i = zext i16 %121 to i32
  %add172.i = add nuw nsw i32 %conv171.i, 16
  %145 = ptrtoint ptr %tailskip.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tailskip.i, align 4
  %add173.i = add i32 %add172.i, %146
  call void @xdr_buf_trim(ptr noundef %buf, i32 noundef %add173.i) #9
  %147 = ptrtoint ptr %headskip.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %headskip.i, align 4
  %add175.i = add i32 %148, 19
  %shr.i31 = lshr i32 %add175.i, 2
  %149 = ptrtoint ptr %align6 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %shr.i31, ptr %align6, align 4
  %150 = ptrtoint ptr %tailskip.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tailskip.i, align 4
  %add178.i = add nuw nsw i32 %conv171.i, 19
  %add179.i = add i32 %add178.i, %151
  %shr180.i = lshr i32 %add179.i, 2
  %add181.i = add nuw nsw i32 %shr180.i, %shr.i31
  %152 = ptrtoint ptr %slack5 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add181.i, ptr %slack5, align 4
  br label %gss_unwrap_kerberos_v2.exit

gss_unwrap_kerberos_v2.exit:                      ; preds = %do.end160.i, %if.end122.i.gss_unwrap_kerberos_v2.exit_crit_edge, %do.end116.i, %do.body104.i.gss_unwrap_kerberos_v2.exit_crit_edge, %do.end87.i, %do.body75.i.gss_unwrap_kerberos_v2.exit_crit_edge, %if.end64.i.gss_unwrap_kerberos_v2.exit_crit_edge, %if.end48.i.gss_unwrap_kerberos_v2.exit_crit_edge, %do.end42.i, %do.body30.i.gss_unwrap_kerberos_v2.exit_crit_edge, %if.end11.i.gss_unwrap_kerberos_v2.exit_crit_edge, %if.end7.i.gss_unwrap_kerberos_v2.exit_crit_edge, %do.end5.i.gss_unwrap_kerberos_v2.exit_crit_edge
  %retval.0.i32 = phi i32 [ 0, %do.end160.i ], [ 851968, %do.end5.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 589824, %if.end7.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 393216, %if.end11.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 589824, %do.end42.i ], [ 589824, %do.body30.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 589824, %if.end48.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 851968, %if.end64.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 851968, %do.end87.i ], [ 851968, %do.body75.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 851968, %do.end116.i ], [ 851968, %do.body104.i.gss_unwrap_kerberos_v2.exit_crit_edge ], [ 786432, %if.end122.i.gss_unwrap_kerberos_v2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %decrypted_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tailskip.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %headskip.i) #9
  br label %cleanup

cleanup:                                          ; preds = %gss_unwrap_kerberos_v2.exit, %gss_unwrap_kerberos_v1.exit
  %retval.0 = phi i32 [ %retval.0.i32, %gss_unwrap_kerberos_v2.exit ], [ %retval.0.i, %gss_unwrap_kerberos_v1.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_token_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_extend_head(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @g_make_token_header(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_checksum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_make_seq_num(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_encrypt_xdr_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_verify_token_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_decrypt_xdr_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_get_seq_num(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_krb5_remove_padding(ptr nocapture noundef %buf, i32 noundef %blocksize) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %len1 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ugt i32 %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %1
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 -1
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr4, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp8 = icmp ult i32 %3, %conv
  br i1 %cmp8, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %3, %conv
  %8 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %iov_len, align 4
  br label %out

if.else:                                          ; preds = %entry
  %sub18 = sub i32 %1, %3
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 5
  %9 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18, i32 %10)
  %cmp20.not = icmp ugt i32 %sub18, %10
  br i1 %cmp20.not, label %if.else32, label %if.then22

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_base, align 4
  %add = add i32 %sub18, -1
  %sub23 = add i32 %add, %12
  %shr = lshr i32 %sub23, 12
  %and = and i32 %sub23, 4095
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 3
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages, align 4
  %arrayidx27 = getelementptr ptr, ptr %14, i32 %shr
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %17, 512
  %18 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %22 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i1.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %16, i32 noundef %or.i) #9
  %add.ptr28 = getelementptr i8, ptr %call.i.i, i32 %and
  %28 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr28, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %30 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i1.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %35, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %36 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %out

if.else32:                                        ; preds = %if.else
  %sub34 = sub i32 %sub18, %10
  %iov_len38 = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %iov_len38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iov_len38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub34, i32 %41)
  %cmp39 = icmp ugt i32 %sub34, %41
  br i1 %cmp39, label %do.body43, label %do.end51, !prof !57

do.body43:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_wrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 91, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.end51:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 1
  %42 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail, align 4
  %add.ptr55 = getelementptr i8, ptr %43, i32 %sub34
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i32 -1
  %44 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr56, align 1
  br label %out

out:                                              ; preds = %do.end51, %if.then22, %if.end
  %pad.0 = phi i8 [ %7, %if.end ], [ %29, %if.then22 ], [ %45, %do.end51 ]
  %conv57 = zext i8 %pad.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %blocksize)
  %cmp58 = icmp sgt i32 %conv57, %blocksize
  br i1 %cmp58, label %out.cleanup_crit_edge, label %if.end61

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %out
  %46 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv57)
  %cmp64 = icmp ugt i32 %47, %conv57
  br i1 %cmp64, label %if.then66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %sub69 = sub i32 %47, %conv57
  %48 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub69, ptr %len1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end61.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then66 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %out.cleanup_crit_edge ], [ -22, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rotate_left(i32 noundef %base, ptr noundef %buf, i32 noundef %shift) unnamed_addr #0 align 64 {
entry:
  %head.i.i = alloca [32 x i8], align 1
  %tmp.i.i = alloca [32 x i8], align 1
  %subbuf = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %subbuf) #9
  %0 = call ptr @memset(ptr %subbuf, i32 255, i32 44)
  %len = getelementptr inbounds %struct.xdr_buf, ptr %buf, i32 0, i32 8
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %sub = sub i32 %2, %base
  %call = call i32 @xdr_buf_subsegment(ptr noundef %buf, ptr noundef nonnull %subbuf, i32 noundef %base, i32 noundef %sub) #9
  %len.i = getelementptr inbounds %struct.xdr_buf, ptr %subbuf, i32 0, i32 8
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %rem.i = urem i32 %shift, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp10.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp10.not.i, label %entry._rotate_left.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry._rotate_left.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_rotate_left.exit

while.body.i:                                     ; preds = %rotate_buf_a_little.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %shifted.011.i = phi i32 [ %add.i, %rotate_buf_a_little.exit.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %sub.i = sub i32 %rem.i, %shifted.011.i
  %5 = call i32 @llvm.umin.i32(i32 %sub.i, i32 32) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %head.i.i) #9
  %6 = call ptr @memset(ptr %head.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i.i) #9
  %7 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 32)
  %call.i.i = call i32 @read_bytes_from_xdr_buf(ptr noundef nonnull %subbuf, i32 noundef 0, ptr noundef nonnull %head.i.i, i32 noundef %5) #9
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp842.i.i = icmp ugt i32 %9, %5
  br i1 %cmp842.i.i, label %while.body.i.for.body.i.i_crit_edge, label %while.body.i.rotate_buf_a_little.exit.i_crit_edge

while.body.i.rotate_buf_a_little.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rotate_buf_a_little.exit.i

while.body.i.for.body.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.body.i.for.body.i.i_crit_edge
  %10 = phi i32 [ %13, %for.body.i.i.for.body.i.i_crit_edge ], [ %9, %while.body.i.for.body.i.i_crit_edge ]
  %add44.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %5, %while.body.i.for.body.i.i_crit_edge ]
  %i.043.i.i = phi i32 [ %add18.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.i.for.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %10, %add44.i.i
  %11 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 32) #9
  %call15.i.i = call i32 @read_bytes_from_xdr_buf(ptr noundef nonnull %subbuf, i32 noundef %add44.i.i, ptr noundef nonnull %tmp.i.i, i32 noundef %11) #9
  %call17.i.i = call i32 @write_bytes_to_xdr_buf(ptr noundef nonnull %subbuf, i32 noundef %i.043.i.i, ptr noundef nonnull %tmp.i.i, i32 noundef %11) #9
  %add18.i.i = add i32 %i.043.i.i, 32
  %add.i.i = add i32 %add18.i.i, %5
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %cmp8.i.i = icmp ugt i32 %13, %add.i.i
  br i1 %cmp8.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.rotate_buf_a_little.exit.i_crit_edge

for.body.i.i.rotate_buf_a_little.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rotate_buf_a_little.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

rotate_buf_a_little.exit.i:                       ; preds = %for.body.i.i.rotate_buf_a_little.exit.i_crit_edge, %while.body.i.rotate_buf_a_little.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %9, %while.body.i.rotate_buf_a_little.exit.i_crit_edge ], [ %13, %for.body.i.i.rotate_buf_a_little.exit.i_crit_edge ]
  %sub20.i.i = sub i32 %.lcssa.i.i, %5
  %call22.i.i = call i32 @write_bytes_to_xdr_buf(ptr noundef nonnull %subbuf, i32 noundef %sub20.i.i, ptr noundef nonnull %head.i.i, i32 noundef %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %head.i.i) #9
  %add.i = add i32 %5, %shifted.011.i
  %cmp.i = icmp ugt i32 %rem.i, %add.i
  br i1 %cmp.i, label %rotate_buf_a_little.exit.i.while.body.i_crit_edge, label %rotate_buf_a_little.exit.i._rotate_left.exit_crit_edge

rotate_buf_a_little.exit.i._rotate_left.exit_crit_edge: ; preds = %rotate_buf_a_little.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_rotate_left.exit

rotate_buf_a_little.exit.i.while.body.i_crit_edge: ; preds = %rotate_buf_a_little.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

_rotate_left.exit:                                ; preds = %rotate_buf_a_little.exit.i._rotate_left.exit_crit_edge, %entry._rotate_left.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_bytes_from_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_bytes_to_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @gss_krb5_make_confounder.i, !1, !"i", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 119, i32 13}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 173, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gss_wrap_kerberos_v1._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gss_wrap_kerberos_v1._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 419, i32 2}
!10 = !{ptr @gss_wrap_kerberos_v2._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gss_wrap_kerberos_v2._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 269, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gss_unwrap_kerberos_v1._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gss_unwrap_kerberos_v1._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 474, i32 2}
!19 = !{ptr @gss_unwrap_kerberos_v2._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @gss_unwrap_kerberos_v2._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 490, i32 3}
!23 = !{ptr @gss_unwrap_kerberos_v2._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @gss_unwrap_kerberos_v2._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 521, i32 3}
!27 = !{ptr @gss_unwrap_kerberos_v2._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gss_unwrap_kerberos_v2._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sunrpc/auth_gss/gss_krb5_wrap.c", i32 526, i32 3}
!31 = !{ptr @gss_unwrap_kerberos_v2._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gss_unwrap_kerberos_v2._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2155173210, i64 2155173710, i64 2155173247, i64 2155173303, i64 2155173337, i64 2155173361, i64 2155173402, i64 2155173423, i64 2155173451, i64 2155173485}
!44 = !{i64 2155204977, i64 2155205477, i64 2155205014, i64 2155205070, i64 2155205104, i64 2155205128, i64 2155205169, i64 2155205190, i64 2155205218, i64 2155205252}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2155176529, i64 2155177029, i64 2155176566, i64 2155176622, i64 2155176656, i64 2155176680, i64 2155176721, i64 2155176742, i64 2155176770, i64 2155176804}
!47 = !{i64 2155178220, i64 2155178720, i64 2155178257, i64 2155178313, i64 2155178347, i64 2155178371, i64 2155178412, i64 2155178433, i64 2155178461, i64 2155178495}
!48 = !{i64 2148283871}
!49 = !{i64 2148198470, i64 2148198502, i64 2148198531, i64 2148198565, i64 2148198596, i64 2148198619}
!50 = !{i64 2148284099}
!51 = !{i64 2155206531, i64 2155207031, i64 2155206568, i64 2155206624, i64 2155206658, i64 2155206682, i64 2155206723, i64 2155206744, i64 2155206772, i64 2155206806}
!52 = !{!"auto-init"}
!53 = !{i64 2154267438}
!54 = !{i64 2152254189}
!55 = !{i64 2152254396}
!56 = !{i64 2154270209}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2155171646, i64 2155172145, i64 2155171683, i64 2155171739, i64 2155171773, i64 2155171797, i64 2155171838, i64 2155171859, i64 2155171887, i64 2155171921}
