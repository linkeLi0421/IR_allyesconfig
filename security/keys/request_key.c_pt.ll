; ModuleID = '/llk/IR_all_yes/security/keys/request_key.c_pt.bc'
source_filename = "../security/keys/request_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+complete_request_key\22, \22a\22\09"
module asm "\09.weak\09__crc_complete_request_key\09\09\09\09"
module asm "\09.long\09__crc_complete_request_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_complete_request_key:\09\09\09\09\09"
module asm "\09.asciz \09\22complete_request_key\22\09\09\09\09\09"
module asm "__kstrtabns_complete_request_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_key_construction\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_key_construction\09\09\09\09"
module asm "\09.long\09__crc_wait_for_key_construction\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_key_construction:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_key_construction\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_key_construction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+request_key_tag\22, \22a\22\09"
module asm "\09.weak\09__crc_request_key_tag\09\09\09\09"
module asm "\09.long\09__crc_request_key_tag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_key_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22request_key_tag\22\09\09\09\09\09"
module asm "__kstrtabns_request_key_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+request_key_with_auxdata\22, \22a\22\09"
module asm "\09.weak\09__crc_request_key_with_auxdata\09\09\09\09"
module asm "\09.long\09__crc_request_key_with_auxdata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_key_with_auxdata:\09\09\09\09\09"
module asm "\09.asciz \09\22request_key_with_auxdata\22\09\09\09\09\09"
module asm "__kstrtabns_request_key_with_auxdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+request_key_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_request_key_rcu\09\09\09\09"
module asm "\09.long\09__crc_request_key_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_key_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22request_key_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_request_key_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.user_namespace = type opaque
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.65, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.66, %union.anon.71, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.67, ptr, ptr, ptr }
%union.anon.67 = type { i32 }
%union.anon.71 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.anon.68 = type { [2 x i8], i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.37, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%union.anon.37 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.20 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.20 = type { %struct.callback_head }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_complete_request_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_complete_request_key = external dso_local constant [0 x i8], align 1
@__ksymtab_complete_request_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @complete_request_key to i32), ptr @__kstrtab_complete_request_key, ptr @__kstrtabns_complete_request_key }, section "___ksymtab+complete_request_key", align 4
@__kstrtab_wait_for_key_construction = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_key_construction = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_key_construction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_key_construction to i32), ptr @__kstrtab_wait_for_key_construction, ptr @__kstrtabns_wait_for_key_construction }, section "___ksymtab+wait_for_key_construction", align 4
@__kstrtab_request_key_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_key_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_request_key_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_key_tag to i32), ptr @__kstrtab_request_key_tag, ptr @__kstrtabns_request_key_tag }, section "___ksymtab+request_key_tag", align 4
@__kstrtab_request_key_with_auxdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_key_with_auxdata = external dso_local constant [0 x i8], align 1
@__ksymtab_request_key_with_auxdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_key_with_auxdata to i32), ptr @__kstrtab_request_key_with_auxdata, ptr @__kstrtabns_request_key_with_auxdata }, section "___ksymtab+request_key_with_auxdata", align 4
@__kstrtab_request_key_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_key_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_request_key_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_key_rcu to i32), ptr @__kstrtab_request_key_rcu, ptr @__kstrtabns_request_key_rcu }, section "___ksymtab+request_key_rcu", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@key_type_keyring = external dso_local global %struct.key_type, align 4
@key_construction_mutex = external dso_local global %struct.mutex, align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"security/keys/request_key.c\00", [36 x i8] zeroinitializer }, align 32
@call_sbin_request_key.request_key = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"/sbin/request-key\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"_req.%u\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 723, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 234, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 248, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 117, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 134, i32 16 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 152, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 176, i32 14 }
@___asan_gen_.42 = private constant [31 x i8] c"../security/keys/request_key.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 177, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 253, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 73, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_complete_request_key, ptr @__ksymtab_request_key_rcu, ptr @__ksymtab_request_key_tag, ptr @__ksymtab_request_key_with_auxdata, ptr @__ksymtab_wait_for_key_construction, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @call_sbin_request_key.request_key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_sbin_request_key.request_key to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @complete_request_key(ptr noundef %authkey, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %cmp = icmp slt i32 %error, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.key, ptr %authkey, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target_key, align 4
  %call.i = tail call i32 @key_reject_and_link(ptr noundef %4, i32 noundef 60, i32 noundef 126, ptr noundef null, ptr noundef %authkey) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @key_revoke(ptr noundef %authkey) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @request_key_and_link(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info, i32 noundef %callout_len, ptr noundef %aux, ptr noundef %dest_keyring, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %edit.i.i = alloca ptr, align 4
  %dest_keyring.i.i = alloca ptr, align 4
  %ctx = alloca %struct.keyring_search_context, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #8
  %0 = getelementptr inbounds i8, ptr %ctx, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctx, align 8
  %3 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 4
  %desc_len = getelementptr inbounds %struct.anon.68, ptr %3, i32 0, i32 1
  %call = tail call i32 @strlen(ptr noundef %description) #11
  %conv = trunc i32 %call to i16
  %5 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %desc_len, align 2
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %type, ptr %type1, align 8
  %domain_tag2 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %domain_tag2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %domain_tag, ptr %domain_tag2, align 4
  %description3 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %description3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %description, ptr %description3, align 8
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred5, align 16
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cred, align 4
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @key_default_cmp, ptr %match_data, align 8
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %raw_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %description, ptr %raw_data, align 4
  %preparsed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %preparsed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %preparsed, align 8
  %lookup_type = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %lookup_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lookup_type, align 4
  %flags6 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %20 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 98, ptr %flags6, align 8
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %21 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %iterator, align 4
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5
  %22 = ptrtoint ptr %skipped_ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skipped_ret, align 8
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %23 = ptrtoint ptr %possessed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %possessed, align 4
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %24 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %result, align 8
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %25 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %now, align 8
  %match_preparse = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 8
  %26 = ptrtoint ptr %match_preparse to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %match_preparse, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %call10 = call i32 %27(ptr noundef %match_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %28 = inttoptr i32 %call10 to ptr
  br label %error

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %29 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %cached_requested_key.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 100
  %33 = ptrtoint ptr %cached_requested_key.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cached_requested_key.i, align 4
  %tobool.not.i93 = icmp eq ptr %34, null
  br i1 %tobool.not.i93, label %if.end15.if.end19_crit_edge, label %land.lhs.true.i94

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true.i94:                                ; preds = %if.end15
  %35 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %match_data, align 8
  %call2.i = call zeroext i1 %36(ptr noundef nonnull %34, ptr noundef %match_data) #8
  br i1 %call2.i, label %land.lhs.true3.i, label %land.lhs.true.i94.if.end19_crit_edge

land.lhs.true.i94.if.end19_crit_edge:             ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i94
  %flags.i = getelementptr inbounds %struct.key, ptr %34, i32 0, i32 15
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and.i95 = and i32 %38, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool4.not.i = icmp eq i32 %and.i95, 0
  br i1 %tobool4.not.i, label %cond.true.i.i, label %land.lhs.true3.i.if.end19_crit_edge

land.lhs.true3.i.if.end19_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

cond.true.i.i:                                    ; preds = %land.lhs.true3.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %34, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %34, i32 1, i32 3, i32 1) #8
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %34, ptr nonnull %34, i32 1, ptr nonnull elementtype(i32) %34) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !62

cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %cond.true.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.error_free_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.error_free_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %34, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %error_free

if.end19:                                         ; preds = %land.lhs.true3.i.if.end19_crit_edge, %land.lhs.true.i94.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %41 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end19.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end19.rcu_read_lock.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end19
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end19.rcu_read_lock.exit_crit_edge
  %call20 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %ctx) #8
  %call.i96 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i96, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i99

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i99:                                ; preds = %rcu_read_lock.exit
  %call1.i97 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i101

land.lhs.true.i99.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i101:                              ; preds = %land.lhs.true.i99
  %.b4.i100 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i100, label %land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge, label %if.then.i102

land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i102:                                     ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i102, %land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i99.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %45 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i.i103 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i103 to ptr
  %preempt_count.i.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i104, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i104, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then22

if.then22:                                        ; preds = %rcu_read_unlock.exit
  %tobool23.not = icmp eq ptr %dest_keyring, null
  br i1 %tobool23.not, label %if.end38.thread, label %if.then24

if.end38.thread:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call20 to i32
  %and.i106126 = and i32 %49, -2
  %50 = inttoptr i32 %and.i106126 to ptr
  br label %if.end48

