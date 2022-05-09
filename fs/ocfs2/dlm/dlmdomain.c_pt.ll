; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmdomain.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmdomain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dlm_unregister_domain\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_unregister_domain\09\09\09\09"
module asm "\09.long\09__crc_dlm_unregister_domain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_unregister_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_unregister_domain\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_unregister_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_register_domain\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_register_domain\09\09\09\09"
module asm "\09.long\09__crc_dlm_register_domain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_register_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_register_domain\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_register_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_setup_eviction_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_setup_eviction_cb\09\09\09\09"
module asm "\09.long\09__crc_dlm_setup_eviction_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_setup_eviction_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_setup_eviction_cb\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_setup_eviction_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_register_eviction_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_register_eviction_cb\09\09\09\09"
module asm "\09.long\09__crc_dlm_register_eviction_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_register_eviction_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_register_eviction_cb\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_register_eviction_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_unregister_eviction_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_unregister_eviction_cb\09\09\09\09"
module asm "\09.long\09__crc_dlm_unregister_eviction_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_unregister_eviction_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_unregister_eviction_cb\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_unregister_eviction_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.anon.3 = type { i32, i32 }
%struct.hlist_head = type { ptr }
%struct.dlm_exit_domain = type { i8, [3 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dlm_cancel_join = type { i8, [2 x i8], i8, [64 x i8] }
%struct.dlm_assert_joined = type { i8, [2 x i8], i8, [64 x i8] }
%struct.dlm_query_join_request = type { i8, [2 x i8], i8, %struct.dlm_protocol_version, %struct.dlm_protocol_version, [64 x i8], [32 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.domain_join_ctxt = type { [8 x i32], [8 x i32] }
%struct.o2nm_node = type { %struct.spinlock, %struct.config_item, [65 x i8], i8, i32, i16, %struct.rb_node, i32, i32 }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.dlm_query_nodeinfo = type { i8, i8, i8, i8, [64 x i8], [255 x %struct.dlm_node_info] }
%struct.dlm_node_info = type { i8, i8, i16, i32 }
%struct.dlm_query_region = type { i8, i8, i8, i8, [64 x i8], [1024 x i8] }
%struct.dlm_eviction_cb = type { %struct.list_head, ptr, ptr }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlm_domain_lock\00", [16 x i8] zeroinitializer }, align 32
@dlm_domain_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dlm_domains = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dlm_domains, ptr @dlm_domains }, [24 x i8] zeroinitializer }, align 32
@__func__.__dlm_unhash_lockres = private unnamed_addr constant [21 x i8] c"__dlm_unhash_lockres\00", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Unhash res %.*s\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.__dlm_insert_lockres = private unnamed_addr constant [21 x i8] c"__dlm_insert_lockres\00", align 1
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Hash res %.*s\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.__dlm_lookup_lockres_full = private unnamed_addr constant [26 x i8] c"__dlm_lookup_lockres_full\00", align 1
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@__func__.__dlm_lookup_lockres = private unnamed_addr constant [21 x i8] c"__dlm_lookup_lockres\00", align 1
@__func__.dlm_unregister_domain = private unnamed_addr constant [22 x i8] c"dlm_unregister_domain\00", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"shutting down domain %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: more migration to do\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Following lockres' are still on the tracking list:\0A\00", [44 x i8] zeroinitializer }, align 32
@dlm_unregister_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.dlm_unregister_domain, ptr @.str.8, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015o2dlm: Leaving domain %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ocfs2/dlm/dlmdomain.c\00", [39 x i8] zeroinitializer }, align 32
@dlm_unregister_domain._entry_ptr = internal global ptr @dlm_unregister_domain._entry, section ".printk_index", align 4
@__kstrtab_dlm_unregister_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_unregister_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_unregister_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_unregister_domain to i32), ptr @__kstrtab_dlm_unregister_domain, ptr @__kstrtabns_dlm_unregister_domain }, section "___ksymtab_gpl+dlm_unregister_domain", align 4
@__func__.dlm_register_domain = private unnamed_addr constant [20 x i8] c"dlm_register_domain\00", align 1
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"domain name length too long\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register called for domain \22%s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"This ctxt is not joined yet!\0A\00", [34 x i8] zeroinitializer }, align 32
@dlm_domain_events = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @dlm_domain_events, i64 44), ptr getelementptr (i8, ptr @dlm_domain_events, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Requested locking protocol version is not compatible with already registered domain \22%s\22\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_dlm_register_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_register_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_register_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_register_domain to i32), ptr @__kstrtab_dlm_register_domain, ptr @__kstrtabns_dlm_register_domain }, section "___ksymtab_gpl+dlm_register_domain", align 4
@dlm_callback_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.89, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @dlm_callback_sem, i64 56), ptr getelementptr (i8, ptr @dlm_callback_sem, i64 56) }, ptr @dlm_callback_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.90, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_dlm_setup_eviction_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_setup_eviction_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_setup_eviction_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_setup_eviction_cb to i32), ptr @__kstrtab_dlm_setup_eviction_cb, ptr @__kstrtabns_dlm_setup_eviction_cb }, section "___ksymtab_gpl+dlm_setup_eviction_cb", align 4
@__kstrtab_dlm_register_eviction_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_register_eviction_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_register_eviction_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_register_eviction_cb to i32), ptr @__kstrtab_dlm_register_eviction_cb, ptr @__kstrtabns_dlm_register_eviction_cb }, section "___ksymtab_gpl+dlm_register_eviction_cb", align 4
@__kstrtab_dlm_unregister_eviction_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_unregister_eviction_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_unregister_eviction_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_unregister_eviction_cb to i32), ptr @__kstrtab_dlm_unregister_eviction_cb, ptr @__kstrtabns_dlm_unregister_eviction_cb }, section "___ksymtab_gpl+dlm_unregister_eviction_cb", align 4
@__UNIQUE_ID_author474 = internal constant [24 x i8] c"ocfs2_dlm.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_file475 = internal constant [38 x i8] c"ocfs2_dlm.file=fs/ocfs2/dlm/ocfs2_dlm\00", section ".modinfo", align 1
@__UNIQUE_ID_license476 = internal constant [22 x i8] c"ocfs2_dlm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [56 x i8] c"ocfs2_dlm.description=OCFS2 Distributed Lock Management\00", section ".modinfo", align 1
@__initcall__kmod_ocfs2_dlm__478_2364_dlm_init6 = internal global ptr @dlm_init, section ".initcall6.init", align 4
@__exitcall_dlm_exit = internal global ptr @dlm_exit, section ".exitcall.exit", align 4
@__func__.dlm_ctxt_release = private unnamed_addr constant [17 x i8] c"dlm_ctxt_release\00", align 1
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"freeing memory from domain %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.dlm_send_one_domain_exit = private unnamed_addr constant [25 x i8] c"dlm_send_one_domain_exit\00", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Sending domain exit message %u to node %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Error %d sending domain exit message %u to node %u on domain %s\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.dlm_migrate_all_locks = private unnamed_addr constant [22 x i8] c"dlm_migrate_all_locks\00", align 1
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Migrating locks from domain %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: perhaps there are more lock resources need to be migrated after dlm recovery\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: we won't do dlm recovery after migrating all lock resources\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %d lock resources in hash last pass\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DONE Migrating locks from domain %s\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dlm_mark_domain_leaving = private unnamed_addr constant [24 x i8] c"dlm_mark_domain_leaving\00", align 1
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Node %d is joining, we wait on it.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.dlm_leave_domain = private unnamed_addr constant [17 x i8] c"dlm_leave_domain\00", align 1
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error %d sending domain exit message to node %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlm_domain_events.lock\00", [41 x i8] zeroinitializer }, align 32
@__func__.dlm_alloc_ctxt = private unnamed_addr constant [15 x i8] c"dlm_alloc_ctxt\00", align 1
@dlm_alloc_ctxt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dlm->spinlock\00", [17 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dlm->master_lock\00", [46 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dlm->ast_lock\00", [17 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dlm->track_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"dlm->recovery_map=%p, &(dlm->recovery_map[0])=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dlm->dlm_thread_wq\00", [44 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&dlm->dlm_reco_thread_wq\00", [39 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dlm->reco.event\00", [47 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dlm->ast_wq\00", [19 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dlm->migration_wq\00", [45 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dlm->dlm_join_events\00", [42 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dlm->work_lock\00", [16 x i8] zeroinitializer }, align 32
@dlm_alloc_ctxt.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&dlm->dispatched_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"context init: refcount %u\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dlm_alloc_pagevec = private unnamed_addr constant [18 x i8] c"dlm_alloc_pagevec\00", align 1
@.str.50 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Allocated DLM hash pagevec; %d pages (%lu expected), %lu buckets per page\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.dlm_join_domain = private unnamed_addr constant [16 x i8] c"dlm_join_domain\00", align 1
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Join domain %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dlm_wq-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timed out joining dlm domain %s after %u msecs\0A\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"backoff %d\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.dlm_register_domain_handlers = private unnamed_addr constant [29 x i8] c"dlm_register_domain_handlers\00", align 1
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"registering handlers.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.dlm_exit_domain_handler = private unnamed_addr constant [24 x i8] c"dlm_exit_domain_handler\00", align 1
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%p %u %p\00", [23 x i8] zeroinitializer }, align 32
@dlm_exit_domain_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.dlm_exit_domain_handler, ptr @.str.8, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015o2dlm: Node %u leaves domain %s \00", [61 x i8] zeroinitializer }, align 32
@dlm_exit_domain_handler._entry_ptr = internal global ptr @dlm_exit_domain_handler._entry, section ".printk_index", align 4
@__dlm_print_nodes._entry = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.8, i32 535, ptr null, ptr null }, align 1
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"( \00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__dlm_print_nodes\00", [46 x i8] zeroinitializer }, align 32
@__dlm_print_nodes._entry_ptr = internal global ptr @__dlm_print_nodes._entry, section ".printk_index", align 4
@__dlm_print_nodes._entry.60 = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.8, i32 538, ptr null, ptr null }, align 1
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@__dlm_print_nodes._entry_ptr.62 = internal global ptr @__dlm_print_nodes._entry.60, section ".printk_index", align 4
@__dlm_print_nodes._entry.63 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.8, i32 541, ptr null, ptr null }, align 1
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c") %u nodes\0A\00", [20 x i8] zeroinitializer }, align 32
@__dlm_print_nodes._entry_ptr.65 = internal global ptr @__dlm_print_nodes._entry.63, section ".printk_index", align 4
@__func__.dlm_begin_exit_domain_handler = private unnamed_addr constant [30 x i8] c"dlm_begin_exit_domain_handler\00", align 1
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Node %u sent a begin exit domain message\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.dlm_try_to_join_domain = private unnamed_addr constant [23 x i8] c"dlm_try_to_join_domain\00", align 1
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%p\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Yay, done querying nodes!\0A\00", [37 x i8] zeroinitializer }, align 32
@dlm_try_to_join_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.dlm_try_to_join_domain, ptr @.str.8, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015o2dlm: Joining domain %s \00", [36 x i8] zeroinitializer }, align 32
@dlm_try_to_join_domain._entry_ptr = internal global ptr @dlm_try_to_join_domain._entry, section ".printk_index", align 4
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"returning %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.dlm_request_join = private unnamed_addr constant [17 x i8] c"dlm_request_join\00", align 1
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"querying node %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [170 x i8], [54 x i8] } { [170 x i8] c"This node requested DLM locking protocol %u.%u and filesystem locking protocol %u.%u.  At least one of the protocol versions on node %d is not compatible, disconnecting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Node %d responds JOIN_OK with DLM locking protocol %u.%u and fs locking protocol %u.%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid response %d from node %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"status %d, node %d response is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_should_restart_join = private unnamed_addr constant [24 x i8] c"dlm_should_restart_join\00", align 1
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Latest response of disallow -- should restart\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Node maps changed -- should restart\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dlm_send_nodeinfo = private unnamed_addr constant [18 x i8] c"dlm_send_nodeinfo\00", align 1
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Node %3d, %pI4:%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sending nodeinfo to node %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"node mismatch %d, node %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.dlm_send_regions = private unnamed_addr constant [17 x i8] c"dlm_send_regions\00", align 1
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Region %.*s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sending regions to node %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Region mismatch %d, node %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.dlm_send_join_asserts = private unnamed_addr constant [22 x i8] c"dlm_send_join_asserts\00", align 1
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error return %d asserting join on node %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.dlm_send_one_join_assert = private unnamed_addr constant [25 x i8] c"dlm_send_one_join_assert\00", align 1
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sending join assert to node %u\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.dlm_send_join_cancels = private unnamed_addr constant [22 x i8] c"dlm_send_join_cancels\00", align 1
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error return %d cancelling join on node %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.dlm_send_one_join_cancel = private unnamed_addr constant [25 x i8] c"dlm_send_one_join_cancel\00", align 1
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlm_callback_sem.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_callback_sem\00", [47 x i8] zeroinitializer }, align 32
@dlm_join_handlers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dlm_join_handlers, ptr @dlm_join_handlers }, [24 x i8] zeroinitializer }, align 32
@__func__.dlm_init = private unnamed_addr constant [9 x i8] c"dlm_init\00", align 1
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not create o2dlm_mle slabcache\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Could not create o2dlm_lockres and o2dlm_lockname slabcaches\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Count not create o2dlm_lock slabcache\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register network handlers\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dlm_query_join_handler = private unnamed_addr constant [23 x i8] c"dlm_query_join_handler\00", align 1
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"node %u wants to join domain %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"node %u is not in our live map yet\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"disallow join as node %u does not have node %u in its nodemap\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"node %u trying to join, but recovery is ongoing.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"node %u trying to join, but it still needs recovery.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"node %u trying to join, but it is still in the domain! needs recovery?\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DLM\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"We respond with %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.dlm_query_join_proto_check = private unnamed_addr constant [27 x i8] c"dlm_query_join_proto_check\00", align 1
@.str.104 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"node %u wanted to join with %s locking protocol %u.%u, we respond with %u.%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Node %u wanted to join with %s locking protocol %u.%u, but we have %u.%u, disallowing\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.dlm_assert_joined_handler = private unnamed_addr constant [26 x i8] c"dlm_assert_joined_handler\00", align 1
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"node %u asserts join on domain %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dlm recovery is ongoing, disallow join\0A\00", [56 x i8] zeroinitializer }, align 32
@dlm_assert_joined_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @__func__.dlm_assert_joined_handler, ptr @.str.8, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015o2dlm: Node %u joins domain %s \00", [62 x i8] zeroinitializer }, align 32
@dlm_assert_joined_handler._entry_ptr = internal global ptr @dlm_assert_joined_handler._entry, section ".printk_index", align 4
@__func__.dlm_cancel_join_handler = private unnamed_addr constant [24 x i8] c"dlm_cancel_join_handler\00", align 1
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"node %u cancels join on domain %s\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dlm_query_region_handler = private unnamed_addr constant [25 x i8] c"dlm_query_region_handler\00", align 1
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Node %u queries hb regions on domain %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Node %d queried hb regions on domain %s before join domain\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Node %d queried hb regions on domain %s but joining node is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Node %d queried hb regions on domain %s but active dlm protocol is %d.%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.dlm_match_regions = private unnamed_addr constant [18 x i8] c"dlm_match_regions\00", align 1
@.str.114 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Domain %s: Joining node %d has global heartbeat enabled but local node %d does not\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Domain %s: Local node %d has global heartbeat enabled but joining node %d does not\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Domain %s: Region '%.*s' registered in local node %d but not in joining node %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Domain %s: Region '%.*s' registered in joining node %d but not in local node %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.dlm_query_nodeinfo_handler = private unnamed_addr constant [27 x i8] c"dlm_query_nodeinfo_handler\00", align 1
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Node %u queries nodes on domain %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Node %d queried nodes on domain %s before join domain\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Node %d queried nodes on domain %s but joining node is %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Node %d queried nodes on domain %s but active dlm protocol is %d.%d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dlm_match_nodes = private unnamed_addr constant [16 x i8] c"dlm_match_nodes\00", align 1
@.str.122 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Domain %s: Node %d (%pI4:%u) registered in joining node %d but not in local node %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Domain %s: Node %d (%pI4:%u) registered in local node %d but not in joining node %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967189, i64 4294967204]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.130 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.132 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"dlm_domain_lock\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 104, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"dlm_domains\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 105, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 150, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 169, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 181, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 696, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 705, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 710, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 718, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2111, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2115, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2121, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2132, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"dlm_domain_events\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2141, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"dlm_callback_sem\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 321, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 580, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 589, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 411, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 449, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 453, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 465, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 469, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 515, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 654, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 106, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1993, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1994, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1995, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1996, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2009, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2019, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2020, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2021, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2022, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2023, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2027, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2041, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2043, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2050, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 82, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1861, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1883, i32 39 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1906, i32 5 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1922, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1713, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 551, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 561, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 535, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 538, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 541, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 495, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1595, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1639, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1681, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1698, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1421, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1436, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1457, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1473, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1484, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1492, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1572, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1584, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1237, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1254, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1262, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1068, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1076, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1084, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1549, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1506, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1400, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2270, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"dlm_join_handlers\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2208, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2317, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2323, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2330, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 2336, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 802, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 811, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 834, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 862, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 866, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 870, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 881, i32 35 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 885, i32 42 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 903, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 734, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 744, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 917, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 932, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 942, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1329, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1105, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1118, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1125, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1134, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 967, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 976, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1006, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1029, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1281, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1287, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1295, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1304, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1190, i32 5 }
@___asan_gen_.520 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.521 = private constant [28 x i8] c"../fs/ocfs2/dlm/dlmdomain.c\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1198, i32 5 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author474, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file475, ptr @__UNIQUE_ID_license476, ptr @__dlm_print_nodes._entry, ptr @__dlm_print_nodes._entry.60, ptr @__dlm_print_nodes._entry.63, ptr @__dlm_print_nodes._entry_ptr, ptr @__dlm_print_nodes._entry_ptr.62, ptr @__dlm_print_nodes._entry_ptr.65, ptr @__exitcall_dlm_exit, ptr @__initcall__kmod_ocfs2_dlm__478_2364_dlm_init6, ptr @__ksymtab_dlm_register_domain, ptr @__ksymtab_dlm_register_eviction_cb, ptr @__ksymtab_dlm_setup_eviction_cb, ptr @__ksymtab_dlm_unregister_domain, ptr @__ksymtab_dlm_unregister_eviction_cb, ptr @dlm_assert_joined_handler._entry, ptr @dlm_assert_joined_handler._entry_ptr, ptr @dlm_exit, ptr @dlm_exit_domain_handler._entry, ptr @dlm_exit_domain_handler._entry_ptr, ptr @dlm_try_to_join_domain._entry, ptr @dlm_try_to_join_domain._entry_ptr, ptr @dlm_unregister_domain._entry, ptr @dlm_unregister_domain._entry_ptr, ptr @.str, ptr @dlm_domain_lock, ptr @dlm_domains, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dlm_domain_events, ptr @.str.13, ptr @dlm_callback_sem, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @dlm_alloc_ctxt.__key, ptr @.str.25, ptr @dlm_alloc_ctxt.__key.26, ptr @.str.27, ptr @dlm_alloc_ctxt.__key.28, ptr @.str.29, ptr @dlm_alloc_ctxt.__key.30, ptr @.str.31, ptr @.str.32, ptr @dlm_alloc_ctxt.__key.33, ptr @.str.34, ptr @dlm_alloc_ctxt.__key.35, ptr @.str.36, ptr @dlm_alloc_ctxt.__key.37, ptr @.str.38, ptr @dlm_alloc_ctxt.__key.39, ptr @.str.40, ptr @dlm_alloc_ctxt.__key.41, ptr @.str.42, ptr @dlm_alloc_ctxt.__key.43, ptr @.str.44, ptr @dlm_alloc_ctxt.__key.45, ptr @.str.46, ptr @dlm_alloc_ctxt.__key.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @dlm_join_handlers, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_domain_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_domains to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_unregister_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_domain_events to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_callback_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_alloc_ctxt.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_exit_domain_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_try_to_join_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_join_handlers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_assert_joined_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_unhash_lockres(ptr nocapture noundef readonly %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 192, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %5 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lockname, align 8
  %name4 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name4, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_unhash_lockres, i32 noundef 151, ptr noundef nonnull @.str.1, ptr noundef %4, i32 noundef %6, ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %do.body.hlist_del_init.exit_crit_edge, label %if.then.i

do.body.hlist_del_init.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %do.body
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %10, align 4
  %tobool.not.i3.i = icmp eq ptr %12, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %15 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %res, align 4
  %16 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pprev.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %do.body.hlist_del_init.exit_crit_edge
  call void @dlm_lockres_put(ptr noundef %res) #14
  br label %return

return:                                           ; preds = %hlist_del_init.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_insert_lockres(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !322

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #14, !srcloc !323
  unreachable

do.end9:                                          ; preds = %entry
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %hash = getelementptr inbounds %struct.anon.3, ptr %lockname, i32 0, i32 1
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash, align 4
  %lockres_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 1
  %4 = ptrtoint ptr %lockres_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lockres_hash.i, align 4
  %div3.i = lshr i32 %3, 10
  %rem.i = and i32 %div3.i, 31
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %rem.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %3, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %7, i32 %rem1.i
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end9.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !322

do.end9.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end9
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end9.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end9.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %12 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %res, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %dlm_lockres_get.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

dlm_lockres_get.exit.hlist_add_head.exit_crit_edge: ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %dlm_lockres_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %res, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %dlm_lockres_get.exit.hlist_add_head.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %res, ptr %add.ptr.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %res, i32 0, i32 1
  %15 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %add.ptr.i, ptr %pprev34.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 192, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %19 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lockname, align 8
  %name16 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_insert_lockres, i32 noundef 170, ptr noundef nonnull @.str.2, ptr noundef %18, i32 noundef %20, ptr noundef %22) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__dlm_lookup_lockres_full(ptr noundef %dlm, ptr noundef %name, i32 noundef %len, i32 noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_lookup_lockres_full, i32 noundef 181, ptr noundef nonnull @.str.3, i32 noundef %len, ptr noundef %name) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %1 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body7, label %do.end15, !prof !322

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #14, !srcloc !326
  unreachable

do.end15:                                         ; preds = %entry
  %lockres_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 1
  %3 = ptrtoint ptr %lockres_hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockres_hash.i, align 4
  %div3.i = lshr i32 %hash, 10
  %rem.i = and i32 %div3.i, 31
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %rem.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %hash, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %6, i32 %rem1.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %res.074 = load ptr, ptr %add.ptr.i, align 4
  %tobool19.not75 = icmp eq ptr %res.074, null
  br i1 %tobool19.not75, label %do.end15.cleanup_crit_edge, label %for.body.lr.ph

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end15
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name, align 1
  %add.ptr41 = getelementptr i8, ptr %name, i32 1
  %sub = add i32 %len, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %res.076 = phi ptr [ %res.074, %for.body.lr.ph ], [ %res.0, %for.inc.for.body_crit_edge ]
  %name20 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.076, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name20, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %9)
  %cmp.not = icmp eq i8 %13, %9
  br i1 %cmp.not, label %if.end25, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.076, i32 0, i32 1
  %14 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lockname, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %len)
  %cmp28.not = icmp eq i32 %15, %len
  br i1 %cmp28.not, label %if.end37, label %if.end25.for.inc_crit_edge, !prof !325

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end37:                                         ; preds = %if.end25
  %add.ptr40 = getelementptr i8, ptr %11, i32 1
  %bcmp = call i32 @bcmp(ptr %add.ptr40, ptr %add.ptr41, i32 %sub) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool43.not = icmp eq i32 %bcmp, 0
  br i1 %tobool43.not, label %if.end45, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end45:                                         ; preds = %if.end37
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.076, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end45.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !322

if.end45.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end45
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end45.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end45.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end37.for.inc_crit_edge, %if.end25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %res.076 to i32
  call void @__asan_load4_noabort(i32 %18)
  %res.0 = load ptr, ptr %res.076, align 4
  %tobool19.not = icmp eq ptr %res.0, null
  br i1 %tobool19.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %res.073 = phi ptr [ %res.076, %if.end15.sink.split.i.i.i.i.i ], [ %res.076, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ null, %do.end15.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %res.073
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__dlm_lookup_lockres(ptr noundef %dlm, ptr noundef %name, i32 noundef %len, i32 noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_lookup_lockres, i32 noundef 213, ptr noundef nonnull @.str.3, i32 noundef %len, ptr noundef %name) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %1 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body7, label %do.end15, !prof !322

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #14, !srcloc !327
  unreachable

do.end15:                                         ; preds = %entry
  %call16 = call ptr @__dlm_lookup_lockres_full(ptr noundef %dlm, ptr noundef %name, i32 noundef %len, i32 noundef %hash)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.then18

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %do.end15
  %spinlock19 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock19) #14
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 17
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %state, align 2
  %5 = and i16 %4, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool21.not = icmp eq i16 %5, 0
  call void @_raw_spin_unlock(ptr noundef %spinlock19) #14
  br i1 %tobool21.not, label %if.then18.cleanup_crit_edge, label %if.then22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  call void @dlm_lockres_put(ptr noundef nonnull %call16) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.then18.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then22 ], [ null, %do.end15.cleanup_crit_edge ], [ %call16, %if.then18.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_lookup_lockres(ptr noundef %dlm, ptr noundef %name, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name, i32 noundef %len) #18
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %call1 = tail call ptr @__dlm_lookup_lockres(ptr noundef %dlm, ptr noundef %name, i32 noundef %len, i32 noundef %call)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  ret ptr %call1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_put(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  %_m.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %dlm_refs = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 30
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlm_refs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !328
  tail call void @llvm.prefetch.p0(ptr %dlm_refs, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlm_refs, ptr %dlm_refs, i32 1, ptr elementtype(i32) %dlm_refs) #14, !srcloc !329
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !325

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %dlm_refs, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !330
  %num_joins.i.i = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 32
  %1 = ptrtoint ptr %num_joins.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_joins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %do.body9.i.i, label %do.body3.i.i, !prof !325

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 313, 0\0A.popsection", ""() #14, !srcloc !331
  unreachable

do.body9.i.i:                                     ; preds = %if.then.i
  %dlm_state.i.i = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 31
  %3 = ptrtoint ptr %dlm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlm_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 1
  br i1 %cmp.i.i, label %do.body17.i.i, label %do.end25.i.i, !prof !322

do.body17.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 314, 0\0A.popsection", ""() #14, !srcloc !332
  unreachable

do.end25.i.i:                                     ; preds = %do.body9.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dlm) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end25.i.i.dlm_ctxt_release.exit.i_crit_edge

do.end25.i.i.dlm_ctxt_release.exit.i_crit_edge:   ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_ctxt_release.exit.i

if.end.i.i.i.i:                                   ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlm, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %dlm_ctxt_release.exit.i

dlm_ctxt_release.exit.i:                          ; preds = %if.end.i.i.i.i, %do.end25.i.i.dlm_ctxt_release.exit.i_crit_edge
  %11 = ptrtoint ptr %dlm to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %dlm, ptr %dlm, align 4
  %prev.i3.i.i.i = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dlm, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #14
  %13 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 192, ptr %_m.i.i, align 8
  %name.i.i = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_ctxt_release, i32 noundef 321, ptr noundef nonnull @.str.14, ptr noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #14
  call void @__wake_up(ptr noundef nonnull @dlm_domain_events, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call fastcc void @dlm_free_ctxt_mem(ptr noundef %dlm) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dlm_ctxt_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_grab(ptr noundef readnone %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %target.0.in = phi ptr [ @dlm_domains, %entry ], [ %target.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %target.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %target.0 = load ptr, ptr %target.0.in, align 4
  %cmp.not = icmp eq ptr %target.0, @dlm_domains
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq ptr %target.0, %dlm
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  %dlm_refs.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 30
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlm_refs.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %dlm_refs.i, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlm_refs.i, ptr %dlm_refs.i, i32 1, ptr elementtype(i32) %dlm_refs.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !322

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dlm_refs.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi ptr [ %dlm, %if.else.i.i.i.i.i.for.end_crit_edge ], [ %dlm, %if.end15.sink.split.i.i.i.i.i ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret ptr %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_domain_fully_joined(ptr nocapture noundef readonly %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %dlm_state = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 31
  %0 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlm_state, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_unregister_domain(ptr noundef %dlm) #0 align 64 {
entry:
  %leave_msg.i.i108 = alloca %struct.dlm_exit_domain, align 4
  %_m.i.i109 = alloca i64, align 8
  %_m4.i.i110 = alloca i64, align 8
  %_m.i111 = alloca i64, align 8
  %_m.i105 = alloca i64, align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %_m.i = alloca i64, align 8
  %_m24.i = alloca i64, align 8
  %_m34.i = alloca i64, align 8
  %_m48.i = alloca i64, align 8
  %_m58.i = alloca i64, align 8
  %leave_msg.i.i = alloca %struct.dlm_exit_domain, align 4
  %_m.i.i = alloca i64, align 8
  %_m4.i.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m56 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %dlm_state = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 31
  %0 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !325

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 679, 0\0A.popsection", ""() #14, !srcloc !333
  unreachable

do.body8:                                         ; preds = %entry
  %num_joins = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 32
  %2 = ptrtoint ptr %num_joins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_joins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %do.body19, label %do.end27, !prof !322

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 680, 0\0A.popsection", ""() #14, !srcloc !334
  unreachable

do.end27:                                         ; preds = %do.body8
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %num_joins to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %num_joins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool30.not = icmp eq i32 %dec, 0
  br i1 %tobool30.not, label %if.then31, label %if.end80.critedge

if.then31:                                        ; preds = %do.end27
  %5 = ptrtoint ptr %dlm_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %dlm_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 192, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_unregister_domain, i32 noundef 696, ptr noundef nonnull @.str.4, ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %dlm_locking_proto.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 48
  %9 = ptrtoint ptr %dlm_locking_proto.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dlm_locking_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then31.if.end.i_crit_edge

if.then31.if.end.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then31
  %pv_minor.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 48, i32 1
  %11 = ptrtoint ptr %pv_minor.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pv_minor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp4.i = icmp ult i8 %12, 2
  br i1 %cmp4.i, label %land.lhs.true.i.dlm_begin_exit_domain.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.dlm_begin_exit_domain.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_begin_exit_domain.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then31.if.end.i_crit_edge
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #14
  %domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %call30.i = call i32 @_find_next_bit_be(ptr noundef %domain_map.i, i32 noundef 255, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call30.i)
  %cmp631.i = icmp sgt i32 %call30.i, 254
  br i1 %cmp631.i, label %if.end.i.while.end.i_crit_edge, label %if.end9.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end9.lr.ph.i:                                  ; preds = %if.end.i
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %key.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  br label %if.end9.i

if.end9.i:                                        ; preds = %while.cond.backedge.i.if.end9.i_crit_edge, %if.end9.lr.ph.i
  %call32.i = phi i32 [ %call30.i, %if.end9.lr.ph.i ], [ %call.i, %while.cond.backedge.i.if.end9.i_crit_edge ]
  %13 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %node_num.i, align 4
  %conv10.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call32.i, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %call32.i, %conv10.i
  br i1 %cmp11.i, label %if.end9.i.while.cond.backedge.i_crit_edge, label %if.end14.i

if.end9.i.while.cond.backedge.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

if.end14.i:                                       ; preds = %if.end9.i
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %leave_msg.i.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #14
  %15 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 192, ptr %_m.i.i, align 8
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_send_one_domain_exit, i32 noundef 581, ptr noundef nonnull @.str.15, ptr noundef %17, i32 noundef 521, i32 noundef %call32.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #14
  %18 = ptrtoint ptr %leave_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %leave_msg.i.i, align 4
  %19 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %node_num.i, align 4
  store i8 %20, ptr %leave_msg.i.i, align 4
  %21 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key.i.i, align 4
  %conv.i.i = trunc i32 %call32.i to i8
  %call.i.i = call i32 @o2net_send_message(i32 noundef 521, i32 noundef %22, ptr noundef nonnull %leave_msg.i.i, i32 noundef 4, i8 noundef zeroext %conv.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body3.i.i, label %if.end14.i.dlm_send_one_domain_exit.exit.i_crit_edge

if.end14.i.dlm_send_one_domain_exit.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_one_domain_exit.exit.i

do.body3.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4.i.i) #14
  %23 = ptrtoint ptr %_m4.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606847168, ptr %_m4.i.i, align 8
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4.i.i, ptr noundef nonnull @__func__.dlm_send_one_domain_exit, i32 noundef 591, ptr noundef nonnull @.str.16, i32 noundef %call.i.i, i32 noundef 521, i32 noundef %call32.i, ptr noundef %25) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4.i.i) #14
  br label %dlm_send_one_domain_exit.exit.i

dlm_send_one_domain_exit.exit.i:                  ; preds = %do.body3.i.i, %if.end14.i.dlm_send_one_domain_exit.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %leave_msg.i.i) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #14
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %dlm_send_one_domain_exit.exit.i, %if.end9.i.while.cond.backedge.i_crit_edge
  %add.i = add nsw i32 %call32.i, 1
  %call.i = call i32 @_find_next_bit_be(ptr noundef %domain_map.i, i32 noundef 255, i32 noundef %add.i) #14
  %cmp6.i = icmp sgt i32 %call.i, 254
  br i1 %cmp6.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.if.end9.i_crit_edge

while.cond.backedge.i.if.end9.i_crit_edge:        ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #14
  br label %dlm_begin_exit_domain.exit

dlm_begin_exit_domain.exit:                       ; preds = %while.end.i, %land.lhs.true.i.dlm_begin_exit_domain.exit_crit_edge
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef null) #14
  %spinlock.i101 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  %lockres_hash.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 21, i32 4
  %migrate_done.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 15
  %dlm_thread_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %dlm_begin_exit_domain.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #14
  %26 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 192, ptr %_m.i, align 8
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_migrate_all_locks, i32 noundef 411, ptr noundef nonnull @.str.17, ptr noundef %28) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  br label %redo_bucket.preheader.i

redo_bucket.preheader.i:                          ; preds = %while.end.i103.redo_bucket.preheader.i_crit_edge, %while.cond
  %i.096.i = phi i32 [ 0, %while.cond ], [ %inc17.i, %while.end.i103.redo_bucket.preheader.i_crit_edge ]
  %num.095.i = phi i32 [ 0, %while.cond ], [ %add.i102, %while.end.i103.redo_bucket.preheader.i_crit_edge ]
  %div3.i.i = lshr i32 %i.096.i, 10
  %rem.i.i = and i32 %div3.i.i, 31
  %rem1.i.i = and i32 %i.096.i, 1023
  br label %redo_bucket.i

redo_bucket.i:                                    ; preds = %if.then9.i, %redo_bucket.preheader.i
  %29 = ptrtoint ptr %lockres_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lockres_hash.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %30, i32 %rem.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %32, i32 %rem1.i.i
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end6.i.while.cond.i_crit_edge, %redo_bucket.i
  %iter.0.i = phi ptr [ %34, %redo_bucket.i ], [ %iter.1.i, %if.end6.i.while.cond.i_crit_edge ]
  %n.0.i = phi i32 [ 0, %redo_bucket.i ], [ %inc.i, %if.end6.i.while.cond.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %iter.0.i, null
  br i1 %tobool1.not.i, label %while.end.i103, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %n.0.i, 1
  %refs.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %iter.0.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #14
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %while.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !322

while.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %while.body.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_lockres_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %while.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %while.body.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %dlm_lockres_get.exit.i

dlm_lockres_get.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dlm_lockres_get.exit.i_crit_edge
  %call2.i = call i32 @dlm_empty_lockres(ptr noundef %dlm, ptr noundef nonnull %iter.0.i) #14
  %spinlock3.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %iter.0.i, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %dlm_lockres_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef nonnull %iter.0.i) #14
  br label %if.end6.i

if.else.i:                                        ; preds = %dlm_lockres_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %iter.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iter.0.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then5.i
  %iter.1.i = phi ptr [ %iter.0.i, %if.then5.i ], [ %38, %if.else.i ]
  call void @_raw_spin_unlock(ptr noundef %spinlock3.i) #14
  call void @dlm_lockres_put(ptr noundef nonnull %iter.0.i) #14
  br i1 %tobool4.not.i, label %if.end6.i.while.cond.i_crit_edge, label %if.then9.i

if.end6.i.while.cond.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 439, i32 noundef 1) #14
  %call12.i = call i32 @__cond_resched_lock(ptr noundef %spinlock.i101) #14
  br label %redo_bucket.i

