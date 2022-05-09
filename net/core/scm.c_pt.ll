; ModuleID = '/llk/IR_all_yes/net/core/scm.c_pt.bc'
source_filename = "../net/core/scm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__scm_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc___scm_destroy\09\09\09\09"
module asm "\09.long\09__crc___scm_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scm_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22__scm_destroy\22\09\09\09\09\09"
module asm "__kstrtabns___scm_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scm_send\22, \22a\22\09"
module asm "\09.weak\09__crc___scm_send\09\09\09\09"
module asm "\09.long\09__crc___scm_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__scm_send\22\09\09\09\09\09"
module asm "__kstrtabns___scm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_cmsg\22, \22a\22\09"
module asm "\09.weak\09__crc_put_cmsg\09\09\09\09"
module asm "\09.long\09__crc_put_cmsg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_cmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22put_cmsg\22\09\09\09\09\09"
module asm "__kstrtabns_put_cmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_cmsg_scm_timestamping64\22, \22a\22\09"
module asm "\09.weak\09__crc_put_cmsg_scm_timestamping64\09\09\09\09"
module asm "\09.long\09__crc_put_cmsg_scm_timestamping64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_cmsg_scm_timestamping64:\09\09\09\09\09"
module asm "\09.asciz \09\22put_cmsg_scm_timestamping64\22\09\09\09\09\09"
module asm "__kstrtabns_put_cmsg_scm_timestamping64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_cmsg_scm_timestamping\22, \22a\22\09"
module asm "\09.weak\09__crc_put_cmsg_scm_timestamping\09\09\09\09"
module asm "\09.long\09__crc_put_cmsg_scm_timestamping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_cmsg_scm_timestamping:\09\09\09\09\09"
module asm "\09.asciz \09\22put_cmsg_scm_timestamping\22\09\09\09\09\09"
module asm "__kstrtabns_put_cmsg_scm_timestamping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scm_detach_fds\22, \22a\22\09"
module asm "\09.weak\09__crc_scm_detach_fds\09\09\09\09"
module asm "\09.long\09__crc_scm_detach_fds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scm_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22scm_detach_fds\22\09\09\09\09\09"
module asm "__kstrtabns_scm_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scm_fp_dup\22, \22a\22\09"
module asm "\09.weak\09__crc_scm_fp_dup\09\09\09\09"
module asm "\09.long\09__crc_scm_fp_dup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scm_fp_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22scm_fp_dup\22\09\09\09\09\09"
module asm "__kstrtabns_scm_fp_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.scm_fp_list = type { i16, i16, ptr, [253 x ptr] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.25, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.22, %union.anon.23 }
%union.anon.22 = type { ptr }
%union.anon.23 = type { i64 }
%union.anon.25 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.121 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.79 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.79 = type { %struct.callback_head }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.scm_timestamping64 = type { [3 x %struct.__kernel_timespec] }
%struct.__kernel_timespec = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.scm_timestamping = type { [3 x %struct.__kernel_old_timespec] }
%struct.__kernel_old_timespec = type { i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab___scm_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns___scm_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab___scm_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scm_destroy to i32), ptr @__kstrtab___scm_destroy, ptr @__kstrtabns___scm_destroy }, section "___ksymtab+__scm_destroy", align 4
@__kstrtab___scm_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___scm_send = external dso_local constant [0 x i8], align 1
@__ksymtab___scm_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scm_send to i32), ptr @__kstrtab___scm_send, ptr @__kstrtabns___scm_send }, section "___ksymtab+__scm_send", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/core/scm.c\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_put_cmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_cmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_put_cmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_cmsg to i32), ptr @__kstrtab_put_cmsg, ptr @__kstrtabns_put_cmsg }, section "___ksymtab+put_cmsg", align 4
@__kstrtab_put_cmsg_scm_timestamping64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_cmsg_scm_timestamping64 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_cmsg_scm_timestamping64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_cmsg_scm_timestamping64 to i32), ptr @__kstrtab_put_cmsg_scm_timestamping64, ptr @__kstrtabns_put_cmsg_scm_timestamping64 }, section "___ksymtab+put_cmsg_scm_timestamping64", align 4
@__kstrtab_put_cmsg_scm_timestamping = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_cmsg_scm_timestamping = external dso_local constant [0 x i8], align 1
@__ksymtab_put_cmsg_scm_timestamping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_cmsg_scm_timestamping to i32), ptr @__kstrtab_put_cmsg_scm_timestamping, ptr @__kstrtabns_put_cmsg_scm_timestamping }, section "___ksymtab+put_cmsg_scm_timestamping", align 4
@scm_detach_fds.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scm_detach_fds = external dso_local constant [0 x i8], align 1
@__kstrtabns_scm_detach_fds = external dso_local constant [0 x i8], align 1
@__ksymtab_scm_detach_fds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scm_detach_fds to i32), ptr @__kstrtab_scm_detach_fds, ptr @__kstrtabns_scm_detach_fds }, section "___ksymtab+scm_detach_fds", align 4
@__kstrtab_scm_fp_dup = external dso_local constant [0 x i8], align 1
@__kstrtabns_scm_fp_dup = external dso_local constant [0 x i8], align 1
@__ksymtab_scm_fp_dup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scm_fp_dup to i32), ptr @__kstrtab_scm_fp_dup, ptr @__kstrtabns_scm_fp_dup }, section "___ksymtab+scm_fp_dup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.4 = private constant [18 x i8] c"../net/core/scm.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 235, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 143, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___scm_destroy, ptr @__ksymtab___scm_send, ptr @__ksymtab_put_cmsg, ptr @__ksymtab_put_cmsg_scm_timestamping, ptr @__ksymtab_put_cmsg_scm_timestamping64, ptr @__ksymtab_scm_detach_fds, ptr @__ksymtab_scm_fp_dup, ptr @.str, ptr @.str.2], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__scm_destroy(ptr nocapture noundef %scm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fp = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fp, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp12 = icmp sgt i16 %4, 0
  br i1 %cmp12, label %for.body.preheader, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.then
  %conv14 = zext i16 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.013.in = phi i32 [ %i.013, %for.body.for.body_crit_edge ], [ %conv14, %for.body.preheader ]
  %i.013 = add nsw i32 %i.013.in, -1
  %arrayidx = getelementptr %struct.scm_fp_list, ptr %1, i32 0, i32 3, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @fput(ptr noundef %6) #7
  %cmp = icmp ugt i32 %i.013.in, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %user = getelementptr inbounds %struct.scm_fp_list, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user, align 4
  tail call void @free_uid(ptr noundef %8) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__scm_send(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %msg, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %cond.end, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.end:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not148 = icmp eq ptr %4, null
  br i1 %tobool.not148, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %creds25 = getelementptr inbounds %struct.scm_cookie, ptr %p, i32 0, i32 2
  %uid70 = getelementptr inbounds %struct.scm_cookie, ptr %p, i32 0, i32 2, i32 1
  %gid72 = getelementptr inbounds %struct.scm_cookie, ptr %p, i32 0, i32 2, i32 2
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %fp = getelementptr inbounds %struct.scm_cookie, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmsg.0149 = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr.i.i, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cmsg.0149 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg.0149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp1 = icmp ugt i32 %7, 11
  br i1 %cmp1, label %land.lhs.true, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_controllen, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cmsg.0149 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg = sub i32 %9, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp4.not = icmp ugt i32 %7, %sub
  br i1 %cmp4.not, label %land.lhs.true.error_crit_edge, label %if.end

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %land.lhs.true
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0149, i32 0, i32 1
  %12 = ptrtoint ptr %cmsg_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmsg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5.not = icmp eq i32 %13, 1
  br i1 %cmp5.not, label %if.end7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.0149, i32 0, i32 2
  %14 = ptrtoint ptr %cmsg_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmsg_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end7.error_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sw.bb:                                            ; preds = %if.end7
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %sw.bb.error_crit_edge, label %lor.lhs.false

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false:                                    ; preds = %sw.bb
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp10.not = icmp eq i32 %20, 1
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end12:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %cmsg.0149, i32 12
  %21 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fp, align 4
  %sub.i = add i32 %7, -12
  %div65.i = lshr i32 %sub.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 4
  br i1 %cmp.i, label %if.end12.for.inc_crit_edge, label %if.end.i

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1015, i32 %sub.i)
  %cmp1.i = icmp ugt i32 %sub.i, 1015
  br i1 %cmp1.i, label %if.end.i.error_crit_edge, label %if.end3.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end3.i:                                        ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then4.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 10) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 4197568, i32 noundef 1020) #10
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.then4.i.error_crit_edge, label %if.end7.i