if.then24:                                        ; preds = %if.then22
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %cred31 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred31, align 16
  %call32 = call i32 @key_task_permission(ptr noundef %call20, ptr noundef %54, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  %55 = ptrtoint ptr %call20 to i32
  %and.i.i105 = and i32 %55, -2
  %56 = inttoptr i32 %and.i.i105 to ptr
  br i1 %cmp33, label %if.then35, label %if.then41

if.then35:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  call void @key_put(ptr noundef %56) #8
  %57 = inttoptr i32 %call32 to ptr
  br label %error_free

if.then41:                                        ; preds = %if.then24
  %call42 = call i32 @key_link(ptr noundef nonnull %dest_keyring, ptr noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.then41.if.end48_crit_edge

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  call void @key_put(ptr noundef %56) #8
  %58 = inttoptr i32 %call42 to ptr
  br label %error_free

if.end48:                                         ; preds = %if.then41.if.end48_crit_edge, %if.end38.thread
  %59 = phi ptr [ %50, %if.end38.thread ], [ %56, %if.then41.if.end48_crit_edge ]
  %60 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i107 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i107 to ptr
  %task.i108 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i108, align 8
  %cached_requested_key.i109 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 100
  %64 = ptrtoint ptr %cached_requested_key.i109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cached_requested_key.i109, align 4
  call void @key_put(ptr noundef %65) #8
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %if.end48.cache_requested_key.exit_crit_edge, label %cond.true.i.i113

if.end48.cache_requested_key.exit_crit_edge:      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cache_requested_key.exit

cond.true.i.i113:                                 ; preds = %if.end48
  %call.i.i.i.i.i.i.i.i110 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %59, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %59, i32 1, i32 3, i32 1) #8
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %59, ptr nonnull %59, i32 1, ptr nonnull elementtype(i32) %59) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i111 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i111)
  %tobool1.not.i.i.i.i.i.i112 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i111, 0
  br i1 %tobool1.not.i.i.i.i.i.i112, label %cond.true.i.i113.if.end15.sink.split.i.i.i.i.i.i118_crit_edge, label %if.else.i.i.i.i.i.i116, !prof !62

cond.true.i.i113.if.end15.sink.split.i.i.i.i.i.i118_crit_edge: ; preds = %cond.true.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i118

if.else.i.i.i.i.i.i116:                           ; preds = %cond.true.i.i113
  %add.i.i.i.i.i.i114 = add i32 %asmresult.i.i.i.i.i.i.i.i111, 1
  %67 = or i32 %add.i.i.i.i.i.i114, %asmresult.i.i.i.i.i.i.i.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i.i.i115 = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i.i.i115, label %if.else.i.i.i.i.i.i116.cache_requested_key.exit_crit_edge, label %if.else.i.i.i.i.i.i116.if.end15.sink.split.i.i.i.i.i.i118_crit_edge, !prof !63

if.else.i.i.i.i.i.i116.if.end15.sink.split.i.i.i.i.i.i118_crit_edge: ; preds = %if.else.i.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i118

if.else.i.i.i.i.i.i116.cache_requested_key.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cache_requested_key.exit

if.end15.sink.split.i.i.i.i.i.i118:               ; preds = %if.else.i.i.i.i.i.i116.if.end15.sink.split.i.i.i.i.i.i118_crit_edge, %cond.true.i.i113.if.end15.sink.split.i.i.i.i.i.i118_crit_edge
  %.sink.i.i.i.i.i.i117 = phi i32 [ 2, %cond.true.i.i113.if.end15.sink.split.i.i.i.i.i.i118_crit_edge ], [ 1, %if.else.i.i.i.i.i.i116.if.end15.sink.split.i.i.i.i.i.i118_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %59, i32 noundef %.sink.i.i.i.i.i.i117) #8
  br label %cache_requested_key.exit

cache_requested_key.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i118, %if.else.i.i.i.i.i.i116.cache_requested_key.exit_crit_edge, %if.end48.cache_requested_key.exit_crit_edge
  %68 = ptrtoint ptr %cached_requested_key.i109 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %59, ptr %cached_requested_key.i109, align 4
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %70) #8
  br label %error_free

if.else:                                          ; preds = %rcu_read_unlock.exit
  %cmp50.not = icmp eq ptr %call20, inttoptr (i32 -11 to ptr)
  br i1 %cmp50.not, label %if.else54, label %if.else.error_free_crit_edge

if.else.error_free_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.else54:                                        ; preds = %if.else
  %tobool56.not = icmp eq ptr %callout_info, null
  br i1 %tobool56.not, label %if.else54.error_free_crit_edge, label %if.end58

if.else54.error_free_crit_edge:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.end58:                                         ; preds = %if.else54
  %71 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %type1, align 8
  %cmp.i119 = icmp eq ptr %72, @key_type_keyring
  br i1 %cmp.i119, label %if.end58.error_free_crit_edge, label %if.end.i

if.end58.error_free_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.end.i:                                         ; preds = %if.end58
  %73 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i.i, align 8
  %cred1.i.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 99
  %77 = ptrtoint ptr %cred1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cred1.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dest_keyring.i.i) #8
  %79 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dest_keyring, ptr %dest_keyring.i.i, align 4
  %tobool.not.i.i120 = icmp eq ptr %dest_keyring, null
  br i1 %tobool.not.i.i120, label %if.else.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dest_keyring, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %dest_keyring, i32 1, i32 3, i32 1) #8
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dest_keyring, ptr nonnull %dest_keyring, i32 1, ptr nonnull elementtype(i32) %dest_keyring) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !62

cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %cond.true.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %81 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.do.endthread-pre-split.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.do.endthread-pre-split.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.endthread-pre-split.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %dest_keyring, i32 noundef %.sink.i.i.i.i.i.i.i) #8
  br label %do.endthread-pre-split.i

if.else.i.i:                                      ; preds = %if.end.i
  %jit_keyring.i.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 18
  %82 = ptrtoint ptr %jit_keyring.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %jit_keyring.i.i, align 4
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i8 %83, label %do.body45.i.i [
    i8 0, label %if.else.i.i.sw.bb.i.i_crit_edge
    i8 7, label %if.else.i.i.sw.bb.i.i_crit_edge127
    i8 1, label %if.else.i.i.sw.bb18.i.i_crit_edge
    i8 2, label %if.else.i.i.sw.bb23.i.i_crit_edge
    i8 3, label %if.else.i.i.sw.bb28.i.i_crit_edge
    i8 5, label %if.else.i.i.sw.bb33.i.i_crit_edge
    i8 4, label %sw.bb38.i.i
  ]

if.else.i.i.sw.bb33.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i.i

if.else.i.i.sw.bb28.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i

if.else.i.i.sw.bb23.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23.i.i

if.else.i.i.sw.bb18.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i

if.else.i.i.sw.bb.i.i_crit_edge127:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.else.i.i.sw.bb.i.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.else.i.i.sw.bb.i.i_crit_edge, %if.else.i.i.sw.bb.i.i_crit_edge127
  %request_key_auth.i.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 22
  %85 = ptrtoint ptr %request_key_auth.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %request_key_auth.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %86, null
  br i1 %tobool4.not.i.i, label %sw.bb.i.i.sw.bb18.i.i_crit_edge, label %if.then5.i.i

sw.bb.i.i.sw.bb18.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i

if.then5.i.i:                                     ; preds = %sw.bb.i.i
  %sem.i.i = getelementptr inbounds %struct.key, ptr %86, i32 0, i32 4
  call void @down_read(ptr noundef %sem.i.i) #8
  %87 = getelementptr inbounds %struct.key, ptr %86, i32 0, i32 17
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %flags.i.i = getelementptr inbounds %struct.key, ptr %86, i32 0, i32 15
  %90 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags.i.i, align 4
  %92 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool9.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.then5.i.i.if.end.i.i_crit_edge

if.then5.i.i.if.end.i.i_crit_edge:                ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then10.i.i:                                    ; preds = %if.then5.i.i
  %dest_keyring11.i.i = getelementptr inbounds %struct.request_key_auth, ptr %89, i32 0, i32 2
  %93 = ptrtoint ptr %dest_keyring11.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dest_keyring11.i.i, align 4
  %tobool.not.i84.i.i = icmp eq ptr %94, null
  br i1 %tobool.not.i84.i.i, label %if.then10.i.i.key_get.exit94.i.i_crit_edge, label %cond.true.i88.i.i

if.then10.i.i.key_get.exit94.i.i_crit_edge:       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_get.exit94.i.i

cond.true.i88.i.i:                                ; preds = %if.then10.i.i
  %call.i.i.i.i.i.i.i85.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %94, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %94, i32 1, i32 3, i32 1) #8
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %94, ptr nonnull %94, i32 1, ptr nonnull elementtype(i32) %94) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i86.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i86.i.i)
  %tobool1.not.i.i.i.i.i87.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i86.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i87.i.i, label %cond.true.i88.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge, label %if.else.i.i.i.i.i91.i.i, !prof !62

cond.true.i88.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge: ; preds = %cond.true.i88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i93.i.i

if.else.i.i.i.i.i91.i.i:                          ; preds = %cond.true.i88.i.i
  %add.i.i.i.i.i89.i.i = add i32 %asmresult.i.i.i.i.i.i.i86.i.i, 1
  %96 = or i32 %add.i.i.i.i.i89.i.i, %asmresult.i.i.i.i.i.i.i86.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %.not.i.i.i.i.i90.i.i = icmp sgt i32 %96, -1
  br i1 %.not.i.i.i.i.i90.i.i, label %if.else.i.i.i.i.i91.i.i.key_get.exit94.i.i_crit_edge, label %if.else.i.i.i.i.i91.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i91.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i93.i.i

if.else.i.i.i.i.i91.i.i.key_get.exit94.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_get.exit94.i.i

