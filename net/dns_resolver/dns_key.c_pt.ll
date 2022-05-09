; ModuleID = '/llk/IR_all_yes/net/dns_resolver/dns_key.c_pt.bc'
source_filename = "../net/dns_resolver/dns_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dns_payload_header = type { i8, i8, i8 }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.19, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.20, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.21, %union.anon.26, ptr }
%union.anon.19 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.20 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.21 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.22, ptr, ptr, ptr }
%union.anon.22 = type { i32 }
%union.anon.26 = type { %union.key_payload }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.35 = type { %struct.callback_head }

@__UNIQUE_ID_description215 = internal constant [38 x i8] c"dns_resolver.description=DNS Resolver\00", section ".modinfo", align 1
@__UNIQUE_ID_author216 = internal constant [29 x i8] c"dns_resolver.author=Wang Lei\00", section ".modinfo", align 1
@__UNIQUE_ID_file217 = internal constant [48 x i8] c"dns_resolver.file=net/dns_resolver/dns_resolver\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [25 x i8] c"dns_resolver.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [19 x i8] c"dns_resolver.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dns_resolver_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @dns_resolver_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype219 = internal constant [33 x i8] c"dns_resolver.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug220 = internal constant [52 x i8] c"dns_resolver.parm=debug:DNS Resolver debugging mask\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dns_resolver\00", [19 x i8] zeroinitializer }, align 32
@key_type_dns_resolver = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 1, ptr null, ptr @dns_resolver_preparse, ptr @dns_resolver_free_preparse, ptr @generic_key_instantiate, ptr null, ptr @dns_resolver_match_preparse, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @dns_resolver_describe, ptr @dns_resolver_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@dns_resolver_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_dns_resolver__221_382_init_dns_resolver6 = internal global ptr @init_dns_resolver, section ".initcall6.init", align 4
@__exitcall_exit_dns_resolver = internal global ptr @exit_dns_resolver, section ".exitcall.exit", align 4
@__UNIQUE_ID_file222 = internal constant [48 x i8] c"dns_resolver.file=net/dns_resolver/dns_resolver\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [25 x i8] c"dns_resolver.license=GPL\00", section ".modinfo", align 1
@dns_resolver_preparse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] ==> %s([%u,%u],%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dns_resolver_preparse\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/dns_resolver/dns_key.c\00", [37 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr = internal global ptr @dns_resolver_preparse._entry, section ".printk_index", align 4
@dns_resolver_preparse._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014dns_resolver: Unsupported content type (%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.7 = internal global ptr @dns_resolver_preparse._entry.5, section ".printk_index", align 4
@dns_resolver_preparse._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014dns_resolver: Unsupported server list version (%u)\0A\00", [42 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.11 = internal global ptr @dns_resolver_preparse._entry.9, section ".printk_index", align 4
@dns_resolver_preparse._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] ==> %s('%*.*s',%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.14 = internal global ptr @dns_resolver_preparse._entry.12, section ".printk_index", align 4
@dns_resolver_preparse._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017[%-6.6s] no options\0A\00", [41 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.17 = internal global ptr @dns_resolver_preparse._entry.15, section ".printk_index", align 4
@dns_resolver_preparse._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] options: '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.20 = internal global ptr @dns_resolver_preparse._entry.18, section ".printk_index", align 4
@dns_resolver_preparse._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Invalid option length (%d) for dns_resolver key\0A\00", [45 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.24 = internal global ptr @dns_resolver_preparse._entry.22, section ".printk_index", align 4
@dns_resolver_preparse._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017[%-6.6s] option '%*.*s' val '%s'\0A\00", [60 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.27 = internal global ptr @dns_resolver_preparse._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dnserror\00", [23 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017[%-6.6s] dns error number option\0A\00", [60 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.31 = internal global ptr @dns_resolver_preparse._entry.29, section ".printk_index", align 4
@dns_resolver_preparse._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017[%-6.6s] dns error no. = %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.34 = internal global ptr @dns_resolver_preparse._entry.32, section ".printk_index", align 4
@dns_resolver_preparse._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014Option '%*.*s' to dns_resolver key: bad/missing value\0A\00", [39 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.38 = internal global ptr @dns_resolver_preparse._entry.36, section ".printk_index", align 4
@dns_resolver_preparse._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017[%-6.6s] <== %s() = 0 [h_error %ld]\0A\00", [57 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.41 = internal global ptr @dns_resolver_preparse._entry.39, section ".printk_index", align 4
@dns_resolver_preparse._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] store result\0A\00", [39 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.44 = internal global ptr @dns_resolver_preparse._entry.42, section ".printk_index", align 4
@dns_resolver_preparse._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] <== %s() = -ENOMEM\0A\00", [33 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.47 = internal global ptr @dns_resolver_preparse._entry.45, section ".printk_index", align 4
@dns_resolver_preparse._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] <== %s() = 0\0A\00", [39 x i8] zeroinitializer }, align 32
@dns_resolver_preparse._entry_ptr.50 = internal global ptr @dns_resolver_preparse._entry.48, section ".printk_index", align 4
@dns_resolver_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] ==> %s(%s,%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dns_resolver_cmp\00", [47 x i8] zeroinitializer }, align 32
@dns_resolver_cmp._entry_ptr = internal global ptr @dns_resolver_cmp._entry, section ".printk_index", align 4
@dns_resolver_cmp._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dns_resolver_cmp._entry_ptr.55 = internal global ptr @dns_resolver_cmp._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c": %d\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c": %u\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c".dns_resolver\00", [18 x i8] zeroinitializer }, align 32
@init_dns_resolver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017[%-6.6s] DNS resolver keyring: %d\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_dns_resolver\00", [46 x i8] zeroinitializer }, align 32
@init_dns_resolver._entry_ptr = internal global ptr @init_dns_resolver._entry, section ".printk_index", align 4
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"dns_resolver_debug\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 41, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 316, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"key_type_dns_resolver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 315, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"dns_resolver_cache\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 45, i32 20 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 110, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 112, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 119, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 129, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 140, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 147, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 156, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 172, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 178, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 179, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 188, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 194, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 203, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 208, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 213, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 222, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 248, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 270, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 294, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 296, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 286, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 344, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [30 x i8] c"../net/dns_resolver/dns_key.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 365, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author216, ptr @__UNIQUE_ID_debug220, ptr @__UNIQUE_ID_debugtype219, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_file217, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license218, ptr @__UNIQUE_ID_license223, ptr @__exitcall_exit_dns_resolver, ptr @__initcall__kmod_dns_resolver__221_382_init_dns_resolver6, ptr @__param_debug, ptr @dns_resolver_cmp._entry, ptr @dns_resolver_cmp._entry.53, ptr @dns_resolver_cmp._entry_ptr, ptr @dns_resolver_cmp._entry_ptr.55, ptr @dns_resolver_preparse._entry, ptr @dns_resolver_preparse._entry.12, ptr @dns_resolver_preparse._entry.15, ptr @dns_resolver_preparse._entry.18, ptr @dns_resolver_preparse._entry.22, ptr @dns_resolver_preparse._entry.25, ptr @dns_resolver_preparse._entry.29, ptr @dns_resolver_preparse._entry.32, ptr @dns_resolver_preparse._entry.36, ptr @dns_resolver_preparse._entry.39, ptr @dns_resolver_preparse._entry.42, ptr @dns_resolver_preparse._entry.45, ptr @dns_resolver_preparse._entry.48, ptr @dns_resolver_preparse._entry.5, ptr @dns_resolver_preparse._entry.9, ptr @dns_resolver_preparse._entry_ptr, ptr @dns_resolver_preparse._entry_ptr.11, ptr @dns_resolver_preparse._entry_ptr.14, ptr @dns_resolver_preparse._entry_ptr.17, ptr @dns_resolver_preparse._entry_ptr.20, ptr @dns_resolver_preparse._entry_ptr.24, ptr @dns_resolver_preparse._entry_ptr.27, ptr @dns_resolver_preparse._entry_ptr.31, ptr @dns_resolver_preparse._entry_ptr.34, ptr @dns_resolver_preparse._entry_ptr.38, ptr @dns_resolver_preparse._entry_ptr.41, ptr @dns_resolver_preparse._entry_ptr.44, ptr @dns_resolver_preparse._entry_ptr.47, ptr @dns_resolver_preparse._entry_ptr.50, ptr @dns_resolver_preparse._entry_ptr.7, ptr @exit_dns_resolver, ptr @init_dns_resolver._entry, ptr @init_dns_resolver._entry_ptr, ptr @dns_resolver_debug, ptr @.str, ptr @key_type_dns_resolver, ptr @dns_resolver_cache, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dns_resolver_preparse._rs, ptr @.str.4, ptr @.str.6, ptr @dns_resolver_preparse._rs.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @dns_resolver_preparse._rs.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @dns_resolver_preparse._rs.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_dns_resolver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_preparse._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_resolver_cmp._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dns_resolver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dns_resolver_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
  %derrno = alloca i32, align 4
  %optval = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %derrno) #12
  %0 = ptrtoint ptr %derrno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %derrno, align 4, !annotation !129
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %1 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %datalen1, align 4
  %data2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp slt i32 %2, 2
  %tobool.not = icmp eq ptr %4, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup385_crit_edge, label %if.end