while.end.i103:                                   ; preds = %while.cond.i
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 443, i32 noundef 1) #14
  %call16.i = call i32 @__cond_resched_lock(ptr noundef %spinlock.i101) #14
  %add.i102 = add i32 %n.0.i, %num.095.i
  %inc17.i = add nuw nsw i32 %i.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, 32768
  br i1 %exitcond.not.i, label %for.end.i, label %while.end.i103.redo_bucket.preheader.i_crit_edge

while.end.i103.redo_bucket.preheader.i_crit_edge: ; preds = %while.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %redo_bucket.preheader.i

for.end.i:                                        ; preds = %while.end.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i102)
  %tobool18.not.i = icmp eq i32 %add.i102, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %for.end.i.if.end43.i_crit_edge

for.end.i.if.end43.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then19.i:                                      ; preds = %for.end.i
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state.i, align 2
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool21.not.i = icmp eq i16 %41, 0
  br i1 %tobool21.not.i, label %do.body33.i, label %do.body23.i

do.body23.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m24.i) #14
  %42 = ptrtoint ptr %_m24.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 192, ptr %_m24.i, align 8
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m24.i, ptr noundef nonnull @__func__.dlm_migrate_all_locks, i32 noundef 450, ptr noundef nonnull @.str.18, ptr noundef %44) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m24.i) #14
  br label %if.end43.i

do.body33.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34.i) #14
  %45 = ptrtoint ptr %_m34.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 192, ptr %_m34.i, align 8
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34.i, ptr noundef nonnull @__func__.dlm_migrate_all_locks, i32 noundef 454, ptr noundef nonnull @.str.19, ptr noundef %47) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34.i) #14
  %48 = ptrtoint ptr %migrate_done.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %migrate_done.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.body33.i, %do.body23.i, %for.end.i.if.end43.i_crit_edge
  %ret.0.i = phi i32 [ 0, %for.end.i.if.end43.i_crit_edge ], [ -11, %do.body23.i ], [ 0, %do.body33.i ]
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  call void @__wake_up(ptr noundef %dlm_thread_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br i1 %tobool18.not.i, label %if.end43.i.dlm_migrate_all_locks.exit_crit_edge, label %do.body47.i

if.end43.i.dlm_migrate_all_locks.exit_crit_edge:  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_migrate_all_locks.exit

do.body47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48.i) #14
  %49 = ptrtoint ptr %_m48.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 192, ptr %_m48.i, align 8
  %50 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48.i, ptr noundef nonnull @__func__.dlm_migrate_all_locks, i32 noundef 466, ptr noundef nonnull @.str.20, ptr noundef %51, i32 noundef %add.i102) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48.i) #14
  br label %dlm_migrate_all_locks.exit

dlm_migrate_all_locks.exit:                       ; preds = %do.body47.i, %if.end43.i.dlm_migrate_all_locks.exit_crit_edge
  %ret.1.i = phi i32 [ -11, %do.body47.i ], [ %ret.0.i, %if.end43.i.dlm_migrate_all_locks.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m58.i) #14
  %52 = ptrtoint ptr %_m58.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 192, ptr %_m58.i, align 8
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m58.i, ptr noundef nonnull @__func__.dlm_migrate_all_locks, i32 noundef 469, ptr noundef nonnull @.str.21, ptr noundef %54) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m58.i) #14
  %tobool42.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool42.not, label %while.end, label %while.body

while.body:                                       ; preds = %dlm_migrate_all_locks.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @msleep(i32 noundef 500) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #14
  %55 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 192, ptr %_m44, align 8
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.dlm_unregister_domain, i32 noundef 705, ptr noundef nonnull @.str.5, ptr noundef %57) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #14
  br label %while.cond

while.end:                                        ; preds = %dlm_migrate_all_locks.exit
  %tracking_list = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 6
  %58 = ptrtoint ptr %tracking_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %tracking_list, align 4
  %cmp.i104.not = icmp eq ptr %59, %tracking_list
  br i1 %cmp.i104.not, label %while.end.if.end73_crit_edge, label %do.body55

while.end.if.end73_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.body55:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56) #14
  %60 = ptrtoint ptr %_m56 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 1152921504606847168, ptr %_m56, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56, ptr noundef nonnull @__func__.dlm_unregister_domain, i32 noundef 711, ptr noundef nonnull @.str.6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56) #14
  %61 = ptrtoint ptr %tracking_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn129 = load ptr, ptr %tracking_list, align 4
  %cmp65.not130 = icmp eq ptr %.pn129, %tracking_list
  br i1 %cmp65.not130, label %do.body55.if.end73_crit_edge, label %do.body55.for.body_crit_edge

do.body55.for.body_crit_edge:                     ; preds = %do.body55
  br label %for.body

do.body55.if.end73_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body55.for.body_crit_edge
  %.pn131 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn129, %do.body55.for.body_crit_edge ]
  %res.0 = getelementptr i8, ptr %.pn131, i32 -76
  call void @dlm_print_one_lock_resource(ptr noundef %res.0) #14
  %62 = ptrtoint ptr %.pn131 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn = load ptr, ptr %.pn131, align 4
  %cmp65.not = icmp eq ptr %.pn, %tracking_list
  br i1 %cmp65.not, label %for.body.if.end73_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end73_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end73:                                         ; preds = %for.body.if.end73_crit_edge, %do.body55.if.end73_crit_edge, %while.end.if.end73_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  %joining_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 14
  %63 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %joining_node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp.not40.i = icmp eq i8 %64, -1
  br i1 %cmp.not40.i, label %if.end73.dlm_mark_domain_leaving.exit_crit_edge, label %do.body.lr.ph.i

if.end73.dlm_mark_domain_leaving.exit_crit_edge:  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_mark_domain_leaving.exit

do.body.lr.ph.i:                                  ; preds = %if.end73
  %dlm_join_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 16
  br label %do.body.i

do.body.i:                                        ; preds = %do.end20.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %65 = phi i8 [ %64, %do.body.lr.ph.i ], [ %75, %do.end20.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i105) #14
  %66 = ptrtoint ptr %_m.i105 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 192, ptr %_m.i105, align 8
  %conv4.i = zext i8 %65 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i105, ptr noundef nonnull @__func__.dlm_mark_domain_leaving, i32 noundef 516, ptr noundef nonnull @.str.22, i32 noundef %conv4.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i105) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 520) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  %67 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %joining_node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp.i.not.i = icmp eq i8 %68, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  br i1 %cmp.i.not.i, label %do.body.i.do.end20.i_crit_edge, label %if.end13.i

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20.i

if.end13.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %69 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %call1438.i = call i32 @prepare_to_wait_event(ptr noundef %dlm_join_events.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  %70 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %joining_node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp.i34.not39.i = icmp eq i8 %71, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  br i1 %cmp.i34.not39.i, label %if.end13.i.for.end.i107_crit_edge, label %if.end13.i.cleanup.i_crit_edge

if.end13.i.cleanup.i_crit_edge:                   ; preds = %if.end13.i
  br label %cleanup.i

if.end13.i.for.end.i107_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i107

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end13.i.cleanup.i_crit_edge
  call void @schedule() #14
  %call14.i = call i32 @prepare_to_wait_event(ptr noundef %dlm_join_events.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  %72 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %joining_node.i, align 4
  %cmp.i34.not.i = icmp eq i8 %73, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  br i1 %cmp.i34.not.i, label %cleanup.i.for.end.i107_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

cleanup.i.for.end.i107_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i107

for.end.i107:                                     ; preds = %cleanup.i.for.end.i107_crit_edge, %if.end13.i.for.end.i107_crit_edge
  call void @finish_wait(ptr noundef %dlm_join_events.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %do.end20.i

do.end20.i:                                       ; preds = %for.end.i107, %do.body.i.do.end20.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  %74 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %joining_node.i, align 4
  %cmp.not.i = icmp eq i8 %75, -1
  br i1 %cmp.not.i, label %do.end20.i.dlm_mark_domain_leaving.exit_crit_edge, label %do.end20.i.do.body.i_crit_edge

do.end20.i.do.body.i_crit_edge:                   ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end20.i.dlm_mark_domain_leaving.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_mark_domain_leaving.exit

dlm_mark_domain_leaving.exit:                     ; preds = %do.end20.i.dlm_mark_domain_leaving.exit_crit_edge, %if.end73.dlm_mark_domain_leaving.exit_crit_edge
  %76 = ptrtoint ptr %dlm_state to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %dlm_state, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  %node_num.i113 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %77 = ptrtoint ptr %node_num.i113 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %node_num.i113, align 4
  %conv.i114 = zext i8 %78 to i32
  %domain_map.i115 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  call void @_clear_bit(i32 noundef %conv.i114, ptr noundef %domain_map.i115) #14
  %call37.i = call i32 @_find_next_bit_be(ptr noundef %domain_map.i115, i32 noundef 255, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 255
  br i1 %cmp38.i, label %while.body.lr.ph.i, label %dlm_mark_domain_leaving.exit.dlm_leave_domain.exit_crit_edge

dlm_mark_domain_leaving.exit.dlm_leave_domain.exit_crit_edge: ; preds = %dlm_mark_domain_leaving.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_leave_domain.exit

while.body.lr.ph.i:                               ; preds = %dlm_mark_domain_leaving.exit
  %key.i.i117 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  br label %while.body.i121

while.body.i121:                                  ; preds = %if.end20.i.while.body.i121_crit_edge, %while.body.lr.ph.i
  %call39.i = phi i32 [ %call37.i, %while.body.lr.ph.i ], [ %call.i124, %if.end20.i.while.body.i121_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %leave_msg.i.i108) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i109) #14
  %79 = ptrtoint ptr %_m.i.i109 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 192, ptr %_m.i.i109, align 8
  %80 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i109, ptr noundef nonnull @__func__.dlm_send_one_domain_exit, i32 noundef 581, ptr noundef nonnull @.str.15, ptr noundef %81, i32 noundef 513, i32 noundef %call39.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i109) #14
  %82 = ptrtoint ptr %leave_msg.i.i108 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %leave_msg.i.i108, align 4
  %83 = ptrtoint ptr %node_num.i113 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %node_num.i113, align 4
  store i8 %84, ptr %leave_msg.i.i108, align 4
  %85 = ptrtoint ptr %key.i.i117 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %key.i.i117, align 4
  %conv.i.i118 = trunc i32 %call39.i to i8
  %call.i.i119 = call i32 @o2net_send_message(i32 noundef 513, i32 noundef %86, ptr noundef nonnull %leave_msg.i.i108, i32 noundef 4, i8 noundef zeroext %conv.i.i118, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119)
  %cmp.i.i120 = icmp slt i32 %call.i.i119, 0
  br i1 %cmp.i.i120, label %switch.early.test.i, label %dlm_send_one_domain_exit.exit.thread.i

dlm_send_one_domain_exit.exit.thread.i:           ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %leave_msg.i.i108) #14
  br label %if.end14.i123

switch.early.test.i:                              ; preds = %while.body.i121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4.i.i110) #14
  %87 = ptrtoint ptr %_m4.i.i110 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 1152921504606847168, ptr %_m4.i.i110, align 8
  %88 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4.i.i110, ptr noundef nonnull @__func__.dlm_send_one_domain_exit, i32 noundef 591, ptr noundef nonnull @.str.16, i32 noundef %call.i.i119, i32 noundef 513, i32 noundef %call39.i, ptr noundef %89) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4.i.i110) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %leave_msg.i.i108) #14
  %90 = zext i32 %call.i.i119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i119, label %do.body.i122 [
    i32 -92, label %switch.early.test.i.if.end14.i123_crit_edge
    i32 -107, label %switch.early.test.i.if.end14.i123_crit_edge137
  ]

switch.early.test.i.if.end14.i123_crit_edge137:   ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i123

switch.early.test.i.if.end14.i123_crit_edge:      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i123

do.body.i122:                                     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i111) #14
  %91 = ptrtoint ptr %_m.i111 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 2305843009213694144, ptr %_m.i111, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i111, ptr noundef nonnull @__func__.dlm_leave_domain, i32 noundef 655, ptr noundef nonnull @.str.23, i32 noundef %call.i.i119, i32 noundef %call39.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i111) #14
  call void @msleep(i32 noundef 200) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  br label %if.end20.i

if.end14.i123:                                    ; preds = %switch.early.test.i.if.end14.i123_crit_edge, %switch.early.test.i.if.end14.i123_crit_edge137, %dlm_send_one_domain_exit.exit.thread.i
  call void @_raw_spin_lock(ptr noundef %spinlock.i101) #14
  call void @_clear_bit(i32 noundef %call39.i, ptr noundef %domain_map.i115) #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end14.i123, %do.body.i122
  %call.i124 = call i32 @_find_next_bit_be(ptr noundef %domain_map.i115, i32 noundef 255, i32 noundef 0) #14
  %cmp.i125 = icmp slt i32 %call.i124, 255
  br i1 %cmp.i125, label %if.end20.i.while.body.i121_crit_edge, label %if.end20.i.dlm_leave_domain.exit_crit_edge

if.end20.i.dlm_leave_domain.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_leave_domain.exit

if.end20.i.while.body.i121_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i121

dlm_leave_domain.exit:                            ; preds = %if.end20.i.dlm_leave_domain.exit_crit_edge, %dlm_mark_domain_leaving.exit.dlm_leave_domain.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i101) #14
  %92 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name, align 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %93) #19
  call void @dlm_force_free_mles(ptr noundef %dlm) #14
  %94 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name, align 4
  %dlm_hb_up.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 33
  call void @o2hb_unregister_callback(ptr noundef %95, ptr noundef %dlm_hb_up.i.i) #14
  %96 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name, align 4
  %dlm_hb_down.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 34
  call void @o2hb_unregister_callback(ptr noundef %97, ptr noundef %dlm_hb_down.i.i) #14
  %dlm_domain_handlers.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 45
  call void @o2net_unregister_handler_list(ptr noundef %dlm_domain_handlers.i.i) #14
  call void @dlm_complete_thread(ptr noundef %dlm) #14
  call void @dlm_complete_recovery_thread(ptr noundef %dlm) #14
  %dlm_worker.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 37
  %98 = ptrtoint ptr %dlm_worker.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dlm_worker.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i, label %dlm_leave_domain.exit.dlm_destroy_dlm_worker.exit.i_crit_edge, label %if.then.i.i

dlm_leave_domain.exit.dlm_destroy_dlm_worker.exit.i_crit_edge: ; preds = %dlm_leave_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_destroy_dlm_worker.exit.i

if.then.i.i:                                      ; preds = %dlm_leave_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @destroy_workqueue(ptr noundef nonnull %99) #14
  %100 = ptrtoint ptr %dlm_worker.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %dlm_worker.i.i, align 4
  br label %dlm_destroy_dlm_worker.exit.i

dlm_destroy_dlm_worker.exit.i:                    ; preds = %if.then.i.i, %dlm_leave_domain.exit.dlm_destroy_dlm_worker.exit.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dlm) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %dlm_destroy_dlm_worker.exit.i.dlm_complete_dlm_shutdown.exit_crit_edge

dlm_destroy_dlm_worker.exit.i.dlm_complete_dlm_shutdown.exit_crit_edge: ; preds = %dlm_destroy_dlm_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_complete_dlm_shutdown.exit

if.end.i.i.i:                                     ; preds = %dlm_destroy_dlm_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dlm, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i.i, align 4
  %103 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dlm, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %dlm_complete_dlm_shutdown.exit

dlm_complete_dlm_shutdown.exit:                   ; preds = %if.end.i.i.i, %dlm_destroy_dlm_worker.exit.i.dlm_complete_dlm_shutdown.exit_crit_edge
  %107 = ptrtoint ptr %dlm to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %dlm, ptr %dlm, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %dlm, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %dlm, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @__wake_up(ptr noundef nonnull @dlm_domain_events, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end80

if.end80.critedge:                                ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %if.end80

if.end80:                                         ; preds = %if.end80.critedge, %dlm_complete_dlm_shutdown.exit
  call void @dlm_put(ptr noundef %dlm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_force_free_mles(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_register_domain(ptr noundef %domain, i32 noundef %key, ptr nocapture noundef %fs_proto) #0 align 64 {
entry:
  %cancel_msg.i.i.i.i = alloca %struct.dlm_cancel_join, align 1
  %_m.i.i367.i.i = alloca i64, align 8
  %_m12.i.i.i = alloca i64, align 8
  %_m40.i.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i357.i.i = alloca i32, align 4
  %ret.i.i.i.i = alloca i32, align 4
  %assert_msg.i.i.i.i = alloca %struct.dlm_assert_joined, align 1
  %_m.i.i.i.i = alloca i64, align 8
  %_m9.i.i.i.i = alloca i64, align 8
  %_m.i343.i.i = alloca i64, align 8
  %status.i326.i.i = alloca i32, align 4
  %_m.i327.i.i = alloca i64, align 8
  %_m36.i.i.i = alloca i64, align 8
  %_m53.i.i.i = alloca i64, align 8
  %_m69.i.i.i = alloca i64, align 8
  %status.i.i.i = alloca i32, align 4
  %_m.i317.i.i = alloca i64, align 8
  %_m29.i318.i.i = alloca i64, align 8
  %_m58.i.i.i = alloca i64, align 8
  %_m74.i.i.i = alloca i64, align 8
  %_m.i312.i.i = alloca i64, align 8
  %_m8.i.i.i = alloca i64, align 8
  %join_msg.i.i.i = alloca %struct.dlm_query_join_request, align 1
  %join_resp.i.i.i = alloca i32, align 4
  %_m.i.i.i = alloca i64, align 8
  %_m13.i.i.i = alloca i64, align 8
  %_m29.i.i.i = alloca i64, align 8
  %_m52.i.i.i = alloca i64, align 8
  %_m72.i.i.i = alloca i64, align 8
  %_m83.i.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  %_m.i267.i = alloca i64, align 8
  %_m12.i.i = alloca i64, align 8
  %_m57.i.i = alloca i64, align 8
  %_m78.i.i = alloca i64, align 8
  %_m124.i.i = alloca i64, align 8
  %_m157.i.i = alloca i64, align 8
  %_m209.i.i = alloca i64, align 8
  %_m223.i.i = alloca i64, align 8
  %_m.i.i = alloca i64, align 8
  %wq_name.i = alloca [64 x i8], align 1
  %_m.i213 = alloca i64, align 8
  %_m27.i = alloca i64, align 8
  %_m57.i = alloca i64, align 8
  %_m89.i = alloca i64, align 8
  %_m124.i = alloca i64, align 8
  %_m149.i = alloca i64, align 8
  %_m160.i = alloca i64, align 8
  %_m192.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m35.i = alloca i64, align 8
  %_m67.i = alloca i64, align 8
  %_m102.i = alloca i64, align 8
  %_m143.i = alloca i64, align 8
  %_m198.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m4 = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m74 = alloca i64, align 8
  %_m106 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %domain) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call)
  %cmp = icmp ugt i32 %call, 63
  br i1 %cmp, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606847168, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_register_domain, i32 noundef 2111, ptr noundef nonnull @.str.9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  br label %if.then155

do.body3:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4) #14
  %1 = ptrtoint ptr %_m4 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 192, ptr %_m4, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4, ptr noundef nonnull @__func__.dlm_register_domain, i32 noundef 2115, ptr noundef nonnull @.str.10, ptr noundef %domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4) #14
  %2 = call i32 @llvm.read_register.i32(metadata !312) #14
  %and.i317489 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i317489 to ptr
  %task318490 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task318490 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task318490, align 8
  %stack.i.i319491 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i.i319491 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i.i319491, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i320492 = icmp eq i32 %10, 0
  br i1 %tobool.not.i320492, label %do.body3.signal_pending.exit.preheader_crit_edge, label %do.body3.leave_crit_edge, !prof !325

do.body3.leave_crit_edge:                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

do.body3.signal_pending.exit.preheader_crit_edge: ; preds = %do.body3
  br label %signal_pending.exit.preheader

signal_pending.exit.preheader:                    ; preds = %dlm_alloc_ctxt.exit.signal_pending.exit.preheader_crit_edge, %do.body3.signal_pending.exit.preheader_crit_edge
  %11 = phi ptr [ %136, %dlm_alloc_ctxt.exit.signal_pending.exit.preheader_crit_edge ], [ %7, %do.body3.signal_pending.exit.preheader_crit_edge ]
  %new_ctxt.0.ph493 = phi ptr [ %call7.i.i.i, %dlm_alloc_ctxt.exit.signal_pending.exit.preheader_crit_edge ], [ null, %do.body3.signal_pending.exit.preheader_crit_edge ]
  br label %signal_pending.exit

signal_pending.exit:                              ; preds = %if.end67.signal_pending.exit_crit_edge, %signal_pending.exit.preheader
  %12 = phi ptr [ %29, %if.end67.signal_pending.exit_crit_edge ], [ %11, %signal_pending.exit.preheader ]
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %if.end33, label %signal_pending.exit.leave_crit_edge

signal_pending.exit.leave_crit_edge:              ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

if.end33:                                         ; preds = %signal_pending.exit
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !322

do.body4.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 264, 0\0A.popsection", ""() #14, !srcloc !335
  unreachable

do.end7.i:                                        ; preds = %if.end33
  %call8.i = call i32 @strlen(ptr noundef %domain) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %for.cond.preheader.i.i, !prof !322

for.cond.preheader.i.i:                           ; preds = %do.end7.i
  %tmp.029.i.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i.i = icmp eq ptr %tmp.029.i.i, @dlm_domains
  br i1 %cmp.not30.i.i, label %for.cond.preheader.i.i.if.end82_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end82_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %tmp.031.i.i = phi ptr [ %tmp.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %tmp.029.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 4
  %call13.i.i = call i32 @strlen(ptr noundef %18) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i.i, i32 %call8.i)
  %cmp14.i.i = icmp eq i32 %call13.i.i, %call8.i
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bcmp.i.i = call i32 @bcmp(ptr %18, ptr %domain, i32 %call8.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp17.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp17.i.i, label %__dlm_lookup_domain.exit, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %19 = ptrtoint ptr %tmp.031.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0.i.i = load ptr, ptr %tmp.031.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, @dlm_domains
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end82_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.end82_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

__dlm_lookup_domain.exit:                         ; preds = %land.lhs.true.i.i
  %tobool35.not = icmp eq ptr %tmp.031.i.i, null
  br i1 %tobool35.not, label %__dlm_lookup_domain.exit.if.end82_crit_edge, label %if.then36

__dlm_lookup_domain.exit.if.end82_crit_edge:      ; preds = %__dlm_lookup_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then36:                                        ; preds = %__dlm_lookup_domain.exit
  %dlm_state = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 31
  %20 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dlm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp37.not = icmp eq i32 %21, 1
  br i1 %cmp37.not, label %if.end69, label %if.then39

if.then39:                                        ; preds = %if.then36
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #14
  %22 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 192, ptr %_m41, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.dlm_register_domain, i32 noundef 2132, ptr noundef nonnull @.str.12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #14
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 2135) #14
  %call54 = call fastcc i32 @dlm_wait_on_domain_helper(ptr noundef %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.then39.if.end67_crit_edge

if.then39.if.end67_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then56:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call58313 = call i32 @prepare_to_wait_event(ptr noundef nonnull @dlm_domain_events, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call59314 = call fastcc i32 @dlm_wait_on_domain_helper(ptr noundef %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59314)
  %tobool60.not315 = icmp eq i32 %call59314, 0
  br i1 %tobool60.not315, label %if.then56.if.end62_crit_edge, label %if.then56.for.end_crit_edge

if.then56.for.end_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  br label %if.end62

if.end62:                                         ; preds = %cleanup.if.end62_crit_edge, %if.then56.if.end62_crit_edge
  %call58316 = phi i32 [ %call58, %cleanup.if.end62_crit_edge ], [ %call58313, %if.then56.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58316)
  %tobool63.not = icmp eq i32 %call58316, 0
  br i1 %tobool63.not, label %cleanup, label %if.end62.__out_crit_edge

if.end62.__out_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end62
  call void @schedule() #14
  %call58 = call i32 @prepare_to_wait_event(ptr noundef nonnull @dlm_domain_events, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call59 = call fastcc i32 @dlm_wait_on_domain_helper(ptr noundef %domain)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup.if.end62_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.if.end62_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then56.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @dlm_domain_events, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end62.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end67

if.end67:                                         ; preds = %__out, %if.then39.if.end67_crit_edge
  %24 = call i32 @llvm.read_register.i32(metadata !312) #14
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end67.signal_pending.exit_crit_edge, label %if.end67.leave_crit_edge, !prof !325

if.end67.leave_crit_edge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

if.end67.signal_pending.exit_crit_edge:           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %signal_pending.exit

if.end69:                                         ; preds = %if.then36
  %fs_locking_proto = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 47
  %33 = ptrtoint ptr %fs_locking_proto to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fs_locking_proto, align 1
  %35 = ptrtoint ptr %fs_proto to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fs_proto, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp.not.i = icmp eq i8 %34, %36
  br i1 %cmp.not.i, label %if.end.i208, label %if.end69.if.then72_crit_edge

if.end69.if.then72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then72

if.end.i208:                                      ; preds = %if.end69
  %pv_minor.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 47, i32 1
  %37 = ptrtoint ptr %pv_minor.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pv_minor.i, align 1
  %pv_minor5.i = getelementptr inbounds %struct.dlm_protocol_version, ptr %fs_proto, i32 0, i32 1
  %39 = ptrtoint ptr %pv_minor5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pv_minor5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp7.i = icmp ugt i8 %38, %40
  br i1 %cmp7.i, label %if.end.i208.if.then72_crit_edge, label %if.end10.i

if.end.i208.if.then72_crit_edge:                  ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then72

if.end10.i:                                       ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp15.i = icmp ult i8 %38, %40
  br i1 %cmp15.i, label %if.then17.i, label %if.end10.i.if.end81_crit_edge

if.end10.i.if.end81_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then17.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %pv_minor5.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %pv_minor5.i, align 1
  br label %if.end81

if.then72:                                        ; preds = %if.end.i208.if.then72_crit_edge, %if.end69.if.then72_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #14
  %42 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606847168, ptr %_m74, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.dlm_register_domain, i32 noundef 2144, ptr noundef nonnull @.str.13, ptr noundef %domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #14
  br label %leave

if.end81:                                         ; preds = %if.then17.i, %if.end10.i.if.end81_crit_edge
  %dlm_refs.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 30
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dlm_refs.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %dlm_refs.i, i32 1, i32 3, i32 1) #14
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlm_refs.i, ptr %dlm_refs.i, i32 1, ptr elementtype(i32) %dlm_refs.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !322

if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end81
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__dlm_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__dlm_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dlm_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end81.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %dlm_refs.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %__dlm_get.exit

__dlm_get.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__dlm_get.exit_crit_edge
  %num_joins = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 32
  %45 = ptrtoint ptr %num_joins to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_joins, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %num_joins, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %leave

if.end82:                                         ; preds = %__dlm_lookup_domain.exit.if.end82_crit_edge, %for.inc.i.i.if.end82_crit_edge, %for.cond.preheader.i.i.if.end82_crit_edge
  %tobool83.not = icmp eq ptr %new_ctxt.0.ph493, null
  br i1 %tobool83.not, label %if.then84, label %if.end116

if.then84:                                        ; preds = %if.end82
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 984) #21
  %tobool.not.i210 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i210, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #14
  %48 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606847168, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_alloc_ctxt, i32 noundef 1956, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #14
  br label %do.body105

if.end12.i:                                       ; preds = %if.then84
  %call13.i = call noalias ptr @kstrdup(ptr noundef %domain, i32 noundef 3264) #14
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 11
  %49 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call13.i, ptr %name.i, align 4
  %cmp15.i211 = icmp eq ptr %call13.i, null
  br i1 %cmp15.i211, label %do.body34.i, label %if.end45.i

do.body34.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35.i) #14
  %50 = ptrtoint ptr %_m35.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606847168, ptr %_m35.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35.i, ptr noundef nonnull @__func__.dlm_alloc_ctxt, i32 noundef 1963, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35.i) #14
  br label %if.then211.i

if.end45.i:                                       ; preds = %if.end12.i
  %call46.i = call fastcc ptr @dlm_alloc_pagevec() #14
  %lockres_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %lockres_hash.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call46.i, ptr %lockres_hash.i, align 8
  %tobool48.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool48.not.i, label %do.body66.i, label %if.end45.i.for.body.i_crit_edge

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  br label %for.body.i

do.body66.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67.i) #14
  %52 = ptrtoint ptr %_m67.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1152921504606847168, ptr %_m67.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67.i, ptr noundef nonnull @__func__.dlm_alloc_ctxt, i32 noundef 1970, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67.i) #14
  br label %if.then211.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end45.i.for.body.i_crit_edge
  %i.0359.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end45.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %lockres_hash.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lockres_hash.i, align 8
  %div3.i.i = lshr i32 %i.0359.i, 10
  %arrayidx.i.i = getelementptr ptr, ptr %54, i32 %div3.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %rem1.i.i = and i32 %i.0359.i, 1023
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %56, i32 %rem1.i.i
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0359.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32768
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call81.i = call fastcc ptr @dlm_alloc_pagevec() #14
  %master_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 23
  %58 = ptrtoint ptr %master_hash.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call81.i, ptr %master_hash.i, align 4
  %tobool83.not.i = icmp eq ptr %call81.i, null
  br i1 %tobool83.not.i, label %do.body101.i, label %for.end.i.for.body116.i_crit_edge

for.end.i.for.body116.i_crit_edge:                ; preds = %for.end.i
  br label %for.body116.i

do.body101.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m102.i) #14
  %59 = ptrtoint ptr %_m102.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 1152921504606847168, ptr %_m102.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m102.i, ptr noundef nonnull @__func__.dlm_alloc_ctxt, i32 noundef 1981, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m102.i) #14
  br label %if.then211.i

for.body116.i:                                    ; preds = %for.body116.i.for.body116.i_crit_edge, %for.end.i.for.body116.i_crit_edge
  %i.1360.i = phi i32 [ %inc120.i, %for.body116.i.for.body116.i_crit_edge ], [ 0, %for.end.i.for.body116.i_crit_edge ]
  %60 = ptrtoint ptr %master_hash.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master_hash.i, align 4
  %div3.i334.i = lshr i32 %i.1360.i, 10
  %arrayidx.i336.i = getelementptr ptr, ptr %61, i32 %div3.i334.i
  %62 = ptrtoint ptr %arrayidx.i336.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i336.i, align 4
  %rem1.i337.i = and i32 %i.1360.i, 1023
  %add.ptr.i338.i = getelementptr %struct.hlist_head, ptr %63, i32 %rem1.i337.i
  %64 = ptrtoint ptr %add.ptr.i338.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %add.ptr.i338.i, align 4
  %inc120.i = add nuw nsw i32 %i.1360.i, 1
  %exitcond362.not.i = icmp eq i32 %inc120.i, 32768
  br i1 %exitcond362.not.i, label %dlm_alloc_ctxt.exit, label %for.body116.i.for.body116.i_crit_edge

for.body116.i.for.body116.i_crit_edge:            ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body116.i

if.then211.i:                                     ; preds = %do.body101.i, %do.body66.i, %do.body34.i
  %name.i433 = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 11
  %master_hash212.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 23
  %65 = ptrtoint ptr %master_hash212.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %master_hash212.i, align 4
  %tobool213.not.i = icmp eq ptr %66, null
  br i1 %tobool213.not.i, label %if.then211.i.if.end216.i_crit_edge, label %if.then211.i.while.body.i.i_crit_edge

if.then211.i.while.body.i.i_crit_edge:            ; preds = %if.then211.i
  br label %while.body.i.i