if.end15.sink.split.i.i.i.i.i93.i.i:              ; preds = %if.else.i.i.i.i.i91.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge, %cond.true.i88.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge
  %.sink.i.i.i.i.i92.i.i = phi i32 [ 2, %cond.true.i88.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i91.i.i.if.end15.sink.split.i.i.i.i.i93.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %94, i32 noundef %.sink.i.i.i.i.i92.i.i) #8
  br label %key_get.exit94.i.i

key_get.exit94.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i93.i.i, %if.else.i.i.i.i.i91.i.i.key_get.exit94.i.i_crit_edge, %if.then10.i.i.key_get.exit94.i.i_crit_edge
  %97 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %dest_keyring.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %key_get.exit94.i.i, %if.then5.i.i.if.end.i.i_crit_edge
  call void @up_read(ptr noundef %sem.i.i) #8
  %98 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dest_keyring.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %99, null
  br i1 %tobool14.not.i.i, label %if.end.i.i.sw.bb18.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i.sw.bb18.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i

sw.bb18.i.i:                                      ; preds = %if.end.i.i.sw.bb18.i.i_crit_edge, %sw.bb.i.i.sw.bb18.i.i_crit_edge, %if.else.i.i.sw.bb18.i.i_crit_edge
  %thread_keyring.i.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 21
  %100 = ptrtoint ptr %thread_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %thread_keyring.i.i, align 4
  %tobool.not.i95.i.i = icmp eq ptr %101, null
  br i1 %tobool.not.i95.i.i, label %sw.bb18.i.i.sw.bb23.i.i_crit_edge, label %cond.true.i99.i.i

sw.bb18.i.i.sw.bb23.i.i_crit_edge:                ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23.i.i

cond.true.i99.i.i:                                ; preds = %sw.bb18.i.i
  %call.i.i.i.i.i.i.i96.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %101, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %101, i32 1, i32 3, i32 1) #8
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %101, ptr nonnull %101, i32 1, ptr nonnull elementtype(i32) %101) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i97.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i97.i.i)
  %tobool1.not.i.i.i.i.i98.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i97.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i98.i.i, label %cond.true.i99.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge, label %if.else.i.i.i.i.i102.i.i, !prof !62

cond.true.i99.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge: ; preds = %cond.true.i99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i104.i.i

if.else.i.i.i.i.i102.i.i:                         ; preds = %cond.true.i99.i.i
  %add.i.i.i.i.i100.i.i = add i32 %asmresult.i.i.i.i.i.i.i97.i.i, 1
  %103 = or i32 %add.i.i.i.i.i100.i.i, %asmresult.i.i.i.i.i.i.i97.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %.not.i.i.i.i.i101.i.i = icmp sgt i32 %103, -1
  br i1 %.not.i.i.i.i.i101.i.i, label %if.else.i.i.i.i.i102.i.i.key_get.exit105.thread.i.i_crit_edge, label %if.else.i.i.i.i.i102.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i102.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i104.i.i

if.else.i.i.i.i.i102.i.i.key_get.exit105.thread.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_get.exit105.thread.i.i

if.end15.sink.split.i.i.i.i.i104.i.i:             ; preds = %if.else.i.i.i.i.i102.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge, %cond.true.i99.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge
  %.sink.i.i.i.i.i103.i.i = phi i32 [ 2, %cond.true.i99.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i102.i.i.if.end15.sink.split.i.i.i.i.i104.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %101, i32 noundef %.sink.i.i.i.i.i103.i.i) #8
  br label %key_get.exit105.thread.i.i

key_get.exit105.thread.i.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i104.i.i, %if.else.i.i.i.i.i102.i.i.key_get.exit105.thread.i.i_crit_edge
  %104 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %dest_keyring.i.i, align 4
  br label %if.then54.i.i

sw.bb23.i.i:                                      ; preds = %sw.bb18.i.i.sw.bb23.i.i_crit_edge, %if.else.i.i.sw.bb23.i.i_crit_edge
  %process_keyring.i.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 20
  %105 = ptrtoint ptr %process_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %process_keyring.i.i, align 4
  %tobool.not.i106.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i106.i.i, label %sw.bb23.i.i.sw.bb28.i.i_crit_edge, label %cond.true.i110.i.i

sw.bb23.i.i.sw.bb28.i.i_crit_edge:                ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i

cond.true.i110.i.i:                               ; preds = %sw.bb23.i.i
  %call.i.i.i.i.i.i.i107.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %106, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %106, i32 1, i32 3, i32 1) #8
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %106, ptr nonnull %106, i32 1, ptr nonnull elementtype(i32) %106) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i108.i.i = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i108.i.i)
  %tobool1.not.i.i.i.i.i109.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i108.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i109.i.i, label %cond.true.i110.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge, label %if.else.i.i.i.i.i113.i.i, !prof !62

cond.true.i110.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge: ; preds = %cond.true.i110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i115.i.i

if.else.i.i.i.i.i113.i.i:                         ; preds = %cond.true.i110.i.i
  %add.i.i.i.i.i111.i.i = add i32 %asmresult.i.i.i.i.i.i.i108.i.i, 1
  %108 = or i32 %add.i.i.i.i.i111.i.i, %asmresult.i.i.i.i.i.i.i108.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %.not.i.i.i.i.i112.i.i = icmp sgt i32 %108, -1
  br i1 %.not.i.i.i.i.i112.i.i, label %if.else.i.i.i.i.i113.i.i.key_get.exit116.thread.i.i_crit_edge, label %if.else.i.i.i.i.i113.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i113.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i115.i.i

if.else.i.i.i.i.i113.i.i.key_get.exit116.thread.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_get.exit116.thread.i.i

if.end15.sink.split.i.i.i.i.i115.i.i:             ; preds = %if.else.i.i.i.i.i113.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge, %cond.true.i110.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge
  %.sink.i.i.i.i.i114.i.i = phi i32 [ 2, %cond.true.i110.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i113.i.i.if.end15.sink.split.i.i.i.i.i115.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %106, i32 noundef %.sink.i.i.i.i.i114.i.i) #8
  br label %key_get.exit116.thread.i.i

key_get.exit116.thread.i.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i115.i.i, %if.else.i.i.i.i.i113.i.i.key_get.exit116.thread.i.i_crit_edge
  %109 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %dest_keyring.i.i, align 4
  br label %if.then54.i.i

sw.bb28.i.i:                                      ; preds = %sw.bb23.i.i.sw.bb28.i.i_crit_edge, %if.else.i.i.sw.bb28.i.i_crit_edge
  %session_keyring.i.i = getelementptr inbounds %struct.cred, ptr %78, i32 0, i32 19
  %110 = ptrtoint ptr %session_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %session_keyring.i.i, align 4
  %tobool.not.i117.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i117.i.i, label %key_get.exit127.i.i, label %cond.true.i121.i.i

cond.true.i121.i.i:                               ; preds = %sw.bb28.i.i
  %call.i.i.i.i.i.i.i118.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %111, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %111, i32 1, i32 3, i32 1) #8
  %112 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %111, ptr nonnull %111, i32 1, ptr nonnull elementtype(i32) %111) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i119.i.i = extractvalue { i32, i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i119.i.i)
  %tobool1.not.i.i.i.i.i120.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i119.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i120.i.i, label %cond.true.i121.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge, label %if.else.i.i.i.i.i124.i.i, !prof !62

cond.true.i121.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge: ; preds = %cond.true.i121.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i126.i.i

if.else.i.i.i.i.i124.i.i:                         ; preds = %cond.true.i121.i.i
  %add.i.i.i.i.i122.i.i = add i32 %asmresult.i.i.i.i.i.i.i119.i.i, 1
  %113 = or i32 %add.i.i.i.i.i122.i.i, %asmresult.i.i.i.i.i.i.i119.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %.not.i.i.i.i.i123.i.i = icmp sgt i32 %113, -1
  br i1 %.not.i.i.i.i.i123.i.i, label %if.else.i.i.i.i.i124.i.i.key_get.exit127.thread.i.i_crit_edge, label %if.else.i.i.i.i.i124.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i124.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i126.i.i

if.else.i.i.i.i.i124.i.i.key_get.exit127.thread.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %key_get.exit127.thread.i.i

if.end15.sink.split.i.i.i.i.i126.i.i:             ; preds = %if.else.i.i.i.i.i124.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge, %cond.true.i121.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge
  %.sink.i.i.i.i.i125.i.i = phi i32 [ 2, %cond.true.i121.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i124.i.i.if.end15.sink.split.i.i.i.i.i126.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %111, i32 noundef %.sink.i.i.i.i.i125.i.i) #8
  br label %key_get.exit127.thread.i.i

key_get.exit127.thread.i.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i126.i.i, %if.else.i.i.i.i.i124.i.i.key_get.exit127.thread.i.i_crit_edge
  %114 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %dest_keyring.i.i, align 4
  br label %if.then54.i.i

key_get.exit127.i.i:                              ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %dest_keyring.i.i, align 4
  br label %sw.bb33.i.i

sw.bb33.i.i:                                      ; preds = %key_get.exit127.i.i, %if.else.i.i.sw.bb33.i.i_crit_edge
  %call34.i.i = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %dest_keyring.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp.i.i = icmp slt i32 %call34.i.i, 0
  br i1 %cmp.i.i, label %sw.bb33.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge, label %sw.bb33.i.i.sw.epilog.i.i_crit_edge