entry.cleanup385_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3 = icmp eq i8 %6, 0
  br i1 %cmp3, label %if.then5, label %do.body56

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp6 = icmp ult i32 %2, 4
  br i1 %cmp6, label %if.then5.cleanup385_crit_edge, label %if.end9

if.then5.cleanup385_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end9:                                          ; preds = %if.then5
  %7 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end9.do.end20_crit_edge, label %do.end, !prof !130

if.end9.do.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %content = getelementptr inbounds %struct.dns_payload_header, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %content to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %content, align 1
  %conv15 = zext i8 %13 to i32
  %version = getelementptr inbounds %struct.dns_payload_header, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %version, align 1
  %conv16 = zext i8 %15 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %comm, ptr noundef nonnull @.str.2, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %2) #15
  br label %do.end20

do.end20:                                         ; preds = %do.end, %if.end9.do.end20_crit_edge
  %content21 = getelementptr inbounds %struct.dns_payload_header, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %content21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %content21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp23.not = icmp eq i8 %17, 0
  br i1 %cmp23.not, label %if.end37, label %if.then25

if.then25:                                        ; preds = %do.end20
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.cleanup385_crit_edge, label %do.end31

if.then25.cleanup385_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %content21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %content21, align 1
  %conv34 = zext i8 %19 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv34) #15
  br label %cleanup385