if.then211.i.if.end216.i_crit_edge:               ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end216.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then211.i.while.body.i.i_crit_edge
  %pages.addr.04.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 32, %if.then211.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %pages.addr.04.i.i, -1
  %arrayidx.i352.i = getelementptr ptr, ptr %66, i32 %dec.i.i
  %67 = ptrtoint ptr %arrayidx.i352.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i352.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @free_pages(i32 noundef %69, i32 noundef 0) #14
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %dlm_free_pagevec.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

dlm_free_pagevec.exit.i:                          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %66) #14
  br label %if.end216.i

if.end216.i:                                      ; preds = %dlm_free_pagevec.exit.i, %if.then211.i.if.end216.i_crit_edge
  %lockres_hash217.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %lockres_hash217.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lockres_hash217.i, align 8
  %tobool218.not.i = icmp eq ptr %71, null
  br i1 %tobool218.not.i, label %if.end216.i.if.end221.i_crit_edge, label %if.end216.i.while.body.i357.i_crit_edge

if.end216.i.while.body.i357.i_crit_edge:          ; preds = %if.end216.i
  br label %while.body.i357.i

if.end216.i.if.end221.i_crit_edge:                ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end221.i

while.body.i357.i:                                ; preds = %while.body.i357.i.while.body.i357.i_crit_edge, %if.end216.i.while.body.i357.i_crit_edge
  %pages.addr.04.i353.i = phi i32 [ %dec.i354.i, %while.body.i357.i.while.body.i357.i_crit_edge ], [ 32, %if.end216.i.while.body.i357.i_crit_edge ]
  %dec.i354.i = add nsw i32 %pages.addr.04.i353.i, -1
  %arrayidx.i355.i = getelementptr ptr, ptr %71, i32 %dec.i354.i
  %72 = ptrtoint ptr %arrayidx.i355.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i355.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @free_pages(i32 noundef %74, i32 noundef 0) #14
  %tobool.not.i356.i = icmp eq i32 %dec.i354.i, 0
  br i1 %tobool.not.i356.i, label %dlm_free_pagevec.exit358.i, label %while.body.i357.i.while.body.i357.i_crit_edge

while.body.i357.i.while.body.i357.i_crit_edge:    ; preds = %while.body.i357.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i357.i

dlm_free_pagevec.exit358.i:                       ; preds = %while.body.i357.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %71) #14
  br label %if.end221.i

if.end221.i:                                      ; preds = %dlm_free_pagevec.exit358.i, %if.end216.i.if.end221.i_crit_edge
  %75 = ptrtoint ptr %name.i433 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name.i433, align 4
  call void @kfree(ptr noundef %76) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %do.body105

dlm_alloc_ctxt.exit:                              ; preds = %for.body116.i
  %key122.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 13
  %77 = ptrtoint ptr %key122.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %key, ptr %key122.i, align 4
  %call123.i = call zeroext i8 @o2nm_this_node() #14
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 12
  %78 = ptrtoint ptr %node_num.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %call123.i, ptr %node_num.i, align 8
  call void @dlm_create_debugfs_subroot(ptr noundef nonnull %call7.i.i.i) #14
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %spinlock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @dlm_alloc_ctxt.__key, i16 noundef signext 3) #14
  %master_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 22
  call void @__raw_spin_lock_init(ptr noundef %master_lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @dlm_alloc_ctxt.__key.26, i16 noundef signext 3) #14
  %ast_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %ast_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @dlm_alloc_ctxt.__key.28, i16 noundef signext 3) #14
  %track_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %track_lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @dlm_alloc_ctxt.__key.30, i16 noundef signext 3) #14
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %dirty_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %dirty_list.i, ptr %dirty_list.i, align 4
  %prev.i339.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %prev.i339.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dirty_list.i, ptr %prev.i339.i, align 8
  %reco.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21
  %83 = ptrtoint ptr %reco.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %reco.i, ptr %reco.i, align 8
  %prev.i340.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i340.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %reco.i, ptr %prev.i340.i, align 4
  %node_data.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %85 = ptrtoint ptr %node_data.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %node_data.i, ptr %node_data.i, align 8
  %prev.i341.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i341.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %node_data.i, ptr %prev.i341.i, align 4
  %purge_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %purge_list.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %purge_list.i, ptr %purge_list.i, align 4
  %prev.i342.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %prev.i342.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %purge_list.i, ptr %prev.i342.i, align 8
  %dlm_domain_handlers.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 45
  %89 = ptrtoint ptr %dlm_domain_handlers.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %dlm_domain_handlers.i, ptr %dlm_domain_handlers.i, align 4
  %prev.i343.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 45, i32 1
  %90 = ptrtoint ptr %prev.i343.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dlm_domain_handlers.i, ptr %prev.i343.i, align 8
  %tracking_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %tracking_list.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %tracking_list.i, ptr %tracking_list.i, align 4
  %prev.i344.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %prev.i344.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %tracking_list.i, ptr %prev.i344.i, align 8
  %state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 4
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %state.i, align 2
  %pending_asts.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %pending_asts.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %pending_asts.i, ptr %pending_asts.i, align 4
  %prev.i345.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %prev.i345.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %pending_asts.i, ptr %prev.i345.i, align 8
  %pending_basts.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 5
  %96 = ptrtoint ptr %pending_basts.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %pending_basts.i, ptr %pending_basts.i, align 4
  %prev.i346.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %prev.i346.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %pending_basts.i, ptr %prev.i346.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m143.i) #14
  %98 = ptrtoint ptr %_m143.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 192, ptr %_m143.i, align 8
  %recovery_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 20
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m143.i, ptr noundef nonnull @__func__.dlm_alloc_ctxt, i32 noundef 2010, ptr noundef nonnull @.str.32, ptr noundef %recovery_map.i, ptr noundef %recovery_map.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m143.i) #14
  %99 = call ptr @memset(ptr %recovery_map.i, i32 0, i32 32)
  %live_nodes_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 17
  %dlm_thread_task.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 35
  %100 = ptrtoint ptr %dlm_thread_task.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %dlm_thread_task.i, align 8
  %dlm_reco_thread_task.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 36
  %101 = ptrtoint ptr %dlm_reco_thread_task.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %dlm_reco_thread_task.i, align 4
  %dlm_worker.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 37
  %102 = ptrtoint ptr %dlm_worker.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %dlm_worker.i, align 8
  %dlm_thread_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 38
  %103 = call ptr @memset(ptr %live_nodes_map.i, i32 0, i32 64)
  call void @__init_waitqueue_head(ptr noundef %dlm_thread_wq.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @dlm_alloc_ctxt.__key.33) #14
  %dlm_reco_thread_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 39
  call void @__init_waitqueue_head(ptr noundef %dlm_reco_thread_wq.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @dlm_alloc_ctxt.__key.35) #14
  %event.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 6
  call void @__init_waitqueue_head(ptr noundef %event.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @dlm_alloc_ctxt.__key.37) #14
  %ast_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 40
  call void @__init_waitqueue_head(ptr noundef %ast_wq.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @dlm_alloc_ctxt.__key.39) #14
  %migration_wq.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 41
  call void @__init_waitqueue_head(ptr noundef %migration_wq.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @dlm_alloc_ctxt.__key.41) #14
  %mle_hb_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 24
  %104 = ptrtoint ptr %mle_hb_events.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %mle_hb_events.i, ptr %mle_hb_events.i, align 8
  %prev.i347.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 24, i32 1
  %105 = ptrtoint ptr %prev.i347.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %mle_hb_events.i, ptr %prev.i347.i, align 4
  %joining_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 14
  %106 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %joining_node.i, align 8
  %dlm_join_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 16
  call void @__init_waitqueue_head(ptr noundef %dlm_join_events.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @dlm_alloc_ctxt.__key.43) #14
  %migrate_done.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 15
  %107 = ptrtoint ptr %migrate_done.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %migrate_done.i, align 1
  %new_master.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 2
  %108 = ptrtoint ptr %new_master.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -1, ptr %new_master.i, align 8
  %dead_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 21, i32 3
  %109 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -1, ptr %dead_node.i, align 1
  %res_tot_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 27
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res_tot_count.i, i32 noundef 4) #14
  %110 = ptrtoint ptr %res_tot_count.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 0, ptr %res_tot_count.i, align 8
  %res_cur_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 28
  %call.i.i331.i = call zeroext i1 @__kasan_check_write(ptr noundef %res_cur_count.i, i32 noundef 4) #14
  %111 = ptrtoint ptr %res_cur_count.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 0, ptr %res_cur_count.i, align 4
  %arrayidx180.i = getelementptr %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 25, i32 0
  %call.i.i332.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx180.i, i32 noundef 4) #14
  %112 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 0, ptr %arrayidx180.i, align 8
  %arrayidx181.i = getelementptr %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 26, i32 0
  %call.i.i333.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx181.i, i32 noundef 4) #14
  %113 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 0, ptr %arrayidx181.i, align 4
  %arrayidx180.1.i = getelementptr %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 25, i32 1
  %call.i.i332.1.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx180.1.i, i32 noundef 4) #14
  %114 = ptrtoint ptr %arrayidx180.1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %arrayidx180.1.i, align 4
  %arrayidx181.1.i = getelementptr %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 26, i32 1
  %call.i.i333.1.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx181.1.i, i32 noundef 4) #14
  %115 = ptrtoint ptr %arrayidx181.1.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %arrayidx181.1.i, align 8
  %arrayidx180.2.i = getelementptr %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 25, i32 2
  %call.i.i332.2.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx180.2.i, i32 noundef 4) #14
  %116 = ptrtoint ptr %arrayidx180.2.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 0, ptr %arrayidx180.2.i, align 8
  %arrayidx181.2.i = getelementptr %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 26, i32 2
  %call.i.i333.2.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx181.2.i, i32 noundef 4) #14
  %117 = ptrtoint ptr %arrayidx181.2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %arrayidx181.2.i, align 4
  %work_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 44
  call void @__raw_spin_lock_init(ptr noundef %work_lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @dlm_alloc_ctxt.__key.45, i16 noundef signext 3) #14
  %work_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 43
  %118 = ptrtoint ptr %work_list.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %work_list.i, ptr %work_list.i, align 8
  %prev.i348.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 43, i32 1
  %119 = ptrtoint ptr %prev.i348.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %work_list.i, ptr %prev.i348.i, align 4
  %dispatched_work.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 42
  call void @__init_work(ptr noundef %dispatched_work.i, i32 noundef 0) #14
  %120 = ptrtoint ptr %dispatched_work.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -64, ptr %dispatched_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 42, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @dlm_alloc_ctxt.__key.47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry193.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 42, i32 1
  %121 = ptrtoint ptr %entry193.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %entry193.i, ptr %entry193.i, align 8
  %prev.i349.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 42, i32 1, i32 1
  %122 = ptrtoint ptr %prev.i349.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %entry193.i, ptr %prev.i349.i, align 4
  %func.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 42, i32 2
  %123 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @dlm_dispatch_work, ptr %func.i, align 8
  %dlm_refs.i212 = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 30
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dlm_refs.i212, i32 noundef 4) #14
  %124 = ptrtoint ptr %dlm_refs.i212 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 1, ptr %dlm_refs.i212, align 4
  %dlm_state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 31
  %125 = ptrtoint ptr %dlm_state.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %dlm_state.i, align 8
  %dlm_eviction_callbacks.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 46
  %126 = ptrtoint ptr %dlm_eviction_callbacks.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %dlm_eviction_callbacks.i, ptr %dlm_eviction_callbacks.i, align 4
  %prev.i350.i = getelementptr inbounds %struct.dlm_ctxt, ptr %call7.i.i.i, i32 0, i32 46, i32 1
  %127 = ptrtoint ptr %prev.i350.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %dlm_eviction_callbacks.i, ptr %prev.i350.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m198.i) #14
  %128 = ptrtoint ptr %_m198.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 192, ptr %_m198.i, align 8
  %call.i.i.i.i351.i = call zeroext i1 @__kasan_check_read(ptr noundef %dlm_refs.i212, i32 noundef 4) #14
  %129 = ptrtoint ptr %dlm_refs.i212 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %dlm_refs.i212, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m198.i, ptr noundef nonnull @__func__.dlm_alloc_ctxt, i32 noundef 2051, ptr noundef nonnull @.str.49, i32 noundef %130) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m198.i) #14
  %131 = call i32 @llvm.read_register.i32(metadata !312) #14
  %and.i317 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i317 to ptr
  %task318 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %task318 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %task318, align 8
  %stack.i.i319 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %stack.i.i319 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %stack.i.i319, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %136, align 4
  %139 = and i32 %138, 256
  %tobool.not.i320 = icmp eq i32 %139, 0
  br i1 %tobool.not.i320, label %dlm_alloc_ctxt.exit.signal_pending.exit.preheader_crit_edge, label %dlm_alloc_ctxt.exit.leave_crit_edge, !prof !325

dlm_alloc_ctxt.exit.leave_crit_edge:              ; preds = %dlm_alloc_ctxt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %leave

dlm_alloc_ctxt.exit.signal_pending.exit.preheader_crit_edge: ; preds = %dlm_alloc_ctxt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %signal_pending.exit.preheader

do.body105:                                       ; preds = %if.end221.i, %do.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m106) #14
  %140 = ptrtoint ptr %_m106 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 1152921504606847168, ptr %_m106, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m106, ptr noundef nonnull @__func__.dlm_register_domain, i32 noundef 2167, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m106) #14
  br label %if.then155

if.end116:                                        ; preds = %if.end82
  %141 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dlm_domains, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef %141, ptr noundef nonnull @dlm_domains) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end116.do.body10.i_crit_edge

if.end116.do.body10.i_crit_edge:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i

if.end.i.i:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %new_ctxt.0.ph493, ptr getelementptr inbounds (%struct.list_head, ptr @dlm_domains, i32 0, i32 1), align 4
  %142 = ptrtoint ptr %new_ctxt.0.ph493 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @dlm_domains, ptr %new_ctxt.0.ph493, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %new_ctxt.0.ph493, i32 0, i32 1
  %143 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %141, ptr %prev3.i.i, align 4
  %144 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %new_ctxt.0.ph493, ptr %141, align 4
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.end.i.i, %if.end116.do.body10.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  %dlm_locking_proto = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 48
  %145 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 259, ptr %dlm_locking_proto, align 2
  %fs_locking_proto117 = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 47
  %146 = ptrtoint ptr %fs_proto to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %fs_proto, align 1
  %148 = ptrtoint ptr %fs_locking_proto117 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %fs_locking_proto117, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wq_name.i) #14
  %149 = call ptr @memset(ptr %wq_name.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i213) #14
  %150 = ptrtoint ptr %_m.i213 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 192, ptr %_m.i213, align 8
  %name.i216 = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 11
  %151 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name.i216, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i213, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1861, ptr noundef nonnull @.str.51, ptr noundef %152) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i213) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #14
  %153 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 192, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_register_domain_handlers, i32 noundef 1713, ptr noundef nonnull @.str.55) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #14
  %dlm_hb_down.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 34
  call void @o2hb_setup_callback(ptr noundef %dlm_hb_down.i.i, i32 noundef 0, ptr noundef nonnull @dlm_hb_node_down_cb, ptr noundef nonnull %new_ctxt.0.ph493, i32 noundef 251658240) #14
  %dlm_hb_up.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 33
  call void @o2hb_setup_callback(ptr noundef %dlm_hb_up.i.i, i32 noundef 1, ptr noundef nonnull @dlm_hb_node_up_cb, ptr noundef nonnull %new_ctxt.0.ph493, i32 noundef 134217728) #14
  %154 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %name.i216, align 4
  %call.i.i217 = call i32 @o2hb_register_callback(ptr noundef %155, ptr noundef %dlm_hb_down.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i217)
  %tobool2.not.i.i = icmp eq i32 %call.i.i217, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.body10.i.dlm_register_domain_handlers.exit.i_crit_edge

do.body10.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end4.i.i:                                      ; preds = %do.body10.i
  %156 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %name.i216, align 4
  %call7.i.i = call i32 @o2hb_register_callback(ptr noundef %157, ptr noundef %dlm_hb_up.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end4.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end4.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end10.i.i:                                     ; preds = %if.end4.i.i
  %key.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 13
  %158 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %key.i.i, align 4
  %dlm_domain_handlers.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 45
  %call11.i.i = call i32 @o2net_register_handler(i32 noundef 500, i32 noundef %159, i32 noundef 72, ptr noundef nonnull @dlm_master_request_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end10.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %160 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %key.i.i, align 4
  %call17.i.i = call i32 @o2net_register_handler(i32 noundef 502, i32 noundef %161, i32 noundef 72, ptr noundef nonnull @dlm_assert_master_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef nonnull @dlm_assert_master_post_handler, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end14.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %162 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %key.i.i, align 4
  %call23.i.i = call i32 @o2net_register_handler(i32 noundef 503, i32 noundef %163, i32 noundef 80, ptr noundef nonnull @dlm_create_lock_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end20.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end20.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end26.i.i:                                     ; preds = %if.end20.i.i
  %164 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %key.i.i, align 4
  %call29.i.i = call i32 @o2net_register_handler(i32 noundef 504, i32 noundef %165, i32 noundef 144, ptr noundef nonnull @dlm_convert_lock_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end32.i.i, label %if.end26.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end26.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end32.i.i:                                     ; preds = %if.end26.i.i
  %166 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %key.i.i, align 4
  %call35.i.i = call i32 @o2net_register_handler(i32 noundef 506, i32 noundef %167, i32 noundef 144, ptr noundef nonnull @dlm_unlock_lock_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.end32.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end32.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end38.i.i:                                     ; preds = %if.end32.i.i
  %168 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %key.i.i, align 4
  %call41.i.i = call i32 @o2net_register_handler(i32 noundef 505, i32 noundef %169, i32 noundef 144, ptr noundef nonnull @dlm_proxy_ast_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end44.i.i, label %if.end38.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end38.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end44.i.i:                                     ; preds = %if.end38.i.i
  %170 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %key.i.i, align 4
  %call47.i.i = call i32 @o2net_register_handler(i32 noundef 513, i32 noundef %171, i32 noundef 4, ptr noundef nonnull @dlm_exit_domain_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end50.i.i, label %if.end44.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end44.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end50.i.i:                                     ; preds = %if.end44.i.i
  %172 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %key.i.i, align 4
  %call53.i.i = call i32 @o2net_register_handler(i32 noundef 507, i32 noundef %173, i32 noundef 72, ptr noundef nonnull @dlm_deref_lockres_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end56.i.i, label %if.end50.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end50.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end56.i.i:                                     ; preds = %if.end50.i.i
  %174 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %key.i.i, align 4
  %call59.i.i = call i32 @o2net_register_handler(i32 noundef 508, i32 noundef %175, i32 noundef 72, ptr noundef nonnull @dlm_migrate_request_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end62.i.i, label %if.end56.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end56.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end62.i.i:                                     ; preds = %if.end56.i.i
  %176 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %key.i.i, align 4
  %call65.i.i = call i32 @o2net_register_handler(i32 noundef 509, i32 noundef %177, i32 noundef 3952, ptr noundef nonnull @dlm_mig_lockres_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %tobool66.not.i.i = icmp eq i32 %call65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end68.i.i, label %if.end62.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end62.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end68.i.i:                                     ; preds = %if.end62.i.i
  %178 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %key.i.i, align 4
  %call71.i.i = call i32 @o2net_register_handler(i32 noundef 514, i32 noundef %179, i32 noundef 72, ptr noundef nonnull @dlm_master_requery_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end74.i.i, label %if.end68.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end68.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end74.i.i:                                     ; preds = %if.end68.i.i
  %180 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %key.i.i, align 4
  %call77.i.i = call i32 @o2net_register_handler(i32 noundef 515, i32 noundef %181, i32 noundef 8, ptr noundef nonnull @dlm_request_all_locks_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end80.i.i, label %if.end74.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end74.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end80.i.i:                                     ; preds = %if.end74.i.i
  %182 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %key.i.i, align 4
  %call83.i.i = call i32 @o2net_register_handler(i32 noundef 516, i32 noundef %183, i32 noundef 72, ptr noundef nonnull @dlm_reco_data_done_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i.i)
  %tobool84.not.i.i = icmp eq i32 %call83.i.i, 0
  br i1 %tobool84.not.i.i, label %if.end86.i.i, label %if.end80.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end80.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end86.i.i:                                     ; preds = %if.end80.i.i
  %184 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %key.i.i, align 4
  %call89.i.i = call i32 @o2net_register_handler(i32 noundef 517, i32 noundef %185, i32 noundef 8, ptr noundef nonnull @dlm_begin_reco_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %tobool90.not.i.i = icmp eq i32 %call89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.end92.i.i, label %if.end86.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end86.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end92.i.i:                                     ; preds = %if.end86.i.i
  %186 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %key.i.i, align 4
  %call95.i.i = call i32 @o2net_register_handler(i32 noundef 518, i32 noundef %187, i32 noundef 8, ptr noundef nonnull @dlm_finalize_reco_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i.i)
  %tobool96.not.i.i = icmp eq i32 %call95.i.i, 0
  br i1 %tobool96.not.i.i, label %if.end98.i.i, label %if.end92.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end92.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

if.end98.i.i:                                     ; preds = %if.end92.i.i
  %188 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %key.i.i, align 4
  %call101.i.i = call i32 @o2net_register_handler(i32 noundef 521, i32 noundef %189, i32 noundef 4, ptr noundef nonnull @dlm_begin_exit_domain_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i.i)
  %tobool102.not.i.i = icmp eq i32 %call101.i.i, 0
  br i1 %tobool102.not.i.i, label %bail.i.i, label %if.end98.i.i.dlm_register_domain_handlers.exit.i_crit_edge

if.end98.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

bail.i.i:                                         ; preds = %if.end98.i.i
  %190 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %key.i.i, align 4
  %call107.i.i = call i32 @o2net_register_handler(i32 noundef 522, i32 noundef %191, i32 noundef 72, ptr noundef nonnull @dlm_deref_lockres_done_handler, ptr noundef nonnull %new_ctxt.0.ph493, ptr noundef null, ptr noundef %dlm_domain_handlers.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i.i)
  %tobool108.not.i.i = icmp eq i32 %call107.i.i, 0
  br i1 %tobool108.not.i.i, label %if.end35.i, label %bail.i.i.dlm_register_domain_handlers.exit.i_crit_edge

bail.i.i.dlm_register_domain_handlers.exit.i_crit_edge: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_register_domain_handlers.exit.i

dlm_register_domain_handlers.exit.i:              ; preds = %bail.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end98.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end92.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end86.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end80.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end74.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end68.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end62.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end56.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end50.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end44.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end38.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end32.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end26.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end20.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end14.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end10.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %if.end4.i.i.dlm_register_domain_handlers.exit.i_crit_edge, %do.body10.i.dlm_register_domain_handlers.exit.i_crit_edge
  %status.0191.i.i = phi i32 [ %call107.i.i, %bail.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call101.i.i, %if.end98.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call95.i.i, %if.end92.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call89.i.i, %if.end86.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call83.i.i, %if.end80.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call77.i.i, %if.end74.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call71.i.i, %if.end68.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call65.i.i, %if.end62.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call59.i.i, %if.end56.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call53.i.i, %if.end50.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call47.i.i, %if.end44.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call41.i.i, %if.end38.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call35.i.i, %if.end32.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call29.i.i, %if.end26.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call23.i.i, %if.end20.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call17.i.i, %if.end14.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call11.i.i, %if.end10.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call7.i.i, %if.end4.i.i.dlm_register_domain_handlers.exit.i_crit_edge ], [ %call.i.i217, %do.body10.i.dlm_register_domain_handlers.exit.i_crit_edge ]
  %192 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %name.i216, align 4
  call void @o2hb_unregister_callback(ptr noundef %193, ptr noundef %dlm_hb_up.i.i) #14
  %194 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %name.i216, align 4
  call void @o2hb_unregister_callback(ptr noundef %195, ptr noundef %dlm_hb_down.i.i) #14
  %dlm_domain_handlers.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 45
  call void @o2net_unregister_handler_list(ptr noundef %dlm_domain_handlers.i.i.i) #14
  %196 = zext i32 %status.0191.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %status.0191.i.i, label %do.body26.i [
    i32 -122, label %dlm_register_domain_handlers.exit.i.bail.i_crit_edge
    i32 -512, label %dlm_register_domain_handlers.exit.i.bail.i_crit_edge606
    i32 -4, label %dlm_register_domain_handlers.exit.i.bail.i_crit_edge607
    i32 524289, label %dlm_register_domain_handlers.exit.i.bail.i_crit_edge608
    i32 -28, label %dlm_register_domain_handlers.exit.i.bail.i_crit_edge609
  ]

dlm_register_domain_handlers.exit.i.bail.i_crit_edge609: ; preds = %dlm_register_domain_handlers.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

dlm_register_domain_handlers.exit.i.bail.i_crit_edge608: ; preds = %dlm_register_domain_handlers.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

dlm_register_domain_handlers.exit.i.bail.i_crit_edge607: ; preds = %dlm_register_domain_handlers.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

dlm_register_domain_handlers.exit.i.bail.i_crit_edge606: ; preds = %dlm_register_domain_handlers.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

dlm_register_domain_handlers.exit.i.bail.i_crit_edge: ; preds = %dlm_register_domain_handlers.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

do.body26.i:                                      ; preds = %dlm_register_domain_handlers.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27.i) #14
  %197 = ptrtoint ptr %_m27.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 1152921504606847168, ptr %_m27.i, align 8
  %conv.i = sext i32 %status.0191.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1865, ptr noundef nonnull @.str.11, i64 noundef %conv.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27.i) #14
  br label %bail.thread.i

if.end35.i:                                       ; preds = %bail.i.i
  %call36.i = call i32 @dlm_launch_thread(ptr noundef nonnull %new_ctxt.0.ph493) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.end67.i

if.then39.i:                                      ; preds = %if.end35.i
  %198 = zext i32 %call36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call36.i, label %do.body56.i [
    i32 -512, label %if.then39.i.bail.thread.i_crit_edge
    i32 -4, label %if.then39.i.bail.thread.i_crit_edge610
    i32 -28, label %if.then39.i.bail.thread.i_crit_edge611
    i32 -122, label %if.then39.i.bail.thread.i_crit_edge612
  ]

if.then39.i.bail.thread.i_crit_edge612:           ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then39.i.bail.thread.i_crit_edge611:           ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then39.i.bail.thread.i_crit_edge610:           ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then39.i.bail.thread.i_crit_edge:              ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

do.body56.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57.i) #14
  %199 = ptrtoint ptr %_m57.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 1152921504606847168, ptr %_m57.i, align 8
  %conv61.i = sext i32 %call36.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1871, ptr noundef nonnull @.str.11, i64 noundef %conv61.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57.i) #14
  br label %bail.thread.i

if.end67.i:                                       ; preds = %if.end35.i
  %call68.i = call i32 @dlm_launch_recovery_thread(ptr noundef nonnull %new_ctxt.0.ph493) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.then71.i, label %if.end99.i

if.then71.i:                                      ; preds = %if.end67.i
  %200 = zext i32 %call68.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call68.i, label %do.body88.i [
    i32 -512, label %if.then71.i.bail.thread.i_crit_edge
    i32 -4, label %if.then71.i.bail.thread.i_crit_edge613
    i32 -28, label %if.then71.i.bail.thread.i_crit_edge614
    i32 -122, label %if.then71.i.bail.thread.i_crit_edge615
  ]

if.then71.i.bail.thread.i_crit_edge615:           ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then71.i.bail.thread.i_crit_edge614:           ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then71.i.bail.thread.i_crit_edge613:           ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then71.i.bail.thread.i_crit_edge:              ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

do.body88.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89.i) #14
  %201 = ptrtoint ptr %_m89.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 1152921504606847168, ptr %_m89.i, align 8
  %conv93.i = sext i32 %call68.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1877, ptr noundef nonnull @.str.11, i64 noundef %conv93.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89.i) #14
  br label %bail.thread.i

if.end99.i:                                       ; preds = %if.end67.i
  call void @dlm_debug_init(ptr noundef nonnull %new_ctxt.0.ph493) #14
  %202 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name.i216, align 4
  %call101.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %wq_name.i, i32 noundef 64, ptr noundef nonnull @.str.52, ptr noundef %203) #14
  %call103.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %wq_name.i, i32 noundef 8, i32 noundef 0) #14
  %dlm_worker.i218 = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 37
  %204 = ptrtoint ptr %dlm_worker.i218 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call103.i, ptr %dlm_worker.i218, align 8
  %tobool105.not.i = icmp eq ptr %call103.i, null
  br i1 %tobool105.not.i, label %do.body123.i, label %do.body135.preheader.i

do.body135.preheader.i:                           ; preds = %if.end99.i
  %live_nodes_map.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 17
  %spinlock.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 8
  %node_num.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 12
  %joining_node.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 14
  %dlm_join_events.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 16
  %205 = getelementptr inbounds i8, ptr %join_msg.i.i.i, i32 1
  %name_len.i.i.i = getelementptr inbounds %struct.dlm_query_join_request, ptr %join_msg.i.i.i, i32 0, i32 2
  %domain.i.i.i = getelementptr inbounds %struct.dlm_query_join_request, ptr %join_msg.i.i.i, i32 0, i32 5
  %dlm_proto.i.i.i = getelementptr inbounds %struct.dlm_query_join_request, ptr %join_msg.i.i.i, i32 0, i32 3
  %fs_proto.i.i.i = getelementptr inbounds %struct.dlm_query_join_request, ptr %join_msg.i.i.i, i32 0, i32 4
  %node_map.i.i.i = getelementptr inbounds %struct.dlm_query_join_request, ptr %join_msg.i.i.i, i32 0, i32 6
  %pv_minor48.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 48, i32 1
  %pv_minor50.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 47, i32 1
  %domain_map.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 18
  %206 = getelementptr inbounds i8, ptr %assert_msg.i.i.i.i, i32 1
  %name_len.i.i.i.i = getelementptr inbounds %struct.dlm_assert_joined, ptr %assert_msg.i.i.i.i, i32 0, i32 2
  %domain.i.i.i.i = getelementptr inbounds %struct.dlm_assert_joined, ptr %assert_msg.i.i.i.i, i32 0, i32 3
  %dlm_state.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 31
  %num_joins.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 32
  %207 = getelementptr inbounds i8, ptr %cancel_msg.i.i.i.i, i32 1
  %name_len.i.i370.i.i = getelementptr inbounds %struct.dlm_cancel_join, ptr %cancel_msg.i.i.i.i, i32 0, i32 2
  %domain.i.i371.i.i = getelementptr inbounds %struct.dlm_cancel_join, ptr %cancel_msg.i.i.i.i, i32 0, i32 3
  br label %do.body135.i

do.body123.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m124.i) #14
  %208 = ptrtoint ptr %_m124.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 1152921504606847168, ptr %_m124.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m124.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1887, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m124.i) #14
  br label %bail.thread.i

do.body135.i:                                     ; preds = %if.end157.i, %do.body135.preheader.i
  %total_backoff.0.i = phi i32 [ %add.i, %if.end157.i ], [ 0, %do.body135.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i267.i) #14
  %209 = ptrtoint ptr %_m.i267.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 192, ptr %_m.i267.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i267.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1595, ptr noundef nonnull @.str.67, ptr noundef %new_ctxt.0.ph493) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i267.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %210 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %210, i32 noundef 3520, i32 noundef 64) #21
  %tobool1.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool1.not.i.i, label %do.body11.i.i, label %if.end20.i268.i

do.body11.i.i:                                    ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12.i.i) #14
  %211 = ptrtoint ptr %_m12.i.i to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 1152921504606847168, ptr %_m12.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1600, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12.i.i) #14
  br label %bail.i269.i

if.end20.i268.i:                                  ; preds = %do.body135.i
  call void @o2hb_fill_node_map(ptr noundef %live_nodes_map.i.i, i32 noundef 32) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i.i) #14
  %212 = call ptr @memcpy(ptr %call7.i.i.i.i, ptr %live_nodes_map.i.i, i32 32)
  %213 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %node_num.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %215 = ptrtoint ptr %spinlock.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %spinlock.i.i, align 8
  %216 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %__dlm_set_joining_node.exit.i.i, !prof !322

do.body4.i.i.i:                                   ; preds = %if.end20.i268.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #14, !srcloc !337
  unreachable

__dlm_set_joining_node.exit.i.i:                  ; preds = %if.end20.i268.i
  %217 = ptrtoint ptr %joining_node.i.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %214, ptr %joining_node.i.i.i, align 8
  call void @__wake_up(ptr noundef %dlm_join_events.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i.i) #14
  %yes_resp_map.i.i = getelementptr inbounds %struct.domain_join_ctxt, ptr %call7.i.i.i.i, i32 0, i32 1
  br label %while.cond.outer.i.i