sw.bb33.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb33.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge: ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %construct_get_dest_keyring.exit.thread.i

sw.bb38.i.i:                                      ; preds = %if.else.i.i
  %call39.i.i = call i32 @look_up_user_keyrings(ptr noundef nonnull %dest_keyring.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp40.i.i = icmp slt i32 %call39.i.i, 0
  br i1 %cmp40.i.i, label %sw.bb38.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge, label %sw.bb38.i.i.sw.epilog.i.i_crit_edge

sw.bb38.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb38.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge: ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %construct_get_dest_keyring.exit.thread.i

do.body45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/request_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb38.i.i.sw.epilog.i.i_crit_edge, %sw.bb33.i.i.sw.epilog.i.i_crit_edge
  %116 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr.i.i = load ptr, ptr %dest_keyring.i.i, align 4
  %tobool51.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool51.not.i.i, label %sw.epilog.i.i.do.end.i_crit_edge, label %sw.epilog.i.i.if.then54.i.i_crit_edge

sw.epilog.i.i.if.then54.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i.i

sw.epilog.i.i.do.end.i_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then54.i.i:                                    ; preds = %sw.epilog.i.i.if.then54.i.i_crit_edge, %key_get.exit127.thread.i.i, %key_get.exit116.thread.i.i, %key_get.exit105.thread.i.i
  %117 = phi ptr [ %.pr.i.i, %sw.epilog.i.i.if.then54.i.i_crit_edge ], [ %101, %key_get.exit105.thread.i.i ], [ %106, %key_get.exit116.thread.i.i ], [ %111, %key_get.exit127.thread.i.i ]
  %118 = ptrtoint ptr %117 to i32
  %or.i.i.i = or i32 %118, 1
  %119 = inttoptr i32 %or.i.i.i to ptr
  %120 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i.i, align 8
  %cred.i.i.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 99
  %124 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cred.i.i.i, align 16
  %call1.i.i.i = call i32 @key_task_permission(ptr noundef nonnull %119, ptr noundef %125, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool57.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool57.not.i.i, label %if.then54.i.i.do.endthread-pre-split.i_crit_edge, label %if.then58.i.i

if.then54.i.i.do.endthread-pre-split.i_crit_edge: ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.endthread-pre-split.i

if.then58.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dest_keyring.i.i, align 4
  call void @key_put(ptr noundef %127) #8
  br label %construct_get_dest_keyring.exit.thread.i

construct_get_dest_keyring.exit.thread.i:         ; preds = %if.then58.i.i, %sw.bb38.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge, %sw.bb33.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge
  %retval.1.i.ph.i = phi i32 [ %call39.i.i, %sw.bb38.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge ], [ %call34.i.i, %sw.bb33.i.i.construct_get_dest_keyring.exit.thread.i_crit_edge ], [ %call1.i.i.i, %if.then58.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest_keyring.i.i) #8
  br label %error.i

do.endthread-pre-split.i:                         ; preds = %if.then54.i.i.do.endthread-pre-split.i_crit_edge, %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.do.endthread-pre-split.i_crit_edge
  %128 = ptrtoint ptr %dest_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr.i = load ptr, ptr %dest_keyring.i.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.endthread-pre-split.i, %sw.epilog.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge
  %129 = phi ptr [ %.pr.i, %do.endthread-pre-split.i ], [ null, %sw.epilog.i.i.do.end.i_crit_edge ], [ %99, %if.end.i.i.do.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest_keyring.i.i) #8
  %130 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i121 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i121 to ptr
  %task.i122 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task.i122 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task.i122, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 99
  %134 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call6.i = call ptr @key_user_lookup([1 x i32] %.fca.0.insert.i) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %do.end.i.error_put_dest_keyring.i_crit_edge, label %if.end9.i

do.end.i.error_put_dest_keyring.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put_dest_keyring.i

if.end9.i:                                        ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edit.i.i) #8
  %137 = ptrtoint ptr %edit.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %edit.i.i, align 4
  %cons_lock.i.i = getelementptr inbounds %struct.key_user, ptr %call6.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %cons_lock.i.i, i32 noundef 0) #8
  %138 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %type1, align 8
  %read.i.i = getelementptr inbounds %struct.key_type, ptr %139, i32 0, i32 13
  %140 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i36.i = icmp eq ptr %141, null
  %spec.select.i.i = select i1 %tobool.not.i36.i, i32 956366848, i32 989921280
  %cmp.i37.i = icmp eq ptr %139, @key_type_keyring
  br i1 %cmp.i37.i, label %if.end9.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

if.end9.i.if.then7.i.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %if.end9.i
  %update.i.i = getelementptr inbounds %struct.key_type, ptr %139, i32 0, i32 7
  %142 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %update.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %143, null
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i.if.end9.i.i_crit_edge, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i

lor.lhs.false.i.i.if.end9.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %if.end9.i.if.then7.i.i_crit_edge
  %or8.i.i = or i32 %spec.select.i.i, 67108864
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %lor.lhs.false.i.i.if.end9.i.i_crit_edge
  %perm.1.i.i = phi i32 [ %or8.i.i, %if.then7.i.i ], [ %spec.select.i.i, %lor.lhs.false.i.i.if.end9.i.i_crit_edge ]
  %144 = ptrtoint ptr %description3 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %description3, align 8
  %146 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cred, align 4
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %147, i32 0, i32 10
  %fsgid.i.i = getelementptr inbounds %struct.cred, ptr %147, i32 0, i32 11
  %148 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.unpack.i.i = load i32, ptr %fsuid.i.i, align 4
  %149 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %150 = ptrtoint ptr %fsgid.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.unpack122.i.i = load i32, ptr %fsgid.i.i, align 4
  %151 = insertvalue [1 x i32] undef, i32 %.unpack122.i.i, 0
  %call.i.i = call ptr @key_alloc(ptr noundef %139, ptr noundef %145, [1 x i32] %149, [1 x i32] %151, ptr noundef %147, i32 noundef %perm.1.i.i, i32 noundef %flags, ptr noundef null) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %alloc_failed.i.i, label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end9.i.i
  %flags19.i.i = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 15
  call void @_set_bit(i32 noundef 3, ptr noundef %flags19.i.i) #8
  %tobool20.not.i.i = icmp eq ptr %129, null
  br i1 %tobool20.not.i.i, label %if.end18.i.i.if.end32.i.i_crit_edge, label %if.then21.i.i

if.end18.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

if.then21.i.i:                                    ; preds = %if.end18.i.i
  %call23.i.i = call i32 @__key_link_lock(ptr noundef nonnull %129, ptr noundef nonnull %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.i.i = icmp slt i32 %call23.i.i, 0
  br i1 %cmp24.i.i, label %if.then21.i.i.link_lock_failed.i.i_crit_edge, label %if.end26.i.i

if.then21.i.i.link_lock_failed.i.i_crit_edge:     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %link_lock_failed.i.i

if.end26.i.i:                                     ; preds = %if.then21.i.i
  %call28.i.i = call i32 @__key_link_begin(ptr noundef nonnull %129, ptr noundef nonnull %ctx, ptr noundef nonnull %edit.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp29.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp29.i.i, label %link_prealloc_failed.i.i, label %if.end26.i.i.if.end32.i.i_crit_edge

if.end26.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end26.i.i.if.end32.i.i_crit_edge, %if.end18.i.i.if.end32.i.i_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @key_construction_mutex, i32 noundef 0) #8
  %152 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %155, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %if.end32.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end32.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end32.i.i
  %call1.i.i38.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i38.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i38.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end32.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call33.i.i = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %ctx) #8
  %call.i123.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i123.i.i, label %rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i126.i.i

rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i126.i.i:                           ; preds = %rcu_read_lock.exit.i.i
  %call1.i124.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124.i.i)
  %tobool.not.i125.i.i = icmp eq i32 %call1.i124.i.i, 0
  br i1 %tobool.not.i125.i.i, label %land.lhs.true.i126.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i128.i.i

land.lhs.true.i126.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i128.i.i:                          ; preds = %land.lhs.true.i126.i.i
  %.b4.i127.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i127.i.i, label %land.lhs.true2.i128.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i129.i.i

land.lhs.true2.i128.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i129.i.i:                                 ; preds = %land.lhs.true2.i128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i129.i.i, %land.lhs.true2.i128.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i126.i.i.rcu_read_unlock.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %156 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i.i.i.i130.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i.i130.i.i to ptr
  %preempt_count.i.i.i.i131.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i.i131.i.i, align 4
  %sub.i.i.i.i.i = add i32 %159, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i131.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %cmp.i132.i.i = icmp ugt ptr %call33.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132.i.i, label %if.end36.i.i, label %key_already_present.i.i

if.end36.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  br i1 %tobool20.not.i.i, label %if.end43.critedge.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__key_link(ptr noundef nonnull %129, ptr noundef %call.i.i, ptr noundef nonnull %edit.i.i) #8
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #8
  %160 = ptrtoint ptr %edit.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %edit.i.i, align 4
  call void @__key_link_end(ptr noundef nonnull %129, ptr noundef nonnull %ctx, ptr noundef %161) #8
  br label %construct_alloc_key.exit.thread.i