if.end37:                                         ; preds = %do.end20
  %version38 = getelementptr inbounds %struct.dns_payload_header, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %version38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %version38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp40.not = icmp eq i8 %21, 1
  br i1 %cmp40.not, label %if.end37.do.body309_crit_edge, label %if.then42

if.end37.do.body309_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309

if.then42:                                        ; preds = %if.end37
  %call43 = tail call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs.8, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.cleanup385_crit_edge, label %do.end48

if.then42.cleanup385_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

do.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %version38 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %version38, align 1
  %conv51 = zext i8 %23 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv51) #15
  br label %cleanup385

do.body56:                                        ; preds = %if.end
  %24 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool57.not = icmp eq i32 %24, 0
  br i1 %tobool57.not, label %do.body56.lor.lhs.false78_crit_edge, label %do.end67, !prof !130

do.body56.lor.lhs.false78_crit_edge:              ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false78

do.end67:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i472 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i472 to ptr
  %task70 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task70, align 8
  %comm71 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm71, ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %2) #15
  br label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %do.end67, %do.body56.lor.lhs.false78_crit_edge
  %sub = add nsw i32 %2, -1
  %arrayidx79 = getelementptr i8, ptr %4, i32 %sub
  %29 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp81.not = icmp eq i8 %30, 0
  br i1 %cmp81.not, label %if.end84, label %lor.lhs.false78.cleanup385_crit_edge

lor.lhs.false78.cleanup385_crit_edge:             ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end84:                                         ; preds = %lor.lhs.false78
  %call85 = tail call ptr @memchr(ptr noundef nonnull %4, i32 noundef 35, i32 noundef %sub) #16
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %do.body88, label %if.else

do.body88:                                        ; preds = %if.end84
  %31 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool89.not = icmp eq i32 %31, 0
  br i1 %tobool89.not, label %do.body88.if.end279_crit_edge, label %do.end99, !prof !130

do.body88.if.end279_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

do.end99:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #14
  %32 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i473 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i473 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task102, align 8
  %comm103 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm103) #15
  br label %if.end279

if.else:                                          ; preds = %if.end84
  %sub.ptr.lhs.cast = ptrtoint ptr %call85 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %incdec.ptr = getelementptr i8, ptr %call85, i32 1
  %36 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool110.not = icmp eq i32 %36, 0
  br i1 %tobool110.not, label %if.else.do.end129_crit_edge, label %do.end120, !prof !130

if.else.do.end129_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

do.end120:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i474 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i474 to ptr
  %task123 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task123 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task123, align 8
  %comm124 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm124, ptr noundef %incdec.ptr) #15
  br label %do.end129

do.end129:                                        ; preds = %do.end120, %if.else.do.end129_crit_edge
  %sub.ptr.lhs.cast131 = ptrtoint ptr %arrayidx79 to i32
  %arrayidx258 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  br label %do.body130