if.then4.i.error_crit_edge:                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %fp, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %call7.i.i, align 8
  %max.i = getelementptr inbounds %struct.scm_fp_list, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 253, ptr %max.i, align 2
  %user.i = getelementptr inbounds %struct.scm_fp_list, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %user.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i, %if.end3.i.if.end8.i_crit_edge
  %fpl.0.i = phi ptr [ %22, %if.end3.i.if.end8.i_crit_edge ], [ %call7.i.i, %if.end7.i ]
  %28 = ptrtoint ptr %fpl.0.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fpl.0.i, align 4
  %idxprom.i = sext i16 %29 to i32
  %add.i = add nsw i32 %div65.i, %idxprom.i
  %max11.i = getelementptr inbounds %struct.scm_fp_list, ptr %fpl.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %max11.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max11.i, align 2
  %conv12.i = sext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv12.i)
  %cmp13.i = icmp sgt i32 %add.i, %conv12.i
  br i1 %cmp13.i, label %if.end8.i.error_crit_edge, label %for.body.preheader.i

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.body.preheader.i:                             ; preds = %if.end8.i
  %arrayidx.i = getelementptr %struct.scm_fp_list, ptr %fpl.0.i, i32 0, i32 3, i32 %idxprom.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div65.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.070.i = phi i32 [ %inc28.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %fpp.069.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %arrayidx.i, %for.body.preheader.i ]
  %arrayidx19.i = getelementptr i32, ptr %add.ptr.i, i32 %i.070.i
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp20.i = icmp slt i32 %33, 0
  br i1 %cmp20.i, label %for.body.i.error_crit_edge, label %lor.lhs.false.i

for.body.i.error_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call22.i = tail call ptr @fget_raw(i32 noundef %33) #7
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %lor.lhs.false.i.error_crit_edge, label %for.inc.i

lor.lhs.false.i.error_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %incdec.ptr.i = getelementptr ptr, ptr %fpp.069.i, i32 1
  %34 = ptrtoint ptr %fpp.069.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call22.i, ptr %fpp.069.i, align 4
  %35 = ptrtoint ptr %fpl.0.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fpl.0.i, align 4
  %inc.i = add i16 %36, 1
  store i16 %inc.i, ptr %fpl.0.i, align 4
  %inc28.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %user29.i = getelementptr inbounds %struct.scm_fp_list, ptr %fpl.0.i, i32 0, i32 2
  %37 = ptrtoint ptr %user29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user29.i, align 4
  %tobool30.not.i = icmp eq ptr %38, null
  br i1 %tobool30.not.i, label %do.end.i, label %for.end.i.for.inc_crit_edge

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.i:                                         ; preds = %for.end.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 99
  %43 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cred.i, align 16
  %user34.i = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %user34.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %user34.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %46, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %46, i32 1, i32 3, i32 1) #7
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !39