while.cond.outer.i.i:                             ; preds = %if.end2.i.i.i.while.cond.outer.i.i_crit_edge, %__dlm_set_joining_node.exit.i.i
  %node.0.ph.i.i = phi i32 [ %call27.i.i, %if.end2.i.i.i.while.cond.outer.i.i_crit_edge ], [ -1, %__dlm_set_joining_node.exit.i.i ]
  %status.0.ph.i.i = phi i32 [ %status.0.i399403411.i.i, %if.end2.i.i.i.while.cond.outer.i.i_crit_edge ], [ 0, %__dlm_set_joining_node.exit.i.i ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i219.while.cond.i.i_crit_edge, %while.cond.outer.i.i
  %node.0.i.i = phi i32 [ %call27.i.i, %while.body.i.i219.while.cond.i.i_crit_edge ], [ %node.0.ph.i.i, %while.cond.outer.i.i ]
  %add.i.i = add i32 %node.0.i.i, 1
  %call27.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 255, i32 noundef %add.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 255
  br i1 %cmp28.i.i, label %while.body.i.i219, label %do.body77.i.i

while.body.i.i219:                                ; preds = %while.cond.i.i
  %218 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %node_num.i.i, align 8
  %conv31.i.i = zext i8 %219 to i32
  %cmp32.i.i = icmp eq i32 %call27.i.i, %conv31.i.i
  br i1 %cmp32.i.i, label %while.body.i.i219.while.cond.i.i_crit_edge, label %if.end35.i.i

while.body.i.i219.while.cond.i.i_crit_edge:       ; preds = %while.body.i.i219
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

if.end35.i.i:                                     ; preds = %while.body.i.i219
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %join_msg.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %join_resp.i.i.i) #14
  %220 = ptrtoint ptr %join_resp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %join_resp.i.i.i, align 4, !annotation !338
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #14
  %221 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 192, ptr %_m.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1421, ptr noundef nonnull @.str.71, i32 noundef %call27.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #14
  %222 = call ptr @memset(ptr %205, i32 0, i32 71)
  %223 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %node_num.i.i, align 8
  %225 = ptrtoint ptr %join_msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %join_msg.i.i.i, align 1
  %226 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %name.i216, align 4
  %call.i.i.i220 = call i32 @strlen(ptr noundef %227) #20
  %conv.i.i.i221 = trunc i32 %call.i.i.i220 to i8
  %228 = ptrtoint ptr %name_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv.i.i.i221, ptr %name_len.i.i.i, align 1
  %conv3.i.i.i = and i32 %call.i.i.i220, 255
  %229 = call ptr @memcpy(ptr %domain.i.i.i, ptr %227, i32 %conv3.i.i.i)
  %230 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %dlm_locking_proto, align 2
  %232 = ptrtoint ptr %dlm_proto.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %232, i32 2)
  store i16 %231, ptr %dlm_proto.i.i.i, align 1
  %233 = ptrtoint ptr %fs_locking_proto117 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %fs_locking_proto117, align 4
  %235 = ptrtoint ptr %fs_proto.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %235, i32 2)
  store i16 %234, ptr %fs_proto.i.i.i, align 1
  %236 = call ptr @memset(ptr %node_map.i.i.i, i32 0, i32 32)
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end35.i.i
  %nn.03.i.i.i.i = phi i32 [ 0, %if.end35.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %div3.i.i.i.i.i = lshr i32 %nn.03.i.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %live_nodes_map.i.i, i32 %div3.i.i.i.i.i
  %237 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %nn.03.i.i.i.i, 31
  %239 = shl nuw i32 1, %and.i.i.i.i.i
  %240 = and i32 %239, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool1.not.i.i.i.i = icmp eq i32 %240, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then2.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i222 = trunc i32 %nn.03.i.i.i.i to i8
  %and.i1.i.i.i.i = and i8 %conv.i.i.i.i222, 7
  %shl.i.i.i.i.i = shl nuw i8 1, %and.i1.i.i.i.i
  %241 = lshr i32 %nn.03.i.i.i.i, 3
  %242 = and i32 %241, 31
  %arrayidx.i2.i.i.i.i = getelementptr i8, ptr %node_map.i.i.i, i32 %242
  %243 = ptrtoint ptr %arrayidx.i2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx.i2.i.i.i.i, align 1
  %or.i.i.i.i.i = or i8 %244, %shl.i.i.i.i.i
  store i8 %or.i.i.i.i.i, ptr %arrayidx.i2.i.i.i.i, align 1
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw nsw i32 %nn.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 255
  br i1 %exitcond.not.i.i.i.i, label %byte_copymap.exit.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

byte_copymap.exit.i.i.i:                          ; preds = %for.inc.i.i.i.i
  %conv6.i.i.i = trunc i32 %call27.i.i to i8
  %call7.i.i.i223 = call i32 @o2net_send_message(i32 noundef 510, i32 noundef 1718378866, ptr noundef nonnull %join_msg.i.i.i, i32 noundef 104, i8 noundef zeroext %conv6.i.i.i, ptr noundef nonnull %join_resp.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i.i.i223)
  %cmp.i.i.i = icmp sgt i32 %call7.i.i.i223, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -92, i32 %call7.i.i.i223)
  %cmp9.not.i.i.i = icmp eq i32 %call7.i.i.i223, -92
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp9.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end20.i.i.i, label %dlm_request_join.exit.thread.i.i

dlm_request_join.exit.thread.i.i:                 ; preds = %byte_copymap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m13.i.i.i) #14
  %245 = ptrtoint ptr %_m13.i.i.i to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 1152921504606847168, ptr %_m13.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m13.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1438, ptr noundef nonnull @.str.72, i32 noundef %call7.i.i.i223, i32 noundef 510, i32 noundef 1718378866, i32 noundef %call27.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m13.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %join_resp.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %join_msg.i.i.i) #14
  br label %if.then39.i.i

if.end20.i.i.i:                                   ; preds = %byte_copymap.exit.i.i.i
  %246 = ptrtoint ptr %join_resp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %join_resp.i.i.i, align 4
  %packet.sroa.6.0.extract.shift.i.i.i = lshr i32 %247, 16
  %packet.sroa.6.0.extract.trunc.i.i.i = trunc i32 %packet.sroa.6.0.extract.shift.i.i.i to i8
  %packet.sroa.8.0.extract.shift.i.i.i = lshr i32 %247, 8
  %packet.sroa.8.0.extract.trunc.i.i.i = trunc i32 %packet.sroa.8.0.extract.shift.i.i.i to i8
  br i1 %cmp9.not.i.i.i, label %if.end67.thread.i.i, label %if.else.i.i.i

if.end67.thread.i.i:                              ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83.i.i.i) #14
  %248 = ptrtoint ptr %_m83.i.i.i to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 192, ptr %_m83.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1493, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef %call27.i.i, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %join_resp.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %join_msg.i.i.i) #14
  br label %if.end2.i.i.i

if.else.i.i.i:                                    ; preds = %if.end20.i.i.i
  %packet.sroa.0.0.extract.shift.i.i.i = lshr i32 %247, 24
  %packet.sroa.0.0.extract.trunc.i.i.i = trunc i32 %packet.sroa.0.0.extract.shift.i.i.i to i8
  %249 = zext i8 %packet.sroa.0.0.extract.trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %packet.sroa.0.0.extract.trunc.i.i.i, label %sw.default.i.i.i [
    i8 0, label %if.else.i.i.i.dlm_request_join.exit.i.i_crit_edge
    i8 2, label %if.else.i.i.i.dlm_request_join.exit.i.i_crit_edge616
    i8 3, label %do.body28.i.i.i
    i8 1, label %sw.bb46.i.i.i
  ]

if.else.i.i.i.dlm_request_join.exit.i.i_crit_edge616: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_request_join.exit.i.i

if.else.i.i.i.dlm_request_join.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_request_join.exit.i.i

do.body28.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29.i.i.i) #14
  %250 = ptrtoint ptr %_m29.i.i.i to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 2305843009213694144, ptr %_m29.i.i.i, align 8
  %251 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %dlm_locking_proto, align 2
  %conv34.i.i.i = zext i8 %252 to i32
  %253 = ptrtoint ptr %pv_minor48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %pv_minor48.i.i.i, align 1
  %conv36.i.i.i = zext i8 %254 to i32
  %255 = ptrtoint ptr %fs_locking_proto117 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %fs_locking_proto117, align 4
  %conv39.i.i.i = zext i8 %256 to i32
  %257 = ptrtoint ptr %pv_minor50.i.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %pv_minor50.i.i.i, align 1
  %conv42.i.i.i = zext i8 %258 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1466, ptr noundef nonnull @.str.73, i32 noundef %conv34.i.i.i, i32 noundef %conv36.i.i.i, i32 noundef %conv39.i.i.i, i32 noundef %conv42.i.i.i, i32 noundef %call27.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29.i.i.i) #14
  br label %dlm_request_join.exit.thread390.i.i

sw.bb46.i.i.i:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %259 = ptrtoint ptr %pv_minor48.i.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %packet.sroa.6.0.extract.trunc.i.i.i, ptr %pv_minor48.i.i.i, align 1
  %260 = ptrtoint ptr %pv_minor50.i.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %packet.sroa.8.0.extract.trunc.i.i.i, ptr %pv_minor50.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52.i.i.i) #14
  %261 = ptrtoint ptr %_m52.i.i.i to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 192, ptr %_m52.i.i.i, align 8
  %262 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %dlm_locking_proto, align 2
  %conv58.i.i.i = zext i8 %263 to i32
  %conv61.i.i.i = and i32 %packet.sroa.6.0.extract.shift.i.i.i, 255
  %264 = ptrtoint ptr %fs_locking_proto117 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %fs_locking_proto117, align 4
  %conv64.i.i.i = zext i8 %265 to i32
  %conv67.i.i.i = and i32 %packet.sroa.8.0.extract.shift.i.i.i, 255
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1480, ptr noundef nonnull @.str.74, i32 noundef %call27.i.i, i32 noundef %conv58.i.i.i, i32 noundef %conv61.i.i.i, i32 noundef %conv64.i.i.i, i32 noundef %conv67.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52.i.i.i) #14
  br label %dlm_request_join.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m72.i.i.i) #14
  %266 = ptrtoint ptr %_m72.i.i.i to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 1152921504606847168, ptr %_m72.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m72.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1485, ptr noundef nonnull @.str.75, i32 noundef %packet.sroa.0.0.extract.shift.i.i.i, i32 noundef %call27.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m72.i.i.i) #14
  br label %dlm_request_join.exit.thread390.i.i

dlm_request_join.exit.thread390.i.i:              ; preds = %sw.default.i.i.i, %do.body28.i.i.i
  %response.1.ph.i.i = phi i32 [ %packet.sroa.0.0.extract.shift.i.i.i, %do.body28.i.i.i ], [ 0, %sw.default.i.i.i ]
  %status.0.i.ph.i.i = phi i32 [ -71, %do.body28.i.i.i ], [ -22, %sw.default.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83.i.i.i) #14
  %267 = ptrtoint ptr %_m83.i.i.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 192, ptr %_m83.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1493, ptr noundef nonnull @.str.76, i32 noundef %status.0.i.ph.i.i, i32 noundef %call27.i.i, i32 noundef %response.1.ph.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %join_resp.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %join_msg.i.i.i) #14
  br label %if.then39.i.i

dlm_request_join.exit.i.i:                        ; preds = %sw.bb46.i.i.i, %if.else.i.i.i.dlm_request_join.exit.i.i_crit_edge, %if.else.i.i.i.dlm_request_join.exit.i.i_crit_edge616
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83.i.i.i) #14
  %268 = ptrtoint ptr %_m83.i.i.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 192, ptr %_m83.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83.i.i.i, ptr noundef nonnull @__func__.dlm_request_join, i32 noundef 1493, ptr noundef nonnull @.str.76, i32 noundef %call7.i.i.i223, i32 noundef %call27.i.i, i32 noundef %packet.sroa.0.0.extract.shift.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %join_resp.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %join_msg.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i223)
  %cmp37.i.i = icmp slt i32 %call7.i.i.i223, 0
  br i1 %cmp37.i.i, label %dlm_request_join.exit.i.i.if.then39.i.i_crit_edge, label %if.end67.i.i

dlm_request_join.exit.i.i.if.then39.i.i_crit_edge: ; preds = %dlm_request_join.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39.i.i

if.then39.i.i:                                    ; preds = %dlm_request_join.exit.i.i.if.then39.i.i_crit_edge, %dlm_request_join.exit.thread390.i.i, %dlm_request_join.exit.thread.i.i
  %status.1.i389.i.i = phi i32 [ %call7.i.i.i223, %dlm_request_join.exit.thread.i.i ], [ %status.0.i.ph.i.i, %dlm_request_join.exit.thread390.i.i ], [ %call7.i.i.i223, %dlm_request_join.exit.i.i.if.then39.i.i_crit_edge ]
  %269 = zext i32 %status.1.i389.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %269, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %status.1.i389.i.i, label %do.body56.i.i [
    i32 -512, label %if.then39.i.i.bail.i269.i_crit_edge
    i32 -4, label %if.then39.i.i.bail.i269.i_crit_edge617
    i32 -28, label %if.then39.i.i.bail.i269.i_crit_edge618
    i32 -122, label %if.then39.i.i.bail.i269.i_crit_edge619
  ]

if.then39.i.i.bail.i269.i_crit_edge619:           ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

if.then39.i.i.bail.i269.i_crit_edge618:           ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

if.then39.i.i.bail.i269.i_crit_edge617:           ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

if.then39.i.i.bail.i269.i_crit_edge:              ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

do.body56.i.i:                                    ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57.i.i) #14
  %270 = ptrtoint ptr %_m57.i.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 1152921504606847168, ptr %_m57.i.i, align 8
  %conv61.i.i = sext i32 %status.1.i389.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1624, ptr noundef nonnull @.str.11, i64 noundef %conv61.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57.i.i) #14
  br label %bail.i269.i

if.end67.i.i:                                     ; preds = %dlm_request_join.exit.i.i
  %271 = zext i8 %packet.sroa.0.0.extract.trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %271, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %packet.sroa.0.0.extract.trunc.i.i.i, label %if.end67.i.i.if.end2.i.i.i_crit_edge [
    i8 1, label %if.then70.i.i
    i8 0, label %do.body.i.i.i
  ]

if.end67.i.i.if.end2.i.i.i_crit_edge:             ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2.i.i.i

if.then70.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef %call27.i.i, ptr noundef %yes_resp_map.i.i) #14
  br label %if.end2.i.i.i

do.body.i.i.i:                                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i312.i.i) #14
  %272 = ptrtoint ptr %_m.i312.i.i to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 192, ptr %_m.i312.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i312.i.i, ptr noundef nonnull @__func__.dlm_should_restart_join, i32 noundef 1572, ptr noundef nonnull @.str.77) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i312.i.i) #14
  br label %bail.i269.i

if.end2.i.i.i:                                    ; preds = %if.then70.i.i, %if.end67.i.i.if.end2.i.i.i_crit_edge, %if.end67.thread.i.i
  %status.0.i399403411.i.i = phi i32 [ %call7.i.i.i223, %if.then70.i.i ], [ 0, %if.end67.thread.i.i ], [ %call7.i.i.i223, %if.end67.i.i.if.end2.i.i.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %spinlock.i.i) #14
  %bcmp.i.i224 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %call7.i.i.i.i, ptr noundef dereferenceable(32) %live_nodes_map.i.i, i32 32) #20
  call void @_raw_spin_unlock(ptr noundef %spinlock.i.i) #14
  %tobool5.not.i.i.i = icmp eq i32 %bcmp.i.i224, 0
  br i1 %tobool5.not.i.i.i, label %if.end2.i.i.i.while.cond.outer.i.i_crit_edge, label %do.body7.i.i.i

if.end2.i.i.i.while.cond.outer.i.i_crit_edge:     ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.outer.i.i

do.body7.i.i.i:                                   ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m8.i.i.i) #14
  %273 = ptrtoint ptr %_m8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 192, ptr %_m8.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m8.i.i.i, ptr noundef nonnull @__func__.dlm_should_restart_join, i32 noundef 1584, ptr noundef nonnull @.str.78) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m8.i.i.i) #14
  br label %bail.i269.i

do.body77.i.i:                                    ; preds = %while.cond.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m78.i.i) #14
  %274 = ptrtoint ptr %_m78.i.i to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 192, ptr %_m78.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m78.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1639, ptr noundef nonnull @.str.68) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m78.i.i) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i.i) #14
  %275 = call ptr @memcpy(ptr %domain_map.i.i, ptr %yes_resp_map.i.i, i32 32)
  %276 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %node_num.i.i, align 8
  %conv90.i.i = zext i8 %277 to i32
  call void @_set_bit(i32 noundef %conv90.i.i, ptr noundef %domain_map.i.i) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i.i) #14
  %278 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %dlm_locking_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %279)
  %cmp95.i.i = icmp ugt i8 %279, 1
  br i1 %cmp95.i.i, label %do.body77.i.i.if.then101.i.i_crit_edge, label %lor.lhs.false.i.i

do.body77.i.i.if.then101.i.i_crit_edge:           ; preds = %do.body77.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101.i.i

lor.lhs.false.i.i:                                ; preds = %do.body77.i.i
  %280 = ptrtoint ptr %pv_minor48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %pv_minor48.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %cmp99.not.i.i = icmp eq i8 %281, 0
  br i1 %cmp99.not.i.i, label %lor.lhs.false.i.i.if.end168.i.i_crit_edge, label %lor.lhs.false.i.i.if.then101.i.i_crit_edge

lor.lhs.false.i.i.if.then101.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101.i.i

lor.lhs.false.i.i.if.end168.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i.i

if.then101.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then101.i.i_crit_edge, %do.body77.i.i.if.then101.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i.i) #14
  %282 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 -1, ptr %status.i.i.i, align 4, !annotation !338
  %call.i319.i.i = call i32 @_find_first_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i319.i.i)
  %cmp.i320.i.i = icmp sgt i32 %call.i319.i.i, 254
  br i1 %cmp.i320.i.i, label %if.then101.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.then101.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge: ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_nodeinfo.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.then101.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %283 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %283, i32 noundef 3520, i32 noundef 2108) #21
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dlm_send_nodeinfo.exit.thread418.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

dlm_send_nodeinfo.exit.thread418.i.i:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i317.i.i) #14
  %284 = ptrtoint ptr %_m.i317.i.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 1152921504606847168, ptr %_m.i317.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i317.i.i, ptr noundef nonnull @__func__.dlm_send_nodeinfo, i32 noundef 1226, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i317.i.i) #14
  call void @kfree(ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #14
  br label %do.body123.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %i.0129.i.i.i = phi i32 [ %inc41.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %count.0128.i.i.i = phi i32 [ %count.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %conv19.i.i.i = trunc i32 %i.0129.i.i.i to i8
  %call20.i.i.i = call ptr @o2nm_get_node_by_num(i8 noundef zeroext %conv19.i.i.i) #14
  %tobool21.not.i.i.i = icmp eq ptr %call20.i.i.i, null
  br i1 %tobool21.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end23.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end23.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %nd_num.i.i.i = getelementptr inbounds %struct.o2nm_node, ptr %call20.i.i.i, i32 0, i32 3
  %285 = ptrtoint ptr %nd_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %nd_num.i.i.i, align 1
  %arrayidx.i.i.i = getelementptr %struct.dlm_query_nodeinfo, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 %count.0128.i.i.i
  %287 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %286, ptr %arrayidx.i.i.i, align 4
  %nd_ipv4_port.i.i.i = getelementptr inbounds %struct.o2nm_node, ptr %call20.i.i.i, i32 0, i32 5
  %288 = ptrtoint ptr %nd_ipv4_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %nd_ipv4_port.i.i.i, align 4
  %ni_ipv4_port.i.i.i = getelementptr %struct.dlm_query_nodeinfo, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 %count.0128.i.i.i, i32 2
  %290 = ptrtoint ptr %ni_ipv4_port.i.i.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %289, ptr %ni_ipv4_port.i.i.i, align 2
  %nd_ipv4_address.i.i.i = getelementptr inbounds %struct.o2nm_node, ptr %call20.i.i.i, i32 0, i32 4
  %291 = ptrtoint ptr %nd_ipv4_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %nd_ipv4_address.i.i.i, align 4
  %ni_ipv4_address.i.i.i = getelementptr %struct.dlm_query_nodeinfo, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 %count.0128.i.i.i, i32 3
  %293 = ptrtoint ptr %ni_ipv4_address.i.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %ni_ipv4_address.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29.i318.i.i) #14
  %294 = ptrtoint ptr %_m29.i318.i.i to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 192, ptr %_m29.i318.i.i, align 8
  %295 = ptrtoint ptr %nd_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %nd_num.i.i.i, align 1
  %conv34.i322.i.i = zext i8 %296 to i32
  %297 = ptrtoint ptr %nd_ipv4_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %nd_ipv4_port.i.i.i, align 4
  %conv37.i.i.i = zext i16 %298 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29.i318.i.i, ptr noundef nonnull @__func__.dlm_send_nodeinfo, i32 noundef 1238, ptr noundef nonnull @.str.79, i32 noundef %conv34.i322.i.i, ptr noundef %nd_ipv4_address.i.i.i, i32 noundef %conv37.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29.i318.i.i) #14
  %inc.i.i.i = add i32 %count.0128.i.i.i, 1
  call void @o2nm_node_put(ptr noundef nonnull %call20.i.i.i) #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end23.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %count.1.i.i.i = phi i32 [ %inc.i.i.i, %if.end23.i.i.i ], [ %count.0128.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc41.i.i.i = add nuw nsw i32 %i.0129.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc41.i.i.i, 255
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %299 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %node_num.i.i, align 8
  %301 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %300, ptr %call7.i.i.i.i.i, align 8
  %conv42.i324.i.i = trunc i32 %count.1.i.i.i to i8
  %qn_numnodes.i.i.i = getelementptr inbounds %struct.dlm_query_nodeinfo, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %302 = ptrtoint ptr %qn_numnodes.i.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %conv42.i324.i.i, ptr %qn_numnodes.i.i.i, align 1
  %303 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %name.i216, align 4
  %call43.i.i.i = call i32 @strlen(ptr noundef %304) #20
  %conv44.i.i.i = trunc i32 %call43.i.i.i to i8
  %qn_namelen.i.i.i = getelementptr inbounds %struct.dlm_query_nodeinfo, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %305 = ptrtoint ptr %qn_namelen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv44.i.i.i, ptr %qn_namelen.i.i.i, align 2
  %qn_domain.i.i.i = getelementptr inbounds %struct.dlm_query_nodeinfo, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %conv47.i.i.i = and i32 %call43.i.i.i, 255
  %306 = call ptr @memcpy(ptr %qn_domain.i.i.i, ptr %304, i32 %conv47.i.i.i)
  %call48130.i.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call48130.i.i.i)
  %cmp49131.i.i.i = icmp slt i32 %call48130.i.i.i, 255
  br i1 %cmp49131.i.i.i, label %for.end.i.i.i.while.body.i.i.i_crit_edge, label %for.end.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge

for.end.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_nodeinfo.exit.thread.i.i

for.end.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge, %for.end.i.i.i.while.body.i.i.i_crit_edge
  %call48132.i.i.i = phi i32 [ %call48.i.i.i, %while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge ], [ %call48130.i.i.i, %for.end.i.i.i.while.body.i.i.i_crit_edge ]
  %307 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %node_num.i.i, align 8
  %conv52.i.i.i = zext i8 %308 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call48132.i.i.i, i32 %conv52.i.i.i)
  %cmp53.i.i.i = icmp eq i32 %call48132.i.i.i, %conv52.i.i.i
  br i1 %cmp53.i.i.i, label %while.body.i.i.i.while.cond.backedge.i.i.i_crit_edge, label %do.body57.i.i.i

while.body.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i.i.i

while.cond.backedge.i.i.i:                        ; preds = %if.end70.i.i.i.while.cond.backedge.i.i.i_crit_edge, %while.body.i.i.i.while.cond.backedge.i.i.i_crit_edge
  %add.i.i.i = add nsw i32 %call48132.i.i.i, 1
  %call48.i.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255, i32 noundef %add.i.i.i) #14
  %cmp49.i.i.i = icmp slt i32 %call48.i.i.i, 255
  br i1 %cmp49.i.i.i, label %while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge, label %while.cond.backedge.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge

while.cond.backedge.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_nodeinfo.exit.thread.i.i

while.cond.backedge.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

do.body57.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m58.i.i.i) #14
  %309 = ptrtoint ptr %_m58.i.i.i to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 192, ptr %_m58.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m58.i.i.i, ptr noundef nonnull @__func__.dlm_send_nodeinfo, i32 noundef 1254, ptr noundef nonnull @.str.80, i32 noundef %call48132.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m58.i.i.i) #14
  %conv65.i.i.i = trunc i32 %call48132.i.i.i to i8
  %call66.i.i.i = call i32 @o2net_send_message(i32 noundef 520, i32 noundef 1718378866, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 2108, i8 noundef zeroext %conv65.i.i.i, ptr noundef nonnull %status.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call66.i.i.i)
  %cmp67.i.i.i = icmp sgt i32 %call66.i.i.i, -1
  br i1 %cmp67.i.i.i, label %if.end70.i.i.i, label %do.body57.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge

do.body57.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge: ; preds = %do.body57.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_nodeinfo.exit.i.i

if.end70.i.i.i:                                   ; preds = %do.body57.i.i.i
  %310 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool71.not.i.i.i = icmp eq i32 %311, 0
  br i1 %tobool71.not.i.i.i, label %if.end70.i.i.i.while.cond.backedge.i.i.i_crit_edge, label %if.end70.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge

if.end70.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge: ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_nodeinfo.exit.i.i

if.end70.i.i.i.while.cond.backedge.i.i.i_crit_edge: ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i.i.i

dlm_send_nodeinfo.exit.thread.i.i:                ; preds = %while.cond.backedge.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge, %for.end.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge, %if.then101.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge
  %qn.0.i.ph.i.i = phi ptr [ %call7.i.i.i.i.i, %for.end.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge ], [ null, %if.then101.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge ], [ %call7.i.i.i.i.i, %while.cond.backedge.i.i.i.dlm_send_nodeinfo.exit.thread.i.i_crit_edge ]
  call void @kfree(ptr noundef %qn.0.i.ph.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i326.i.i) #14
  %312 = ptrtoint ptr %status.i326.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 -1, ptr %status.i326.i.i, align 4, !annotation !338
  %call.i328.i.i = call i32 @_find_first_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i328.i.i)
  %cmp.i329.i.i = icmp sgt i32 %call.i328.i.i, 254
  br i1 %cmp.i329.i.i, label %dlm_send_nodeinfo.exit.thread.i.i.dlm_send_regions.exit.thread.i.i_crit_edge, label %if.end.i332.i.i

dlm_send_nodeinfo.exit.thread.i.i.dlm_send_regions.exit.thread.i.i_crit_edge: ; preds = %dlm_send_nodeinfo.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_regions.exit.thread.i.i

dlm_send_nodeinfo.exit.i.i:                       ; preds = %if.end70.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge, %do.body57.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge
  %ret.1126.i.i.i = phi i32 [ %311, %if.end70.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge ], [ %call66.i.i.i, %do.body57.i.i.i.dlm_send_nodeinfo.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74.i.i.i) #14
  %313 = ptrtoint ptr %_m74.i.i.i to i32
  call void @__asan_store8_noabort(i32 %313)
  store i64 1152921504606847168, ptr %_m74.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74.i.i.i, ptr noundef nonnull @__func__.dlm_send_nodeinfo, i32 noundef 1262, ptr noundef nonnull @.str.81, i32 noundef %ret.1126.i.i.i, i32 noundef %call48132.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74.i.i.i) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #14
  %314 = zext i32 %ret.1126.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %314, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %ret.1126.i.i.i, label %dlm_send_nodeinfo.exit.i.i.do.body123.i.i_crit_edge [
    i32 -122, label %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge
    i32 -512, label %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge620
    i32 -4, label %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge621
    i32 524289, label %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge622
    i32 -28, label %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge623
  ]

dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge623: ; preds = %dlm_send_nodeinfo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge622: ; preds = %dlm_send_nodeinfo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge621: ; preds = %dlm_send_nodeinfo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge620: ; preds = %dlm_send_nodeinfo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge: ; preds = %dlm_send_nodeinfo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_nodeinfo.exit.i.i.do.body123.i.i_crit_edge: ; preds = %dlm_send_nodeinfo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body123.i.i

do.body123.i.i:                                   ; preds = %dlm_send_nodeinfo.exit.i.i.do.body123.i.i_crit_edge, %dlm_send_nodeinfo.exit.thread418.i.i
  %ret.2.i421.i.i = phi i32 [ -12, %dlm_send_nodeinfo.exit.thread418.i.i ], [ %ret.1126.i.i.i, %dlm_send_nodeinfo.exit.i.i.do.body123.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m124.i.i) #14
  %315 = ptrtoint ptr %_m124.i.i to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 1152921504606847168, ptr %_m124.i.i, align 8
  %conv128.i.i = sext i32 %ret.2.i421.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m124.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1656, ptr noundef nonnull @.str.11, i64 noundef %conv128.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m124.i.i) #14
  br label %bail.i269.i

if.end.i332.i.i:                                  ; preds = %dlm_send_nodeinfo.exit.thread.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %316 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i330.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %316, i32 noundef 3520, i32 noundef 1092) #21
  %tobool.not.i331.i.i = icmp eq ptr %call7.i.i.i330.i.i, null
  br i1 %tobool.not.i331.i.i, label %dlm_send_regions.exit.thread424.i.i, label %if.end16.i.i.i

dlm_send_regions.exit.thread424.i.i:              ; preds = %if.end.i332.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i327.i.i) #14
  %317 = ptrtoint ptr %_m.i327.i.i to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 1152921504606847168, ptr %_m.i327.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i327.i.i, ptr noundef nonnull @__func__.dlm_send_regions, i32 noundef 1054, ptr noundef nonnull @.str.11, i64 noundef -12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i327.i.i) #14
  call void @kfree(ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i326.i.i) #14
  br label %do.body156.i.i

if.end16.i.i.i:                                   ; preds = %if.end.i332.i.i
  %318 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %node_num.i.i, align 8
  %320 = ptrtoint ptr %call7.i.i.i330.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %call7.i.i.i330.i.i, align 8
  %321 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %name.i216, align 4
  %call17.i.i.i = call i32 @strlen(ptr noundef %322) #20
  %conv18.i.i.i = trunc i32 %call17.i.i.i to i8
  %qr_namelen.i.i.i = getelementptr inbounds %struct.dlm_query_region, ptr %call7.i.i.i330.i.i, i32 0, i32 2
  %323 = ptrtoint ptr %qr_namelen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %conv18.i.i.i, ptr %qr_namelen.i.i.i, align 2
  %qr_domain.i.i.i = getelementptr inbounds %struct.dlm_query_region, ptr %call7.i.i.i330.i.i, i32 0, i32 4
  %conv21.i.i.i = and i32 %call17.i.i.i, 255
  %324 = call ptr @memcpy(ptr %qr_domain.i.i.i, ptr %322, i32 %conv21.i.i.i)
  %call22.i.i.i = call i32 @o2hb_global_heartbeat_active() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.end16.i.i.i.if.end28.i.i.i_crit_edge, label %if.then24.i.i.i

if.end16.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %qr_regions.i.i.i = getelementptr inbounds %struct.dlm_query_region, ptr %call7.i.i.i330.i.i, i32 0, i32 5
  %call26.i.i.i = call i32 @o2hb_get_all_regions(ptr noundef %qr_regions.i.i.i, i8 noundef zeroext 32) #14
  %conv27.i.i.i = trunc i32 %call26.i.i.i to i8
  %qr_numregions.i.i.i = getelementptr inbounds %struct.dlm_query_region, ptr %call7.i.i.i330.i.i, i32 0, i32 1
  %325 = ptrtoint ptr %qr_numregions.i.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %conv27.i.i.i, ptr %qr_numregions.i.i.i, align 1
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then24.i.i.i, %if.end16.i.i.i.if.end28.i.i.i_crit_edge
  %qr_numregions31.i.i.i = getelementptr inbounds %struct.dlm_query_region, ptr %call7.i.i.i330.i.i, i32 0, i32 1
  %326 = ptrtoint ptr %qr_numregions31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %qr_numregions31.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %cmp33113.not.i.i.i = icmp eq i8 %327, 0
  br i1 %cmp33113.not.i.i.i, label %if.end28.i.i.i.while.cond.preheader.i.i.i_crit_edge, label %do.body35.preheader.i.i.i

if.end28.i.i.i.while.cond.preheader.i.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i.i.i

do.body35.preheader.i.i.i:                        ; preds = %if.end28.i.i.i
  %qr_regions29.i.i.i = getelementptr inbounds %struct.dlm_query_region, ptr %call7.i.i.i330.i.i, i32 0, i32 5
  br label %do.body35.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %do.body35.i.i.i.while.cond.preheader.i.i.i_crit_edge, %if.end28.i.i.i.while.cond.preheader.i.i.i_crit_edge
  %call43116.i.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call43116.i.i.i)
  %cmp44117.i.i.i = icmp slt i32 %call43116.i.i.i, 255
  br i1 %cmp44117.i.i.i, label %while.cond.preheader.i.i.i.while.body.i338.i.i_crit_edge, label %while.cond.preheader.i.i.i.dlm_send_regions.exit.thread.i.i_crit_edge

while.cond.preheader.i.i.i.dlm_send_regions.exit.thread.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_regions.exit.thread.i.i

while.cond.preheader.i.i.i.while.body.i338.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i338.i.i

do.body35.i.i.i:                                  ; preds = %do.body35.i.i.i.do.body35.i.i.i_crit_edge, %do.body35.preheader.i.i.i
  %p.0115.i.i.i = phi ptr [ %add.ptr.i.i.i, %do.body35.i.i.i.do.body35.i.i.i_crit_edge ], [ %qr_regions29.i.i.i, %do.body35.preheader.i.i.i ]
  %i.0114.i.i.i = phi i32 [ %inc.i336.i.i, %do.body35.i.i.i.do.body35.i.i.i_crit_edge ], [ 0, %do.body35.preheader.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36.i.i.i) #14
  %328 = ptrtoint ptr %_m36.i.i.i to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 192, ptr %_m36.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36.i.i.i, ptr noundef nonnull @__func__.dlm_send_regions, i32 noundef 1068, ptr noundef nonnull @.str.82, i32 noundef 32, ptr noundef %p.0115.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36.i.i.i) #14
  %inc.i336.i.i = add nuw nsw i32 %i.0114.i.i.i, 1
  %add.ptr.i.i.i = getelementptr i8, ptr %p.0115.i.i.i, i32 32
  %329 = ptrtoint ptr %qr_numregions31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %qr_numregions31.i.i.i, align 1
  %conv32.i.i.i = zext i8 %330 to i32
  %cmp33.i.i.i = icmp ult i32 %inc.i336.i.i, %conv32.i.i.i
  br i1 %cmp33.i.i.i, label %do.body35.i.i.i.do.body35.i.i.i_crit_edge, label %do.body35.i.i.i.while.cond.preheader.i.i.i_crit_edge

do.body35.i.i.i.while.cond.preheader.i.i.i_crit_edge: ; preds = %do.body35.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i.i.i

do.body35.i.i.i.do.body35.i.i.i_crit_edge:        ; preds = %do.body35.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i