do.body130:                                       ; preds = %do.end255.do.body130_crit_edge, %do.end129
  %opt.0 = phi ptr [ %incdec.ptr, %do.end129 ], [ %add.ptr273, %do.end255.do.body130_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %optval) #12
  %41 = call ptr @memset(ptr %optval, i32 255, i32 128)
  %sub.ptr.rhs.cast132 = ptrtoint ptr %opt.0 to i32
  %sub.ptr.sub133 = sub i32 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast132
  %call134 = call ptr @memchr(ptr noundef %opt.0, i32 noundef 35, i32 noundef %sub.ptr.sub133) #16
  %tobool135.not = icmp eq ptr %call134, null
  %spec.select = select i1 %tobool135.not, ptr %arrayidx79, ptr %call134
  %sub.ptr.lhs.cast136 = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub138 = sub i32 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast132
  %42 = add i32 %sub.ptr.sub138, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %42)
  %43 = icmp ult i32 %42, -128
  br i1 %43, label %if.then144, label %if.end154

if.then144:                                       ; preds = %do.body130
  %call145 = call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs.21, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then144.cleanup_crit_edge, label %do.end150

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end150:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %sub.ptr.sub138) #15
  br label %cleanup

if.end154:                                        ; preds = %do.body130
  %call155 = call ptr @memchr(ptr noundef %opt.0, i32 noundef 61, i32 noundef %sub.ptr.sub138) #16
  %tobool156.not = icmp eq ptr %call155, null
  br i1 %tobool156.not, label %if.else170, label %if.then157

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast158 = ptrtoint ptr %call155 to i32
  %sub.ptr.sub160 = sub i32 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast132
  %incdec.ptr161 = getelementptr i8, ptr %call155, i32 1
  %sub.ptr.rhs.cast164 = ptrtoint ptr %incdec.ptr161 to i32
  %sub.ptr.sub165 = sub i32 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast164
  %44 = call ptr @memcpy(ptr %optval, ptr %incdec.ptr161, i32 %sub.ptr.sub165)
  %arrayidx169 = getelementptr [128 x i8], ptr %optval, i32 0, i32 %sub.ptr.sub165
  %45 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx169, align 1
  br label %do.body173

if.else170:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %optval to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %optval, align 1
  br label %do.body173

do.body173:                                       ; preds = %if.else170, %if.then157
  %opt_nlen.0 = phi i32 [ %sub.ptr.sub160, %if.then157 ], [ %sub.ptr.sub138, %if.else170 ]
  %47 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool174.not = icmp eq i32 %47, 0
  br i1 %tobool174.not, label %do.body173.do.end194_crit_edge, label %do.end184, !prof !130

do.body173.do.end194_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end194

do.end184:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #14
  %48 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i475 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i475 to ptr
  %task187 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task187 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task187, align 8
  %comm188 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %comm188, i32 noundef %opt_nlen.0, i32 noundef %opt_nlen.0, ptr noundef %opt.0, ptr noundef nonnull %optval) #15
  br label %do.end194

do.end194:                                        ; preds = %do.end184, %do.body173.do.end194_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %opt_nlen.0)
  %cmp195 = icmp eq i32 %opt_nlen.0, 8
  br i1 %cmp195, label %land.lhs.true, label %do.end194.bad_option_value_crit_edge

do.end194.bad_option_value_crit_edge:             ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_option_value

land.lhs.true:                                    ; preds = %do.end194
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %opt.0, ptr noundef nonnull dereferenceable(8) @.str.28, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp198 = icmp eq i32 %bcmp, 0
  br i1 %cmp198, label %do.body201, label %land.lhs.true.bad_option_value_crit_edge

land.lhs.true.bad_option_value_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_option_value

do.body201:                                       ; preds = %land.lhs.true
  %52 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool202.not = icmp eq i32 %52, 0
  br i1 %tobool202.not, label %do.body201.do.end221_crit_edge, label %do.end212, !prof !130

do.body201.do.end221_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end221

do.end212:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #14
  %53 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i476 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i476 to ptr
  %task215 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task215 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task215, align 8
  %comm216 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 101
  %call218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm216) #15
  br label %do.end221

do.end221:                                        ; preds = %do.end212, %do.body201.do.end221_crit_edge
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %optval, i32 noundef 10, ptr noundef nonnull %derrno) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp224 = icmp slt i32 %call.i, 0
  br i1 %cmp224, label %do.end221.bad_option_value_crit_edge, label %if.end227

do.end221.bad_option_value_crit_edge:             ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_option_value

if.end227:                                        ; preds = %do.end221
  %57 = ptrtoint ptr %derrno to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %derrno, align 4
  %59 = add i32 %58, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -511, i32 %59)
  %60 = icmp ult i32 %59, -511
  br i1 %60, label %if.end227.bad_option_value_crit_edge, label %do.body235

if.end227.bad_option_value_crit_edge:             ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_option_value