do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_uid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !40

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_uid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_uid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef %.sink.i.i.i.i.i) #7
  br label %get_uid.exit.i

get_uid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_uid.exit.i_crit_edge
  %49 = ptrtoint ptr %user29.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %user29.i, align 4
  br label %for.inc

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp18.not = icmp eq i32 %7, 24
  br i1 %cmp18.not, label %if.end20, label %sw.bb16.error_crit_edge

sw.bb16.error_crit_edge:                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end20:                                         ; preds = %sw.bb16
  %add.ptr = getelementptr i8, ptr %cmsg.0149, i32 12
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %creds.sroa.0.0.copyload = load i32, ptr %add.ptr, align 1
  %creds.sroa.8.0.add.ptr.sroa_idx = getelementptr i8, ptr %cmsg.0149, i32 16
  %51 = ptrtoint ptr %creds.sroa.8.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %creds.sroa.8.0.copyload = load i32, ptr %creds.sroa.8.0.add.ptr.sroa_idx, align 1
  %creds.sroa.11.0.add.ptr.sroa_idx = getelementptr i8, ptr %cmsg.0149, i32 20
  %52 = ptrtoint ptr %creds.sroa.11.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %creds.sroa.11.0.copyload = load i32, ptr %creds.sroa.11.0.add.ptr.sroa_idx, align 1
  %53 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i124 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i124 to ptr
  %task.i125 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i125 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i125, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 99
  %57 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cred1.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 25
  %59 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %user_ns.i, align 4
  %call3.i = tail call i32 @make_kuid(ptr noundef %60, i32 noundef %creds.sroa.8.0.copyload) #7
  %61 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user_ns.i, align 4
  %call6.i = tail call i32 @make_kgid(ptr noundef %62, i32 noundef %creds.sroa.11.0.copyload) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i.i = icmp ne i32 %call3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp.i97.i = icmp ne i32 %call6.i, -1
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp.i97.i, i1 false
  br i1 %or.cond.i, label %if.end.i127, label %if.end20.error_crit_edge

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end.i127:                                      ; preds = %if.end20
  %63 = ptrtoint ptr %task.i125 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i125, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %64, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %creds.sroa.0.0.copyload, i32 %call.i.i)
  %cmp.i126 = icmp eq i32 %creds.sroa.0.0.copyload, %call.i.i
  br i1 %cmp.i126, label %if.end.i127.land.lhs.true.i_crit_edge, label %lor.lhs.false15.i

if.end.i127.land.lhs.true.i_crit_edge:            ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

lor.lhs.false15.i:                                ; preds = %if.end.i127
  %65 = ptrtoint ptr %task.i125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i125, align 8
  %call18.i = tail call ptr @task_active_pid_ns(ptr noundef %66) #7
  %user_ns19.i = getelementptr inbounds %struct.pid_namespace, ptr %call18.i, i32 0, i32 8
  %67 = ptrtoint ptr %user_ns19.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_ns19.i, align 4
  %call20.i = tail call zeroext i1 @ns_capable(ptr noundef %68, i32 noundef 21) #7
  br i1 %call20.i, label %lor.lhs.false15.i.land.lhs.true.i_crit_edge, label %lor.lhs.false15.i.error_crit_edge

lor.lhs.false15.i.error_crit_edge:                ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false15.i.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false15.i.land.lhs.true.i_crit_edge, %if.end.i127.land.lhs.true.i_crit_edge
  %uid21.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 4
  %69 = ptrtoint ptr %uid21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack.i = load i32, ptr %uid21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %.unpack.i)
  %cmp.i98.i = icmp eq i32 %call3.i, %.unpack.i
  br i1 %cmp.i98.i, label %land.lhs.true.i.land.lhs.true36.i_crit_edge, label %lor.lhs.false25.i

land.lhs.true.i.land.lhs.true36.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36.i

lor.lhs.false25.i:                                ; preds = %land.lhs.true.i
  %euid.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 8
  %70 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack92.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %.unpack92.i)
  %cmp.i99.i = icmp eq i32 %call3.i, %.unpack92.i
  br i1 %cmp.i99.i, label %lor.lhs.false25.i.land.lhs.true36.i_crit_edge, label %lor.lhs.false29.i

lor.lhs.false25.i.land.lhs.true36.i_crit_edge:    ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false25.i
  %suid.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 6
  %71 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.unpack93.i = load i32, ptr %suid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %.unpack93.i)
  %cmp.i100.i = icmp eq i32 %call3.i, %.unpack93.i
  br i1 %cmp.i100.i, label %lor.lhs.false29.i.land.lhs.true36.i_crit_edge, label %lor.lhs.false33.i

lor.lhs.false29.i.land.lhs.true36.i_crit_edge:    ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36.i

lor.lhs.false33.i:                                ; preds = %lor.lhs.false29.i
  %72 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %user_ns.i, align 4
  %call35.i = tail call zeroext i1 @ns_capable(ptr noundef %73, i32 noundef 7) #7
  br i1 %call35.i, label %lor.lhs.false33.i.land.lhs.true36.i_crit_edge, label %lor.lhs.false33.i.error_crit_edge

lor.lhs.false33.i.error_crit_edge:                ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false33.i.land.lhs.true36.i_crit_edge:    ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %lor.lhs.false33.i.land.lhs.true36.i_crit_edge, %lor.lhs.false29.i.land.lhs.true36.i_crit_edge, %lor.lhs.false25.i.land.lhs.true36.i_crit_edge, %land.lhs.true.i.land.lhs.true36.i_crit_edge
  %gid37.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 5
  %74 = ptrtoint ptr %gid37.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack94.i = load i32, ptr %gid37.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %.unpack94.i)
  %cmp.i101.i = icmp eq i32 %call6.i, %.unpack94.i
  br i1 %cmp.i101.i, label %land.lhs.true36.i.if.end24_crit_edge, label %lor.lhs.false41.i