while.body.i338.i.i:                              ; preds = %while.cond.backedge.i341.i.i.while.body.i338.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i338.i.i_crit_edge
  %call43118.i.i.i = phi i32 [ %call43.i340.i.i, %while.cond.backedge.i341.i.i.while.body.i338.i.i_crit_edge ], [ %call43116.i.i.i, %while.cond.preheader.i.i.i.while.body.i338.i.i_crit_edge ]
  %331 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %node_num.i.i, align 8
  %conv47.i337.i.i = zext i8 %332 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call43118.i.i.i, i32 %conv47.i337.i.i)
  %cmp48.i.i.i = icmp eq i32 %call43118.i.i.i, %conv47.i337.i.i
  br i1 %cmp48.i.i.i, label %while.body.i338.i.i.while.cond.backedge.i341.i.i_crit_edge, label %do.body52.i.i.i

while.body.i338.i.i.while.cond.backedge.i341.i.i_crit_edge: ; preds = %while.body.i338.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i341.i.i

while.cond.backedge.i341.i.i:                     ; preds = %if.end65.i.i.i.while.cond.backedge.i341.i.i_crit_edge, %while.body.i338.i.i.while.cond.backedge.i341.i.i_crit_edge
  %add.i339.i.i = add nsw i32 %call43118.i.i.i, 1
  %call43.i340.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255, i32 noundef %add.i339.i.i) #14
  %cmp44.i.i.i = icmp slt i32 %call43.i340.i.i, 255
  br i1 %cmp44.i.i.i, label %while.cond.backedge.i341.i.i.while.body.i338.i.i_crit_edge, label %while.cond.backedge.i341.i.i.dlm_send_regions.exit.thread.i.i_crit_edge

while.cond.backedge.i341.i.i.dlm_send_regions.exit.thread.i.i_crit_edge: ; preds = %while.cond.backedge.i341.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_regions.exit.thread.i.i

while.cond.backedge.i341.i.i.while.body.i338.i.i_crit_edge: ; preds = %while.cond.backedge.i341.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i338.i.i

do.body52.i.i.i:                                  ; preds = %while.body.i338.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53.i.i.i) #14
  %333 = ptrtoint ptr %_m53.i.i.i to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 192, ptr %_m53.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53.i.i.i, ptr noundef nonnull @__func__.dlm_send_regions, i32 noundef 1076, ptr noundef nonnull @.str.83, i32 noundef %call43118.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53.i.i.i) #14
  %conv60.i.i.i = trunc i32 %call43118.i.i.i to i8
  %call61.i.i.i = call i32 @o2net_send_message(i32 noundef 519, i32 noundef 1718378866, ptr noundef nonnull %call7.i.i.i330.i.i, i32 noundef 1092, i8 noundef zeroext %conv60.i.i.i, ptr noundef nonnull %status.i326.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call61.i.i.i)
  %cmp62.i.i.i = icmp sgt i32 %call61.i.i.i, -1
  br i1 %cmp62.i.i.i, label %if.end65.i.i.i, label %do.body52.i.i.i.dlm_send_regions.exit.i.i_crit_edge

do.body52.i.i.i.dlm_send_regions.exit.i.i_crit_edge: ; preds = %do.body52.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_regions.exit.i.i

if.end65.i.i.i:                                   ; preds = %do.body52.i.i.i
  %334 = ptrtoint ptr %status.i326.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %status.i326.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool66.not.i.i.i = icmp eq i32 %335, 0
  br i1 %tobool66.not.i.i.i, label %if.end65.i.i.i.while.cond.backedge.i341.i.i_crit_edge, label %if.end65.i.i.i.dlm_send_regions.exit.i.i_crit_edge

if.end65.i.i.i.dlm_send_regions.exit.i.i_crit_edge: ; preds = %if.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_regions.exit.i.i

if.end65.i.i.i.while.cond.backedge.i341.i.i_crit_edge: ; preds = %if.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i341.i.i

dlm_send_regions.exit.thread.i.i:                 ; preds = %while.cond.backedge.i341.i.i.dlm_send_regions.exit.thread.i.i_crit_edge, %while.cond.preheader.i.i.i.dlm_send_regions.exit.thread.i.i_crit_edge, %dlm_send_nodeinfo.exit.thread.i.i.dlm_send_regions.exit.thread.i.i_crit_edge
  %qr.0.i.ph.i.i = phi ptr [ %call7.i.i.i330.i.i, %while.cond.preheader.i.i.i.dlm_send_regions.exit.thread.i.i_crit_edge ], [ null, %dlm_send_nodeinfo.exit.thread.i.i.dlm_send_regions.exit.thread.i.i_crit_edge ], [ %call7.i.i.i330.i.i, %while.cond.backedge.i341.i.i.dlm_send_regions.exit.thread.i.i_crit_edge ]
  call void @kfree(ptr noundef %qr.0.i.ph.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i326.i.i) #14
  br label %if.end168.i.i

dlm_send_regions.exit.i.i:                        ; preds = %if.end65.i.i.i.dlm_send_regions.exit.i.i_crit_edge, %do.body52.i.i.i.dlm_send_regions.exit.i.i_crit_edge
  %ret.1110.i.i.i = phi i32 [ %335, %if.end65.i.i.i.dlm_send_regions.exit.i.i_crit_edge ], [ %call61.i.i.i, %do.body52.i.i.i.dlm_send_regions.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i.i.i) #14
  %336 = ptrtoint ptr %_m69.i.i.i to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 1152921504606847168, ptr %_m69.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i.i.i, ptr noundef nonnull @__func__.dlm_send_regions, i32 noundef 1085, ptr noundef nonnull @.str.84, i32 noundef %ret.1110.i.i.i, i32 noundef %call43118.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i.i.i) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i330.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i326.i.i) #14
  %337 = zext i32 %ret.1110.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %337, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %ret.1110.i.i.i, label %dlm_send_regions.exit.i.i.do.body156.i.i_crit_edge [
    i32 -122, label %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge
    i32 -512, label %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge624
    i32 -4, label %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge625
    i32 524289, label %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge626
    i32 -28, label %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge627
  ]

dlm_send_regions.exit.i.i.bail.i269.i_crit_edge627: ; preds = %dlm_send_regions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_regions.exit.i.i.bail.i269.i_crit_edge626: ; preds = %dlm_send_regions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_regions.exit.i.i.bail.i269.i_crit_edge625: ; preds = %dlm_send_regions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_regions.exit.i.i.bail.i269.i_crit_edge624: ; preds = %dlm_send_regions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_regions.exit.i.i.bail.i269.i_crit_edge:  ; preds = %dlm_send_regions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i269.i

dlm_send_regions.exit.i.i.do.body156.i.i_crit_edge: ; preds = %dlm_send_regions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body156.i.i

do.body156.i.i:                                   ; preds = %dlm_send_regions.exit.i.i.do.body156.i.i_crit_edge, %dlm_send_regions.exit.thread424.i.i
  %ret.2.i342427.i.i = phi i32 [ -12, %dlm_send_regions.exit.thread424.i.i ], [ %ret.1110.i.i.i, %dlm_send_regions.exit.i.i.do.body156.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m157.i.i) #14
  %338 = ptrtoint ptr %_m157.i.i to i32
  call void @__asan_store8_noabort(i32 %338)
  store i64 1152921504606847168, ptr %_m157.i.i, align 8
  %conv161.i.i = sext i32 %ret.2.i342427.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m157.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1661, ptr noundef nonnull @.str.11, i64 noundef %conv161.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m157.i.i) #14
  br label %bail.i269.i

if.end168.i.i:                                    ; preds = %dlm_send_regions.exit.thread.i.i, %lor.lhs.false.i.i.if.end168.i.i_crit_edge
  %status.1.i.i = phi i32 [ %status.0.ph.i.i, %lor.lhs.false.i.i.if.end168.i.i_crit_edge ], [ 0, %dlm_send_regions.exit.thread.i.i ]
  %call31.i.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call31.i.i.i)
  %cmp32.i.i.i = icmp slt i32 %call31.i.i.i, 255
  br i1 %cmp32.i.i.i, label %if.end168.i.i.while.body.i348.i.i_crit_edge, label %if.end168.i.i.dlm_send_join_asserts.exit.i.i_crit_edge

if.end168.i.i.dlm_send_join_asserts.exit.i.i_crit_edge: ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_asserts.exit.i.i

if.end168.i.i.while.body.i348.i.i_crit_edge:      ; preds = %if.end168.i.i
  br label %while.body.i348.i.i

while.body.i348.i.i:                              ; preds = %while.cond.backedge.i356.i.i.while.body.i348.i.i_crit_edge, %if.end168.i.i.while.body.i348.i.i_crit_edge
  %call33.i.i.i = phi i32 [ %call.i354.i.i, %while.cond.backedge.i356.i.i.while.body.i348.i.i_crit_edge ], [ %call31.i.i.i, %if.end168.i.i.while.body.i348.i.i_crit_edge ]
  %339 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %node_num.i.i, align 8
  %conv.i347.i.i = zext i8 %340 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call33.i.i.i, i32 %conv.i347.i.i)
  %cmp1.i.i.i = icmp eq i32 %call33.i.i.i, %conv.i347.i.i
  br i1 %cmp1.i.i.i, label %while.body.i348.i.i.while.cond.backedge.i356.i.i_crit_edge, label %do.body.preheader.i.i.i

while.body.i348.i.i.while.cond.backedge.i356.i.i_crit_edge: ; preds = %while.body.i348.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i356.i.i

do.body.preheader.i.i.i:                          ; preds = %while.body.i348.i.i
  %and.i.i.i.i = and i32 %call33.i.i.i, 31
  %conv4.i.i.i.i = trunc i32 %call33.i.i.i to i8
  %div3.i.i.i.i = lshr i32 %call33.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %live_nodes_map.i.i, i32 %div3.i.i.i.i
  %341 = shl nuw i32 1, %and.i.i.i.i
  br label %do.body.i350.i.i

do.body.i350.i.i:                                 ; preds = %if.then12.i.i.i, %do.body.preheader.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i.i) #14
  %342 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 -1, ptr %ret.i.i.i.i, align 4, !annotation !338
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %assert_msg.i.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i.i) #14
  %343 = ptrtoint ptr %_m.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %343)
  store i64 192, ptr %_m.i.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i.i, ptr noundef nonnull @__func__.dlm_send_one_join_assert, i32 noundef 1506, ptr noundef nonnull @.str.86, i32 noundef %call33.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i.i) #14
  %344 = call ptr @memset(ptr %206, i32 0, i32 67)
  %345 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %node_num.i.i, align 8
  %347 = ptrtoint ptr %assert_msg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %assert_msg.i.i.i.i, align 1
  %348 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %name.i216, align 4
  %call.i.i.i.i = call i32 @strlen(ptr noundef %349) #20
  %conv.i.i349.i.i = trunc i32 %call.i.i.i.i to i8
  %350 = ptrtoint ptr %name_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %conv.i.i349.i.i, ptr %name_len.i.i.i.i, align 1
  %conv3.i.i.i.i = and i32 %call.i.i.i.i, 255
  %351 = call ptr @memcpy(ptr %domain.i.i.i.i, ptr %349, i32 %conv3.i.i.i.i)
  %call5.i.i.i.i = call i32 @o2net_send_message(i32 noundef 511, i32 noundef 1718378866, ptr noundef nonnull %assert_msg.i.i.i.i, i32 noundef 68, i8 noundef zeroext %conv4.i.i.i.i, ptr noundef nonnull %ret.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call5.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.body8.i.i.i.i, label %if.else.i.i.i.i

do.body8.i.i.i.i:                                 ; preds = %do.body.i350.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m9.i.i.i.i) #14
  %352 = ptrtoint ptr %_m9.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %352)
  store i64 1152921504606847168, ptr %_m9.i.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m9.i.i.i.i, ptr noundef nonnull @__func__.dlm_send_one_join_assert, i32 noundef 1519, ptr noundef nonnull @.str.72, i32 noundef %call5.i.i.i.i, i32 noundef 511, i32 noundef 1718378866, i32 noundef %call33.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m9.i.i.i.i) #14
  br label %dlm_send_one_join_assert.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.body.i350.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %353 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %ret.i.i.i.i, align 4
  br label %dlm_send_one_join_assert.exit.i.i.i

dlm_send_one_join_assert.exit.i.i.i:              ; preds = %if.else.i.i.i.i, %do.body8.i.i.i.i
  %status.0.i.i.i.i = phi i32 [ %call5.i.i.i.i, %do.body8.i.i.i.i ], [ %354, %if.else.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %assert_msg.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i.i) #14
  call void @_raw_spin_lock(ptr noundef %spinlock.i.i) #14
  %355 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i.i.i)
  %tobool.not.i351.i.i = icmp eq i32 %status.0.i.i.i.i, 0
  br i1 %tobool.not.i351.i.i, label %dlm_send_one_join_assert.exit.i.i.i.while.cond.backedge.i356.i.i_crit_edge, label %do.body7.i352.i.i

dlm_send_one_join_assert.exit.i.i.i.while.cond.backedge.i356.i.i_crit_edge: ; preds = %dlm_send_one_join_assert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i356.i.i

do.body7.i352.i.i:                                ; preds = %dlm_send_one_join_assert.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i343.i.i) #14
  %357 = ptrtoint ptr %_m.i343.i.i to i32
  call void @__asan_store8_noabort(i32 %357)
  store i64 1152921504606847168, ptr %_m.i343.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i343.i.i, ptr noundef nonnull @__func__.dlm_send_join_asserts, i32 noundef 1550, ptr noundef nonnull @.str.85, i32 noundef %status.0.i.i.i.i, i32 noundef %call33.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i343.i.i) #14
  %358 = and i32 %356, %341
  %cond.i.i.i = icmp eq i32 %358, 0
  br i1 %cond.i.i.i, label %do.body7.i352.i.i.while.cond.backedge.i356.i.i_crit_edge, label %if.then12.i.i.i

do.body7.i352.i.i.while.cond.backedge.i356.i.i_crit_edge: ; preds = %do.body7.i352.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i356.i.i

if.then12.i.i.i:                                  ; preds = %do.body7.i352.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @msleep(i32 noundef 200) #14
  br label %do.body.i350.i.i

while.cond.backedge.i356.i.i:                     ; preds = %do.body7.i352.i.i.while.cond.backedge.i356.i.i_crit_edge, %dlm_send_one_join_assert.exit.i.i.i.while.cond.backedge.i356.i.i_crit_edge, %while.body.i348.i.i.while.cond.backedge.i356.i.i_crit_edge
  %add.i353.i.i = add i32 %call33.i.i.i, 1
  %call.i354.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map.i.i, i32 noundef 255, i32 noundef %add.i353.i.i) #14
  %cmp.i355.i.i = icmp slt i32 %call.i354.i.i, 255
  br i1 %cmp.i355.i.i, label %while.cond.backedge.i356.i.i.while.body.i348.i.i_crit_edge, label %while.cond.backedge.i356.i.i.dlm_send_join_asserts.exit.i.i_crit_edge

while.cond.backedge.i356.i.i.dlm_send_join_asserts.exit.i.i_crit_edge: ; preds = %while.cond.backedge.i356.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_asserts.exit.i.i

while.cond.backedge.i356.i.i.while.body.i348.i.i_crit_edge: ; preds = %while.cond.backedge.i356.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i348.i.i

dlm_send_join_asserts.exit.i.i:                   ; preds = %while.cond.backedge.i356.i.i.dlm_send_join_asserts.exit.i.i_crit_edge, %if.end168.i.i.dlm_send_join_asserts.exit.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %359 = ptrtoint ptr %dlm_state.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 1, ptr %dlm_state.i.i, align 8
  %360 = ptrtoint ptr %num_joins.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %num_joins.i.i, align 4
  %inc.i.i = add i32 %361, 1
  store i32 %inc.i.i, ptr %num_joins.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %bail.i269.i

bail.i269.i:                                      ; preds = %dlm_send_join_asserts.exit.i.i, %do.body156.i.i, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge624, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge625, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge626, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge627, %do.body123.i.i, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge620, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge621, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge622, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge623, %do.body7.i.i.i, %do.body.i.i.i, %do.body56.i.i, %if.then39.i.i.bail.i269.i_crit_edge, %if.then39.i.i.bail.i269.i_crit_edge617, %if.then39.i.i.bail.i269.i_crit_edge618, %if.then39.i.i.bail.i269.i_crit_edge619, %do.body11.i.i
  %status.2.i.i = phi i32 [ %status.1.i.i, %dlm_send_join_asserts.exit.i.i ], [ -12, %do.body11.i.i ], [ %status.1.i389.i.i, %if.then39.i.i.bail.i269.i_crit_edge ], [ %status.1.i389.i.i, %if.then39.i.i.bail.i269.i_crit_edge617 ], [ %status.1.i389.i.i, %if.then39.i.i.bail.i269.i_crit_edge618 ], [ %status.1.i389.i.i, %if.then39.i.i.bail.i269.i_crit_edge619 ], [ %status.1.i389.i.i, %do.body56.i.i ], [ %ret.1126.i.i.i, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge ], [ %ret.1126.i.i.i, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge620 ], [ %ret.1126.i.i.i, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge621 ], [ %ret.1126.i.i.i, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge622 ], [ %ret.1126.i.i.i, %dlm_send_nodeinfo.exit.i.i.bail.i269.i_crit_edge623 ], [ %ret.2.i421.i.i, %do.body123.i.i ], [ %ret.1110.i.i.i, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge ], [ %ret.1110.i.i.i, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge624 ], [ %ret.1110.i.i.i, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge625 ], [ %ret.1110.i.i.i, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge626 ], [ %ret.1110.i.i.i, %dlm_send_regions.exit.i.i.bail.i269.i_crit_edge627 ], [ %ret.2.i342427.i.i, %do.body156.i.i ], [ -11, %do.body.i.i.i ], [ -11, %do.body7.i.i.i ]
  call void @_raw_spin_lock(ptr noundef %spinlock.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i357.i.i)
  %362 = ptrtoint ptr %spinlock.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %agg.tmp.sroa.0.0.copyload.i.i359.i.i = load volatile i32, ptr %spinlock.i.i, align 8
  %363 = ptrtoint ptr %agg.tmp.sroa.0.i.i357.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i359.i.i, ptr %agg.tmp.sroa.0.i.i357.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i360.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i359.i.i, 16
  %conv.i.i.i361.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i359.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i361.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i360.i.i)
  %cmp.i.i.not.i362.i.i = icmp eq i32 %conv.i.i.i361.i.i, %lock.sroa.0.0.extract.shift.i.i.i360.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i357.i.i)
  br i1 %cmp.i.i.not.i362.i.i, label %do.body4.i363.i.i, label %__dlm_set_joining_node.exit366.i.i, !prof !322

do.body4.i363.i.i:                                ; preds = %bail.i269.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #14, !srcloc !337
  unreachable

__dlm_set_joining_node.exit366.i.i:               ; preds = %bail.i269.i
  %364 = ptrtoint ptr %joining_node.i.i.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 -1, ptr %joining_node.i.i.i, align 8
  call void @__wake_up(ptr noundef %dlm_join_events.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i)
  %tobool172.not.i.i = icmp eq i32 %status.2.i.i, 0
  br i1 %tobool172.not.i.i, label %if.end179.thread.i.i, label %if.end179.i.i

if.end179.i.i:                                    ; preds = %__dlm_set_joining_node.exit366.i.i
  call void @_raw_spin_unlock(ptr noundef %spinlock.i.i) #14
  br i1 %tobool1.not.i.i, label %if.end179.i.i.dlm_try_to_join_domain.exit.i_crit_edge, label %if.then182.i.i

if.end179.i.i.dlm_try_to_join_domain.exit.i_crit_edge: ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_try_to_join_domain.exit.i

if.end179.thread.i.i:                             ; preds = %__dlm_set_joining_node.exit366.i.i
  %365 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %name.i216, align 4
  %call178.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %366) #19
  call fastcc void @__dlm_print_nodes(ptr noundef %new_ctxt.0.ph493) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i.i) #14
  br i1 %tobool1.not.i.i, label %do.end171.thread285.i, label %if.end179.thread.i.i.if.end220.i.i_crit_edge

if.end179.thread.i.i.if.end220.i.i_crit_edge:     ; preds = %if.end179.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

if.then182.i.i:                                   ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i)
  %cmp183.i.i = icmp slt i32 %status.2.i.i, 0
  br i1 %cmp183.i.i, label %if.then185.i.i, label %if.then182.i.i.if.end220.i.i_crit_edge

if.then182.i.i.if.end220.i.i_crit_edge:           ; preds = %if.then182.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

if.then185.i.i:                                   ; preds = %if.then182.i.i
  %yes_resp_map186.i.i = getelementptr inbounds %struct.domain_join_ctxt, ptr %call7.i.i.i.i, i32 0, i32 1
  br label %while.cond.outer.i.i.i.outer

while.cond.outer.i.i.i.outer:                     ; preds = %do.body11.i.i.i, %if.then185.i.i
  %status.0.ph.i.i.i.ph = phi i32 [ %spec.select.i.i.i, %do.body11.i.i.i ], [ 0, %if.then185.i.i ]
  %node.0.ph.i.i.i.ph = phi i32 [ %call.i373.i.i, %do.body11.i.i.i ], [ -1, %if.then185.i.i ]
  br label %while.cond.outer.i.i.i

while.cond.outer.i.i.i:                           ; preds = %dlm_send_one_join_cancel.exit.i.i.i.while.cond.outer.i.i.i_crit_edge, %while.cond.outer.i.i.i.outer
  %node.0.ph.i.i.i = phi i32 [ %call.i373.i.i, %dlm_send_one_join_cancel.exit.i.i.i.while.cond.outer.i.i.i_crit_edge ], [ %node.0.ph.i.i.i.ph, %while.cond.outer.i.i.i.outer ]
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i375.i.i.while.cond.i.i.i_crit_edge, %while.cond.outer.i.i.i
  %node.0.i.i.i = phi i32 [ %call.i373.i.i, %while.body.i375.i.i.while.cond.i.i.i_crit_edge ], [ %node.0.ph.i.i.i, %while.cond.outer.i.i.i ]
  %add.i372.i.i = add nsw i32 %node.0.i.i.i, 1
  %call.i373.i.i = call i32 @_find_next_bit_be(ptr noundef %yes_resp_map186.i.i, i32 noundef 255, i32 noundef %add.i372.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i373.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i373.i.i, 255
  br i1 %cmp3.i.i.i, label %while.body.i375.i.i, label %while.end.i.i.i

while.body.i375.i.i:                              ; preds = %while.cond.i.i.i
  %367 = ptrtoint ptr %node_num.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %node_num.i.i, align 8
  %conv.i374.i.i = zext i8 %368 to i32
  %cmp4.i.i.i = icmp eq i32 %call.i373.i.i, %conv.i374.i.i
  br i1 %cmp4.i.i.i, label %while.body.i375.i.i.while.cond.i.i.i_crit_edge, label %if.end7.i.i.i

while.body.i375.i.i.while.cond.i.i.i_crit_edge:   ; preds = %while.body.i375.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i.i

if.end7.i.i.i:                                    ; preds = %while.body.i375.i.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %cancel_msg.i.i.i.i) #14
  %369 = call ptr @memset(ptr %207, i32 0, i32 67)
  %370 = ptrtoint ptr %cancel_msg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %368, ptr %cancel_msg.i.i.i.i, align 1
  %371 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %name.i216, align 4
  %call.i.i376.i.i = call i32 @strlen(ptr noundef %372) #20
  %conv.i.i377.i.i = trunc i32 %call.i.i376.i.i to i8
  %373 = ptrtoint ptr %name_len.i.i370.i.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %conv.i.i377.i.i, ptr %name_len.i.i370.i.i, align 1
  %conv3.i.i378.i.i = and i32 %call.i.i376.i.i, 255
  %374 = call ptr @memcpy(ptr %domain.i.i371.i.i, ptr %372, i32 %conv3.i.i378.i.i)
  %conv4.i.i379.i.i = trunc i32 %call.i373.i.i to i8
  %call5.i.i380.i.i = call i32 @o2net_send_message(i32 noundef 512, i32 noundef 1718378866, ptr noundef nonnull %cancel_msg.i.i.i.i, i32 noundef 68, i8 noundef zeroext %conv4.i.i379.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i380.i.i)
  %cmp.i.i381.i.i = icmp slt i32 %call5.i.i380.i.i, 0
  br i1 %cmp.i.i381.i.i, label %dlm_send_one_join_cancel.exit.thread.i.i.i, label %dlm_send_one_join_cancel.exit.i.i.i

dlm_send_one_join_cancel.exit.thread.i.i.i:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i367.i.i) #14
  %375 = ptrtoint ptr %_m.i.i367.i.i to i32
  call void @__asan_store8_noabort(i32 %375)
  store i64 1152921504606847168, ptr %_m.i.i367.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i367.i.i, ptr noundef nonnull @__func__.dlm_send_one_join_cancel, i32 noundef 1367, ptr noundef nonnull @.str.72, i32 noundef %call5.i.i380.i.i, i32 noundef 512, i32 noundef 1718378866, i32 noundef %call.i373.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i367.i.i) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cancel_msg.i.i.i.i) #14
  br label %do.body11.i.i.i

dlm_send_one_join_cancel.exit.i.i.i:              ; preds = %if.end7.i.i.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cancel_msg.i.i.i.i) #14
  %tobool9.not.i.i.i = icmp eq i32 %call5.i.i380.i.i, 0
  br i1 %tobool9.not.i.i.i, label %dlm_send_one_join_cancel.exit.i.i.i.while.cond.outer.i.i.i_crit_edge, label %dlm_send_one_join_cancel.exit.i.i.i.do.body11.i.i.i_crit_edge

dlm_send_one_join_cancel.exit.i.i.i.do.body11.i.i.i_crit_edge: ; preds = %dlm_send_one_join_cancel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i.i.i

dlm_send_one_join_cancel.exit.i.i.i.while.cond.outer.i.i.i_crit_edge: ; preds = %dlm_send_one_join_cancel.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.outer.i.i.i

do.body11.i.i.i:                                  ; preds = %dlm_send_one_join_cancel.exit.i.i.i.do.body11.i.i.i_crit_edge, %dlm_send_one_join_cancel.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12.i.i.i) #14
  %376 = ptrtoint ptr %_m12.i.i.i to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 1152921504606847168, ptr %_m12.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12.i.i.i, ptr noundef nonnull @__func__.dlm_send_join_cancels, i32 noundef 1401, ptr noundef nonnull @.str.88, i32 noundef %call5.i.i380.i.i, i32 noundef %call.i373.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.ph.i.i.i.ph)
  %tobool19.not.i.i.i = icmp eq i32 %status.0.ph.i.i.i.ph, 0
  %spec.select.i.i.i = select i1 %tobool19.not.i.i.i, i32 %call5.i.i380.i.i, i32 %status.0.ph.i.i.i.ph
  br label %while.cond.outer.i.i.i.outer

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %377 = zext i32 %status.0.ph.i.i.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %status.0.ph.i.i.i.ph, label %do.body39.i.i.i [
    i32 0, label %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge
    i32 -512, label %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge628
    i32 -4, label %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge629
    i32 524289, label %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge630
    i32 -28, label %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge631
    i32 -122, label %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge632
  ]

while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge632: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_cancels.exit.i.i

while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge631: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_cancels.exit.i.i

while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge630: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_cancels.exit.i.i

while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge629: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_cancels.exit.i.i

while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge628: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_cancels.exit.i.i

while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_send_join_cancels.exit.i.i

do.body39.i.i.i:                                  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i.i.i) #14
  %378 = ptrtoint ptr %_m40.i.i.i to i32
  call void @__asan_store8_noabort(i32 %378)
  store i64 1152921504606847168, ptr %_m40.i.i.i, align 8
  %conv44.i383.i.i = sext i32 %status.0.ph.i.i.i.ph to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i.i.i, ptr noundef nonnull @__func__.dlm_send_join_cancels, i32 noundef 1408, ptr noundef nonnull @.str.11, i64 noundef %conv44.i383.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i.i.i) #14
  br label %dlm_send_join_cancels.exit.i.i

dlm_send_join_cancels.exit.i.i:                   ; preds = %do.body39.i.i.i, %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge, %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge628, %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge629, %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge630, %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge631, %while.end.i.i.i.dlm_send_join_cancels.exit.i.i_crit_edge632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.ph.i.i.i.ph)
  %cmp189.i.i = icmp slt i32 %status.0.ph.i.i.i.ph, 0
  br i1 %cmp189.i.i, label %if.then191.i.i, label %dlm_send_join_cancels.exit.i.i.if.end220.i.i_crit_edge

dlm_send_join_cancels.exit.i.i.if.end220.i.i_crit_edge: ; preds = %dlm_send_join_cancels.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

if.then191.i.i:                                   ; preds = %dlm_send_join_cancels.exit.i.i
  %379 = zext i32 %status.0.ph.i.i.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %379, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %status.0.ph.i.i.i.ph, label %do.body208.i.i [
    i32 -512, label %if.then191.i.i.if.end220.i.i_crit_edge
    i32 -4, label %if.then191.i.i.if.end220.i.i_crit_edge633
    i32 -28, label %if.then191.i.i.if.end220.i.i_crit_edge634
    i32 -122, label %if.then191.i.i.if.end220.i.i_crit_edge635
  ]

if.then191.i.i.if.end220.i.i_crit_edge635:        ; preds = %if.then191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

if.then191.i.i.if.end220.i.i_crit_edge634:        ; preds = %if.then191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

if.then191.i.i.if.end220.i.i_crit_edge633:        ; preds = %if.then191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

if.then191.i.i.if.end220.i.i_crit_edge:           ; preds = %if.then191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.i

do.body208.i.i:                                   ; preds = %if.then191.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m209.i.i) #14
  %380 = ptrtoint ptr %_m209.i.i to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 1152921504606847168, ptr %_m209.i.i, align 8
  %conv213.i.i = sext i32 %status.0.ph.i.i.i.ph to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m209.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1693, ptr noundef nonnull @.str.11, i64 noundef %conv213.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m209.i.i) #14
  br label %if.end220.i.i

if.end220.i.i:                                    ; preds = %do.body208.i.i, %if.then191.i.i.if.end220.i.i_crit_edge, %if.then191.i.i.if.end220.i.i_crit_edge633, %if.then191.i.i.if.end220.i.i_crit_edge634, %if.then191.i.i.if.end220.i.i_crit_edge635, %dlm_send_join_cancels.exit.i.i.if.end220.i.i_crit_edge, %if.then182.i.i.if.end220.i.i_crit_edge, %if.end179.thread.i.i.if.end220.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %dlm_try_to_join_domain.exit.i

dlm_try_to_join_domain.exit.i:                    ; preds = %if.end220.i.i, %if.end179.i.i.dlm_try_to_join_domain.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m223.i.i) #14
  %381 = ptrtoint ptr %_m223.i.i to i32
  call void @__asan_store8_noabort(i32 %381)
  store i64 192, ptr %_m223.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m223.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1698, ptr noundef nonnull @.str.70, i32 noundef %status.2.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m223.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %status.2.i.i)
  %cmp137.i = icmp eq i32 %status.2.i.i, -11
  br i1 %cmp137.i, label %if.then139.i, label %do.end171.i

if.then139.i:                                     ; preds = %dlm_try_to_join_domain.exit.i
  %382 = call i32 @llvm.read_register.i32(metadata !312) #14
  %and.i.i = and i32 %382, -16384
  %383 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %383, i32 0, i32 2
  %384 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %385, i32 0, i32 1
  %386 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %stack.i.i.i, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load volatile i32, ptr %387, align 4
  %390 = and i32 %389, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %390)
  %tobool.not.i.i225 = icmp eq i32 %390, 0
  br i1 %tobool.not.i.i225, label %signal_pending.exit.i, label %if.then139.i.bail.thread.i_crit_edge, !prof !325

if.then139.i.bail.thread.i_crit_edge:             ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

signal_pending.exit.i:                            ; preds = %if.then139.i
  %391 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load volatile i32, ptr %387, align 4
  %and1.i.i.i.i.i.i = and i32 %392, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool142.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool142.not.i, label %if.end144.i, label %signal_pending.exit.i.bail.thread.i_crit_edge

signal_pending.exit.i.bail.thread.i_crit_edge:    ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.end144.i:                                      ; preds = %signal_pending.exit.i
  %cmp145.i = icmp ugt i32 %total_backoff.0.i, 90000
  br i1 %cmp145.i, label %if.then147.i, label %if.end157.i

if.then147.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149.i) #14
  %393 = ptrtoint ptr %_m149.i to i32
  call void @__asan_store8_noabort(i32 %393)
  store i64 2305843009213694144, ptr %_m149.i, align 8
  %394 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %name.i216, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1908, ptr noundef nonnull @.str.53, ptr noundef %395, i32 noundef %total_backoff.0.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149.i) #14
  br label %bail.thread.i

if.end157.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %396 = load volatile i32, ptr @jiffies, align 128
  %and158.i = and i32 %396, 3
  %mul.i = mul nuw nsw i32 %and158.i, 200
  %add.i = add nuw nsw i32 %mul.i, %total_backoff.0.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m160.i) #14
  %397 = ptrtoint ptr %_m160.i to i32
  call void @__asan_store8_noabort(i32 %397)
  store i64 192, ptr %_m160.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m160.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1922, ptr noundef nonnull @.str.54, i32 noundef %mul.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m160.i) #14
  call void @msleep(i32 noundef %mul.i) #14
  br label %do.body135.i

do.end171.thread285.i:                            ; preds = %if.end179.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m223.i.i) #14
  %398 = ptrtoint ptr %_m223.i.i to i32
  call void @__asan_store8_noabort(i32 %398)
  store i64 192, ptr %_m223.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m223.i.i, ptr noundef nonnull @__func__.dlm_try_to_join_domain, i32 noundef 1698, ptr noundef nonnull @.str.70, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m223.i.i) #14
  br label %bail.thread292.i

do.end171.i:                                      ; preds = %dlm_try_to_join_domain.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i)
  %cmp172.i = icmp slt i32 %status.2.i.i, 0
  br i1 %cmp172.i, label %if.then174.i, label %do.end171.i.bail.thread292.i_crit_edge