do.body235:                                       ; preds = %if.end227
  %61 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool236.not = icmp eq i32 %61, 0
  br i1 %tobool236.not, label %do.body235.do.end255_crit_edge, label %do.end246, !prof !130

do.body235.do.end255_crit_edge:                   ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end255

do.end246:                                        ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #14
  %62 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i477 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i477 to ptr
  %task249 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task249 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task249, align 8
  %comm250 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 101
  %call252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm250, i32 noundef %58) #15
  br label %do.end255

do.end255:                                        ; preds = %do.end246, %do.body235.do.end255_crit_edge
  %66 = ptrtoint ptr %derrno to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %derrno, align 4
  %sub256 = sub i32 0, %67
  %68 = inttoptr i32 %sub256 to ptr
  %69 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %arrayidx258, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %optval) #12
  %add.ptr273 = getelementptr i8, ptr %spec.select, i32 1
  %cmp274 = icmp ult ptr %add.ptr273, %arrayidx79
  br i1 %cmp274, label %do.end255.do.body130_crit_edge, label %do.end255.if.end279_crit_edge

do.end255.if.end279_crit_edge:                    ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

do.end255.do.body130_crit_edge:                   ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body130

bad_option_value:                                 ; preds = %if.end227.bad_option_value_crit_edge, %do.end221.bad_option_value_crit_edge, %land.lhs.true.bad_option_value_crit_edge, %do.end194.bad_option_value_crit_edge
  %call260 = call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs.35, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %bad_option_value.cleanup_crit_edge, label %do.end265

bad_option_value.cleanup_crit_edge:               ; preds = %bad_option_value
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end265:                                        ; preds = %bad_option_value
  call void @__sanitizer_cov_trace_pc() #14
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %opt_nlen.0, i32 noundef %opt_nlen.0, ptr noundef %opt.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end265, %bad_option_value.cleanup_crit_edge, %do.end150, %if.then144.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %optval) #12
  br label %cleanup385

if.end279:                                        ; preds = %do.end255.if.end279_crit_edge, %do.end99, %do.body88.if.end279_crit_edge
  %result_len.0 = phi i32 [ %sub, %do.end99 ], [ %sub, %do.body88.if.end279_crit_edge ], [ %sub.ptr.sub, %do.end255.if.end279_crit_edge ]
  %arrayidx281 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx281, align 4
  %tobool282.not = icmp eq ptr %71, null
  br i1 %tobool282.not, label %if.end279.do.body309_crit_edge, label %do.body284

if.end279.do.body309_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309

do.body284:                                       ; preds = %if.end279
  %72 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool285.not = icmp eq i32 %72, 0
  br i1 %tobool285.not, label %do.body284.cleanup385_crit_edge, label %do.end295, !prof !130

do.body284.cleanup385_crit_edge:                  ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

do.end295:                                        ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #14
  %73 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i478 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i478 to ptr
  %task298 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task298 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task298, align 8
  %comm299 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %77 = ptrtoint ptr %71 to i32
  %call304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm299, ptr noundef nonnull @.str.2, i32 noundef %77) #15
  br label %cleanup385

do.body309:                                       ; preds = %if.end279.do.body309_crit_edge, %if.end37.do.body309_crit_edge
  %result_len.1 = phi i32 [ %result_len.0, %if.end279.do.body309_crit_edge ], [ %2, %if.end37.do.body309_crit_edge ]
  %78 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool310.not = icmp eq i32 %78, 0
  br i1 %tobool310.not, label %do.body309.do.end329_crit_edge, label %do.end320, !prof !130

do.body309.do.end329_crit_edge:                   ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end329

do.end320:                                        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  %79 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i479 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i479 to ptr
  %task323 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task323 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task323, align 8
  %comm324 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 101
  %call326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm324) #15
  br label %do.end329

do.end329:                                        ; preds = %do.end320, %do.body309.do.end329_crit_edge
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %83 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %result_len.1, ptr %quotalen, align 8
  %add330 = add i32 %result_len.1, 17
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add330, i32 noundef 3264) #17
  %tobool332.not = icmp eq ptr %call9.i, null
  br i1 %tobool332.not, label %do.body334, label %if.end355

do.body334:                                       ; preds = %do.end329
  %84 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool335.not = icmp eq i32 %84, 0
  br i1 %tobool335.not, label %do.body334.cleanup385_crit_edge, label %do.end345, !prof !130

do.body334.cleanup385_crit_edge:                  ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

do.end345:                                        ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #14
  %85 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i480 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i480 to ptr
  %task348 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task348 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task348, align 8
  %comm349 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 101
  %call351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm349, ptr noundef nonnull @.str.2) #15
  br label %cleanup385