land.lhs.true36.i.if.end24_crit_edge:             ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

lor.lhs.false41.i:                                ; preds = %land.lhs.true36.i
  %egid.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 9
  %75 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack95.i = load i32, ptr %egid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %.unpack95.i)
  %cmp.i102.i = icmp eq i32 %call6.i, %.unpack95.i
  br i1 %cmp.i102.i, label %lor.lhs.false41.i.if.end24_crit_edge, label %lor.lhs.false45.i

lor.lhs.false41.i.if.end24_crit_edge:             ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

lor.lhs.false45.i:                                ; preds = %lor.lhs.false41.i
  %sgid.i = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 7
  %76 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack96.i = load i32, ptr %sgid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %.unpack96.i)
  %cmp.i103.i = icmp eq i32 %call6.i, %.unpack96.i
  br i1 %cmp.i103.i, label %lor.lhs.false45.i.if.end24_crit_edge, label %lor.lhs.false49.i

lor.lhs.false45.i.if.end24_crit_edge:             ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

lor.lhs.false49.i:                                ; preds = %lor.lhs.false45.i
  %77 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %user_ns.i, align 4
  %call51.i = tail call zeroext i1 @ns_capable(ptr noundef %78, i32 noundef 6) #7
  br i1 %call51.i, label %lor.lhs.false49.i.if.end24_crit_edge, label %lor.lhs.false49.i.error_crit_edge

lor.lhs.false49.i.error_crit_edge:                ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false49.i.if.end24_crit_edge:             ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false49.i.if.end24_crit_edge, %lor.lhs.false45.i.if.end24_crit_edge, %lor.lhs.false41.i.if.end24_crit_edge, %land.lhs.true36.i.if.end24_crit_edge
  %79 = ptrtoint ptr %creds25 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %creds.sroa.0.0.copyload, ptr %creds25, align 4
  %80 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p, align 4
  %tobool28.not = icmp eq ptr %81, null
  br i1 %tobool28.not, label %if.end24.if.then34_crit_edge, label %lor.lhs.false29

if.end24.if.then34_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false29:                                  ; preds = %if.end24
  %call31 = tail call i32 @pid_vnr(ptr noundef nonnull %81) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %creds.sroa.0.0.copyload)
  %cmp33.not = icmp eq i32 %call31, %creds.sroa.0.0.copyload
  br i1 %cmp33.not, label %lor.lhs.false29.if.end43_crit_edge, label %lor.lhs.false29.if.then34_crit_edge

lor.lhs.false29.if.then34_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false29.if.end43_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then34:                                        ; preds = %lor.lhs.false29.if.then34_crit_edge, %if.end24.if.then34_crit_edge
  %call37 = tail call ptr @find_get_pid(i32 noundef %creds.sroa.0.0.copyload) #7
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then34.error_crit_edge, label %cleanup

if.then34.error_crit_edge:                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cleanup:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %p, align 4
  tail call void @put_pid(ptr noundef %83) #7
  %84 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call37, ptr %p, align 4
  br label %if.end43

if.end43:                                         ; preds = %cleanup, %lor.lhs.false29.if.end43_crit_edge
  %85 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 99
  %89 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %90, i32 0, i32 25
  %91 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %user_ns, align 4
  %call48 = tail call i32 @make_kuid(ptr noundef %92, i32 noundef %creds.sroa.8.0.copyload) #7
  %93 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task, align 8
  %cred57 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 99
  %95 = ptrtoint ptr %cred57 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cred57, align 16
  %user_ns58 = getelementptr inbounds %struct.cred, ptr %96, i32 0, i32 25
  %97 = ptrtoint ptr %user_ns58 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %user_ns58, align 4
  %call60 = tail call i32 @make_kgid(ptr noundef %98, i32 noundef %creds.sroa.11.0.copyload) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call48)
  %cmp.i128 = icmp ne i32 %call48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call60)
  %cmp.i129 = icmp ne i32 %call60, -1
  %or.cond = select i1 %cmp.i128, i1 %cmp.i129, i1 false
  br i1 %or.cond, label %cleanup73, label %if.end43.error_crit_edge

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cleanup73:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %uid70 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call48, ptr %uid70, align 4
  %100 = ptrtoint ptr %gid72 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call60, ptr %gid72, align 4
  br label %for.inc

for.inc:                                          ; preds = %cleanup73, %get_uid.exit.i, %for.end.i.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %101 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %5, align 8
  %103 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_controllen, align 8
  %105 = ptrtoint ptr %cmsg.0149 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cmsg.0149, align 4
  %sub.i.i = add i32 %106, 3
  %and.i.i130 = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %cmsg.0149, i32 %and.i.i130
  %add.ptr1.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %104)
  %cmp.i.i131 = icmp ugt i32 %sub.ptr.sub.i.i, %104
  %tobool.not155 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = select i1 %cmp.i.i131, i1 true, i1 %tobool.not155
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  %fp78 = getelementptr inbounds %struct.scm_cookie, ptr %p, i32 0, i32 1
  %107 = ptrtoint ptr %fp78 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fp78, align 4
  %tobool79.not = icmp eq ptr %108, null
  br i1 %tobool79.not, label %for.end.cleanup87_crit_edge, label %land.lhs.true80

for.end.cleanup87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