do.end171.i.bail.thread292.i_crit_edge:           ; preds = %do.end171.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread292.i

if.then174.i:                                     ; preds = %do.end171.i
  %399 = zext i32 %status.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %399, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %status.2.i.i, label %do.body191.i [
    i32 -512, label %if.then174.i.bail.thread.i_crit_edge
    i32 -4, label %if.then174.i.bail.thread.i_crit_edge636
    i32 -28, label %if.then174.i.bail.thread.i_crit_edge637
    i32 -122, label %if.then174.i.bail.thread.i_crit_edge638
  ]

if.then174.i.bail.thread.i_crit_edge638:          ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then174.i.bail.thread.i_crit_edge637:          ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then174.i.bail.thread.i_crit_edge636:          ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

if.then174.i.bail.thread.i_crit_edge:             ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread.i

do.body191.i:                                     ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m192.i) #14
  %400 = ptrtoint ptr %_m192.i to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 1152921504606847168, ptr %_m192.i, align 8
  %conv196.i = sext i32 %status.2.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m192.i, ptr noundef nonnull @__func__.dlm_join_domain, i32 noundef 1928, ptr noundef nonnull @.str.11, i64 noundef %conv196.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m192.i) #14
  br label %bail.thread.i

bail.thread.i:                                    ; preds = %do.body191.i, %if.then174.i.bail.thread.i_crit_edge, %if.then174.i.bail.thread.i_crit_edge636, %if.then174.i.bail.thread.i_crit_edge637, %if.then174.i.bail.thread.i_crit_edge638, %if.then147.i, %signal_pending.exit.i.bail.thread.i_crit_edge, %if.then139.i.bail.thread.i_crit_edge, %do.body123.i, %do.body88.i, %if.then71.i.bail.thread.i_crit_edge, %if.then71.i.bail.thread.i_crit_edge613, %if.then71.i.bail.thread.i_crit_edge614, %if.then71.i.bail.thread.i_crit_edge615, %do.body56.i, %if.then39.i.bail.thread.i_crit_edge, %if.then39.i.bail.thread.i_crit_edge610, %if.then39.i.bail.thread.i_crit_edge611, %if.then39.i.bail.thread.i_crit_edge612, %do.body26.i
  %status.0.ph.i = phi i32 [ %status.2.i.i, %do.body191.i ], [ %status.2.i.i, %if.then174.i.bail.thread.i_crit_edge ], [ %status.2.i.i, %if.then174.i.bail.thread.i_crit_edge636 ], [ %status.2.i.i, %if.then174.i.bail.thread.i_crit_edge637 ], [ %status.2.i.i, %if.then174.i.bail.thread.i_crit_edge638 ], [ %call68.i, %do.body88.i ], [ %call68.i, %if.then71.i.bail.thread.i_crit_edge ], [ %call68.i, %if.then71.i.bail.thread.i_crit_edge613 ], [ %call68.i, %if.then71.i.bail.thread.i_crit_edge614 ], [ %call68.i, %if.then71.i.bail.thread.i_crit_edge615 ], [ %call36.i, %do.body56.i ], [ %call36.i, %if.then39.i.bail.thread.i_crit_edge ], [ %call36.i, %if.then39.i.bail.thread.i_crit_edge610 ], [ %call36.i, %if.then39.i.bail.thread.i_crit_edge611 ], [ %call36.i, %if.then39.i.bail.thread.i_crit_edge612 ], [ %status.0191.i.i, %do.body26.i ], [ -12, %do.body123.i ], [ -512, %if.then147.i ], [ -512, %if.then139.i.bail.thread.i_crit_edge ], [ -512, %signal_pending.exit.i.bail.thread.i_crit_edge ]
  call void @__wake_up(ptr noundef nonnull @dlm_domain_events, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.then204.i

bail.thread292.i:                                 ; preds = %do.end171.i.bail.thread292.i_crit_edge, %do.end171.thread285.i
  call void @__wake_up(ptr noundef nonnull @dlm_domain_events, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %dlm_join_domain.exit.thread

bail.i:                                           ; preds = %dlm_register_domain_handlers.exit.i.bail.i_crit_edge, %dlm_register_domain_handlers.exit.i.bail.i_crit_edge606, %dlm_register_domain_handlers.exit.i.bail.i_crit_edge607, %dlm_register_domain_handlers.exit.i.bail.i_crit_edge608, %dlm_register_domain_handlers.exit.i.bail.i_crit_edge609
  call void @__wake_up(ptr noundef nonnull @dlm_domain_events, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0191.i.i)
  %tobool203.not.i = icmp eq i32 %status.0191.i.i, 0
  br i1 %tobool203.not.i, label %bail.i.dlm_join_domain.exit.thread_crit_edge, label %bail.i.if.then204.i_crit_edge

bail.i.if.then204.i_crit_edge:                    ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then204.i

bail.i.dlm_join_domain.exit.thread_crit_edge:     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_join_domain.exit.thread

if.then204.i:                                     ; preds = %bail.i.if.then204.i_crit_edge, %bail.thread.i
  %status.0289.i = phi i32 [ %status.0.ph.i, %bail.thread.i ], [ %status.0191.i.i, %bail.i.if.then204.i_crit_edge ]
  %401 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %name.i216, align 4
  call void @o2hb_unregister_callback(ptr noundef %402, ptr noundef %dlm_hb_up.i.i) #14
  %403 = ptrtoint ptr %name.i216 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %name.i216, align 4
  call void @o2hb_unregister_callback(ptr noundef %404, ptr noundef %dlm_hb_down.i.i) #14
  %dlm_domain_handlers.i274.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 45
  call void @o2net_unregister_handler_list(ptr noundef %dlm_domain_handlers.i274.i) #14
  call void @dlm_complete_thread(ptr noundef nonnull %new_ctxt.0.ph493) #14
  call void @dlm_complete_recovery_thread(ptr noundef nonnull %new_ctxt.0.ph493) #14
  %dlm_worker.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %new_ctxt.0.ph493, i32 0, i32 37
  %405 = ptrtoint ptr %dlm_worker.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dlm_worker.i.i, align 8
  %tobool.not.i275.i = icmp eq ptr %406, null
  br i1 %tobool.not.i275.i, label %if.then204.i.dlm_join_domain.exit_crit_edge, label %if.then.i.i

if.then204.i.dlm_join_domain.exit_crit_edge:      ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_join_domain.exit

if.then.i.i:                                      ; preds = %if.then204.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @destroy_workqueue(ptr noundef nonnull %406) #14
  %407 = ptrtoint ptr %dlm_worker.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr null, ptr %dlm_worker.i.i, align 8
  br label %dlm_join_domain.exit

dlm_join_domain.exit.thread:                      ; preds = %bail.i.dlm_join_domain.exit.thread_crit_edge, %bail.thread292.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wq_name.i) #14
  br label %if.end152.thread251

dlm_join_domain.exit:                             ; preds = %if.then.i.i, %if.then204.i.dlm_join_domain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wq_name.i) #14
  %408 = zext i32 %status.0289.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %408, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %status.0289.i, label %do.body137 [
    i32 0, label %dlm_join_domain.exit.if.end152.thread251_crit_edge
    i32 -512, label %dlm_join_domain.exit.if.end146_crit_edge
    i32 -4, label %dlm_join_domain.exit.if.end146_crit_edge639
    i32 524289, label %dlm_join_domain.exit.if.end146_crit_edge640
    i32 -28, label %dlm_join_domain.exit.if.end146_crit_edge641
    i32 -122, label %dlm_join_domain.exit.if.end146_crit_edge642
  ]

dlm_join_domain.exit.if.end146_crit_edge642:      ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

dlm_join_domain.exit.if.end146_crit_edge641:      ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

dlm_join_domain.exit.if.end146_crit_edge640:      ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

dlm_join_domain.exit.if.end146_crit_edge639:      ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

dlm_join_domain.exit.if.end146_crit_edge:         ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

dlm_join_domain.exit.if.end152.thread251_crit_edge: ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.thread251

do.body137:                                       ; preds = %dlm_join_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #14
  %409 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %409)
  store i64 1152921504606847168, ptr %_m138, align 8
  %conv142 = sext i32 %status.0289.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.dlm_register_domain, i32 noundef 2188, ptr noundef nonnull @.str.11, i64 noundef %conv142) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #14
  br label %if.end146

if.end146:                                        ; preds = %do.body137, %dlm_join_domain.exit.if.end146_crit_edge, %dlm_join_domain.exit.if.end146_crit_edge639, %dlm_join_domain.exit.if.end146_crit_edge640, %dlm_join_domain.exit.if.end146_crit_edge641, %dlm_join_domain.exit.if.end146_crit_edge642
  call void @dlm_put(ptr noundef nonnull %new_ctxt.0.ph493)
  br label %if.end152

if.end152.thread251:                              ; preds = %dlm_join_domain.exit.if.end152.thread251_crit_edge, %dlm_join_domain.exit.thread
  %410 = ptrtoint ptr %fs_locking_proto117 to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %fs_locking_proto117, align 4
  %412 = ptrtoint ptr %fs_proto to i32
  call void @__asan_storeN_noabort(i32 %412, i32 2)
  store i16 %411, ptr %fs_proto, align 1
  br label %if.end157

leave:                                            ; preds = %dlm_alloc_ctxt.exit.leave_crit_edge, %__dlm_get.exit, %if.then72, %if.end67.leave_crit_edge, %signal_pending.exit.leave_crit_edge, %do.body3.leave_crit_edge
  %new_ctxt.0.ph484 = phi ptr [ %new_ctxt.0.ph493, %if.then72 ], [ %new_ctxt.0.ph493, %__dlm_get.exit ], [ null, %do.body3.leave_crit_edge ], [ %new_ctxt.0.ph493, %if.end67.leave_crit_edge ], [ %new_ctxt.0.ph493, %signal_pending.exit.leave_crit_edge ], [ %call7.i.i.i, %dlm_alloc_ctxt.exit.leave_crit_edge ]
  %dlm.0 = phi ptr [ %tmp.031.i.i, %if.then72 ], [ %tmp.031.i.i, %__dlm_get.exit ], [ null, %do.body3.leave_crit_edge ], [ null, %if.end67.leave_crit_edge ], [ null, %signal_pending.exit.leave_crit_edge ], [ null, %dlm_alloc_ctxt.exit.leave_crit_edge ]
  %ret.0 = phi i32 [ -71, %if.then72 ], [ 0, %__dlm_get.exit ], [ -512, %do.body3.leave_crit_edge ], [ -512, %if.end67.leave_crit_edge ], [ -512, %signal_pending.exit.leave_crit_edge ], [ -512, %dlm_alloc_ctxt.exit.leave_crit_edge ]
  %tobool150.not = icmp eq ptr %new_ctxt.0.ph484, null
  br i1 %tobool150.not, label %leave.if.end152_crit_edge, label %if.then151

leave.if.end152_crit_edge:                        ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then151:                                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @dlm_free_ctxt_mem(ptr noundef nonnull %new_ctxt.0.ph484)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %leave.if.end152_crit_edge, %if.end146
  %ret.0246 = phi i32 [ %ret.0, %if.then151 ], [ %ret.0, %leave.if.end152_crit_edge ], [ %status.0289.i, %if.end146 ]
  %dlm.0245 = phi ptr [ %dlm.0, %if.then151 ], [ %dlm.0, %leave.if.end152_crit_edge ], [ %new_ctxt.0.ph493, %if.end146 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0246)
  %cmp153 = icmp slt i32 %ret.0246, 0
  br i1 %cmp153, label %if.end152.if.then155_crit_edge, label %if.end152.if.end157_crit_edge

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

if.end152.if.then155_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then155

if.then155:                                       ; preds = %if.end152.if.then155_crit_edge, %do.body105, %if.then
  %ret.0246250 = phi i32 [ %ret.0246, %if.end152.if.then155_crit_edge ], [ -36, %if.then ], [ -12, %do.body105 ]
  %413 = inttoptr i32 %ret.0246250 to ptr
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end152.if.end157_crit_edge, %if.end152.thread251
  %dlm.1 = phi ptr [ %413, %if.then155 ], [ %dlm.0245, %if.end152.if.end157_crit_edge ], [ %new_ctxt.0.ph493, %if.end152.thread251 ]
  ret ptr %dlm.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_wait_on_domain_helper(ptr nocapture noundef readonly %domain) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %0 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !322

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 264, 0\0A.popsection", ""() #14, !srcloc !335
  unreachable

do.end7.i:                                        ; preds = %entry
  %call8.i = tail call i32 @strlen(ptr noundef %domain) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %for.cond.preheader.i.i, !prof !322

for.cond.preheader.i.i:                           ; preds = %do.end7.i
  %tmp.029.i.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i.i = icmp eq ptr %tmp.029.i.i, @dlm_domains
  br i1 %cmp.not30.i.i, label %for.cond.preheader.i.i.if.end2_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end2_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %tmp.031.i.i = phi ptr [ %tmp.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %tmp.029.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i.i, align 4
  %call13.i.i = tail call i32 @strlen(ptr noundef %3) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i.i, i32 %call8.i)
  %cmp14.i.i = icmp eq i32 %call13.i.i, %call8.i
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %3, ptr %domain, i32 %call8.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp17.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp17.i.i, label %__dlm_lookup_domain.exit, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %4 = ptrtoint ptr %tmp.031.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i.i = load ptr, ptr %tmp.031.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, @dlm_domains
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end2_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.end2_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

__dlm_lookup_domain.exit:                         ; preds = %land.lhs.true.i.i
  %tobool.not = icmp eq ptr %tmp.031.i.i, null
  br i1 %tobool.not, label %__dlm_lookup_domain.exit.if.end2_crit_edge, label %if.else

__dlm_lookup_domain.exit.if.end2_crit_edge:       ; preds = %__dlm_lookup_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.else:                                          ; preds = %__dlm_lookup_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dlm_state = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i.i, i32 0, i32 31
  %5 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dlm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %spec.select = zext i1 %cmp to i32
  br label %if.end2

if.end2:                                          ; preds = %if.else, %__dlm_lookup_domain.exit.if.end2_crit_edge, %for.inc.i.i.if.end2_crit_edge, %for.cond.preheader.i.i.if.end2_crit_edge
  %ret.0 = phi i32 [ 1, %__dlm_lookup_domain.exit.if.end2_crit_edge ], [ %spec.select, %if.else ], [ 1, %for.cond.preheader.i.i.if.end2_crit_edge ], [ 1, %for.inc.i.i.if.end2_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_free_ctxt_mem(ptr noundef %dlm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dlm_destroy_debugfs_subroot(ptr noundef %dlm) #14
  %lockres_hash = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 1
  %0 = ptrtoint ptr %lockres_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockres_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %pages.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 32, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %pages.addr.04.i, -1
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %dec.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %dlm_free_pagevec.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

dlm_free_pagevec.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %dlm_free_pagevec.exit, %entry.if.end_crit_edge
  %master_hash = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  %5 = ptrtoint ptr %master_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master_hash, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.end.while.body.i17_crit_edge

if.end.while.body.i17_crit_edge:                  ; preds = %if.end
  br label %while.body.i17

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

while.body.i17:                                   ; preds = %while.body.i17.while.body.i17_crit_edge, %if.end.while.body.i17_crit_edge
  %pages.addr.04.i13 = phi i32 [ %dec.i14, %while.body.i17.while.body.i17_crit_edge ], [ 32, %if.end.while.body.i17_crit_edge ]
  %dec.i14 = add nsw i32 %pages.addr.04.i13, -1
  %arrayidx.i15 = getelementptr ptr, ptr %6, i32 %dec.i14
  %7 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i15, align 4
  %9 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #14
  %tobool.not.i16 = icmp eq i32 %dec.i14, 0
  br i1 %tobool.not.i16, label %dlm_free_pagevec.exit18, label %while.body.i17.while.body.i17_crit_edge

while.body.i17.while.body.i17_crit_edge:          ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i17

dlm_free_pagevec.exit18:                          ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %6) #14
  br label %if.end5

if.end5:                                          ; preds = %dlm_free_pagevec.exit18, %if.end.if.end5_crit_edge
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %11) #14
  tail call void @kfree(ptr noundef %dlm) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_fire_domain_eviction_callbacks(ptr noundef readonly %dlm, i32 noundef %node_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @dlm_callback_sem) #14
  %dlm_eviction_callbacks = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 46
  %0 = ptrtoint ptr %dlm_eviction_callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %cb.011 = load ptr, ptr %dlm_eviction_callbacks, align 4
  %cmp.not12 = icmp eq ptr %cb.011, %dlm_eviction_callbacks
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cb.013 = phi ptr [ %cb.0, %for.body.for.body_crit_edge ], [ %cb.011, %entry.for.body_crit_edge ]
  %ec_func = getelementptr inbounds %struct.dlm_eviction_cb, ptr %cb.013, i32 0, i32 1
  %1 = ptrtoint ptr %ec_func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ec_func, align 4
  %ec_data = getelementptr inbounds %struct.dlm_eviction_cb, ptr %cb.013, i32 0, i32 2
  %3 = ptrtoint ptr %ec_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ec_data, align 4
  tail call void %2(i32 noundef %node_num, ptr noundef %4) #14
  %5 = ptrtoint ptr %cb.013 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cb.0 = load ptr, ptr %cb.013, align 4
  %cmp.not = icmp eq ptr %cb.0, %dlm_eviction_callbacks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @dlm_callback_sem) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_setup_eviction_cb(ptr noundef %cb, ptr noundef %f, ptr noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %cb, ptr %cb, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cb, ptr %prev.i, align 4
  %ec_func = getelementptr inbounds %struct.dlm_eviction_cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %ec_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %f, ptr %ec_func, align 4
  %ec_data = getelementptr inbounds %struct.dlm_eviction_cb, ptr %cb, i32 0, i32 2
  %3 = ptrtoint ptr %ec_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %ec_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_register_eviction_cb(ptr noundef %dlm, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @dlm_callback_sem) #14
  %dlm_eviction_callbacks = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 46
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 46, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cb, ptr noundef %1, ptr noundef %dlm_eviction_callbacks) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %prev.i, align 4
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dlm_eviction_callbacks, ptr %cb, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cb, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @dlm_callback_sem) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_unregister_eviction_cb(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @dlm_callback_sem) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cb) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cb, ptr %cb, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cb, ptr %prev.i3.i, align 4
  tail call void @up_write(ptr noundef nonnull @dlm_callback_sem) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dlm_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dlm_destroy_debugfs_root() #14
  tail call void @o2net_unregister_handler_list(ptr noundef nonnull @dlm_join_handlers) #14
  tail call void @dlm_destroy_lock_cache() #14
  tail call void @dlm_destroy_master_caches() #14
  tail call void @dlm_destroy_mle_cache() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_destroy_debugfs_root() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_destroy_lock_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_destroy_master_caches() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_destroy_mle_cache() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_init() #7 section ".init.text" align 64 {
entry:
  %_m = alloca i64, align 8
  %_m8 = alloca i64, align 8
  %_m20 = alloca i64, align 8
  %_m32 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_init_mle_cache() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606847168, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_init, i32 noundef 2317, ptr noundef nonnull @.str.91) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  br label %error

if.end3:                                          ; preds = %entry
  %call4 = tail call i32 @dlm_init_master_caches() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end15, label %do.body7

do.body7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m8) #14
  %1 = ptrtoint ptr %_m8 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606847168, ptr %_m8, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m8, ptr noundef nonnull @__func__.dlm_init, i32 noundef 2324, ptr noundef nonnull @.str.92) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m8) #14
  br label %error

if.end15:                                         ; preds = %if.end3
  %call16 = tail call i32 @dlm_init_lock_cache() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end27, label %do.body19

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20) #14
  %2 = ptrtoint ptr %_m20 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606847168, ptr %_m20, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20, ptr noundef nonnull @__func__.dlm_init, i32 noundef 2330, ptr noundef nonnull @.str.93) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20) #14
  br label %error

if.end27:                                         ; preds = %if.end15
  %call.i = tail call i32 @o2net_register_handler(i32 noundef 510, i32 noundef 1718378866, i32 noundef 104, ptr noundef nonnull @dlm_query_join_handler, ptr noundef null, ptr noundef null, ptr noundef nonnull @dlm_join_handlers) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.bail.i_crit_edge

if.end27.bail.i_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @o2net_register_handler(i32 noundef 511, i32 noundef 1718378866, i32 noundef 68, ptr noundef nonnull @dlm_assert_joined_handler, ptr noundef null, ptr noundef null, ptr noundef nonnull @dlm_join_handlers) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.bail.i_crit_edge

if.end.i.bail.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @o2net_register_handler(i32 noundef 512, i32 noundef 1718378866, i32 noundef 68, ptr noundef nonnull @dlm_cancel_join_handler, ptr noundef null, ptr noundef null, ptr noundef nonnull @dlm_join_handlers) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.bail.i_crit_edge

if.end4.i.bail.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call i32 @o2net_register_handler(i32 noundef 519, i32 noundef 1718378866, i32 noundef 1092, ptr noundef nonnull @dlm_query_region_handler, ptr noundef null, ptr noundef null, ptr noundef nonnull @dlm_join_handlers) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.bail.i_crit_edge

if.end8.i.bail.i_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %call13.i = tail call i32 @o2net_register_handler(i32 noundef 520, i32 noundef 1718378866, i32 noundef 2108, ptr noundef nonnull @dlm_query_nodeinfo_handler, ptr noundef null, ptr noundef null, ptr noundef nonnull @dlm_join_handlers) #14
  br label %bail.i

bail.i:                                           ; preds = %if.end12.i, %if.end8.i.bail.i_crit_edge, %if.end4.i.bail.i_crit_edge, %if.end.i.bail.i_crit_edge, %if.end27.bail.i_crit_edge
  %status.0.i = phi i32 [ %call.i, %if.end27.bail.i_crit_edge ], [ %call1.i, %if.end.i.bail.i_crit_edge ], [ %call5.i, %if.end4.i.bail.i_crit_edge ], [ %call9.i, %if.end8.i.bail.i_crit_edge ], [ %call13.i, %if.end12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp.i = icmp slt i32 %status.0.i, 0
  br i1 %cmp.i, label %dlm_register_net_handlers.exit.thread, label %dlm_register_net_handlers.exit

dlm_register_net_handlers.exit.thread:            ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @o2net_unregister_handler_list(ptr noundef nonnull @dlm_join_handlers) #14
  br label %do.body31

dlm_register_net_handlers.exit:                   ; preds = %bail.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool29.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool29.not, label %if.end39, label %dlm_register_net_handlers.exit.do.body31_crit_edge

dlm_register_net_handlers.exit.do.body31_crit_edge: ; preds = %dlm_register_net_handlers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

do.body31:                                        ; preds = %dlm_register_net_handlers.exit.do.body31_crit_edge, %dlm_register_net_handlers.exit.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m32) #14
  %3 = ptrtoint ptr %_m32 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606847168, ptr %_m32, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m32, ptr noundef nonnull @__func__.dlm_init, i32 noundef 2336, ptr noundef nonnull @.str.94) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m32) #14
  br label %error

if.end39:                                         ; preds = %dlm_register_net_handlers.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dlm_create_debugfs_root() #14
  br label %cleanup

error:                                            ; preds = %do.body31, %do.body19, %do.body7, %do.body
  call void @o2net_unregister_handler_list(ptr noundef nonnull @dlm_join_handlers) #14
  call void @dlm_destroy_lock_cache() #14
  call void @dlm_destroy_master_caches() #14
  call void @dlm_destroy_mle_cache() #14
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end39
  %retval.0 = phi i32 [ -1, %error ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_empty_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_lockres_calc_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_complete_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_complete_recovery_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_unregister_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_unregister_handler_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dlm_alloc_pagevec() unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 128) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %1 = inttoptr i32 %call1 to ptr
  %arrayidx = getelementptr ptr, ptr %call7.i.i, i32 %i.02
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %out_free, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 192, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_alloc_pagevec, i32 noundef 84, ptr noundef nonnull @.str.50, i32 noundef 32, i32 noundef 32, i32 noundef 1024) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  br label %cleanup

out_free:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.02)
  %tobool.not3.i = icmp eq i32 %i.02, 0
  br i1 %tobool.not3.i, label %out_free.dlm_free_pagevec.exit_crit_edge, label %out_free.while.body.i_crit_edge

out_free.while.body.i_crit_edge:                  ; preds = %out_free
  br label %while.body.i

out_free.dlm_free_pagevec.exit_crit_edge:         ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_free_pagevec.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %out_free.while.body.i_crit_edge
  %pages.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.02, %out_free.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %pages.addr.04.i, -1
  %arrayidx.i = getelementptr ptr, ptr %call7.i.i, i32 %dec.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.dlm_free_pagevec.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.dlm_free_pagevec.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_free_pagevec.exit

dlm_free_pagevec.exit:                            ; preds = %while.body.i.dlm_free_pagevec.exit_crit_edge, %out_free.dlm_free_pagevec.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %dlm_free_pagevec.exit, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dlm_free_pagevec.exit ], [ %call7.i.i, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @o2nm_this_node() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_create_debugfs_subroot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_dispatch_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_launch_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_launch_recovery_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_debug_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_setup_callback(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_hb_node_down_cb(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_hb_node_up_cb(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_register_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_register_handler(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_master_request_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_assert_master_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_assert_master_post_handler(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_create_lock_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_convert_lock_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_unlock_lock_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_proxy_ast_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_exit_domain_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_exit_domain_handler, i32 noundef 551, ptr noundef nonnull @.str.56, ptr noundef %msg, i32 noundef %len, ptr noundef %data) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %target.0.in.i = phi ptr [ @dlm_domains, %entry ], [ %target.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %target.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %target.0.i = load ptr, ptr %target.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %target.0.i, @dlm_domains
  br i1 %cmp.not.i, label %dlm_grab.exit.thread, label %for.body.i

dlm_grab.exit.thread:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cmp1.i = icmp eq ptr %target.0.i, %data
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %dlm_refs.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 30
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dlm_refs.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %dlm_refs.i.i, i32 1, i32 3, i32 1) #14
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlm_refs.i.i, ptr %dlm_refs.i.i, i32 1, ptr elementtype(i32) %dlm_refs.i.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !322

if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dlm_grab.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dlm_grab.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_grab.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %dlm_refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %dlm_grab.exit

dlm_grab.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dlm_grab.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  %tobool1.not = icmp eq ptr %data, null
  br i1 %tobool1.not, label %dlm_grab.exit.cleanup_crit_edge, label %if.end3

dlm_grab.exit.cleanup_crit_edge:                  ; preds = %dlm_grab.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %dlm_grab.exit
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  %conv = zext i8 %5 to i32
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 18
  call void @_clear_bit(i32 noundef %conv, ptr noundef %domain_map) #14
  %exit_domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 19
  call void @_clear_bit(i32 noundef %conv, ptr noundef %exit_domain_map) #14
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv, ptr noundef %7) #19
  call fastcc void @__dlm_print_nodes(ptr noundef nonnull %data)
  call void @dlm_hb_event_notify_attached(ptr noundef nonnull %data, i32 noundef %conv, i32 noundef 0) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  call void @dlm_put(ptr noundef nonnull %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %dlm_grab.exit.cleanup_crit_edge, %dlm_grab.exit.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_deref_lockres_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_migrate_request_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_mig_lockres_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_master_requery_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_request_all_locks_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_reco_data_done_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_begin_reco_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_finalize_reco_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_begin_exit_domain_handler(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %target.0.in.i = phi ptr [ @dlm_domains, %entry ], [ %target.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %target.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %target.0.i = load ptr, ptr %target.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %target.0.i, @dlm_domains
  br i1 %cmp.not.i, label %dlm_grab.exit.thread, label %for.body.i

dlm_grab.exit.thread:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cmp1.i = icmp eq ptr %target.0.i, %data
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %dlm_refs.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 30
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlm_refs.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %dlm_refs.i.i, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlm_refs.i.i, ptr %dlm_refs.i.i, i32 1, ptr elementtype(i32) %dlm_refs.i.i) #14, !srcloc !324
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !322

if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dlm_grab.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !325

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dlm_grab.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_grab.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dlm_refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %dlm_grab.exit

dlm_grab.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dlm_grab.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %dlm_grab.exit.cleanup_crit_edge, label %if.end

dlm_grab.exit.cleanup_crit_edge:                  ; preds = %dlm_grab.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dlm_grab.exit
  call void @__sanitizer_cov_trace_pc() #16
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %conv = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 192, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_begin_exit_domain_handler, i32 noundef 495, ptr noundef nonnull @.str.66, ptr noundef %7, i32 noundef %conv) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %exit_domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 19
  call void @_set_bit(i32 noundef %conv, ptr noundef %exit_domain_map) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  call void @dlm_put(ptr noundef nonnull %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dlm_grab.exit.cleanup_crit_edge, %dlm_grab.exit.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_deref_lockres_done_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dlm_print_nodes(ptr noundef %dlm) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end12, !prof !322

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 533, 0\0A.popsection", ""() #14, !srcloc !339
  unreachable

do.end12:                                         ; preds = %entry
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #19
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %call1428 = tail call i32 @_find_next_bit_be(ptr noundef %domain_map, i32 noundef 255, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1428)
  %cmp29 = icmp slt i32 %call1428, 255
  br i1 %cmp29, label %do.end12.do.end17_crit_edge, label %do.end12.do.end22_crit_edge

do.end12.do.end22_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.end12.do.end17_crit_edge:                      ; preds = %do.end12
  br label %do.end17

do.end17:                                         ; preds = %do.end17.do.end17_crit_edge, %do.end12.do.end17_crit_edge
  %call1431 = phi i32 [ %call14, %do.end17.do.end17_crit_edge ], [ %call1428, %do.end12.do.end17_crit_edge ]
  %num.030 = phi i32 [ %inc, %do.end17.do.end17_crit_edge ], [ 0, %do.end12.do.end17_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call1431) #19
  %inc = add i32 %num.030, 1
  %add = add nsw i32 %call1431, 1
  %call14 = tail call i32 @_find_next_bit_be(ptr noundef %domain_map, i32 noundef 255, i32 noundef %add) #14
  %cmp = icmp slt i32 %call14, 255
  br i1 %cmp, label %do.end17.do.end17_crit_edge, label %do.end17.do.end22_crit_edge

do.end17.do.end22_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.end17.do.end17_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

do.end22:                                         ; preds = %do.end17.do.end22_crit_edge, %do.end12.do.end22_crit_edge
  %num.0.lcssa = phi i32 [ 0, %do.end12.do.end22_crit_edge ], [ %inc, %do.end17.do.end22_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %num.0.lcssa) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_hb_event_notify_attached(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_fill_node_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dlm_set_joining_node(ptr noundef %dlm, i8 noundef zeroext %node) unnamed_addr #12 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !322

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #14, !srcloc !337
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 14
  %2 = ptrtoint ptr %joining_node to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %node, ptr %joining_node, align 4
  %dlm_join_events = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %dlm_join_events, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @o2nm_get_node_by_num(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2nm_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_global_heartbeat_active() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_get_all_regions(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_destroy_debugfs_subroot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_init_mle_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_init_master_caches() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_init_lock_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_create_debugfs_root() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_query_join_handler(ptr noundef %msg, i32 noundef %len, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m6 = alloca i64, align 8
  %_m36 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  %_m88 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  %_m137 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %conv = zext i8 %2 to i32
  %domain = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 803, ptr noundef nonnull @.str.95, i32 noundef %conv, ptr noundef %domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %call = call i32 @o2hb_check_node_heartbeating_no_sem(i8 noundef zeroext %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body5, label %if.end15

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m6) #14
  %5 = ptrtoint ptr %_m6 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 192, ptr %_m6, align 8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %conv11 = zext i8 %7 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m6, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 812, ptr noundef nonnull @.str.96, i32 noundef %conv11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m6) #14
  br label %do.body136

if.end15:                                         ; preds = %entry
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %name_len = getelementptr inbounds %struct.dlm_query_join_request, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name_len, align 1
  %conv19 = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %10 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !322

for.cond.preheader.i:                             ; preds = %if.end15
  %tmp.029.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i = icmp eq ptr %tmp.029.i, @dlm_domains
  br i1 %cmp.not30.i, label %for.cond.preheader.i.unlock_respond_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.unlock_respond_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_respond

do.body4.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.031.i = phi ptr [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp.029.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 11
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %call13.i = call i32 @strlen(ptr noundef %12) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv19)
  %cmp14.i = icmp eq i32 %call13.i, %conv19
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr %12, ptr %domain, i32 %conv19) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp17.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.i, label %__dlm_lookup_domain_full.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %tmp.031.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0.i = load ptr, ptr %tmp.031.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @dlm_domains
  br i1 %cmp.not.i, label %for.inc.i.unlock_respond_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.unlock_respond_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_respond

__dlm_lookup_domain_full.exit:                    ; preds = %land.lhs.true.i
  %tobool21.not = icmp eq ptr %tmp.031.i, null
  br i1 %tobool21.not, label %__dlm_lookup_domain_full.exit.unlock_respond_crit_edge, label %while.cond.preheader

__dlm_lookup_domain_full.exit.unlock_respond_crit_edge: ; preds = %__dlm_lookup_domain_full.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_respond

while.cond.preheader:                             ; preds = %__dlm_lookup_domain_full.exit
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 18
  %node_map = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %while.cond.preheader
  %indvars.iv = phi i32 [ 0, %while.cond.preheader ], [ %indvars.iv.next, %if.end48.while.body_crit_edge ]
  %div3.i = lshr i32 %indvars.iv, 5
  %arrayidx.i = getelementptr i32, ptr %domain_map, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %indvars.iv, 31
  %16 = shl nuw i32 1, %and.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool29.not = icmp eq i32 %17, 0
  br i1 %tobool29.not, label %while.body.if.end48_crit_edge, label %if.then30

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then30:                                        ; preds = %while.body
  %and.i192 = and i32 %indvars.iv, 7
  %18 = lshr i32 %indvars.iv, 3
  %arrayidx.i193 = getelementptr i8, ptr %node_map, i32 %18
  %19 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i193, align 1
  %conv2.i = zext i8 %20 to i32
  %21 = shl nuw nsw i32 1, %and.i192
  %22 = and i32 %21, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool33.not = icmp eq i32 %22, 0
  br i1 %tobool33.not, label %do.body35, label %if.then30.if.end48_crit_edge

if.then30.if.end48_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.body35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36) #14
  %23 = ptrtoint ptr %_m36 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 192, ptr %_m36, align 8
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  %conv41 = zext i8 %25 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 836, ptr noundef nonnull @.str.97, i32 noundef %conv41, i32 noundef %indvars.iv) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36) #14
  br label %unlock_respond

if.end48:                                         ; preds = %if.then30.if.end48_crit_edge, %while.body.if.end48_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp.not = icmp eq i32 %indvars.iv.next, 255
  br i1 %cmp.not, label %while.end, label %if.end48.while.body_crit_edge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end48
  %dlm_state = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 31
  %26 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dlm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp49.not = icmp eq i32 %27, 3
  br i1 %cmp49.not, label %while.end.unlock_respond_crit_edge, label %if.then51

while.end.unlock_respond_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_respond

if.then51:                                        ; preds = %while.end
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %conv53 = zext i8 %29 to i32
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %30 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dlm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp55 = icmp eq i32 %31, 0
  br i1 %cmp55, label %land.lhs.true, label %if.then51.if.else_crit_edge

if.then51.if.else_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.then51
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 14
  %32 = ptrtoint ptr %joining_node to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %joining_node, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp58 = icmp eq i8 %33, -1
  br i1 %cmp58, label %land.lhs.true.if.end133_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.if.end133_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then51.if.else_crit_edge
  %joining_node62 = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 14
  %34 = ptrtoint ptr %joining_node62 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %joining_node62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp64.not = icmp eq i8 %35, -1
  br i1 %cmp64.not, label %if.else68, label %if.else.if.end133_crit_edge

if.else.if.end133_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.else68:                                        ; preds = %if.else
  %state = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 21, i32 4
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %state, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool71.not = icmp eq i16 %38, 0
  br i1 %tobool71.not, label %if.else82, label %do.body73

do.body73:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #14
  %39 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 192, ptr %_m74, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 863, ptr noundef nonnull @.str.98, i32 noundef %conv53) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #14
  br label %if.end133

if.else82:                                        ; preds = %if.else68
  %recovery_map = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 20
  %div3.i182 = lshr i32 %conv53, 5
  %arrayidx.i183 = getelementptr i32, ptr %recovery_map, i32 %div3.i182
  %40 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i183, align 4
  %and.i184 = and i32 %conv53, 31
  %42 = shl nuw i32 1, %and.i184
  %43 = and i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool85.not = icmp eq i32 %43, 0
  br i1 %tobool85.not, label %if.else96, label %do.body87

do.body87:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m88) #14
  %44 = ptrtoint ptr %_m88 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 192, ptr %_m88, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m88, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 867, ptr noundef nonnull @.str.99, i32 noundef %conv53) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m88) #14
  br label %if.end133

if.else96:                                        ; preds = %if.else82
  %arrayidx.i188 = getelementptr i32, ptr %domain_map, i32 %div3.i182
  %45 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i188, align 4
  %47 = and i32 %46, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool100.not = icmp eq i32 %47, 0
  br i1 %tobool100.not, label %if.else111, label %do.body102

do.body102:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #14
  %48 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 192, ptr %_m103, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 872, ptr noundef nonnull @.str.100, i32 noundef %conv53) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #14
  br label %if.end133