if.end43.critedge.i.i:                            ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #8
  br label %construct_alloc_key.exit.thread.i

construct_alloc_key.exit.thread.i:                ; preds = %if.end43.critedge.i.i, %if.then38.i.i
  call void @mutex_unlock(ptr noundef %cons_lock.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit.i.i) #8
  call void @key_user_put(ptr noundef nonnull %call6.i) #8
  br label %if.then12.i

key_already_present.i.i:                          ; preds = %rcu_read_unlock.exit.i.i
  call void @key_put(ptr noundef %call.i.i) #8
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #8
  %162 = ptrtoint ptr %call33.i.i to i32
  %and.i.i39.i = and i32 %162, -2
  %163 = inttoptr i32 %and.i.i39.i to ptr
  br i1 %tobool20.not.i.i, label %key_already_present.i.i.construct_alloc_key.exit.thread67.i_crit_edge, label %if.then48.i.i

key_already_present.i.i.construct_alloc_key.exit.thread67.i_crit_edge: ; preds = %key_already_present.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %construct_alloc_key.exit.thread67.i

if.then48.i.i:                                    ; preds = %key_already_present.i.i
  %call49.i.i = call i32 @__key_link_check_live_key(ptr noundef nonnull %129, ptr noundef %163) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %cmp50.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %cmp50.i.i, label %if.end52.thread.i.i, label %if.end52.i.i

if.end52.thread.i.i:                              ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__key_link(ptr noundef nonnull %129, ptr noundef %163, ptr noundef nonnull %edit.i.i) #8
  %164 = ptrtoint ptr %edit.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %edit.i.i, align 4
  call void @__key_link_end(ptr noundef nonnull %129, ptr noundef nonnull %ctx, ptr noundef %165) #8
  br label %construct_alloc_key.exit.thread67.i

if.end52.i.i:                                     ; preds = %if.then48.i.i
  %166 = ptrtoint ptr %edit.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %edit.i.i, align 4
  call void @__key_link_end(ptr noundef nonnull %129, ptr noundef nonnull %ctx, ptr noundef %167) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %cmp54.i.i = icmp slt i32 %call49.i.i, 0
  br i1 %cmp54.i.i, label %link_check_failed.i.i, label %if.end52.i.i.construct_alloc_key.exit.thread67.i_crit_edge

if.end52.i.i.construct_alloc_key.exit.thread67.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %construct_alloc_key.exit.thread67.i

construct_alloc_key.exit.thread67.i:              ; preds = %if.end52.i.i.construct_alloc_key.exit.thread67.i_crit_edge, %if.end52.thread.i.i, %key_already_present.i.i.construct_alloc_key.exit.thread67.i_crit_edge
  call void @mutex_unlock(ptr noundef %cons_lock.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit.i.i) #8
  call void @key_user_put(ptr noundef nonnull %call6.i) #8
  br label %if.end22.i

link_check_failed.i.i:                            ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %cons_lock.i.i) #8
  call void @key_put(ptr noundef %163) #8
  br label %construct_alloc_key.exit.i

link_prealloc_failed.i.i:                         ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %edit.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %edit.i.i, align 4
  call void @__key_link_end(ptr noundef nonnull %129, ptr noundef nonnull %ctx, ptr noundef %169) #8
  br label %link_lock_failed.i.i

link_lock_failed.i.i:                             ; preds = %link_prealloc_failed.i.i, %if.then21.i.i.link_lock_failed.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call23.i.i, %if.then21.i.i.link_lock_failed.i.i_crit_edge ], [ %call28.i.i, %link_prealloc_failed.i.i ]
  call void @mutex_unlock(ptr noundef %cons_lock.i.i) #8
  call void @key_put(ptr noundef %call.i.i) #8
  br label %construct_alloc_key.exit.i

alloc_failed.i.i:                                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %cons_lock.i.i) #8
  %170 = ptrtoint ptr %call.i.i to i32
  br label %construct_alloc_key.exit.i

construct_alloc_key.exit.i:                       ; preds = %alloc_failed.i.i, %link_lock_failed.i.i, %link_check_failed.i.i
  %retval.0.i.i = phi i32 [ %170, %alloc_failed.i.i ], [ %ret.0.i.i, %link_lock_failed.i.i ], [ %call49.i.i, %link_check_failed.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit.i.i) #8
  call void @key_user_put(ptr noundef nonnull %call6.i) #8
  %171 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %retval.0.i.i, label %construct_alloc_key.exit.i.error_put_dest_keyring.i_crit_edge [
    i32 0, label %construct_alloc_key.exit.i.if.then12.i_crit_edge
    i32 -115, label %construct_alloc_key.exit.i.if.end22.i_crit_edge
  ]

construct_alloc_key.exit.i.if.end22.i_crit_edge:  ; preds = %construct_alloc_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

construct_alloc_key.exit.i.if.then12.i_crit_edge: ; preds = %construct_alloc_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

construct_alloc_key.exit.i.error_put_dest_keyring.i_crit_edge: ; preds = %construct_alloc_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put_dest_keyring.i

if.then12.i:                                      ; preds = %construct_alloc_key.exit.i.if.then12.i_crit_edge, %construct_alloc_key.exit.thread.i
  %key.064.i = phi ptr [ %call.i.i, %construct_alloc_key.exit.thread.i ], [ null, %construct_alloc_key.exit.i.if.then12.i_crit_edge ]
  %call.i40.i = call ptr @request_key_auth_new(ptr noundef %key.064.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %callout_info, i32 noundef %callout_len, ptr noundef %129) #8
  %cmp.i.i41.i = icmp ugt ptr %call.i40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i41.i, label %if.then.i.i, label %if.end.i46.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %call.i40.i to i32
  br label %construct_key.exit.i

if.end.i46.i:                                     ; preds = %if.then12.i
  %type.i42.i = getelementptr inbounds %struct.key, ptr %key.064.i, i32 0, i32 16, i32 0, i32 2
  %173 = ptrtoint ptr %type.i42.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %type.i42.i, align 8
  %request_key.i.i = getelementptr inbounds %struct.key_type, ptr %174, i32 0, i32 14
  %175 = ptrtoint ptr %request_key.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %request_key.i.i, align 4
  %tobool.not.i43.i = icmp eq ptr %176, null
  %spec.select.i44.i = select i1 %tobool.not.i43.i, ptr @call_sbin_request_key, ptr %176
  %call7.i.i = call i32 %spec.select.i44.i(ptr noundef %call.i40.i, ptr noundef %aux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i45.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i45.i, label %land.rhs.i.i, label %if.end.i46.i.if.end25.i.i_crit_edge

if.end.i46.i.if.end25.i.i_crit_edge:              ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

land.rhs.i.i:                                     ; preds = %if.end.i46.i
  %flags.i47.i = getelementptr inbounds %struct.key, ptr %call.i40.i, i32 0, i32 15
  %177 = ptrtoint ptr %flags.i47.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %flags.i47.i, align 4
  %179 = and i32 %178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool9.not.i48.i = icmp eq i32 %179, 0
  br i1 %tobool9.not.i48.i, label %do.end.i.i, label %land.rhs.i.i.if.end25.i.i_crit_edge, !prof !62

land.rhs.i.i.if.end25.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 9, ptr noundef null) #8
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end.i.i, %land.rhs.i.i.if.end25.i.i_crit_edge, %if.end.i46.i.if.end25.i.i_crit_edge
  call void @key_put(ptr noundef %call.i40.i) #8
  br label %construct_key.exit.i

construct_key.exit.i:                             ; preds = %if.end25.i.i, %if.then.i.i
  %retval.0.i49.i = phi i32 [ %172, %if.then.i.i ], [ %call7.i.i, %if.end25.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i49.i)
  %cmp14.i = icmp slt i32 %retval.0.i49.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %construct_key.exit.i.if.end22.i_crit_edge

construct_key.exit.i.if.end22.i_crit_edge:        ; preds = %construct_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then15.i:                                      ; preds = %construct_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i50.i = call i32 @key_reject_and_link(ptr noundef %key.064.i, i32 noundef 60, i32 noundef 126, ptr noundef null, ptr noundef null) #8
  call void @key_put(ptr noundef %key.064.i) #8
  br label %error_put_dest_keyring.i

if.end22.i:                                       ; preds = %construct_key.exit.i.if.end22.i_crit_edge, %construct_alloc_key.exit.i.if.end22.i_crit_edge, %construct_alloc_key.exit.thread67.i
  %key.066.i = phi ptr [ null, %construct_alloc_key.exit.i.if.end22.i_crit_edge ], [ %key.064.i, %construct_key.exit.i.if.end22.i_crit_edge ], [ %163, %construct_alloc_key.exit.thread67.i ]
  call void @key_put(ptr noundef %129) #8
  br label %error_free

error_put_dest_keyring.i:                         ; preds = %if.then15.i, %construct_alloc_key.exit.i.error_put_dest_keyring.i_crit_edge, %do.end.i.error_put_dest_keyring.i_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i49.i, %if.then15.i ], [ -12, %do.end.i.error_put_dest_keyring.i_crit_edge ], [ %retval.0.i.i, %construct_alloc_key.exit.i.error_put_dest_keyring.i_crit_edge ]
  call void @key_put(ptr noundef %129) #8
  br label %error.i