land.lhs.true80:                                  ; preds = %for.end
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool82.not = icmp eq i16 %110, 0
  br i1 %tobool82.not, label %if.then83, label %land.lhs.true80.cleanup87_crit_edge

land.lhs.true80.cleanup87_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %108) #7
  %111 = ptrtoint ptr %fp78 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %fp78, align 4
  br label %cleanup87

error:                                            ; preds = %if.end43.error_crit_edge, %if.then34.error_crit_edge, %lor.lhs.false49.i.error_crit_edge, %lor.lhs.false33.i.error_crit_edge, %lor.lhs.false15.i.error_crit_edge, %if.end20.error_crit_edge, %sw.bb16.error_crit_edge, %lor.lhs.false.i.error_crit_edge, %for.body.i.error_crit_edge, %if.end8.i.error_crit_edge, %if.then4.i.error_crit_edge, %if.end.i.error_crit_edge, %lor.lhs.false.error_crit_edge, %sw.bb.error_crit_edge, %if.end7.error_crit_edge, %land.lhs.true.error_crit_edge, %for.body.error_crit_edge
  %err.1 = phi i32 [ -9, %lor.lhs.false.i.error_crit_edge ], [ -9, %for.body.i.error_crit_edge ], [ -3, %if.then34.error_crit_edge ], [ -1, %lor.lhs.false15.i.error_crit_edge ], [ -1, %lor.lhs.false33.i.error_crit_edge ], [ -1, %lor.lhs.false49.i.error_crit_edge ], [ -22, %sw.bb16.error_crit_edge ], [ -22, %if.end43.error_crit_edge ], [ -22, %if.end20.error_crit_edge ], [ -22, %if.end.i.error_crit_edge ], [ -12, %if.then4.i.error_crit_edge ], [ -22, %if.end8.i.error_crit_edge ], [ -22, %for.body.error_crit_edge ], [ -22, %land.lhs.true.error_crit_edge ], [ -22, %sw.bb.error_crit_edge ], [ -22, %lor.lhs.false.error_crit_edge ], [ -22, %if.end7.error_crit_edge ]
  %112 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %p, align 4
  tail call void @put_pid(ptr noundef %113) #7
  %114 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %p, align 4
  %115 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fp, align 4
  %tobool.not.i132 = icmp eq ptr %116, null
  br i1 %tobool.not.i132, label %error.cleanup87_crit_edge, label %if.then.i.i

error.cleanup87_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

if.then.i.i:                                      ; preds = %error
  %117 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %fp, align 4
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp12.i.i = icmp sgt i16 %119, 0
  br i1 %cmp12.i.i, label %for.body.preheader.i.i, label %if.then.i.i.__scm_destroy.exit.i_crit_edge

if.then.i.i.__scm_destroy.exit.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__scm_destroy.exit.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %conv14.i.i = zext i16 %119 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.013.in.i.i = phi i32 [ %i.013.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv14.i.i, %for.body.preheader.i.i ]
  %i.013.i.i = add nsw i32 %i.013.in.i.i, -1
  %arrayidx.i.i = getelementptr %struct.scm_fp_list, ptr %116, i32 0, i32 3, i32 %i.013.i.i
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @fput(ptr noundef %121) #7
  %cmp.i.i133 = icmp ugt i32 %i.013.in.i.i, 1
  br i1 %cmp.i.i133, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__scm_destroy.exit.i_crit_edge

for.body.i.i.__scm_destroy.exit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__scm_destroy.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

__scm_destroy.exit.i:                             ; preds = %for.body.i.i.__scm_destroy.exit.i_crit_edge, %if.then.i.i.__scm_destroy.exit.i_crit_edge
  %user.i.i = getelementptr inbounds %struct.scm_fp_list, ptr %116, i32 0, i32 2
  %122 = ptrtoint ptr %user.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %user.i.i, align 4
  tail call void @free_uid(ptr noundef %123) #7
  tail call void @kfree(ptr noundef nonnull %116) #7
  br label %cleanup87

cleanup87:                                        ; preds = %__scm_destroy.exit.i, %error.cleanup87_crit_edge, %if.then83, %land.lhs.true80.cleanup87_crit_edge, %for.end.cleanup87_crit_edge
  %retval.0 = phi i32 [ 0, %if.then83 ], [ 0, %land.lhs.true80.cleanup87_crit_edge ], [ 0, %for.end.cleanup87_crit_edge ], [ %err.1, %error.cleanup87_crit_edge ], [ %err.1, %__scm_destroy.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_cmsg(ptr nocapture noundef %msg, i32 noundef %level, i32 noundef %type, i32 noundef %len, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_flags, align 4
  %2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %entry.if.then2_crit_edge, label %lor.lhs.false

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

lor.lhs.false:                                    ; preds = %entry
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %5 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp = icmp ult i32 %6, 12
  br i1 %cmp, label %lor.lhs.false.if.then2_crit_edge, label %if.end4

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %entry.if.then2_crit_edge
  %or = or i32 %1, 8
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %msg_flags, align 4
  br label %cleanup118

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp6 = icmp ult i32 %6, %add
  br i1 %cmp6, label %if.then7, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %1, 8
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or9, ptr %msg_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4.if.end11_crit_edge
  %cmlen.0 = phi i32 [ %6, %if.then7 ], [ %add, %if.end4.if.end11_crit_edge ]
  %msg_control_is_user = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  %9 = ptrtoint ptr %msg_control_is_user to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %msg_control_is_user, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end11
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 %cmlen.0, i32 -1226833920) #11, !srcloc !41
  %asmresult = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp14 = icmp eq i32 %asmresult, 0
  br i1 %cmp14, label %do.body, label %if.then12.cleanup118_crit_edge

if.then12.cleanup118_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

do.body:                                          ; preds = %if.then12
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 235) #7
  %11 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !42
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %4, i32 %cmlen.0, i32 -1226833921) #7, !srcloc !45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %do.body28, label %do.body.cleanup118_crit_edge, !prof !40