if.else111:                                       ; preds = %if.else96
  %dlm_locking_proto = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 48
  %dlm_proto = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 2
  %call112 = call fastcc i32 @dlm_query_join_proto_check(ptr noundef nonnull @.str.101, i32 noundef %conv53, ptr noundef %dlm_locking_proto, ptr noundef %dlm_proto)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.else116, label %if.else111.if.end133_crit_edge

if.else111.if.end133_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.else116:                                       ; preds = %if.else111
  %fs_locking_proto = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 47
  %fs_proto = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 3
  %call117 = call fastcc i32 @dlm_query_join_proto_check(ptr noundef nonnull @.str.102, i32 noundef %conv53, ptr noundef %fs_locking_proto, ptr noundef %fs_proto)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.else121, label %if.else116.if.end133_crit_edge

if.else116.if.end133_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.else121:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #16
  %pv_minor = getelementptr inbounds %struct.dlm_protocol_version, ptr %dlm_proto, i32 0, i32 1
  %49 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pv_minor, align 1
  %pv_minor124 = getelementptr inbounds %struct.dlm_protocol_version, ptr %fs_proto, i32 0, i32 1
  %51 = ptrtoint ptr %pv_minor124 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pv_minor124, align 1
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf, align 1
  call fastcc void @__dlm_set_joining_node(ptr noundef nonnull %tmp.031.i, i8 noundef zeroext %54)
  br label %if.end133

if.end133:                                        ; preds = %if.else121, %if.else116.if.end133_crit_edge, %if.else111.if.end133_crit_edge, %do.body102, %do.body87, %do.body73, %if.else.if.end133_crit_edge, %land.lhs.true.if.end133_crit_edge
  %packet.sroa.17.0 = phi i8 [ %52, %if.else121 ], [ 0, %do.body102 ], [ 0, %do.body87 ], [ 0, %do.body73 ], [ 0, %land.lhs.true.if.end133_crit_edge ], [ 0, %if.else.if.end133_crit_edge ], [ 0, %if.else111.if.end133_crit_edge ], [ 0, %if.else116.if.end133_crit_edge ]
  %packet.sroa.16.0 = phi i8 [ %50, %if.else121 ], [ 0, %do.body102 ], [ 0, %do.body87 ], [ 0, %do.body73 ], [ 0, %land.lhs.true.if.end133_crit_edge ], [ 0, %if.else.if.end133_crit_edge ], [ 0, %if.else111.if.end133_crit_edge ], [ 0, %if.else116.if.end133_crit_edge ]
  %packet.sroa.0.0 = phi i32 [ 1, %if.else121 ], [ 0, %do.body102 ], [ 0, %do.body87 ], [ 0, %do.body73 ], [ 2, %land.lhs.true.if.end133_crit_edge ], [ 0, %if.else.if.end133_crit_edge ], [ 3, %if.else111.if.end133_crit_edge ], [ 3, %if.else116.if.end133_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  br label %unlock_respond

unlock_respond:                                   ; preds = %if.end133, %while.end.unlock_respond_crit_edge, %do.body35, %__dlm_lookup_domain_full.exit.unlock_respond_crit_edge, %for.inc.i.unlock_respond_crit_edge, %for.cond.preheader.i.unlock_respond_crit_edge
  %packet.sroa.17.1 = phi i8 [ 0, %__dlm_lookup_domain_full.exit.unlock_respond_crit_edge ], [ 0, %while.end.unlock_respond_crit_edge ], [ %packet.sroa.17.0, %if.end133 ], [ 0, %do.body35 ], [ 0, %for.cond.preheader.i.unlock_respond_crit_edge ], [ 0, %for.inc.i.unlock_respond_crit_edge ]
  %packet.sroa.16.1 = phi i8 [ 0, %__dlm_lookup_domain_full.exit.unlock_respond_crit_edge ], [ 0, %while.end.unlock_respond_crit_edge ], [ %packet.sroa.16.0, %if.end133 ], [ 0, %do.body35 ], [ 0, %for.cond.preheader.i.unlock_respond_crit_edge ], [ 0, %for.inc.i.unlock_respond_crit_edge ]
  %packet.sroa.0.1 = phi i32 [ 2, %__dlm_lookup_domain_full.exit.unlock_respond_crit_edge ], [ 2, %while.end.unlock_respond_crit_edge ], [ %packet.sroa.0.0, %if.end133 ], [ 0, %do.body35 ], [ 2, %for.cond.preheader.i.unlock_respond_crit_edge ], [ 2, %for.inc.i.unlock_respond_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  br label %do.body136

do.body136:                                       ; preds = %unlock_respond, %do.body5
  %packet.sroa.17.2 = phi i8 [ 0, %do.body5 ], [ %packet.sroa.17.1, %unlock_respond ]
  %packet.sroa.16.2 = phi i8 [ 0, %do.body5 ], [ %packet.sroa.16.1, %unlock_respond ]
  %packet.sroa.0.2 = phi i32 [ 0, %do.body5 ], [ %packet.sroa.0.1, %unlock_respond ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m137) #14
  %55 = ptrtoint ptr %_m137 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 192, ptr %_m137, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m137, ptr noundef nonnull @__func__.dlm_query_join_handler, i32 noundef 903, ptr noundef nonnull @.str.103, i32 noundef %packet.sroa.0.2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m137) #14
  %packet.sroa.17.0.insert.ext = zext i8 %packet.sroa.17.2 to i32
  %packet.sroa.17.0.insert.shift = shl nuw nsw i32 %packet.sroa.17.0.insert.ext, 8
  %packet.sroa.16.0.insert.ext = zext i8 %packet.sroa.16.2 to i32
  %packet.sroa.16.0.insert.shift = shl nuw nsw i32 %packet.sroa.16.0.insert.ext, 16
  %packet.sroa.16.0.insert.insert = or i32 %packet.sroa.16.0.insert.shift, %packet.sroa.17.0.insert.shift
  %packet.sroa.0.0.insert.shift = shl nuw nsw i32 %packet.sroa.0.2, 24
  %packet.sroa.0.0.insert.insert = or i32 %packet.sroa.16.0.insert.insert, %packet.sroa.0.0.insert.shift
  ret i32 %packet.sroa.0.0.insert.insert
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_assert_joined_handler(ptr noundef %msg, i32 noundef %len, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i74 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m29 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %conv = zext i8 %2 to i32
  %domain = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_assert_joined_handler, i32 noundef 918, ptr noundef nonnull @.str.106, i32 noundef %conv, ptr noundef %domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %name_len = getelementptr inbounds %struct.dlm_assert_joined, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %name_len, align 1
  %conv4 = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !322

for.cond.preheader.i:                             ; preds = %entry
  %tmp.029.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i = icmp eq ptr %tmp.029.i, @dlm_domains
  br i1 %cmp.not30.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.031.i = phi ptr [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp.029.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 11
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call13.i = call i32 @strlen(ptr noundef %7) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv4)
  %cmp14.i = icmp eq i32 %call13.i, %conv4
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr %7, ptr %domain, i32 %conv4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp17.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.i, label %__dlm_lookup_domain_full.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %tmp.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0.i = load ptr, ptr %tmp.031.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @dlm_domains
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

__dlm_lookup_domain_full.exit:                    ; preds = %land.lhs.true.i
  %name.i.le = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 11
  %tobool5.not = icmp eq ptr %tmp.031.i, null
  br i1 %tobool5.not, label %__dlm_lookup_domain_full.exit.cleanup_crit_edge, label %if.then6

__dlm_lookup_domain_full.exit.cleanup_crit_edge:  ; preds = %__dlm_lookup_domain_full.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %__dlm_lookup_domain_full.exit
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 14
  %9 = ptrtoint ptr %joining_node to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %joining_node, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %conv10 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp eq i8 %10, %12
  br i1 %cmp.not, label %do.end23, label %do.body15, !prof !325

do.body15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 929, 0\0A.popsection", ""() #14, !srcloc !340
  unreachable

do.end23:                                         ; preds = %if.then6
  %state = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 21, i32 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %state, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool26.not = icmp eq i16 %15, 0
  br i1 %tobool26.not, label %if.end37, label %do.body28

do.body28:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29) #14
  %16 = ptrtoint ptr %_m29 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 192, ptr %_m29, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29, ptr noundef nonnull @__func__.dlm_assert_joined_handler, i32 noundef 932, ptr noundef nonnull @.str.107) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29) #14
  br label %cleanup.sink.split

if.end37:                                         ; preds = %do.end23
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 18
  call void @_set_bit(i32 noundef %conv10, ptr noundef %domain_map) #14
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 1
  %conv42 = zext i8 %18 to i32
  %exit_domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 19
  call void @_clear_bit(i32 noundef %conv42, ptr noundef %exit_domain_map) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i74)
  %19 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload.i.i75 = load volatile i32, ptr %spinlock, align 4
  %20 = ptrtoint ptr %agg.tmp.sroa.0.i.i74 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i75, ptr %agg.tmp.sroa.0.i.i74, align 4
  %lock.sroa.0.0.extract.shift.i.i.i76 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i75, 16
  %conv.i.i.i77 = and i32 %agg.tmp.sroa.0.0.copyload.i.i75, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i77, i32 %lock.sroa.0.0.extract.shift.i.i.i76)
  %cmp.i.i.not.i78 = icmp eq i32 %conv.i.i.i77, %lock.sroa.0.0.extract.shift.i.i.i76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i74)
  br i1 %cmp.i.i.not.i78, label %do.body4.i79, label %__dlm_set_joining_node.exit, !prof !322

do.body4.i79:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #14, !srcloc !337
  unreachable

__dlm_set_joining_node.exit:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %joining_node to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %joining_node, align 4
  %dlm_join_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 16
  call void @__wake_up(ptr noundef %dlm_join_events.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 1
  %conv48 = zext i8 %23 to i32
  %24 = ptrtoint ptr %name.i.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i.le, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv48, ptr noundef %25) #19
  call fastcc void @__dlm_print_nodes(ptr noundef nonnull %tmp.031.i)
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %conv51 = zext i8 %27 to i32
  call void @dlm_hb_event_notify_attached(ptr noundef nonnull %tmp.031.i, i32 noundef %conv51, i32 noundef 1) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__dlm_set_joining_node.exit, %do.body28
  %retval.0.ph = phi i32 [ 0, %__dlm_set_joining_node.exit ], [ -11, %do.body28 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %__dlm_lookup_domain_full.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %__dlm_lookup_domain_full.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc.i.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_cancel_join_handler(ptr noundef %msg, i32 noundef %len, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i34 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %conv = zext i8 %2 to i32
  %domain = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_cancel_join_handler, i32 noundef 1330, ptr noundef nonnull @.str.109, i32 noundef %conv, ptr noundef %domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %name_len = getelementptr inbounds %struct.dlm_cancel_join, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %name_len, align 1
  %conv4 = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !322

for.cond.preheader.i:                             ; preds = %entry
  %tmp.029.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i = icmp eq ptr %tmp.029.i, @dlm_domains
  br i1 %cmp.not30.i, label %for.cond.preheader.i.if.end25_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end25_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.031.i = phi ptr [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp.029.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 11
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call13.i = call i32 @strlen(ptr noundef %7) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv4)
  %cmp14.i = icmp eq i32 %call13.i, %conv4
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr %7, ptr %domain, i32 %conv4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp17.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.i, label %__dlm_lookup_domain_full.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %tmp.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0.i = load ptr, ptr %tmp.031.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @dlm_domains
  br i1 %cmp.not.i, label %for.inc.i.if.end25_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

__dlm_lookup_domain_full.exit:                    ; preds = %land.lhs.true.i
  %tobool5.not = icmp eq ptr %tmp.031.i, null
  br i1 %tobool5.not, label %__dlm_lookup_domain_full.exit.if.end25_crit_edge, label %if.then6

__dlm_lookup_domain_full.exit.if.end25_crit_edge: ; preds = %__dlm_lookup_domain_full.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then6:                                         ; preds = %__dlm_lookup_domain_full.exit
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 14
  %9 = ptrtoint ptr %joining_node to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %joining_node, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp eq i8 %10, %12
  br i1 %cmp.not, label %do.end23, label %do.body15, !prof !325

do.body15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1340, 0\0A.popsection", ""() #14, !srcloc !341
  unreachable

do.end23:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i34)
  %13 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i.i35 = load volatile i32, ptr %spinlock, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i.i34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i35, ptr %agg.tmp.sroa.0.i.i34, align 4
  %lock.sroa.0.0.extract.shift.i.i.i36 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i35, 16
  %conv.i.i.i37 = and i32 %agg.tmp.sroa.0.0.copyload.i.i35, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i37, i32 %lock.sroa.0.0.extract.shift.i.i.i36)
  %cmp.i.i.not.i38 = icmp eq i32 %conv.i.i.i37, %lock.sroa.0.0.extract.shift.i.i.i36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i34)
  br i1 %cmp.i.i.not.i38, label %do.body4.i39, label %__dlm_set_joining_node.exit, !prof !322

do.body4.i39:                                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #14, !srcloc !337
  unreachable

__dlm_set_joining_node.exit:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %joining_node to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %joining_node, align 4
  %dlm_join_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 16
  call void @__wake_up(ptr noundef %dlm_join_events.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  br label %if.end25

if.end25:                                         ; preds = %__dlm_set_joining_node.exit, %__dlm_lookup_domain_full.exit.if.end25_crit_edge, %for.inc.i.if.end25_crit_edge, %for.cond.preheader.i.if.end25_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_query_region_handler(ptr noundef %msg, i32 noundef %len, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m15.i = alloca i64, align 8
  %_m33.i = alloca i64, align 8
  %_m65.i = alloca i64, align 8
  %_m104.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m12 = alloca i64, align 8
  %_m30 = alloca i64, align 8
  %_m53 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %conv = zext i8 %2 to i32
  %qr_domain = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_query_region_handler, i32 noundef 1106, ptr noundef nonnull @.str.110, i32 noundef %conv, ptr noundef %qr_domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #21
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %qr_namelen = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 1
  %4 = ptrtoint ptr %qr_namelen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %qr_namelen, align 1
  %conv7 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !322

for.cond.preheader.i:                             ; preds = %if.end4
  %tmp.029.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i = icmp eq ptr %tmp.029.i, @dlm_domains
  br i1 %cmp.not30.i, label %for.cond.preheader.i.do.body11_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body11_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

do.body4.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.031.i = phi ptr [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp.029.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 11
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call13.i = call i32 @strlen(ptr noundef %8) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv7)
  %cmp14.i = icmp eq i32 %call13.i, %conv7
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr %8, ptr %qr_domain, i32 %conv7) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp17.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.i, label %__dlm_lookup_domain_full.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %tmp.031.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.0.i = load ptr, ptr %tmp.031.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @dlm_domains
  br i1 %cmp.not.i, label %for.inc.i.do.body11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.do.body11_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

__dlm_lookup_domain_full.exit:                    ; preds = %land.lhs.true.i
  %tobool9.not = icmp eq ptr %tmp.031.i, null
  br i1 %tobool9.not, label %__dlm_lookup_domain_full.exit.do.body11_crit_edge, label %if.end23

__dlm_lookup_domain_full.exit.do.body11_crit_edge: ; preds = %__dlm_lookup_domain_full.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

do.body11:                                        ; preds = %__dlm_lookup_domain_full.exit.do.body11_crit_edge, %for.inc.i.do.body11_crit_edge, %for.cond.preheader.i.do.body11_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12) #14
  %10 = ptrtoint ptr %_m12 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606847168, ptr %_m12, align 8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %conv17 = zext i8 %12 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12, ptr noundef nonnull @__func__.dlm_query_region_handler, i32 noundef 1119, ptr noundef nonnull @.str.111, i32 noundef %conv17, ptr noundef %qr_domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12) #14
  br label %out_domain_lock

if.end23:                                         ; preds = %__dlm_lookup_domain_full.exit
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 14
  %13 = ptrtoint ptr %joining_node to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %joining_node, align 4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp.not = icmp eq i8 %14, %16
  br i1 %cmp.not, label %if.end43, label %do.body29

do.body29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #14
  %17 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606847168, ptr %_m30, align 8
  %conv35 = zext i8 %16 to i32
  %conv39 = zext i8 %14 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.dlm_query_region_handler, i32 noundef 1127, ptr noundef nonnull @.str.112, i32 noundef %conv35, ptr noundef %qr_domain, i32 noundef %conv39) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #14
  br label %out_dlm_lock

if.end43:                                         ; preds = %if.end23
  %dlm_locking_proto = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 48
  %18 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dlm_locking_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp45 = icmp eq i8 %19, 1
  br i1 %cmp45, label %land.lhs.true, label %if.end43.if.end70_crit_edge

if.end43.if.end70_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end43
  %pv_minor = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 48, i32 1
  %20 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pv_minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp49 = icmp eq i8 %21, 0
  br i1 %cmp49, label %do.body52, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

do.body52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #14
  %22 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606847168, ptr %_m53, align 8
  %conv58 = zext i8 %14 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.dlm_query_region_handler, i32 noundef 1137, ptr noundef nonnull @.str.113, i32 noundef %conv58, ptr noundef %qr_domain, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #14
  br label %out_dlm_lock

if.end70:                                         ; preds = %land.lhs.true.if.end70_crit_edge, %if.end43.if.end70_crit_edge
  %qr_regions.i = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 3, i32 7
  %call.i = call i32 @o2hb_global_heartbeat_active() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end70
  %qr_numregions.i = getelementptr inbounds %struct.dlm_query_region, ptr %buf, i32 0, i32 1
  %23 = ptrtoint ptr %qr_numregions.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %qr_numregions.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i, label %if.then.i.out_dlm_lock_crit_edge, label %do.body.i

if.then.i.out_dlm_lock_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dlm_lock

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #14
  %25 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606847168, ptr %_m.i, align 8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %conv.i = zext i8 %27 to i32
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 12
  %28 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %node_num.i, align 4
  %conv6.i = zext i8 %29 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_match_regions, i32 noundef 969, ptr noundef nonnull @.str.114, ptr noundef %qr_domain, i32 noundef %conv.i, i32 noundef %conv6.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #14
  br label %out_dlm_lock

if.end8.i:                                        ; preds = %if.end70
  %call9.i = call i32 @o2hb_global_heartbeat_active() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end28.i_crit_edge, label %land.lhs.true.i98

if.end8.i.if.end28.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

land.lhs.true.i98:                                ; preds = %if.end8.i
  %qr_numregions11.i = getelementptr inbounds %struct.dlm_query_region, ptr %buf, i32 0, i32 1
  %30 = ptrtoint ptr %qr_numregions11.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %qr_numregions11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool12.not.i = icmp eq i8 %31, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %land.lhs.true.i98.if.end28.i_crit_edge

land.lhs.true.i98.if.end28.i_crit_edge:           ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

do.body14.i:                                      ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m15.i) #14
  %32 = ptrtoint ptr %_m15.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606847168, ptr %_m15.i, align 8
  %node_num21.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 12
  %33 = ptrtoint ptr %node_num21.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %node_num21.i, align 4
  %conv22.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %conv24.i = zext i8 %36 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m15.i, ptr noundef nonnull @__func__.dlm_match_regions, i32 noundef 978, ptr noundef nonnull @.str.115, ptr noundef %qr_domain, i32 noundef %conv22.i, i32 noundef %conv24.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m15.i) #14
  br label %out_dlm_lock

if.end28.i:                                       ; preds = %land.lhs.true.i98.if.end28.i_crit_edge, %if.end8.i.if.end28.i_crit_edge
  %qr_numregions29.i = getelementptr inbounds %struct.dlm_query_region, ptr %buf, i32 0, i32 1
  %37 = ptrtoint ptr %qr_numregions29.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %qr_numregions29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp5.not.i = icmp eq i8 %38, 0
  br i1 %cmp5.not.i, label %if.end28.i.cond.end.i_crit_edge, label %if.end28.i.do.body32.i_crit_edge

if.end28.i.do.body32.i_crit_edge:                 ; preds = %if.end28.i
  br label %do.body32.i

if.end28.i.cond.end.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

do.body32.i:                                      ; preds = %do.body32.i.do.body32.i_crit_edge, %if.end28.i.do.body32.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %do.body32.i.do.body32.i_crit_edge ], [ 0, %if.end28.i.do.body32.i_crit_edge ]
  %r.06.i = phi ptr [ %add.ptr.i, %do.body32.i.do.body32.i_crit_edge ], [ %qr_regions.i, %if.end28.i.do.body32.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33.i) #14
  %39 = ptrtoint ptr %_m33.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 192, ptr %_m33.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33.i, ptr noundef nonnull @__func__.dlm_match_regions, i32 noundef 985, ptr noundef nonnull @.str.82, i32 noundef 32, ptr noundef %r.06.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33.i) #14
  %add.ptr.i = getelementptr i8, ptr %r.06.i, i32 32
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %40 = ptrtoint ptr %qr_numregions29.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %qr_numregions29.i, align 1
  %conv30.i = zext i8 %41 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv30.i
  br i1 %cmp.i, label %do.body32.i.do.body32.i_crit_edge, label %do.body32.i.cond.end.i_crit_edge

do.body32.i.cond.end.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

do.body32.i.do.body32.i_crit_edge:                ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32.i

cond.end.i:                                       ; preds = %do.body32.i.cond.end.i_crit_edge, %if.end28.i.cond.end.i_crit_edge
  %call43.i = call i32 @o2hb_get_all_regions(ptr noundef nonnull %call7.i, i8 noundef zeroext 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp4510.i = icmp sgt i32 %call43.i, 0
  %42 = ptrtoint ptr %qr_numregions29.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %qr_numregions29.i, align 1
  br i1 %cmp4510.i, label %for.cond48.preheader.lr.ph.i, label %for.cond83.preheader.i.thread

for.cond48.preheader.lr.ph.i:                     ; preds = %cond.end.i
  %conv50.i = zext i8 %43 to i32
  br label %for.cond48.preheader.i

for.cond48.preheader.i:                           ; preds = %if.end78.i.for.cond48.preheader.i_crit_edge, %for.cond48.preheader.lr.ph.i
  %i.112.i = phi i32 [ 0, %for.cond48.preheader.lr.ph.i ], [ %inc81.i, %if.end78.i.for.cond48.preheader.i_crit_edge ]
  %l.011.i = phi ptr [ %call7.i, %for.cond48.preheader.lr.ph.i ], [ %add.ptr79.i, %if.end78.i.for.cond48.preheader.i_crit_edge ]
  br label %for.body53.i

for.cond83.preheader.i:                           ; preds = %if.end78.i
  %44 = ptrtoint ptr %qr_numregions29.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %qr_numregions29.i, align 1
  %conv85.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp8617.not.i = icmp eq i8 %45, 0
  br i1 %cmp8617.not.i, label %for.cond83.preheader.i.out_dlm_lock_crit_edge, label %for.cond89.preheader.i.preheader

for.cond83.preheader.i.out_dlm_lock_crit_edge:    ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dlm_lock

for.cond83.preheader.i.thread:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp8617.not.i113 = icmp eq i8 %43, 0
  br i1 %cmp8617.not.i113, label %for.cond83.preheader.i.thread.out_dlm_lock_crit_edge, label %for.cond83.preheader.i.thread.if.then102.critedge.i_crit_edge

for.cond83.preheader.i.thread.if.then102.critedge.i_crit_edge: ; preds = %for.cond83.preheader.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then102.critedge.i

for.cond83.preheader.i.thread.out_dlm_lock_crit_edge: ; preds = %for.cond83.preheader.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dlm_lock

for.cond89.preheader.i.preheader:                 ; preds = %for.cond83.preheader.i
  br i1 %cmp4510.i, label %for.cond89.preheader.i.preheader.for.cond89.preheader.i_crit_edge, label %for.cond89.preheader.i.preheader.if.then102.critedge.i_crit_edge

for.cond89.preheader.i.preheader.if.then102.critedge.i_crit_edge: ; preds = %for.cond89.preheader.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then102.critedge.i

for.cond89.preheader.i.preheader.for.cond89.preheader.i_crit_edge: ; preds = %for.cond89.preheader.i.preheader
  br label %for.cond89.preheader.i

for.body53.i:                                     ; preds = %if.end57.i.for.body53.i_crit_edge, %for.cond48.preheader.i
  %j.09.i = phi i32 [ 0, %for.cond48.preheader.i ], [ %inc60.i, %if.end57.i.for.body53.i_crit_edge ]
  %r.18.i = phi ptr [ %qr_regions.i, %for.cond48.preheader.i ], [ %add.ptr58.i, %if.end57.i.for.body53.i_crit_edge ]
  %bcmp1.i = call i32 @bcmp(ptr noundef dereferenceable(32) %l.011.i, ptr noundef dereferenceable(32) %r.18.i, i32 32) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool55.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool55.not.i, label %if.end78.i, label %if.end57.i

if.end57.i:                                       ; preds = %for.body53.i
  %add.ptr58.i = getelementptr i8, ptr %r.18.i, i32 32
  %inc60.i = add nuw nsw i32 %j.09.i, 1
  %exitcond.i = icmp eq i32 %j.09.i, %conv50.i
  br i1 %exitcond.i, label %if.then63.critedge.i, label %if.end57.i.for.body53.i_crit_edge

if.end57.i.for.body53.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body53.i

if.then63.critedge.i:                             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65.i) #14
  %46 = ptrtoint ptr %_m65.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606847168, ptr %_m65.i, align 8
  %node_num71.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 12
  %47 = ptrtoint ptr %node_num71.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %node_num71.i, align 4
  %conv72.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buf, align 1
  %conv74.i = zext i8 %50 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65.i, ptr noundef nonnull @__func__.dlm_match_regions, i32 noundef 1009, ptr noundef nonnull @.str.116, ptr noundef %qr_domain, i32 noundef 32, ptr noundef %l.011.i, i32 noundef %conv72.i, i32 noundef %conv74.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65.i) #14
  br label %out_dlm_lock

if.end78.i:                                       ; preds = %for.body53.i
  %add.ptr79.i = getelementptr i8, ptr %l.011.i, i32 32
  %inc81.i = add nuw nsw i32 %i.112.i, 1
  %exitcond25.not.i = icmp eq i32 %inc81.i, %call43.i
  br i1 %exitcond25.not.i, label %for.cond83.preheader.i, label %if.end78.i.for.cond48.preheader.i_crit_edge

if.end78.i.for.cond48.preheader.i_crit_edge:      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond48.preheader.i

for.cond89.preheader.i:                           ; preds = %if.end117.i.for.cond89.preheader.i_crit_edge, %for.cond89.preheader.i.preheader.for.cond89.preheader.i_crit_edge
  %i.219.i = phi i32 [ %inc120.i, %if.end117.i.for.cond89.preheader.i_crit_edge ], [ 0, %for.cond89.preheader.i.preheader.for.cond89.preheader.i_crit_edge ]
  %r.218.i = phi ptr [ %add.ptr118.i, %if.end117.i.for.cond89.preheader.i_crit_edge ], [ %qr_regions.i, %for.cond89.preheader.i.preheader.for.cond89.preheader.i_crit_edge ]
  br label %for.body92.i

for.body92.i:                                     ; preds = %if.end96.i.for.body92.i_crit_edge, %for.cond89.preheader.i
  %j.115.i = phi i32 [ %inc99.i, %if.end96.i.for.body92.i_crit_edge ], [ 0, %for.cond89.preheader.i ]
  %l.114.i = phi ptr [ %add.ptr97.i, %if.end96.i.for.body92.i_crit_edge ], [ %call7.i, %for.cond89.preheader.i ]
  %bcmp.i99 = call i32 @bcmp(ptr noundef dereferenceable(32) %r.218.i, ptr noundef dereferenceable(32) %l.114.i, i32 32) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i99)
  %tobool94.not.i = icmp eq i32 %bcmp.i99, 0
  br i1 %tobool94.not.i, label %if.end117.i, label %if.end96.i

if.end96.i:                                       ; preds = %for.body92.i
  %add.ptr97.i = getelementptr i8, ptr %l.114.i, i32 32
  %inc99.i = add nuw nsw i32 %j.115.i, 1
  %exitcond26.not.i = icmp eq i32 %inc99.i, %call43.i
  br i1 %exitcond26.not.i, label %if.end96.i.if.then102.critedge.i_crit_edge, label %if.end96.i.for.body92.i_crit_edge

if.end96.i.for.body92.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body92.i

if.end96.i.if.then102.critedge.i_crit_edge:       ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then102.critedge.i

if.then102.critedge.i:                            ; preds = %if.end96.i.if.then102.critedge.i_crit_edge, %for.cond89.preheader.i.preheader.if.then102.critedge.i_crit_edge, %for.cond83.preheader.i.thread.if.then102.critedge.i_crit_edge
  %r.21823.i = phi ptr [ %qr_regions.i, %for.cond89.preheader.i.preheader.if.then102.critedge.i_crit_edge ], [ %qr_regions.i, %for.cond83.preheader.i.thread.if.then102.critedge.i_crit_edge ], [ %r.218.i, %if.end96.i.if.then102.critedge.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m104.i) #14
  %51 = ptrtoint ptr %_m104.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1152921504606847168, ptr %_m104.i, align 8
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf, align 1
  %conv111.i = zext i8 %53 to i32
  %node_num112.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 12
  %54 = ptrtoint ptr %node_num112.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %node_num112.i, align 4
  %conv113.i = zext i8 %55 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m104.i, ptr noundef nonnull @__func__.dlm_match_regions, i32 noundef 1032, ptr noundef nonnull @.str.117, ptr noundef %qr_domain, i32 noundef 32, ptr noundef %r.21823.i, i32 noundef %conv111.i, i32 noundef %conv113.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m104.i) #14
  br label %out_dlm_lock

if.end117.i:                                      ; preds = %for.body92.i
  %add.ptr118.i = getelementptr i8, ptr %r.218.i, i32 32
  %inc120.i = add nuw nsw i32 %i.219.i, 1
  %exitcond27.not.i = icmp eq i32 %inc120.i, %conv85.i
  br i1 %exitcond27.not.i, label %if.end117.i.out_dlm_lock_crit_edge, label %if.end117.i.for.cond89.preheader.i_crit_edge

if.end117.i.for.cond89.preheader.i_crit_edge:     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond89.preheader.i

if.end117.i.out_dlm_lock_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dlm_lock