if.end355:                                        ; preds = %do.end329
  %conv356 = trunc i32 %result_len.1 to i16
  %datalen357 = getelementptr inbounds %struct.user_key_payload, ptr %call9.i, i32 0, i32 1
  %89 = ptrtoint ptr %datalen357 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv356, ptr %datalen357, align 8
  %data358 = getelementptr inbounds %struct.user_key_payload, ptr %call9.i, i32 0, i32 3
  %90 = call ptr @memcpy(ptr %data358, ptr %4, i32 %result_len.1)
  %arrayidx361 = getelementptr %struct.user_key_payload, ptr %call9.i, i32 0, i32 3, i32 %result_len.1
  %91 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx361, align 1
  %payload362 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %92 = ptrtoint ptr %payload362 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call9.i, ptr %payload362, align 8
  %93 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool365.not = icmp eq i32 %93, 0
  br i1 %tobool365.not, label %if.end355.cleanup385_crit_edge, label %do.end375, !prof !130

if.end355.cleanup385_crit_edge:                   ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

do.end375:                                        ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  %94 = call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i481 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i481 to ptr
  %task378 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task378 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task378, align 8
  %comm379 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 101
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm379, ptr noundef nonnull @.str.2) #15
  br label %cleanup385

cleanup385:                                       ; preds = %do.end375, %if.end355.cleanup385_crit_edge, %do.end345, %do.body334.cleanup385_crit_edge, %do.end295, %do.body284.cleanup385_crit_edge, %cleanup, %lor.lhs.false78.cleanup385_crit_edge, %do.end48, %if.then42.cleanup385_crit_edge, %do.end31, %if.then25.cleanup385_crit_edge, %if.then5.cleanup385_crit_edge, %entry.cleanup385_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup385_crit_edge ], [ -22, %if.then5.cleanup385_crit_edge ], [ -22, %do.end31 ], [ -22, %if.then25.cleanup385_crit_edge ], [ -22, %do.end48 ], [ -22, %if.then42.cleanup385_crit_edge ], [ -22, %lor.lhs.false78.cleanup385_crit_edge ], [ 0, %do.end295 ], [ 0, %do.body284.cleanup385_crit_edge ], [ -12, %do.end345 ], [ -12, %do.body334.cleanup385_crit_edge ], [ 0, %do.end375 ], [ 0, %if.end355.cleanup385_crit_edge ], [ -22, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %derrno) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dns_resolver_free_preparse(ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 8
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dns_resolver_match_preparse(ptr nocapture noundef writeonly %match_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lookup_type = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 3
  %0 = ptrtoint ptr %lookup_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %lookup_type, align 4
  %1 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dns_resolver_cmp, ptr %match_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_revoke(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dns_resolver_describe(ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %1) #12
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %6) #12
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %datalen = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 13
  %7 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %datalen, align 2
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %conv) #12
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dns_resolver_read(ptr noundef %key, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @user_read(ptr noundef %key, ptr noundef %buffer, i32 noundef %buflen) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_dns_resolver() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @dns_resolver_cache, align 4
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %thread_keyring, align 4
  tail call void @key_revoke(ptr noundef %2) #12
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_dns_resolver) #12
  %3 = load ptr, ptr @dns_resolver_cache, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #12
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !132

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.58, i32 noundef 286) #12
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #12, !srcloc !134
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_cred(ptr noundef nonnull %3) #12
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_dns_resolver() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prepare_kernel_cred(ptr noundef null) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.59, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %call, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call4 to i32
  br label %do.body.i

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_dns_resolver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %failed_put_key, label %if.end11

if.end11:                                         ; preds = %if.end8
  %flags = getelementptr inbounds %struct.key, ptr %call4, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #12
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 21
  %1 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %thread_keyring, align 4
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %jit_keyring, align 4
  store ptr %call, ptr @dns_resolver_cache, align 4
  %3 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %do.end, !prof !130

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end11
  %4 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %tobool.not.i = icmp eq ptr %call4, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %call4, i32 0, i32 1
  %8 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %9, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm, i32 noundef %cond.i) #15
  br label %cleanup

failed_put_key:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @key_put(ptr noundef %call4) #12
  br label %do.body.i