do.body.cleanup118_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

do.body28:                                        ; preds = %do.body
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %4, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 236) #7
  %15 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i157 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i157 to ptr
  %cpu_domain.i.i158 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i158) #4, !srcloc !42
  %and.i159 = and i32 %17, -13
  %or.i160 = or i32 %and.i159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i160) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %cmsg_level, i32 %level, i32 -1226833921) #7, !srcloc !46
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool44.not = icmp eq i32 %18, 0
  br i1 %tobool44.not, label %do.body55, label %do.body28.cleanup118_crit_edge, !prof !40

do.body28.cleanup118_crit_edge:                   ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

do.body55:                                        ; preds = %do.body28
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %4, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 237) #7
  %19 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i161 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i161 to ptr
  %cpu_domain.i.i162 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i162) #4, !srcloc !42
  %and.i163 = and i32 %21, -13
  %or.i164 = or i32 %and.i163, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i164) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %cmsg_type, i32 %type, i32 -1226833921) #7, !srcloc !47
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %do.body82, label %do.body55.cleanup118_crit_edge, !prof !40

do.body55.cleanup118_crit_edge:                   ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

do.body82:                                        ; preds = %do.body55
  %sub = add i32 %cmlen.0, -12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 143) #7
  %call.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i, label %do.body82.__copy_to_user.exit_crit_edge, label %if.end.i

do.body82.__copy_to_user.exit_crit_edge:          ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %__copy_to_user.exit

if.end.i:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %4, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data, i32 noundef %sub) #7
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %sub, i1 noundef zeroext true) #7
  %call.i8.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %sub) #7
  br label %__copy_to_user.exit

__copy_to_user.exit:                              ; preds = %if.end.i, %do.body82.__copy_to_user.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i8.i, %if.end.i ], [ %sub, %do.body82.__copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool84.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool84.not, label %__copy_to_user.exit.if.end104_crit_edge, label %__copy_to_user.exit.cleanup118_crit_edge

__copy_to_user.exit.cleanup118_crit_edge:         ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

__copy_to_user.exit.if.end104_crit_edge:          ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %cmsg_level99 = getelementptr inbounds %struct.cmsghdr, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %cmsg_level99 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %level, ptr %cmsg_level99, align 4
  %cmsg_type100 = getelementptr inbounds %struct.cmsghdr, ptr %4, i32 0, i32 2
  %24 = ptrtoint ptr %cmsg_type100 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %type, ptr %cmsg_type100, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cmlen.0, ptr %4, align 4
  %add.ptr102 = getelementptr i8, ptr %4, i32 12
  %sub103 = add i32 %cmlen.0, -12
  %26 = call ptr @memcpy(ptr %add.ptr102, ptr %data, i32 %sub103)
  br label %if.end104

if.end104:                                        ; preds = %if.else, %__copy_to_user.exit.if.end104_crit_edge
  %27 = add i32 %len, 15
  %add108 = and i32 %27, -4
  %28 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_controllen, align 8
  %30 = tail call i32 @llvm.umin.i32(i32 %add108, i32 %29)
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 8
  %add.ptr112 = getelementptr i8, ptr %32, i32 %30
  store ptr %add.ptr112, ptr %2, align 8
  %sub114 = sub i32 %29, %30
  %33 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub114, ptr %msg_controllen, align 8
  br label %cleanup118

cleanup118:                                       ; preds = %if.end104, %__copy_to_user.exit.cleanup118_crit_edge, %do.body55.cleanup118_crit_edge, %do.body28.cleanup118_crit_edge, %do.body.cleanup118_crit_edge, %if.then12.cleanup118_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end104 ], [ -14, %if.then12.cleanup118_crit_edge ], [ -14, %do.body.cleanup118_crit_edge ], [ -14, %do.body28.cleanup118_crit_edge ], [ -14, %do.body55.cleanup118_crit_edge ], [ -14, %__copy_to_user.exit.cleanup118_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_cmsg_scm_timestamping64(ptr nocapture noundef %msg, ptr nocapture noundef readonly %tss_internal) #0 align 64 {
entry:
  %tss = alloca %struct.scm_timestamping64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tss) #7
  %0 = getelementptr inbounds %struct.__kernel_timespec, ptr %tss, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %tss, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %tss, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %tss, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %tss, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %tss_internal to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tss_internal, align 8
  %7 = ptrtoint ptr %tss to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tss, align 8
  %tv_nsec = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec, align 8
  %conv = sext i32 %9 to i64
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %0, align 8
  %arrayidx.1 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.1, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %1, align 8
  %tv_nsec.1 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %tv_nsec.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.1, align 8
  %conv.1 = sext i32 %15 to i64
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.1, ptr %2, align 8
  %arrayidx.2 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.2, align 8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %3, align 8
  %tv_nsec.2 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %tv_nsec.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tv_nsec.2, align 8
  %conv.2 = sext i32 %21 to i64
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.2, ptr %4, align 8
  %call = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 65, i32 noundef 48, ptr noundef nonnull %tss)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tss) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_cmsg_scm_timestamping(ptr nocapture noundef %msg, ptr nocapture noundef readonly %tss_internal) #0 align 64 {