error.i:                                          ; preds = %error_put_dest_keyring.i, %construct_get_dest_keyring.exit.thread.i
  %ret.1.i = phi i32 [ %ret.0.i, %error_put_dest_keyring.i ], [ %retval.1.i.ph.i, %construct_get_dest_keyring.exit.thread.i ]
  %180 = inttoptr i32 %ret.1.i to ptr
  br label %error_free

error_free:                                       ; preds = %error.i, %if.end22.i, %if.end58.error_free_crit_edge, %if.else54.error_free_crit_edge, %if.else.error_free_crit_edge, %cache_requested_key.exit, %if.then45, %if.then35, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.error_free_crit_edge
  %key.0 = phi ptr [ inttoptr (i32 -126 to ptr), %if.else54.error_free_crit_edge ], [ %57, %if.then35 ], [ %58, %if.then45 ], [ %59, %cache_requested_key.exit ], [ %34, %if.else.i.i.i.i.i.i.error_free_crit_edge ], [ %34, %if.end15.sink.split.i.i.i.i.i.i ], [ %call20, %if.else.error_free_crit_edge ], [ %180, %error.i ], [ %key.066.i, %if.end22.i ], [ inttoptr (i32 -1 to ptr), %if.end58.error_free_crit_edge ]
  %match_free = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 9
  %181 = ptrtoint ptr %match_free to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %match_free, align 4
  %tobool62.not = icmp eq ptr %182, null
  br i1 %tobool62.not, label %error_free.error_crit_edge, label %if.then63

error_free.error_crit_edge:                       ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then63:                                        ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #10
  call void %182(ptr noundef %match_data) #8
  br label %error

error:                                            ; preds = %if.then63, %error_free.error_crit_edge, %if.then13
  %key.1 = phi ptr [ %28, %if.then13 ], [ %key.0, %if.then63 ], [ %key.0, %error_free.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #8
  ret ptr %key.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_process_keyrings_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_key_construction(ptr noundef %key, i1 noundef zeroext %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 73) #8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %wait_on_bit.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

wait_on_bit.exit:                                 ; preds = %entry
  %cond = select i1 %intr, i32 1, i32 2
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool1.not = icmp eq i32 %call3.i, 0
  br i1 %tobool1.not, label %wait_on_bit.exit.if.end_crit_edge, label %wait_on_bit.exit.cleanup_crit_edge

wait_on_bit.exit.cleanup_crit_edge:               ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wait_on_bit.exit.if.end_crit_edge:                ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %wait_on_bit.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load volatile i16, ptr %state.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp slt i16 %4, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i16 %4 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @key_validate(ptr noundef %key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %wait_on_bit.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then4 ], [ %call6, %if.end5 ], [ -512, %wait_on_bit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @request_key_tag(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %callout_info, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @strlen(ptr noundef nonnull %callout_info) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %callout_len.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call1 = tail call ptr @request_key_and_link(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info, i32 noundef %callout_len.0, ptr noundef null, ptr noundef null, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.key, ptr %call1, i32 0, i32 15
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 73) #8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then3.if.end.i_crit_edge, label %wait_on_bit.exit.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

wait_on_bit.exit.i:                               ; preds = %if.then3
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags.i, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool1.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool1.not.i, label %wait_on_bit.exit.i.if.end.i_crit_edge, label %wait_on_bit.exit.i.if.then5_crit_edge

wait_on_bit.exit.i.if.then5_crit_edge:            ; preds = %wait_on_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

wait_on_bit.exit.i.if.end.i_crit_edge:            ; preds = %wait_on_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %wait_on_bit.exit.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.key, ptr %call1, i32 0, i32 14
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i17 = icmp slt i16 %4, 0
  br i1 %cmp.i17, label %if.then4.i, label %wait_for_key_construction.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i16 %4 to i32
  br label %if.then5

wait_for_key_construction.exit:                   ; preds = %if.end.i
  %call6.i = tail call i32 @key_validate(ptr noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %wait_for_key_construction.exit.if.then5_crit_edge, label %wait_for_key_construction.exit.cleanup_crit_edge

wait_for_key_construction.exit.cleanup_crit_edge: ; preds = %wait_for_key_construction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wait_for_key_construction.exit.if.then5_crit_edge: ; preds = %wait_for_key_construction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %wait_for_key_construction.exit.if.then5_crit_edge, %if.then4.i, %wait_on_bit.exit.i.if.then5_crit_edge
  %retval.0.i20 = phi i32 [ %call6.i, %wait_for_key_construction.exit.if.then5_crit_edge ], [ -512, %wait_on_bit.exit.i.if.then5_crit_edge ], [ %conv.i, %if.then4.i ]
  tail call void @key_put(ptr noundef %call1) #8
  %5 = inttoptr i32 %retval.0.i20 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %wait_for_key_construction.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then5 ], [ %call1, %wait_for_key_construction.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @request_key_with_auxdata(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info, i32 noundef %callout_len, ptr noundef %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @request_key_and_link(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag, ptr noundef %callout_info, i32 noundef %callout_len, ptr noundef %aux, ptr noundef null, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.key, ptr %call, i32 0, i32 15
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 73) #8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.i_crit_edge, label %wait_on_bit.exit.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

wait_on_bit.exit.i:                               ; preds = %if.then
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags.i, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool1.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool1.not.i, label %wait_on_bit.exit.i.if.end.i_crit_edge, label %wait_on_bit.exit.i.if.then3_crit_edge

wait_on_bit.exit.i.if.then3_crit_edge:            ; preds = %wait_on_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

wait_on_bit.exit.i.if.end.i_crit_edge:            ; preds = %wait_on_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %wait_on_bit.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.key, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i11 = icmp slt i16 %4, 0
  br i1 %cmp.i11, label %if.then4.i, label %wait_for_key_construction.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = sext i16 %4 to i32
  br label %if.then3

wait_for_key_construction.exit:                   ; preds = %if.end.i
  %call6.i = tail call i32 @key_validate(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %wait_for_key_construction.exit.if.then3_crit_edge, label %wait_for_key_construction.exit.cleanup_crit_edge

wait_for_key_construction.exit.cleanup_crit_edge: ; preds = %wait_for_key_construction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wait_for_key_construction.exit.if.then3_crit_edge: ; preds = %wait_for_key_construction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %wait_for_key_construction.exit.if.then3_crit_edge, %if.then4.i, %wait_on_bit.exit.i.if.then3_crit_edge
  %retval.0.i14 = phi i32 [ %call6.i, %wait_for_key_construction.exit.if.then3_crit_edge ], [ -512, %wait_on_bit.exit.i.if.then3_crit_edge ], [ %conv.i, %if.then4.i ]
  tail call void @key_put(ptr noundef %call) #8
  %5 = inttoptr i32 %retval.0.i14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %wait_for_key_construction.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then3 ], [ %call, %wait_for_key_construction.exit.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @request_key_rcu(ptr noundef %type, ptr noundef %description, ptr noundef %domain_tag) #0 align 64 {
entry:
  %ctx = alloca %struct.keyring_search_context, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #8
  %0 = getelementptr inbounds i8, ptr %ctx, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctx, align 8
  %3 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 4
  %desc_len = getelementptr inbounds %struct.anon.68, ptr %3, i32 0, i32 1
  %call = tail call i32 @strlen(ptr noundef %description) #11
  %conv = trunc i32 %call to i16
  %5 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %desc_len, align 2
  %type1 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %type, ptr %type1, align 8
  %domain_tag2 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %domain_tag2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %domain_tag, ptr %domain_tag2, align 4
  %description3 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %description3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %description, ptr %description3, align 8
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred5, align 16
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cred, align 4
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @key_default_cmp, ptr %match_data, align 8
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %raw_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %description, ptr %raw_data, align 4
  %preparsed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %preparsed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %preparsed, align 8
  %lookup_type = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %lookup_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lookup_type, align 4
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 34, ptr %flags, align 8
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %21 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %iterator, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %0, align 8
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %23 = ptrtoint ptr %possessed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %possessed, align 4
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %24 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %result, align 8
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %25 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %now, align 8
  %26 = load ptr, ptr %task, align 8
  %cached_requested_key.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 100
  %27 = ptrtoint ptr %cached_requested_key.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cached_requested_key.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = call zeroext i1 @key_default_cmp(ptr noundef nonnull %28, ptr noundef %match_data) #8
  br i1 %call2.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.key, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i31 = and i32 %30, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool4.not.i = icmp eq i32 %and.i31, 0
  br i1 %tobool4.not.i, label %cond.true.i.i, label %land.lhs.true3.i.if.end_crit_edge

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.true.i.i:                                    ; preds = %land.lhs.true3.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #8
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !62

cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %cond.true.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %ctx) #8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmp13 = icmp eq ptr %call8, inttoptr (i32 -11 to ptr)
  %spec.select = select i1 %cmp13, ptr inttoptr (i32 -126 to ptr), ptr %call8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %33 = ptrtoint ptr %call8 to i32
  %and.i32 = and i32 %33, -2
  %34 = inttoptr i32 %and.i32 to ptr
  %35 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i.i33 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i33 to ptr
  %task.i34 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i34, align 8
  %cached_requested_key.i35 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 100
  %39 = ptrtoint ptr %cached_requested_key.i35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cached_requested_key.i35, align 4
  call void @key_put(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i.i = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i.i, label %if.else.cache_requested_key.exit_crit_edge, label %cond.true.i.i39

if.else.cache_requested_key.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cache_requested_key.exit

cond.true.i.i39:                                  ; preds = %if.else
  %call.i.i.i.i.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %34, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %34, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %34, ptr nonnull %34, i32 1, ptr nonnull elementtype(i32) %34) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i37 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i37)
  %tobool1.not.i.i.i.i.i.i38 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i37, 0
  br i1 %tobool1.not.i.i.i.i.i.i38, label %cond.true.i.i39.if.end15.sink.split.i.i.i.i.i.i44_crit_edge, label %if.else.i.i.i.i.i.i42, !prof !62

cond.true.i.i39.if.end15.sink.split.i.i.i.i.i.i44_crit_edge: ; preds = %cond.true.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i44

if.else.i.i.i.i.i.i42:                            ; preds = %cond.true.i.i39
  %add.i.i.i.i.i.i40 = add i32 %asmresult.i.i.i.i.i.i.i.i37, 1
  %42 = or i32 %add.i.i.i.i.i.i40, %asmresult.i.i.i.i.i.i.i.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i.i41 = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i.i41, label %if.else.i.i.i.i.i.i42.cache_requested_key.exit_crit_edge, label %if.else.i.i.i.i.i.i42.if.end15.sink.split.i.i.i.i.i.i44_crit_edge, !prof !63

if.else.i.i.i.i.i.i42.if.end15.sink.split.i.i.i.i.i.i44_crit_edge: ; preds = %if.else.i.i.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i44

if.else.i.i.i.i.i.i42.cache_requested_key.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cache_requested_key.exit

if.end15.sink.split.i.i.i.i.i.i44:                ; preds = %if.else.i.i.i.i.i.i42.if.end15.sink.split.i.i.i.i.i.i44_crit_edge, %cond.true.i.i39.if.end15.sink.split.i.i.i.i.i.i44_crit_edge
  %.sink.i.i.i.i.i.i43 = phi i32 [ 2, %cond.true.i.i39.if.end15.sink.split.i.i.i.i.i.i44_crit_edge ], [ 1, %if.else.i.i.i.i.i.i42.if.end15.sink.split.i.i.i.i.i.i44_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %34, i32 noundef %.sink.i.i.i.i.i.i43) #8
  br label %cache_requested_key.exit

cache_requested_key.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i44, %if.else.i.i.i.i.i.i42.cache_requested_key.exit_crit_edge, %if.else.cache_requested_key.exit_crit_edge
  %43 = ptrtoint ptr %cached_requested_key.i35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %34, ptr %cached_requested_key.i35, align 4
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %44 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stack.i.i, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %cache_requested_key.exit, %if.then10, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %34, %cache_requested_key.exit ], [ %28, %if.else.i.i.i.i.i.i.cleanup_crit_edge ], [ %28, %if.end15.sink.split.i.i.i.i.i.i ], [ %spec.select, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_reject_and_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_user_lookup([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_user_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_user_keyrings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_check_live_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_auth_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @call_sbin_request_key(ptr noundef %authkey, ptr nocapture noundef readnone %aux) unnamed_addr #0 align 64 {
entry:
  %user_session = alloca ptr, align 4
  %argv = alloca [9 x ptr], align 4
  %envp = alloca [3 x ptr], align 4
  %uid_str = alloca [12 x i8], align 1
  %gid_str = alloca [12 x i8], align 1
  %key_str = alloca [12 x i8], align 1
  %keyring_str = alloca [3 x [12 x i8]], align 1
  %desc = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %authkey, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_session) #8
  %5 = ptrtoint ptr %user_session to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %user_session, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %argv) #8
  %6 = call ptr @memset(ptr %argv, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #8
  %7 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %envp, align 4, !annotation !68
  %8 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !68
  %10 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %uid_str) #8
  %12 = call ptr @memset(ptr %uid_str, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %gid_str) #8
  %13 = call ptr @memset(ptr %gid_str, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key_str) #8
  %14 = call ptr @memset(ptr %key_str, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %keyring_str) #8
  %15 = call ptr @memset(ptr %keyring_str, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %desc) #8
  %16 = call ptr @memset(ptr %desc, i32 255, i32 20)
  %call4 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %user_session) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.if.then.i_crit_edge, label %if.end

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end:                                           ; preds = %entry
  %17 = call i32 @llvm.read_register.i32(metadata !51) #8
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %serial = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %serial, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %desc, ptr noundef nonnull @.str.6, i32 noundef %20)
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %cred12 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred12, align 16
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.get_cred.exit_crit_edge, label %do.body.i

if.end.get_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %24) #8
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !62

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__invalid_creds(ptr noundef nonnull %24, ptr noundef nonnull @.str.11, i32 noundef 253) #8
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %25 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 28
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %24, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %24, i32 1, i32 3, i32 1) #8
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %24, ptr nonnull %24, i32 1, ptr nonnull elementtype(i32) %24) #8, !srcloc !69
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end.get_cred.exit_crit_edge
  %fsuid = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 10
  %fsgid = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 11
  %28 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack = load i32, ptr %fsuid, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %30 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack140 = load i32, ptr %fsgid, align 4
  %31 = insertvalue [1 x i32] undef, i32 %.unpack140, 0
  %call16 = call ptr @keyring_alloc(ptr noundef nonnull %desc, [1 x i32] %29, [1 x i32] %31, ptr noundef %24, i32 noundef 1057161216, i32 noundef 1, ptr noundef null, ptr noundef null) #8
  br i1 %tobool.not.i, label %get_cred.exit.put_cred.exit_crit_edge, label %do.body.i145