do.body.i:                                        ; preds = %failed_put_key, %if.then6
  %ret.0 = phi i32 [ %0, %if.then6 ], [ %call9, %failed_put_key ]
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call) #12
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !132

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.58, i32 noundef 286) #12
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !134
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_cred(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge, %key_serial.exit, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %key_serial.exit ], [ 0, %if.end11.cleanup_crit_edge ], [ %ret.0, %__validate_creds.exit.i.cleanup_crit_edge ], [ %ret.0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dns_resolver_cmp(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %match_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1
  %2 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_data, align 4
  %4 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !130

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm, ptr noundef nonnull @.str.52, ptr noundef %1, ptr noundef %3) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %1, null
  %tobool8.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %do.end6.do.body41_crit_edge, label %if.end10

do.end6.do.body41_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end10:                                         ; preds = %do.end6
  %call11 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.end10.matched_crit_edge, label %if.end13

if.end10.matched_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %matched

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @strlen(ptr noundef nonnull %1) #16
  %call15 = tail call i32 @strlen(ptr noundef nonnull %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp18 = icmp slt i32 %call15, 1
  %or.cond82 = select i1 %cmp16, i1 true, i1 %cmp18
  br i1 %or.cond82, label %if.end13.do.body41_crit_edge, label %if.end20

if.end13.do.body41_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end20:                                         ; preds = %if.end13
  %sub = add nsw i32 %call14, -1
  %arrayidx = getelementptr i8, ptr %1, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %10)
  %cmp21 = icmp eq i8 %10, 46
  %spec.select = select i1 %cmp21, i32 %sub, i32 %call14
  %sub25 = add nsw i32 %call15, -1
  %arrayidx26 = getelementptr i8, ptr %3, i32 %sub25
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %12)
  %cmp28 = icmp eq i8 %12, 46
  %dlen.0 = select i1 %cmp28, i32 %sub25, i32 %call15
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %dlen.0)
  %cmp33.not = icmp eq i32 %spec.select, %dlen.0
  br i1 %cmp33.not, label %lor.lhs.false35, label %if.end20.do.body41_crit_edge

if.end20.do.body41_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

lor.lhs.false35:                                  ; preds = %if.end20
  %call36 = tail call i32 @strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %lor.lhs.false35.matched_crit_edge, label %lor.lhs.false35.do.body41_crit_edge

lor.lhs.false35.do.body41_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

lor.lhs.false35.matched_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %matched

matched:                                          ; preds = %lor.lhs.false35.matched_crit_edge, %if.end10.matched_crit_edge
  br label %do.body41

do.body41:                                        ; preds = %matched, %lor.lhs.false35.do.body41_crit_edge, %if.end20.do.body41_crit_edge, %if.end13.do.body41_crit_edge, %do.end6.do.body41_crit_edge
  %tobool62 = phi i1 [ true, %matched ], [ false, %do.end6.do.body41_crit_edge ], [ false, %if.end13.do.body41_crit_edge ], [ false, %lor.lhs.false35.do.body41_crit_edge ], [ false, %if.end20.do.body41_crit_edge ]
  %ret.0 = phi i32 [ 1, %matched ], [ 0, %do.end6.do.body41_crit_edge ], [ 0, %if.end13.do.body41_crit_edge ], [ 0, %lor.lhs.false35.do.body41_crit_edge ], [ 0, %if.end20.do.body41_crit_edge ]
  %13 = load i32, ptr @dns_resolver_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool42.not = icmp eq i32 %13, 0
  br i1 %tobool42.not, label %do.body41.do.end61_crit_edge, label %do.end52, !prof !130

do.body41.do.end61_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61

do.end52:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !119) #12
  %and.i83 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i83 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task55, align 8
  %comm56 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm56, ptr noundef nonnull @.str.52, i32 noundef %ret.0) #15
  br label %do.end61