entry:
  %tss = alloca %struct.scm_timestamping, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tss) #7
  %0 = getelementptr inbounds %struct.__kernel_old_timespec, ptr %tss, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %tss, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %tss, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %tss, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %tss, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %tss_internal to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tss_internal, align 8
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %tss to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %tss, align 4
  %tv_nsec = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 4
  %arrayidx.1 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.1, align 8
  %conv.1 = trunc i64 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.1, ptr %1, align 4
  %tv_nsec.1 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %tv_nsec.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.1, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  %arrayidx.2 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.2, align 8
  %conv.2 = trunc i64 %18 to i32
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.2, ptr %3, align 4
  %tv_nsec.2 = getelementptr [3 x %struct.timespec64], ptr %tss_internal, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %tv_nsec.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tv_nsec.2, align 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %4, align 4
  %call = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 37, i32 noundef 24, ptr noundef nonnull %tss)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tss) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scm_detach_fds(ptr nocapture noundef %msg, ptr nocapture noundef %scm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_flags, align 4
  %and = lshr i32 %4, 11
  %5 = and i32 %and, 524288
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %6 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_controllen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp.i = icmp ult i32 %7, 13
  %sub.i = add i32 %7, -12
  %div3.i = lshr i32 %sub.i, 2
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %div3.i
  %fp = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %8 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %conv = sext i16 %11 to i32
  %12 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %conv)
  %add.ptr = getelementptr i8, ptr %2, i32 12
  %msg_control_is_user = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  %13 = ptrtoint ptr %msg_control_is_user to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %msg_control_is_user, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.rhs, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp49196 = icmp sgt i32 %12, 0
  br i1 %cmp49196, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end119_crit_edge

for.cond.preheader.if.end119_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

land.rhs:                                         ; preds = %entry
  %.b176 = load i1, ptr @scm_detach_fds.__already_done, align 1
  br i1 %.b176, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !40

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @scm_detach_fds.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0197 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr53 = getelementptr i32, ptr %add.ptr, i32 %i.0197
  %cmp.i186 = icmp eq ptr %add.ptr53, null
  br i1 %cmp.i186, label %for.body.for.end_crit_edge, label %receive_fd_user.exit

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

receive_fd_user.exit:                             ; preds = %for.body
  %14 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fp, align 4
  %arrayidx = getelementptr %struct.scm_fp_list, ptr %15, i32 0, i32 3, i32 %i.0197
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @__receive_fd(ptr noundef %17, ptr noundef nonnull %add.ptr53, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp55 = icmp slt i32 %call.i, 0
  br i1 %cmp55, label %receive_fd_user.exit.for.end_crit_edge, label %for.inc

receive_fd_user.exit.for.end_crit_edge:           ; preds = %receive_fd_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %receive_fd_user.exit
  %inc = add nuw nsw i32 %i.0197, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %receive_fd_user.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %12, %for.inc.for.end_crit_edge ], [ %i.0197, %receive_fd_user.exit.for.end_crit_edge ], [ %i.0197, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp59 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp59, label %if.then61, label %for.end.if.end119_crit_edge

for.end.if.end119_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then61:                                        ; preds = %for.end
  %mul = shl i32 %i.0.lcssa, 2
  %add = add i32 %mul, 12
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 324) #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !42
  %and.i = and i32 %20, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %cmsg_level, i32 1, i32 -1226833921) #7, !srcloc !48
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool68.not = icmp eq i32 %21, 0
  br i1 %tobool68.not, label %if.end85, label %if.then61.if.end119_crit_edge

if.then61.if.end119_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.end85:                                         ; preds = %if.then61
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 326) #7
  %22 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i178 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i178 to ptr
  %cpu_domain.i.i179 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i179) #4, !srcloc !42
  %and.i180 = and i32 %24, -13
  %or.i181 = or i32 %and.i180, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i181) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %cmsg_type, i32 1, i32 -1226833921) #7, !srcloc !49
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool86.not = icmp eq i32 %25, 0
  br i1 %tobool86.not, label %if.end103, label %if.end85.if.end119_crit_edge

if.end85.if.end119_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.end103:                                        ; preds = %if.end85
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 328) #7
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i182 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i182 to ptr
  %cpu_domain.i.i183 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i183) #4, !srcloc !42
  %and.i184 = and i32 %28, -13
  %or.i185 = or i32 %and.i184, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i185) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %add, i32 -1226833921) #7, !srcloc !50
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool104.not = icmp eq i32 %29, 0
  br i1 %tobool104.not, label %if.then105, label %if.end103.if.end119_crit_edge

if.end103.if.end119_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_controllen.i, align 8
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %add)
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 8
  %add.ptr115 = getelementptr i8, ptr %34, i32 %32
  store ptr %add.ptr115, ptr %0, align 8
  %sub117 = sub i32 %31, %32
  %35 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub117, ptr %msg_controllen.i, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then105, %if.end103.if.end119_crit_edge, %if.end85.if.end119_crit_edge, %if.then61.if.end119_crit_edge, %for.end.if.end119_crit_edge, %for.cond.preheader.if.end119_crit_edge
  %i.0.lcssa202 = phi i32 [ %i.0.lcssa, %if.then61.if.end119_crit_edge ], [ %i.0.lcssa, %if.end85.if.end119_crit_edge ], [ %i.0.lcssa, %if.end103.if.end119_crit_edge ], [ %i.0.lcssa, %if.then105 ], [ %i.0.lcssa, %for.end.if.end119_crit_edge ], [ 0, %for.cond.preheader.if.end119_crit_edge ]
  %36 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fp, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 4
  %conv122 = sext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa202, i32 %conv122)
  %cmp123 = icmp slt i32 %i.0.lcssa202, %conv122
  br i1 %cmp123, label %if.end119.if.then131_crit_edge, label %lor.lhs.false

if.end119.if.then131_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131