get_cred.exit.put_cred.exit_crit_edge:            ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

do.body.i145:                                     ; preds = %get_cred.exit
  %call.i.i144 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %24) #8
  br i1 %call.i.i144, label %if.then.i.i146, label %do.body.i145.__validate_creds.exit.i147_crit_edge, !prof !62

do.body.i145.__validate_creds.exit.i147_crit_edge: ; preds = %do.body.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i147

if.then.i.i146:                                   ; preds = %do.body.i145
  call void @__sanitizer_cov_trace_pc() #10
  call void @__invalid_creds(ptr noundef nonnull %24, ptr noundef nonnull @.str.11, i32 noundef 286) #8
  br label %__validate_creds.exit.i147

__validate_creds.exit.i147:                       ; preds = %if.then.i.i146, %do.body.i145.__validate_creds.exit.i147_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %24, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @llvm.prefetch.p0(ptr nonnull %24, i32 1, i32 3, i32 1) #8
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %24, ptr nonnull %24, i32 1, ptr nonnull elementtype(i32) %24) #8, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i147.put_cred.exit_crit_edge

__validate_creds.exit.i147.put_cred.exit_crit_edge: ; preds = %__validate_creds.exit.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i147
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_cred(ptr noundef nonnull %24) #8
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i147.put_cred.exit_crit_edge, %get_cred.exit.put_cred.exit_crit_edge
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call16 to i32
  br label %error_us

if.end20:                                         ; preds = %put_cred.exit
  %call21 = call i32 @key_link(ptr noundef %call16, ptr noundef %authkey) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.error_link_crit_edge, label %if.end24

if.end20.error_link_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_link

if.end24:                                         ; preds = %if.end20
  %34 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack141 = load i32, ptr %fsuid, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack141, 0
  %call28 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %35) #8
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %uid_str, ptr noundef nonnull @.str.8, i32 noundef %call28)
  %36 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack142 = load i32, ptr %fsgid, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack142, 0
  %call33 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %37) #8
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %gid_str, ptr noundef nonnull @.str.8, i32 noundef %call33)
  %38 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %serial, align 4
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %key_str, ptr noundef nonnull @.str.8, i32 noundef %39)
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 21
  %40 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %if.end24.cond.end_crit_edge, label %cond.true

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %serial40 = getelementptr inbounds %struct.key, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %serial40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %serial40, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end24.cond.end_crit_edge
  %cond = phi i32 [ %43, %cond.true ], [ 0, %if.end24.cond.end_crit_edge ]
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %keyring_str, ptr noundef nonnull @.str.8, i32 noundef %cond)
  %process_keyring = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 20
  %44 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %process_keyring, align 4
  %tobool42.not = icmp eq ptr %45, null
  br i1 %tobool42.not, label %cond.end.if.end46_crit_edge, label %if.then43