do.end61:                                         ; preds = %do.end52, %do.body41.do.end61_crit_edge
  ret i1 %tobool62
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !117, !118}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__UNIQUE_ID_description215, !1, !"__UNIQUE_ID_description215", i1 false, i1 false}
!1 = !{!"../net/dns_resolver/dns_key.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_author216, !3, !"__UNIQUE_ID_author216", i1 false, i1 false}
!3 = !{!"../net/dns_resolver/dns_key.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_file217, !5, !"__UNIQUE_ID_file217", i1 false, i1 false}
!5 = !{!"../net/dns_resolver/dns_key.c", i32 39, i32 1}
!6 = !{ptr @__UNIQUE_ID_license218, !5, !"__UNIQUE_ID_license218", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../net/dns_resolver/dns_key.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype219, !8, !"__UNIQUE_ID_debugtype219", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug220, !11, !"__UNIQUE_ID_debug220", i1 false, i1 false}
!11 = !{!"../net/dns_resolver/dns_key.c", i32 43, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/dns_resolver/dns_key.c", i32 316, i32 11}
!14 = !{ptr @key_type_dns_resolver, !15, !"key_type_dns_resolver", i1 false, i1 false}
!15 = !{!"../net/dns_resolver/dns_key.c", i32 315, i32 17}
!16 = !{ptr @__initcall__kmod_dns_resolver__221_382_init_dns_resolver6, !17, !"__initcall__kmod_dns_resolver__221_382_init_dns_resolver6", i1 false, i1 false}
!17 = !{!"../net/dns_resolver/dns_key.c", i32 382, i32 1}
!18 = !{ptr @__exitcall_exit_dns_resolver, !19, !"__exitcall_exit_dns_resolver", i1 false, i1 false}
!19 = !{!"../net/dns_resolver/dns_key.c", i32 383, i32 1}
!20 = !{ptr @__UNIQUE_ID_file222, !21, !"__UNIQUE_ID_file222", i1 false, i1 false}
!21 = !{!"../net/dns_resolver/dns_key.c", i32 384, i32 1}
!22 = !{ptr @__UNIQUE_ID_license223, !21, !"__UNIQUE_ID_license223", i1 false, i1 false}
!23 = !{ptr @dns_resolver_debug, !24, !"dns_resolver_debug", i1 false, i1 false}
!24 = !{!"../net/dns_resolver/dns_key.c", i32 41, i32 14}
!25 = !{ptr @dns_resolver_cache, !26, !"dns_resolver_cache", i1 false, i1 false}
!26 = !{!"../net/dns_resolver/dns_key.c", i32 45, i32 20}
!27 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/dns_resolver/dns_key.c", i32 110, i32 3}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dns_resolver_preparse._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @dns_resolver_preparse._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/dns_resolver/dns_key.c", i32 112, i32 4}
!36 = !{ptr @dns_resolver_preparse._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dns_resolver_preparse._entry.5, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @dns_resolver_preparse._entry_ptr.7, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @dns_resolver_preparse._rs.8, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../net/dns_resolver/dns_key.c", i32 119, i32 4}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dns_resolver_preparse._entry.9, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @dns_resolver_preparse._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/dns_resolver/dns_key.c", i32 129, i32 2}
!47 = !{ptr @dns_resolver_preparse._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @dns_resolver_preparse._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/dns_resolver/dns_key.c", i32 140, i32 3}
!51 = !{ptr @dns_resolver_preparse._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @dns_resolver_preparse._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/dns_resolver/dns_key.c", i32 147, i32 3}
!55 = !{ptr @dns_resolver_preparse._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dns_resolver_preparse._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @dns_resolver_preparse._rs.21, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../net/dns_resolver/dns_key.c", i32 156, i32 5}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dns_resolver_preparse._entry.22, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @dns_resolver_preparse._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/dns_resolver/dns_key.c", i32 172, i32 4}
!64 = !{ptr @dns_resolver_preparse._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dns_resolver_preparse._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/dns_resolver/dns_key.c", i32 178, i32 20}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/dns_resolver/dns_key.c", i32 179, i32 5}
!70 = !{ptr @dns_resolver_preparse._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @dns_resolver_preparse._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/dns_resolver/dns_key.c", i32 188, i32 5}
!74 = !{ptr @dns_resolver_preparse._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dns_resolver_preparse._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @dns_resolver_preparse._rs.35, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../net/dns_resolver/dns_key.c", i32 194, i32 4}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dns_resolver_preparse._entry.36, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dns_resolver_preparse._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/dns_resolver/dns_key.c", i32 203, i32 3}
!83 = !{ptr @dns_resolver_preparse._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dns_resolver_preparse._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/dns_resolver/dns_key.c", i32 208, i32 2}
!87 = !{ptr @dns_resolver_preparse._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @dns_resolver_preparse._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/dns_resolver/dns_key.c", i32 213, i32 3}
!91 = !{ptr @dns_resolver_preparse._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @dns_resolver_preparse._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/dns_resolver/dns_key.c", i32 222, i32 2}
!95 = !{ptr @dns_resolver_preparse._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dns_resolver_preparse._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/dns_resolver/dns_key.c", i32 248, i32 2}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dns_resolver_cmp._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dns_resolver_cmp._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/dns_resolver/dns_key.c", i32 270, i32 2}
!104 = !{ptr @dns_resolver_cmp._entry.53, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dns_resolver_cmp._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/dns_resolver/dns_key.c", i32 294, i32 18}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/dns_resolver/dns_key.c", i32 296, i32 18}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/cred.h", i32 286, i32 3}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/dns_resolver/dns_key.c", i32 344, i32 26}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/dns_resolver/dns_key.c", i32 365, i32 2}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @init_dns_resolver._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @init_dns_resolver._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2152890010}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2148436536}
!134 = !{i64 2148351245, i64 2148351277, i64 2148351306, i64 2148351340, i64 2148351371, i64 2148351394}
!135 = !{i64 2148436765}