lor.lhs.false:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool128.not = icmp ne i16 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp129 = icmp slt i32 %12, 1
  %or.cond = select i1 %tobool128.not, i1 %cmp129, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then131_crit_edge, label %lor.lhs.false.if.end133_crit_edge

lor.lhs.false.if.end133_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

lor.lhs.false.if.then131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131

if.then131:                                       ; preds = %lor.lhs.false.if.then131_crit_edge, %if.end119.if.then131_crit_edge
  %40 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_flags, align 4
  %or = or i32 %41, 8
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %lor.lhs.false.if.end133_crit_edge
  %42 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fp, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end133.cleanup_crit_edge, label %if.then.i

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end133
  %44 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %fp, align 4
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp12.i = icmp sgt i16 %46, 0
  br i1 %cmp12.i, label %for.body.preheader.i, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then.i
  %conv14.i = zext i16 %46 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.013.in.i = phi i32 [ %i.013.i, %for.body.i.for.body.i_crit_edge ], [ %conv14.i, %for.body.preheader.i ]
  %i.013.i = add nsw i32 %i.013.in.i, -1
  %arrayidx.i = getelementptr %struct.scm_fp_list, ptr %43, i32 0, i32 3, i32 %i.013.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  tail call void @fput(ptr noundef %48) #7
  %cmp.i188 = icmp ugt i32 %i.013.in.i, 1
  br i1 %cmp.i188, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %user.i = getelementptr inbounds %struct.scm_fp_list, ptr %43, i32 0, i32 2
  %49 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %user.i, align 4
  tail call void @free_uid(ptr noundef %50) #7
  tail call void @kfree(ptr noundef nonnull %43) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end133.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scm_fp_dup(ptr noundef %fpl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fpl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fpl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fpl, align 4
  %conv = sext i16 %1 to i32
  %2 = shl nsw i32 %conv, 2
  %3 = add nsw i32 %2, 8
  %call = tail call ptr @kmemdup(ptr noundef nonnull %fpl, i32 noundef %3, i32 noundef 4197568) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %fpl to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fpl, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp24 = icmp sgt i16 %5, 0
  br i1 %cmp24, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scm_fp_list, ptr %fpl, i32 0, i32 3, i32 %i.025
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #7, !srcloc !51
  %inc = add nuw nsw i32 %i.025, 1
  %9 = ptrtoint ptr %fpl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fpl, align 4
  %conv4 = sext i16 %10 to i32
  %cmp = icmp slt i32 %inc, %conv4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call, align 4
  %max = getelementptr inbounds %struct.scm_fp_list, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %max, align 2
  %user = getelementptr inbounds %struct.scm_fp_list, ptr %fpl, i32 0, i32 2
  %14 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

for.end.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_uid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !40

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_uid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_uid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %.sink.i.i.i.i) #7
  br label %get_uid.exit

get_uid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_uid.exit_crit_edge
  %user9 = getelementptr inbounds %struct.scm_fp_list, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %user9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %user9, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_uid.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %get_uid.exit ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__receive_fd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab___scm_destroy, !1, !"__ksymtab___scm_destroy", i1 false, i1 false}
!1 = !{!"../net/core/scm.c", i32 129, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/core/scm.c", i32 186, i32 20}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/core/scm.c", i32 187, i32 20}
!6 = !{ptr @__ksymtab___scm_send, !7, !"__ksymtab___scm_send", i1 false, i1 false}
!7 = !{!"../net/core/scm.c", i32 211, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/core/scm.c", i32 235, i32 3}
!10 = !{ptr @__ksymtab_put_cmsg, !11, !"__ksymtab_put_cmsg", i1 false, i1 false}
!11 = !{!"../net/core/scm.c", i32 260, i32 1}
!12 = !{ptr @__ksymtab_put_cmsg_scm_timestamping64, !13, !"__ksymtab_put_cmsg_scm_timestamping64", i1 false, i1 false}
!13 = !{!"../net/core/scm.c", i32 274, i32 1}
!14 = !{ptr @__ksymtab_put_cmsg_scm_timestamping, !15, !"__ksymtab_put_cmsg_scm_timestamping", i1 false, i1 false}
!15 = !{!"../net/core/scm.c", i32 288, i32 1}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../net/core/scm.c", i32 307, i32 6}
!18 = !{ptr @__ksymtab_scm_detach_fds, !19, !"__ksymtab_scm_detach_fds", i1 false, i1 false}
!19 = !{!"../net/core/scm.c", i32 347, i32 1}
!20 = !{ptr @__ksymtab_scm_fp_dup, !21, !"__ksymtab_scm_fp_dup", i1 false, i1 false}
!21 = !{!"../net/core/scm.c", i32 367, i32 1}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/core/scm.c", i32 111, i32 23}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/core/scm.c", i32 47, i32 28}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 143, i32 2}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148348266, i64 2148348298, i64 2148348327, i64 2148348361, i64 2148348392, i64 2148348415}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2157295316, i64 2157295341}
!42 = !{i64 5480444}
!43 = !{i64 5480641}
!44 = !{i64 2152965874}
!45 = !{i64 2157315004, i64 2157315314, i64 2157315628, i64 2157315942}
!46 = !{i64 2157336799, i64 2157337109, i64 2157337423, i64 2157337737}
!47 = !{i64 2157358573, i64 2157358883, i64 2157359197, i64 2157359511}
!48 = !{i64 2157382546, i64 2157382826, i64 2157383160, i64 2157383494}
!49 = !{i64 2157391370, i64 2157391650, i64 2157391984, i64 2157392318}
!50 = !{i64 2157400186, i64 2157400466, i64 2157400800, i64 2157401134}
!51 = !{i64 2148346736, i64 2148346762, i64 2148346791, i64 2148346825, i64 2148346856, i64 2148346879}