out_dlm_lock:                                     ; preds = %if.end117.i.out_dlm_lock_crit_edge, %if.then102.critedge.i, %if.then63.critedge.i, %for.cond83.preheader.i.thread.out_dlm_lock_crit_edge, %for.cond83.preheader.i.out_dlm_lock_crit_edge, %do.body14.i, %do.body.i, %if.then.i.out_dlm_lock_crit_edge, %do.body52, %do.body29
  %status.0 = phi i32 [ -22, %do.body29 ], [ -22, %do.body52 ], [ -22, %if.then63.critedge.i ], [ -22, %if.then102.critedge.i ], [ -22, %do.body14.i ], [ -22, %do.body.i ], [ 0, %if.then.i.out_dlm_lock_crit_edge ], [ 0, %for.cond83.preheader.i.out_dlm_lock_crit_edge ], [ 0, %for.cond83.preheader.i.thread.out_dlm_lock_crit_edge ], [ 0, %if.end117.i.out_dlm_lock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  br label %out_domain_lock

out_domain_lock:                                  ; preds = %out_dlm_lock, %do.body11
  %status.1 = phi i32 [ %status.0, %out_dlm_lock ], [ -22, %do.body11 ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out_domain_lock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %out_domain_lock ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_query_nodeinfo_handler(ptr noundef %msg, i32 noundef %len, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %ret_data) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m71.i = alloca i64, align 8
  %_m91.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m8 = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m49 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 192, ptr %_m, align 8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 4
  %conv = zext i8 %2 to i32
  %qn_domain = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 2
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_query_nodeinfo_handler, i32 noundef 1282, ptr noundef nonnull @.str.118, i32 noundef %conv, ptr noundef %qn_domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  call void @_raw_spin_lock(ptr noundef nonnull @dlm_domain_lock) #14
  %qn_namelen = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 1
  %3 = ptrtoint ptr %qn_namelen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %qn_namelen, align 2
  %conv4 = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @dlm_domain_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !322

for.cond.preheader.i:                             ; preds = %entry
  %tmp.029.i = load ptr, ptr @dlm_domains, align 4
  %cmp.not30.i = icmp eq ptr %tmp.029.i, @dlm_domains
  br i1 %cmp.not30.i, label %for.cond.preheader.i.bail.thread105_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.bail.thread105_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread105

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.031.i = phi ptr [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tmp.029.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 11
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call13.i = call i32 @strlen(ptr noundef %7) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %conv4)
  %cmp14.i = icmp eq i32 %call13.i, %conv4
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr %7, ptr %qn_domain, i32 %conv4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp17.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.i, label %__dlm_lookup_domain_full.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %tmp.031.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0.i = load ptr, ptr %tmp.031.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @dlm_domains
  br i1 %cmp.not.i, label %for.inc.i.bail.thread105_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.bail.thread105_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread105

__dlm_lookup_domain_full.exit:                    ; preds = %land.lhs.true.i
  %tobool5.not = icmp eq ptr %tmp.031.i, null
  br i1 %tobool5.not, label %__dlm_lookup_domain_full.exit.bail.thread105_crit_edge, label %if.end19

__dlm_lookup_domain_full.exit.bail.thread105_crit_edge: ; preds = %__dlm_lookup_domain_full.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail.thread105

bail.thread105:                                   ; preds = %__dlm_lookup_domain_full.exit.bail.thread105_crit_edge, %for.inc.i.bail.thread105_crit_edge, %for.cond.preheader.i.bail.thread105_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m8) #14
  %9 = ptrtoint ptr %_m8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606847168, ptr %_m8, align 8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 4
  %conv13 = zext i8 %11 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m8, ptr noundef nonnull @__func__.dlm_query_nodeinfo_handler, i32 noundef 1288, ptr noundef nonnull @.str.119, i32 noundef %conv13, ptr noundef %qn_domain) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m8) #14
  br label %if.end71

if.end19:                                         ; preds = %__dlm_lookup_domain_full.exit
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock) #14
  %joining_node = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 14
  %12 = ptrtoint ptr %joining_node to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %joining_node, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not = icmp eq i8 %13, %15
  br i1 %cmp.not, label %if.end39, label %do.body25

do.body25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #14
  %16 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606847168, ptr %_m26, align 8
  %conv31 = zext i8 %15 to i32
  %conv35 = zext i8 %13 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.dlm_query_nodeinfo_handler, i32 noundef 1297, ptr noundef nonnull @.str.120, i32 noundef %conv31, ptr noundef %qn_domain, i32 noundef %conv35) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #14
  br label %if.then69

if.end39:                                         ; preds = %if.end19
  %dlm_locking_proto = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 48
  %17 = ptrtoint ptr %dlm_locking_proto to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dlm_locking_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp41 = icmp eq i8 %18, 1
  br i1 %cmp41, label %land.lhs.true, label %if.end39.if.end66_crit_edge

if.end39.if.end66_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end39
  %pv_minor = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 48, i32 1
  %19 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pv_minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp45 = icmp eq i8 %20, 0
  br i1 %cmp45, label %do.body48, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.body48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #14
  %21 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606847168, ptr %_m49, align 8
  %conv54 = zext i8 %13 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.dlm_query_nodeinfo_handler, i32 noundef 1307, ptr noundef nonnull @.str.121, i32 noundef %conv54, ptr noundef %qn_domain, i32 noundef 1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #14
  br label %if.then69

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end39.if.end66_crit_edge
  %qn_numnodes.i = getelementptr inbounds %struct.dlm_query_nodeinfo, ptr %buf, i32 0, i32 1
  %22 = ptrtoint ptr %qn_numnodes.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %qn_numnodes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp200.not.i = icmp eq i8 %23, 0
  br i1 %cmp200.not.i, label %if.end66.for.cond8.preheader.i_crit_edge, label %if.end66.do.body.i_crit_edge

if.end66.do.body.i_crit_edge:                     ; preds = %if.end66
  br label %do.body.i

if.end66.for.cond8.preheader.i_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %do.body.i.for.cond8.preheader.i_crit_edge, %if.end66.for.cond8.preheader.i_crit_edge
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %tmp.031.i, i32 0, i32 12
  br label %for.body12.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end66.do.body.i_crit_edge
  %j.0201.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end66.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #14
  %24 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 192, ptr %_m.i, align 8
  %arrayidx.i = getelementptr %struct.dlm_query_nodeinfo, ptr %buf, i32 0, i32 5, i32 %j.0201.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 4
  %conv2.i = zext i8 %26 to i32
  %ni_ipv4_address.i = getelementptr %struct.dlm_query_nodeinfo, ptr %buf, i32 0, i32 5, i32 %j.0201.i, i32 3
  %ni_ipv4_port.i = getelementptr %struct.dlm_query_nodeinfo, ptr %buf, i32 0, i32 5, i32 %j.0201.i, i32 2
  %27 = ptrtoint ptr %ni_ipv4_port.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ni_ipv4_port.i, align 2
  %conv7.i = zext i16 %28 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_match_nodes, i32 noundef 1164, ptr noundef nonnull @.str.79, i32 noundef %conv2.i, ptr noundef %ni_ipv4_address.i, i32 noundef %conv7.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #14
  %inc.i = add nuw nsw i32 %j.0201.i, 1
  %29 = ptrtoint ptr %qn_numnodes.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %qn_numnodes.i, align 1
  %conv.i = zext i8 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.cond8.preheader.i_crit_edge

do.body.i.for.cond8.preheader.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond8.preheader.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.body12.i:                                     ; preds = %for.inc133.i.for.body12.i_crit_edge, %for.cond8.preheader.i
  %i.0205.i = phi i32 [ 0, %for.cond8.preheader.i ], [ %inc134.i, %for.inc133.i.for.body12.i_crit_edge ]
  %conv13.i = trunc i32 %i.0205.i to i8
  %call.i = call ptr @o2nm_get_node_by_num(i8 noundef zeroext %conv13.i) #14
  %31 = ptrtoint ptr %qn_numnodes.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %qn_numnodes.i, align 1
  %conv16.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp17202.not.i = icmp eq i8 %32, 0
  br i1 %cmp17202.not.i, label %for.body12.i.for.end32.i_crit_edge, label %for.body12.i.for.body19.i_crit_edge

for.body12.i.for.body19.i_crit_edge:              ; preds = %for.body12.i
  br label %for.body19.i

for.body12.i.for.end32.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end32.i

for.cond14.i:                                     ; preds = %for.body19.i
  %inc31.i = add nuw nsw i32 %j.1203.i, 1
  %exitcond.not.i = icmp eq i32 %inc31.i, %conv16.i
  br i1 %exitcond.not.i, label %for.cond14.i.for.end32.i_crit_edge, label %for.cond14.i.for.body19.i_crit_edge

for.cond14.i.for.body19.i_crit_edge:              ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i

for.cond14.i.for.end32.i_crit_edge:               ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end32.i

for.body19.i:                                     ; preds = %for.cond14.i.for.body19.i_crit_edge, %for.body12.i.for.body19.i_crit_edge
  %j.1203.i = phi i32 [ %inc31.i, %for.cond14.i.for.body19.i_crit_edge ], [ 0, %for.body12.i.for.body19.i_crit_edge ]
  %arrayidx21.i = getelementptr %struct.dlm_query_nodeinfo, ptr %buf, i32 0, i32 5, i32 %j.1203.i
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx21.i, align 4
  %conv23.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0205.i, i32 %conv23.i)
  %cmp24.i = icmp eq i32 %i.0205.i, %conv23.i
  br i1 %cmp24.i, label %for.body19.i.for.end32.i_crit_edge, label %for.cond14.i

for.body19.i.for.end32.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end32.i

for.end32.i:                                      ; preds = %for.body19.i.for.end32.i_crit_edge, %for.cond14.i.for.end32.i_crit_edge, %for.body12.i.for.end32.i_crit_edge
  %remote.0.i = phi ptr [ null, %for.body12.i.for.end32.i_crit_edge ], [ null, %for.cond14.i.for.end32.i_crit_edge ], [ %arrayidx21.i, %for.body19.i.for.end32.i_crit_edge ]
  %tobool33.not.i = icmp eq ptr %call.i, null
  %tobool34.not.i = icmp eq ptr %remote.0.i, null
  %or.cond185.i = and i1 %tobool33.not.i, %tobool34.not.i
  br i1 %or.cond185.i, label %for.end32.i.for.inc133.i_crit_edge, label %if.end36.i

for.end32.i.for.inc133.i_crit_edge:               ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc133.i

if.end36.i:                                       ; preds = %for.end32.i
  %tobool33.not.not.i = xor i1 %tobool33.not.i, true
  %35 = xor i1 %tobool33.not.i, %tobool34.not.i
  br i1 %35, label %if.end36.i.if.then65.i_crit_edge, label %land.lhs.true46.i

if.end36.i.if.then65.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65.i

land.lhs.true46.i:                                ; preds = %if.end36.i
  %36 = ptrtoint ptr %remote.0.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %remote.0.i, align 4
  %nd_num.i = getelementptr inbounds %struct.o2nm_node, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nd_num.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp50.not.i = icmp eq i8 %37, %39
  br i1 %cmp50.not.i, label %lor.lhs.false52.i, label %land.lhs.true46.i.if.then65.i_crit_edge

land.lhs.true46.i.if.then65.i_crit_edge:          ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65.i

lor.lhs.false52.i:                                ; preds = %land.lhs.true46.i
  %ni_ipv4_port53.i = getelementptr inbounds %struct.dlm_node_info, ptr %remote.0.i, i32 0, i32 2
  %40 = ptrtoint ptr %ni_ipv4_port53.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ni_ipv4_port53.i, align 2
  %nd_ipv4_port.i = getelementptr inbounds %struct.o2nm_node, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %nd_ipv4_port.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nd_ipv4_port.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp56.not.i = icmp eq i16 %41, %43
  br i1 %cmp56.not.i, label %lor.lhs.false58.i, label %lor.lhs.false52.i.if.then65.i_crit_edge

lor.lhs.false52.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65.i

lor.lhs.false58.i:                                ; preds = %lor.lhs.false52.i
  %ni_ipv4_address59.i = getelementptr inbounds %struct.dlm_node_info, ptr %remote.0.i, i32 0, i32 3
  %44 = ptrtoint ptr %ni_ipv4_address59.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ni_ipv4_address59.i, align 4
  %nd_ipv4_address.i = getelementptr inbounds %struct.o2nm_node, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %nd_ipv4_address.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nd_ipv4_address.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp60.not.i = icmp eq i32 %45, %47
  br i1 %cmp60.not.i, label %lor.lhs.false58.i.if.end129.i_crit_edge, label %lor.lhs.false58.i.if.then65.i_crit_edge

lor.lhs.false58.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65.i

lor.lhs.false58.i.if.end129.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129.i

if.then65.i:                                      ; preds = %lor.lhs.false58.i.if.then65.i_crit_edge, %lor.lhs.false52.i.if.then65.i_crit_edge, %land.lhs.true46.i.if.then65.i_crit_edge, %if.end36.i.if.then65.i_crit_edge
  %brmerge.i = select i1 %tobool34.not.i, i1 true, i1 %tobool33.not.not.i
  br i1 %brmerge.i, label %if.then65.i.if.end85.i_crit_edge, label %do.body70.i

if.then65.i.if.end85.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i

do.body70.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71.i) #14
  %48 = ptrtoint ptr %_m71.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606847168, ptr %_m71.i, align 8
  %49 = ptrtoint ptr %remote.0.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %remote.0.i, align 4
  %conv76.i = zext i8 %50 to i32
  %ni_ipv4_address77.i = getelementptr inbounds %struct.dlm_node_info, ptr %remote.0.i, i32 0, i32 3
  %ni_ipv4_port78.i = getelementptr inbounds %struct.dlm_node_info, ptr %remote.0.i, i32 0, i32 2
  %51 = ptrtoint ptr %ni_ipv4_port78.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ni_ipv4_port78.i, align 2
  %conv79.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf, align 4
  %conv80.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %node_num.i, align 4
  %conv81.i = zext i8 %56 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71.i, ptr noundef nonnull @__func__.dlm_match_nodes, i32 noundef 1196, ptr noundef nonnull @.str.122, ptr noundef %qn_domain, i32 noundef %conv76.i, ptr noundef %ni_ipv4_address77.i, i32 noundef %conv79.i, i32 noundef %conv80.i, i32 noundef %conv81.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71.i) #14
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.body70.i, %if.then65.i.if.end85.i_crit_edge
  %tobool66.not.not.i = xor i1 %tobool34.not.i, true
  %brmerge190.i = or i1 %tobool33.not.i, %tobool66.not.not.i
  br i1 %brmerge190.i, label %if.end85.i.if.end129.i_crit_edge, label %do.body90.i

if.end85.i.if.end129.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129.i

do.body90.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m91.i) #14
  %57 = ptrtoint ptr %_m91.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606847168, ptr %_m91.i, align 8
  %nd_num97.i = getelementptr inbounds %struct.o2nm_node, ptr %call.i, i32 0, i32 3
  %58 = ptrtoint ptr %nd_num97.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nd_num97.i, align 1
  %conv98.i = zext i8 %59 to i32
  %nd_ipv4_address99.i = getelementptr inbounds %struct.o2nm_node, ptr %call.i, i32 0, i32 4
  %nd_ipv4_port100.i = getelementptr inbounds %struct.o2nm_node, ptr %call.i, i32 0, i32 5
  %60 = ptrtoint ptr %nd_ipv4_port100.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nd_ipv4_port100.i, align 4
  %conv101.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %node_num.i, align 4
  %conv103.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %buf, align 4
  %conv105.i = zext i8 %65 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m91.i, ptr noundef nonnull @__func__.dlm_match_nodes, i32 noundef 1203, ptr noundef nonnull @.str.123, ptr noundef %qn_domain, i32 noundef %conv98.i, ptr noundef %nd_ipv4_address99.i, i32 noundef %conv101.i, i32 noundef %conv103.i, i32 noundef %conv105.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m91.i) #14
  br label %if.end129.i

if.end129.i:                                      ; preds = %do.body90.i, %if.end85.i.if.end129.i_crit_edge, %lor.lhs.false58.i.if.end129.i_crit_edge
  %status.2196.i = phi i32 [ 0, %lor.lhs.false58.i.if.end129.i_crit_edge ], [ -22, %if.end85.i.if.end129.i_crit_edge ], [ -22, %do.body90.i ]
  br i1 %tobool33.not.i, label %if.end129.i.for.inc133.i_crit_edge, label %if.then131.i

if.end129.i.for.inc133.i_crit_edge:               ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc133.i

if.then131.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @o2nm_node_put(ptr noundef nonnull %call.i) #14
  br label %for.inc133.i

for.inc133.i:                                     ; preds = %if.then131.i, %if.end129.i.for.inc133.i_crit_edge, %for.end32.i.for.inc133.i_crit_edge
  %status.3.i = phi i32 [ %status.2196.i, %if.then131.i ], [ %status.2196.i, %if.end129.i.for.inc133.i_crit_edge ], [ 0, %for.end32.i.for.inc133.i_crit_edge ]
  %inc134.i = add nuw nsw i32 %i.0205.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %i.0205.i)
  %cmp9.i = icmp ult i32 %i.0205.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3.i)
  %tobool11.not.i = icmp eq i32 %status.3.i, 0
  %or.cond.i = and i1 %cmp9.i, %tobool11.not.i
  br i1 %or.cond.i, label %for.inc133.i.for.body12.i_crit_edge, label %for.inc133.i.if.then69_crit_edge

for.inc133.i.if.then69_crit_edge:                 ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then69

for.inc133.i.for.body12.i_crit_edge:              ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body12.i

if.then69:                                        ; preds = %for.inc133.i.if.then69_crit_edge, %do.body48, %do.body25
  %status.0103 = phi i32 [ -22, %do.body25 ], [ -22, %do.body48 ], [ %status.3.i, %for.inc133.i.if.then69_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %bail.thread105
  %status.0104 = phi i32 [ %status.0103, %if.then69 ], [ -22, %bail.thread105 ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_domain_lock) #14
  ret i32 %status.0104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_check_node_heartbeating_no_sem(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_query_join_proto_check(ptr noundef %proto_type, i32 noundef %node, ptr nocapture noundef readonly %ours, ptr nocapture noundef %request) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m11 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %request to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %request, align 1
  %proto.sroa.0.0.extract.shift = lshr i16 %1, 8
  %proto.sroa.0.0.extract.trunc = trunc i16 %proto.sroa.0.0.extract.shift to i8
  %2 = ptrtoint ptr %ours to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ours, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %proto.sroa.0.0.extract.trunc)
  %cmp.not.i = icmp eq i8 %3, %proto.sroa.0.0.extract.trunc
  br i1 %cmp.not.i, label %if.end.i, label %entry.do.body10_crit_edge

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.end.i:                                         ; preds = %entry
  %proto.sroa.6.0.extract.trunc = trunc i16 %1 to i8
  %pv_minor.i = getelementptr inbounds %struct.dlm_protocol_version, ptr %ours, i32 0, i32 1
  %4 = ptrtoint ptr %pv_minor.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pv_minor.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %proto.sroa.6.0.extract.trunc)
  %cmp7.i = icmp ugt i8 %5, %proto.sroa.6.0.extract.trunc
  br i1 %cmp7.i, label %if.end.i.do.body10_crit_edge, label %if.end10.i

if.end.i.do.body10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #14
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 192, ptr %_m, align 8
  %7 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %request, align 1
  %conv = zext i8 %8 to i32
  %pv_minor = getelementptr inbounds %struct.dlm_protocol_version, ptr %request, i32 0, i32 1
  %9 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pv_minor, align 1
  %conv3 = zext i8 %10 to i32
  %conv5 = zext i16 %proto.sroa.0.0.extract.shift to i32
  %conv7 = zext i8 %5 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_query_join_proto_check, i32 noundef 740, ptr noundef nonnull @.str.104, i32 noundef %node, ptr noundef %proto_type, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #14
  %11 = ptrtoint ptr %pv_minor to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %5, ptr %pv_minor, align 1
  br label %if.end26

do.body10:                                        ; preds = %if.end.i.do.body10_crit_edge, %entry.do.body10_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m11) #14
  %12 = ptrtoint ptr %_m11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2305843009213694144, ptr %_m11, align 8
  %13 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %request, align 1
  %conv16 = zext i8 %14 to i32
  %pv_minor17 = getelementptr inbounds %struct.dlm_protocol_version, ptr %request, i32 0, i32 1
  %15 = ptrtoint ptr %pv_minor17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pv_minor17, align 1
  %conv18 = zext i8 %16 to i32
  %conv20 = zext i8 %3 to i32
  %pv_minor21 = getelementptr inbounds %struct.dlm_protocol_version, ptr %ours, i32 0, i32 1
  %17 = ptrtoint ptr %pv_minor21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pv_minor21, align 1
  %conv22 = zext i8 %18 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m11, ptr noundef nonnull @__func__.dlm_query_join_proto_check, i32 noundef 751, ptr noundef nonnull @.str.105, i32 noundef %node, ptr noundef %proto_type, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m11) #14
  br label %if.end26

if.end26:                                         ; preds = %do.body10, %if.end10.i
  %rc.0 = phi i32 [ 1, %do.body10 ], [ 0, %if.end10.i ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !63, !65, !66, !68, !70, !71, !73, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !132, !133, !135, !137, !138, !140, !142, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !172, !173, !175, !177, !178, !179, !181, !183, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !220, !221, !223, !224, !226, !228, !230, !231, !232, !234, !236, !237, !239, !241, !243, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !265, !267, !269, !270, !272, !274, !275, !276, !278, !279, !281, !282, !284, !286, !288, !290, !291, !293, !295, !297, !299, !300, !302, !304, !306, !308, !310}
!llvm.named.register.sp = !{!312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 104, i32 1}
!2 = !{ptr @dlm_domain_lock, !1, !"dlm_domain_lock", i1 false, i1 false}
!3 = !{ptr @dlm_domains, !4, !"dlm_domains", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 105, i32 1}
!5 = !{ptr @__func__.__dlm_unhash_lockres, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 150, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.__dlm_insert_lockres, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 169, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.__dlm_lookup_lockres_full, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 181, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.__dlm_lookup_lockres, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 213, i32 2}
!16 = !{ptr @__func__.dlm_unregister_domain, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 696, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 705, i32 4}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 710, i32 4}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 718, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dlm_unregister_domain._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @dlm_unregister_domain._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_dlm_unregister_domain, !29, !"__ksymtab_dlm_unregister_domain", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 724, i32 1}
!30 = !{ptr @__func__.dlm_register_domain, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2111, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2115, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2121, i32 3}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2132, i32 4}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2141, i32 4}
!41 = !{ptr @__ksymtab_dlm_register_domain, !42, !"__ksymtab_dlm_register_domain", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2206, i32 1}
!43 = !{ptr @__ksymtab_dlm_setup_eviction_cb, !44, !"__ksymtab_dlm_setup_eviction_cb", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2292, i32 1}
!45 = !{ptr @__ksymtab_dlm_register_eviction_cb, !46, !"__ksymtab_dlm_register_eviction_cb", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2301, i32 1}
!47 = !{ptr @__ksymtab_dlm_unregister_eviction_cb, !48, !"__ksymtab_dlm_unregister_eviction_cb", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2309, i32 1}
!49 = !{ptr @__UNIQUE_ID_author474, !50, !"__UNIQUE_ID_author474", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2360, i32 1}
!51 = !{ptr @__UNIQUE_ID_file475, !52, !"__UNIQUE_ID_file475", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2361, i32 1}
!53 = !{ptr @__UNIQUE_ID_license476, !52, !"__UNIQUE_ID_license476", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_description477, !55, !"__UNIQUE_ID_description477", i1 false, i1 false}
!55 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2362, i32 1}
!56 = !{ptr @__initcall__kmod_ocfs2_dlm__478_2364_dlm_init6, !57, !"__initcall__kmod_ocfs2_dlm__478_2364_dlm_init6", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2364, i32 1}
!58 = !{ptr @__exitcall_dlm_exit, !59, !"__exitcall_dlm_exit", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2365, i32 1}
!60 = !{ptr @__func__.dlm_ctxt_release, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 321, i32 2}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.dlm_send_one_domain_exit, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 580, i32 2}
!65 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 589, i32 3}
!68 = !{ptr @__func__.dlm_migrate_all_locks, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 411, i32 2}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 449, i32 4}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 453, i32 4}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 465, i32 3}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 469, i32 2}
!79 = !{ptr @__func__.dlm_mark_domain_leaving, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 515, i32 3}
!81 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__func__.dlm_leave_domain, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 654, i32 4}
!84 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 106, i32 8}
!87 = !{ptr @dlm_domain_events, !86, !"dlm_domain_events", i1 false, i1 false}
!88 = !{ptr @__func__.dlm_alloc_ctxt, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1956, i32 3}
!90 = !{ptr @dlm_alloc_ctxt.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1993, i32 2}
!92 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @dlm_alloc_ctxt.__key.26, !94, !"__key", i1 false, i1 false}
!94 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1994, i32 2}
!95 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dlm_alloc_ctxt.__key.28, !97, !"__key", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1995, i32 2}
!98 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dlm_alloc_ctxt.__key.30, !100, !"__key", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1996, i32 2}
!101 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2009, i32 2}
!104 = !{ptr @dlm_alloc_ctxt.__key.33, !105, !"__key", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2019, i32 2}
!106 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dlm_alloc_ctxt.__key.35, !108, !"__key", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2020, i32 2}
!109 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dlm_alloc_ctxt.__key.37, !111, !"__key", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2021, i32 2}
!112 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dlm_alloc_ctxt.__key.39, !114, !"__key", i1 false, i1 false}
!114 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2022, i32 2}
!115 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @dlm_alloc_ctxt.__key.41, !117, !"__key", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2023, i32 2}
!118 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @dlm_alloc_ctxt.__key.43, !120, !"__key", i1 false, i1 false}
!120 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2027, i32 2}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @dlm_alloc_ctxt.__key.45, !123, !"__key", i1 false, i1 false}
!123 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2041, i32 2}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @dlm_alloc_ctxt.__key.47, !126, !"__key", i1 false, i1 false}
!126 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2043, i32 2}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2050, i32 2}
!130 = !{ptr @__func__.dlm_alloc_pagevec, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 82, i32 2}
!132 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"dlm_protocol", i1 false, i1 false}
!134 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 123, i32 42}
!135 = !{ptr @__func__.dlm_join_domain, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1861, i32 2}
!137 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1883, i32 39}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1906, i32 5}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1922, i32 4}
!144 = !{ptr @__func__.dlm_register_domain_handlers, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1713, i32 2}
!146 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @__func__.dlm_exit_domain_handler, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 551, i32 2}
!149 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 561, i32 2}
!152 = !{ptr @dlm_exit_domain_handler._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @dlm_exit_domain_handler._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 535, i32 2}
!156 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @__dlm_print_nodes._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @__dlm_print_nodes._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 538, i32 3}
!161 = !{ptr @__dlm_print_nodes._entry.60, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @__dlm_print_nodes._entry_ptr.62, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 541, i32 2}
!165 = !{ptr @__dlm_print_nodes._entry.63, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @__dlm_print_nodes._entry_ptr.65, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @__func__.dlm_begin_exit_domain_handler, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 495, i32 2}
!169 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__func__.dlm_try_to_join_domain, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1595, i32 2}
!172 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1639, i32 2}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1681, i32 3}
!177 = !{ptr @dlm_try_to_join_domain._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dlm_try_to_join_domain._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1698, i32 2}
!181 = !{ptr @__func__.dlm_request_join, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1421, i32 2}
!183 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1436, i32 3}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1457, i32 4}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1473, i32 4}
!190 = !{ptr @.str.75, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1484, i32 4}
!192 = !{ptr @.str.76, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1492, i32 2}
!194 = !{ptr @__func__.dlm_should_restart_join, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1572, i32 3}
!196 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.78, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1584, i32 3}
!199 = !{ptr @__func__.dlm_send_nodeinfo, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1226, i32 3}
!201 = !{ptr @.str.79, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1237, i32 3}
!203 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1254, i32 3}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1262, i32 4}
!207 = !{ptr @__func__.dlm_send_regions, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1054, i32 3}
!209 = !{ptr @.str.82, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1068, i32 3}
!211 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1076, i32 3}
!213 = !{ptr @.str.84, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1084, i32 4}
!215 = !{ptr @__func__.dlm_send_join_asserts, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1549, i32 5}
!217 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @__func__.dlm_send_one_join_assert, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1506, i32 2}
!220 = !{ptr @.str.86, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @__func__.dlm_send_join_cancels, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1385, i32 3}
!223 = distinct !{null, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.88, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1400, i32 4}
!226 = !{ptr @__func__.dlm_send_one_join_cancel, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1365, i32 3}
!228 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2270, i32 8}
!230 = !{ptr @.str.90, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @dlm_callback_sem, !229, !"dlm_callback_sem", i1 false, i1 false}
!232 = !{ptr @dlm_join_handlers, !233, !"dlm_join_handlers", i1 false, i1 false}
!233 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2208, i32 8}
!234 = !{ptr @__func__.dlm_init, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2317, i32 3}
!236 = !{ptr @.str.91, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.92, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2323, i32 3}
!239 = !{ptr @.str.93, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2330, i32 3}
!241 = !{ptr @.str.94, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 2336, i32 3}
!243 = !{ptr @__func__.dlm_query_join_handler, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 802, i32 2}
!245 = !{ptr @.str.95, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.96, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 811, i32 3}
!248 = !{ptr @.str.97, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 834, i32 5}
!250 = !{ptr @.str.98, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 862, i32 4}
!252 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 866, i32 4}
!254 = !{ptr @.str.100, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 870, i32 4}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 881, i32 35}
!258 = !{ptr @.str.102, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 885, i32 42}
!260 = !{ptr @.str.103, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 903, i32 2}
!262 = !{ptr @__func__.dlm_query_join_proto_check, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 734, i32 3}
!264 = !{ptr @.str.104, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.105, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 744, i32 3}
!267 = !{ptr @__func__.dlm_assert_joined_handler, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 917, i32 2}
!269 = !{ptr @.str.106, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.107, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 932, i32 4}
!272 = !{ptr @.str.108, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 942, i32 3}
!274 = !{ptr @dlm_assert_joined_handler._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @dlm_assert_joined_handler._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @__func__.dlm_cancel_join_handler, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1329, i32 2}
!278 = !{ptr @.str.109, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @__func__.dlm_query_region_handler, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1105, i32 2}
!281 = !{ptr @.str.110, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.111, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1118, i32 3}
!284 = !{ptr @.str.112, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1125, i32 3}
!286 = !{ptr @.str.113, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1134, i32 3}
!288 = !{ptr @__func__.dlm_match_regions, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 967, i32 4}
!290 = !{ptr @.str.114, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.115, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 976, i32 3}
!293 = !{ptr @.str.116, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1006, i32 4}
!295 = !{ptr @.str.117, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1029, i32 4}
!297 = !{ptr @__func__.dlm_query_nodeinfo_handler, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1281, i32 2}
!299 = !{ptr @.str.118, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.119, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1287, i32 3}
!302 = !{ptr @.str.120, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1295, i32 3}
!304 = !{ptr @.str.121, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1304, i32 3}
!306 = !{ptr @__func__.dlm_match_nodes, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1162, i32 3}
!308 = !{ptr @.str.122, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1190, i32 5}
!310 = !{ptr @.str.123, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ocfs2/dlm/dlmdomain.c", i32 1198, i32 5}
!312 = !{!"sp"}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{!"branch_weights", i32 1, i32 2000}
!323 = !{i64 2157105646, i64 2157106135, i64 2157105683, i64 2157105739, i64 2157105773, i64 2157105797, i64 2157105838, i64 2157105859, i64 2157105887, i64 2157105921}
!324 = !{i64 2148400921, i64 2148400953, i64 2148400982, i64 2148401016, i64 2148401047, i64 2148401070}
!325 = !{!"branch_weights", i32 2000, i32 1}
!326 = !{i64 2157112198, i64 2157112687, i64 2157112235, i64 2157112291, i64 2157112325, i64 2157112349, i64 2157112390, i64 2157112411, i64 2157112439, i64 2157112473}
!327 = !{i64 2157117580, i64 2157118069, i64 2157117617, i64 2157117673, i64 2157117707, i64 2157117731, i64 2157117772, i64 2157117793, i64 2157117821, i64 2157117855}
!328 = !{i64 2148488946}
!329 = !{i64 2148403386, i64 2148403418, i64 2148403447, i64 2148403481, i64 2148403512, i64 2148403535}
!330 = !{i64 2149365060}
!331 = !{i64 2157127622, i64 2157128111, i64 2157127659, i64 2157127715, i64 2157127749, i64 2157127773, i64 2157127814, i64 2157127835, i64 2157127863, i64 2157127897}
!332 = !{i64 2157129259, i64 2157129748, i64 2157129296, i64 2157129352, i64 2157129386, i64 2157129410, i64 2157129451, i64 2157129472, i64 2157129500, i64 2157129534}
!333 = !{i64 2157149856, i64 2157150345, i64 2157149893, i64 2157149949, i64 2157149983, i64 2157150007, i64 2157150048, i64 2157150069, i64 2157150097, i64 2157150131}
!334 = !{i64 2157151457, i64 2157151946, i64 2157151494, i64 2157151550, i64 2157151584, i64 2157151608, i64 2157151649, i64 2157151670, i64 2157151698, i64 2157151732}
!335 = !{i64 2157124628, i64 2157125117, i64 2157124665, i64 2157124721, i64 2157124755, i64 2157124779, i64 2157124820, i64 2157124841, i64 2157124869, i64 2157124903}
!336 = !{i64 2157119540, i64 2157120029, i64 2157119577, i64 2157119633, i64 2157119667, i64 2157119691, i64 2157119732, i64 2157119753, i64 2157119781, i64 2157119815}
!337 = !{i64 2157076910, i64 2157077399, i64 2157076947, i64 2157077003, i64 2157077037, i64 2157077061, i64 2157077102, i64 2157077123, i64 2157077151, i64 2157077185}
!338 = !{!"auto-init"}
!339 = !{i64 2157140987, i64 2157141476, i64 2157141024, i64 2157141080, i64 2157141114, i64 2157141138, i64 2157141179, i64 2157141200, i64 2157141228, i64 2157141262}
!340 = !{i64 2157164391, i64 2157164880, i64 2157164428, i64 2157164484, i64 2157164518, i64 2157164542, i64 2157164583, i64 2157164604, i64 2157164632, i64 2157164666}
!341 = !{i64 2157187017, i64 2157187507, i64 2157187054, i64 2157187110, i64 2157187144, i64 2157187168, i64 2157187209, i64 2157187230, i64 2157187258, i64 2157187292}