cond.end.if.end46_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %serial45 = getelementptr inbounds %struct.key, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %serial45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %serial45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %cond.end.if.end46_crit_edge
  %prkey.0 = phi i32 [ %47, %if.then43 ], [ 0, %cond.end.if.end46_crit_edge ]
  %arrayidx47 = getelementptr inbounds [3 x [12 x i8]], ptr %keyring_str, i32 0, i32 1
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx47, ptr noundef nonnull @.str.8, i32 noundef %prkey.0)
  %session_keyring = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 19
  %48 = ptrtoint ptr %session_keyring to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %session_keyring, align 4
  %tobool50.not = icmp eq ptr %49, null
  br i1 %tobool50.not, label %if.then51, label %if.end46.if.end52_crit_edge

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %user_session to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user_session, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end46.if.end52_crit_edge
  %session.0 = phi ptr [ %49, %if.end46.if.end52_crit_edge ], [ %51, %if.then51 ]
  %serial53 = getelementptr inbounds %struct.key, ptr %session.0, i32 0, i32 1
  %52 = ptrtoint ptr %serial53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %serial53, align 4
  %arrayidx54 = getelementptr inbounds [3 x [12 x i8]], ptr %keyring_str, i32 0, i32 2
  %call56 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx54, ptr noundef nonnull @.str.8, i32 noundef %53)
  %54 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.9, ptr %envp, align 4
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.10, ptr %8, align 4
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %10, align 4
  %57 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @call_sbin_request_key.request_key, ptr %argv, align 4
  %op = getelementptr inbounds %struct.request_key_auth, ptr %2, i32 0, i32 7
  %arrayidx65 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %op, ptr %arrayidx65, align 4
  %arrayidx68 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %key_str, ptr %arrayidx68, align 4
  %arrayidx71 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %uid_str, ptr %arrayidx71, align 4
  %arrayidx74 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 4
  %61 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %gid_str, ptr %arrayidx74, align 4
  %arrayidx78 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 5
  %62 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %keyring_str, ptr %arrayidx78, align 4
  %arrayidx82 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 6
  %63 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx47, ptr %arrayidx82, align 4
  %arrayidx86 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx54, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [9 x ptr], ptr %argv, i32 0, i32 8
  %65 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx87, align 4
  %call.i = call ptr @call_usermodehelper_setup(ptr noundef nonnull @call_sbin_request_key.request_key, ptr noundef nonnull %argv, ptr noundef nonnull %envp, i32 noundef 3264, ptr noundef nonnull @umh_keys_init, ptr noundef nonnull @umh_keys_cleanup, ptr noundef %call16) #8
  %tobool.not.i148 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i148, label %if.end52.error_link_crit_edge, label %if.end.i

if.end52.error_link_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_link

if.end.i:                                         ; preds = %if.end52
  %tobool.not.i.i = icmp eq ptr %call16, null
  br i1 %tobool.not.i.i, label %if.end.i.call_usermodehelper_keys.exit_crit_edge, label %cond.true.i.i

if.end.i.call_usermodehelper_keys.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %call_usermodehelper_keys.exit

cond.true.i.i:                                    ; preds = %if.end.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call16, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull %call16, i32 1, i32 3, i32 1) #8
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call16, ptr nonnull %call16, i32 1, ptr nonnull elementtype(i32) %call16) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !62

cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %cond.true.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %67 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i.i.i = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.call_usermodehelper_keys.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.call_usermodehelper_keys.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %call_usermodehelper_keys.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call16, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %call_usermodehelper_keys.exit

call_usermodehelper_keys.exit:                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.call_usermodehelper_keys.exit_crit_edge, %if.end.i.call_usermodehelper_keys.exit_crit_edge
  %call2.i = call i32 @call_usermodehelper_exec(ptr noundef nonnull %call.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp92 = icmp sgt i32 %call2.i, -1
  br i1 %cmp92, label %if.then93, label %call_usermodehelper_keys.exit.error_link_crit_edge

call_usermodehelper_keys.exit.error_link_crit_edge: ; preds = %call_usermodehelper_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_link

if.then93:                                        ; preds = %call_usermodehelper_keys.exit
  %flags = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 15
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags, align 4
  %70 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool95.not = icmp eq i32 %70, 0
  br i1 %tobool95.not, label %lor.lhs.false, label %if.then93.error_link_crit_edge

if.then93.error_link_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_link

lor.lhs.false:                                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 @key_validate(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  %spec.select = select i1 %cmp97, i32 -126, i32 0
  br label %error_link

error_link:                                       ; preds = %lor.lhs.false, %if.then93.error_link_crit_edge, %call_usermodehelper_keys.exit.error_link_crit_edge, %if.end52.error_link_crit_edge, %if.end20.error_link_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end20.error_link_crit_edge ], [ %call2.i, %call_usermodehelper_keys.exit.error_link_crit_edge ], [ -126, %if.then93.error_link_crit_edge ], [ %spec.select, %lor.lhs.false ], [ -12, %if.end52.error_link_crit_edge ]
  call void @key_put(ptr noundef %call16) #8
  br label %error_us

error_us:                                         ; preds = %error_link, %if.then18
  %ret.1 = phi i32 [ %33, %if.then18 ], [ %ret.0, %error_link ]
  %71 = ptrtoint ptr %user_session to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %user_session, align 4
  call void @key_put(ptr noundef %72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp.i149 = icmp slt i32 %ret.1, 0
  br i1 %cmp.i149, label %error_us.if.then.i_crit_edge, label %if.else.i

error_us.if.then.i_crit_edge:                     ; preds = %error_us
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %error_us.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %ret.2157 = phi i32 [ %ret.1, %error_us.if.then.i_crit_edge ], [ %call4, %entry.if.then.i_crit_edge ]
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %0, align 4
  %target_key.i = getelementptr inbounds %struct.request_key_auth, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %target_key.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %target_key.i, align 4
  %call.i.i150 = call i32 @key_reject_and_link(ptr noundef %76, i32 noundef 60, i32 noundef 126, ptr noundef null, ptr noundef %authkey) #8
  br label %complete_request_key.exit

if.else.i:                                        ; preds = %error_us
  call void @__sanitizer_cov_trace_pc() #10
  call void @key_revoke(ptr noundef %authkey) #8
  br label %complete_request_key.exit

complete_request_key.exit:                        ; preds = %if.else.i, %if.then.i
  %ret.2156 = phi i32 [ %ret.2157, %if.then.i ], [ %ret.1, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %desc) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %keyring_str) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key_str) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %gid_str) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %uid_str) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %argv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_session) #8
  ret i32 %ret.2156
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umh_keys_init(ptr nocapture noundef readonly %info, ptr noundef %cred) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @install_session_keyring_to_cred(ptr noundef %cred, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umh_keys_cleanup(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @key_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_session_keyring_to_cred(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__ksymtab_complete_request_key, !1, !"__ksymtab_complete_request_key", i1 false, i1 false}
!1 = !{!"../security/keys/request_key.c", i32 68, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../security/keys/request_key.c", i32 572, i32 13}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/keys/request_key.c", i32 607, i32 39}
!6 = !{ptr @__ksymtab_wait_for_key_construction, !7, !"__ksymtab_wait_for_key_construction", i1 false, i1 false}
!7 = !{!"../security/keys/request_key.c", i32 673, i32 1}
!8 = !{ptr @__ksymtab_request_key_tag, !9, !"__ksymtab_request_key_tag", i1 false, i1 false}
!9 = !{!"../security/keys/request_key.c", i32 713, i32 1}
!10 = !{ptr @__ksymtab_request_key_with_auxdata, !11, !"__ksymtab_request_key_with_auxdata", i1 false, i1 false}
!11 = !{!"../security/keys/request_key.c", i32 752, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../security/keys/request_key.c", i32 775, i32 13}
!14 = !{ptr @__ksymtab_request_key_rcu, !15, !"__ksymtab_request_key_rcu", i1 false, i1 false}
!15 = !{!"../security/keys/request_key.c", i32 805, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../security/keys/request_key.c", i32 493, i32 25}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/keys/request_key.c", i32 265, i32 28}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../security/keys/internal.h", i32 210, i32 38}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../security/keys/request_key.c", i32 234, i32 38}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/keys/request_key.c", i32 248, i32 2}
!33 = !{ptr @call_sbin_request_key.request_key, !34, !"request_key", i1 false, i1 false}
!34 = !{!"../security/keys/request_key.c", i32 117, i32 20}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../security/keys/request_key.c", i32 119, i32 28}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/keys/request_key.c", i32 134, i32 16}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../security/keys/request_key.c", i32 136, i32 9}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/keys/request_key.c", i32 152, i32 19}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../security/keys/request_key.c", i32 176, i32 14}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/keys/request_key.c", i32 177, i32 14}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/cred.h", i32 253, i32 2}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148440754, i64 2148440786, i64 2148440815, i64 2148440849, i64 2148440880, i64 2148440903}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149266738}
!65 = !{i64 2149267004}
!66 = !{i64 2154986772, i64 2154987264, i64 2154986809, i64 2154986865, i64 2154986899, i64 2154986923, i64 2154986964, i64 2154986985, i64 2154987013, i64 2154987047}
!67 = !{i64 2153167280}
!68 = !{!"auto-init"}
!69 = !{i64 2148439224, i64 2148439250, i64 2148439279, i64 2148439313, i64 2148439344, i64 2148439367}
!70 = !{i64 2148527676}
!71 = !{i64 2148442409, i64 2148442441, i64 2148442470, i64 2148442504, i64 2148442535, i64 2148442558}
!72 = !{i64 2148527905}
