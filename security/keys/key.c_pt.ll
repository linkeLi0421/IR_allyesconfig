; ModuleID = '/llk/IR_all_yes/security/keys/key.c_pt.bc'
source_filename = "../security/keys/key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+key_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_key_alloc\09\09\09\09"
module asm "\09.long\09__crc_key_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22key_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_key_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_payload_reserve\22, \22a\22\09"
module asm "\09.weak\09__crc_key_payload_reserve\09\09\09\09"
module asm "\09.long\09__crc_key_payload_reserve\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_payload_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22key_payload_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_key_payload_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_instantiate_and_link\22, \22a\22\09"
module asm "\09.weak\09__crc_key_instantiate_and_link\09\09\09\09"
module asm "\09.long\09__crc_key_instantiate_and_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_instantiate_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22key_instantiate_and_link\22\09\09\09\09\09"
module asm "__kstrtabns_key_instantiate_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_reject_and_link\22, \22a\22\09"
module asm "\09.weak\09__crc_key_reject_and_link\09\09\09\09"
module asm "\09.long\09__crc_key_reject_and_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_reject_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22key_reject_and_link\22\09\09\09\09\09"
module asm "__kstrtabns_key_reject_and_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_put\22, \22a\22\09"
module asm "\09.weak\09__crc_key_put\09\09\09\09"
module asm "\09.long\09__crc_key_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_put:\09\09\09\09\09"
module asm "\09.asciz \09\22key_put\22\09\09\09\09\09"
module asm "__kstrtabns_key_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+key_set_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_key_set_timeout\09\09\09\09"
module asm "\09.long\09__crc_key_set_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22key_set_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_key_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_create_or_update\22, \22a\22\09"
module asm "\09.weak\09__crc_key_create_or_update\09\09\09\09"
module asm "\09.long\09__crc_key_create_or_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_create_or_update:\09\09\09\09\09"
module asm "\09.asciz \09\22key_create_or_update\22\09\09\09\09\09"
module asm "__kstrtabns_key_create_or_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_update\22, \22a\22\09"
module asm "\09.weak\09__crc_key_update\09\09\09\09"
module asm "\09.long\09__crc_key_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_update:\09\09\09\09\09"
module asm "\09.asciz \09\22key_update\22\09\09\09\09\09"
module asm "__kstrtabns_key_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_revoke\22, \22a\22\09"
module asm "\09.weak\09__crc_key_revoke\09\09\09\09"
module asm "\09.long\09__crc_key_revoke\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22key_revoke\22\09\09\09\09\09"
module asm "__kstrtabns_key_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_invalidate\22, \22a\22\09"
module asm "\09.weak\09__crc_key_invalidate\09\09\09\09"
module asm "\09.long\09__crc_key_invalidate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22key_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns_key_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_key_instantiate\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_key_instantiate\09\09\09\09"
module asm "\09.long\09__crc_generic_key_instantiate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_key_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_key_instantiate\22\09\09\09\09\09"
module asm "__kstrtabns_generic_key_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_key_type\22, \22a\22\09"
module asm "\09.weak\09__crc_register_key_type\09\09\09\09"
module asm "\09.long\09__crc_register_key_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22register_key_type\22\09\09\09\09\09"
module asm "__kstrtabns_register_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_key_type\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_key_type\09\09\09\09"
module asm "\09.long\09__crc_unregister_key_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_key_type\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_key_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.2, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.65, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.66, %union.anon.71, ptr }
%union.anon.2 = type { %struct.rb_node }
%union.anon.65 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.67, ptr, ptr, ptr }
%union.anon.67 = type { i32 }
%union.anon.71 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.anon.68 = type { [2 x i8], i16 }
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%struct.key_restriction = type { ptr, ptr, ptr }
%struct.key_notification = type { %struct.watch_notification, i32, i32 }
%struct.watch_notification = type { i32, i32 }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"key_serial_lock\00", [16 x i8] zeroinitializer }, align 32
@key_serial_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key_user_lock\00", [18 x i8] zeroinitializer }, align 32
@key_user_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@key_quota_root_maxkeys = dso_local global { i32, [28 x i8] } { i32 1000000, [28 x i8] zeroinitializer }, align 32
@key_quota_root_maxbytes = dso_local global { i32, [28 x i8] } { i32 25000000, [28 x i8] zeroinitializer }, align 32
@key_quota_maxkeys = dso_local global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@key_quota_maxbytes = dso_local global { i32, [28 x i8] } { i32 20000, [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"key_construction_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@key_construction_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @key_construction_mutex, i64 52), ptr getelementptr (i8, ptr @key_construction_mutex, i64 52) }, ptr @key_construction_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"key_construction_mutex\00", [41 x i8] zeroinitializer }, align 32
@key_user_tree = dso_local global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@key_user_lookup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&candidate->lock\00", [47 x i8] zeroinitializer }, align 32
@key_user_lookup.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&candidate->cons_lock\00", [42 x i8] zeroinitializer }, align 32
@key_jar = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@key_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&key->sem\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&type->lock_class\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_key_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_key_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_alloc to i32), ptr @__kstrtab_key_alloc, ptr @__kstrtabns_key_alloc }, section "___ksymtab+key_alloc", align 4
@__kstrtab_key_payload_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_payload_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_key_payload_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_payload_reserve to i32), ptr @__kstrtab_key_payload_reserve, ptr @__kstrtabns_key_payload_reserve }, section "___ksymtab+key_payload_reserve", align 4
@__kstrtab_key_instantiate_and_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_instantiate_and_link = external dso_local constant [0 x i8], align 1
@__ksymtab_key_instantiate_and_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_instantiate_and_link to i32), ptr @__kstrtab_key_instantiate_and_link, ptr @__kstrtabns_key_instantiate_and_link }, section "___ksymtab+key_instantiate_and_link", align 4
@key_gc_delay = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_key_reject_and_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_reject_and_link = external dso_local constant [0 x i8], align 1
@__ksymtab_key_reject_and_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_reject_and_link to i32), ptr @__kstrtab_key_reject_and_link, ptr @__kstrtabns_key_reject_and_link }, section "___ksymtab+key_reject_and_link", align 4
@key_gc_work = external dso_local global %struct.work_struct, align 4
@__kstrtab_key_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_put = external dso_local constant [0 x i8], align 1
@__ksymtab_key_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_put to i32), ptr @__kstrtab_key_put, ptr @__kstrtabns_key_put }, section "___ksymtab+key_put", align 4
@key_serial_tree = dso_local global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@key_types_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @key_types_sem, i64 56), ptr getelementptr (i8, ptr @key_types_sem, i64 56) }, ptr @key_types_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@key_types_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @key_types_list, ptr @key_types_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_key_set_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_set_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_key_set_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_set_timeout to i32), ptr @__kstrtab_key_set_timeout, ptr @__kstrtabns_key_set_timeout }, section "___ksymtab_gpl+key_set_timeout", align 4
@key_type_keyring = external dso_local global %struct.key_type, align 4
@__kstrtab_key_create_or_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_create_or_update = external dso_local constant [0 x i8], align 1
@__ksymtab_key_create_or_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_create_or_update to i32), ptr @__kstrtab_key_create_or_update, ptr @__kstrtabns_key_create_or_update }, section "___ksymtab+key_create_or_update", align 4
@__kstrtab_key_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_update = external dso_local constant [0 x i8], align 1
@__ksymtab_key_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_update to i32), ptr @__kstrtab_key_update, ptr @__kstrtabns_key_update }, section "___ksymtab+key_update", align 4
@__kstrtab_key_revoke = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_revoke = external dso_local constant [0 x i8], align 1
@__ksymtab_key_revoke = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_revoke to i32), ptr @__kstrtab_key_revoke, ptr @__kstrtabns_key_revoke }, section "___ksymtab+key_revoke", align 4
@__kstrtab_key_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab_key_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_invalidate to i32), ptr @__kstrtab_key_invalidate, ptr @__kstrtabns_key_invalidate }, section "___ksymtab+key_invalidate", align 4
@__kstrtab_generic_key_instantiate = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_key_instantiate = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_key_instantiate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_key_instantiate to i32), ptr @__kstrtab_generic_key_instantiate, ptr @__kstrtabns_generic_key_instantiate }, section "___ksymtab+generic_key_instantiate", align 4
@register_key_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015Key type %s registered\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"register_key_type\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"security/keys/key.c\00", [44 x i8] zeroinitializer }, align 32
@register_key_type._entry_ptr = internal global ptr @register_key_type._entry, section ".printk_index", align 4
@__kstrtab_register_key_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_key_type = external dso_local constant [0 x i8], align 1
@__ksymtab_register_key_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_key_type to i32), ptr @__kstrtab_register_key_type, ptr @__kstrtabns_register_key_type }, section "___ksymtab+register_key_type", align 4
@unregister_key_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.11, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015Key type %s unregistered\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unregister_key_type\00", [44 x i8] zeroinitializer }, align 32
@unregister_key_type._entry_ptr = internal global ptr @unregister_key_type._entry, section ".printk_index", align 4
@__kstrtab_unregister_key_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_key_type = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_key_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_key_type to i32), ptr @__kstrtab_unregister_key_type, ptr @__kstrtabns_unregister_key_type }, section "___ksymtab+unregister_key_type", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"key_jar\00", [24 x i8] zeroinitializer }, align 32
@key_type_dead = external dso_local global %struct.key_type, align 4
@key_type_user = external dso_local global %struct.key_type, align 4
@key_type_logon = external dso_local global %struct.key_type, align 4
@root_key_user = external dso_local global %struct.key_user, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"key_types_sem.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key_types_sem\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"key_serial_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 22, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"key_user_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 25, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"key_quota_root_maxkeys\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 27, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"key_quota_root_maxbytes\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 28, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"key_quota_maxkeys\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 29, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"key_quota_maxbytes\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 30, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"key_construction_mutex\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 36, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"key_user_tree\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 24, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 99, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 100, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"key_jar\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 20, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 289, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 290, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"key_serial_tree\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 21, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"key_types_sem\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"key_types_list\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 32, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1170, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1193, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1204, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [23 x i8] c"../security/keys/key.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 33, i32 8 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_generic_key_instantiate, ptr @__ksymtab_key_alloc, ptr @__ksymtab_key_create_or_update, ptr @__ksymtab_key_instantiate_and_link, ptr @__ksymtab_key_invalidate, ptr @__ksymtab_key_payload_reserve, ptr @__ksymtab_key_put, ptr @__ksymtab_key_reject_and_link, ptr @__ksymtab_key_revoke, ptr @__ksymtab_key_set_timeout, ptr @__ksymtab_key_update, ptr @__ksymtab_register_key_type, ptr @__ksymtab_unregister_key_type, ptr @register_key_type._entry, ptr @register_key_type._entry_ptr, ptr @unregister_key_type._entry, ptr @unregister_key_type._entry_ptr, ptr @.str, ptr @key_serial_lock, ptr @.str.1, ptr @key_user_lock, ptr @key_quota_root_maxkeys, ptr @key_quota_root_maxbytes, ptr @key_quota_maxkeys, ptr @key_quota_maxbytes, ptr @.str.2, ptr @key_construction_mutex, ptr @.str.3, ptr @key_user_tree, ptr @key_user_lookup.__key, ptr @.str.4, ptr @key_user_lookup.__key.5, ptr @.str.6, ptr @key_jar, ptr @key_alloc.__key, ptr @.str.7, ptr @.str.8, ptr @key_serial_tree, ptr @key_types_sem, ptr @key_types_list, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_serial_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_user_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_quota_root_maxkeys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_quota_root_maxbytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_quota_maxkeys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_quota_maxbytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_construction_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_user_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_user_lookup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_user_lookup.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_jar to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_serial_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_types_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_types_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_key_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_key_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @key_user_lookup([1 x i32] %uid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract = extractvalue [1 x i32] %uid.coerce, 0
  br label %try_again

try_again:                                        ; preds = %if.then12.try_again_crit_edge, %entry
  %candidate.0 = phi ptr [ null, %entry ], [ %call7.i, %if.then12.try_again_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_user_lock) #10
  %0 = load ptr, ptr @key_user_tree, align 4
  %tobool.not64 = icmp eq ptr %0, null
  br i1 %tobool.not64, label %try_again.while.end_crit_edge, label %try_again.while.body_crit_edge

try_again.while.body_crit_edge:                   ; preds = %try_again
  br label %while.body

try_again.while.end_crit_edge:                    ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %try_again.while.body_crit_edge
  %1 = phi ptr [ %4, %if.end10.while.body_crit_edge ], [ %0, %try_again.while.body_crit_edge ]
  %uid1 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %uid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %uid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract, i32 %.unpack)
  %cmp.i = icmp ult i32 %uid.coerce.fca.0.extract, %.unpack
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  br label %if.end10

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract, i32 %.unpack)
  %cmp.i56 = icmp ugt i32 %uid.coerce.fca.0.extract, %.unpack
  br i1 %cmp.i56, label %if.then8, label %found

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then8 ]
  %3 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le = ptrtoint ptr %1 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %try_again.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %try_again.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ @key_user_tree, %try_again.while.end_crit_edge ]
  %tobool11.not = icmp eq ptr %candidate.0, null
  br i1 %tobool11.not, label %if.then12, label %if.end20

if.then12:                                        ; preds = %while.end
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 172) #13
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.then12.out_crit_edge, label %if.then12.try_again_crit_edge, !prof !96

if.then12.try_again_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %usage = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %usage, align 4
  %nkeys = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nkeys, i32 noundef 4) #10
  %7 = ptrtoint ptr %nkeys to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %nkeys, align 8
  %nikeys = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 5
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nikeys, i32 noundef 4) #10
  %8 = ptrtoint ptr %nikeys to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %nikeys, align 4
  %uid21 = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 6
  %9 = ptrtoint ptr %uid21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %uid.coerce.fca.0.extract, ptr %uid21, align 8
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 7
  %10 = ptrtoint ptr %qnkeys to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qnkeys, align 4
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 8
  %11 = ptrtoint ptr %qnbytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qnbytes, align 8
  %lock = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @key_user_lookup.__key, i16 noundef signext 3) #10
  %cons_lock = getelementptr inbounds %struct.key_user, ptr %candidate.0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %cons_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @key_user_lookup.__key.5) #10
  %12 = ptrtoint ptr %candidate.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %parent.0.lcssa, ptr %candidate.0, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %candidate.0, i32 0, i32 1
  %13 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %candidate.0, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_left.i, align 8
  %15 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %candidate.0, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %candidate.0, ptr noundef nonnull @key_user_tree) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  br label %out

found:                                            ; preds = %if.else
  %usage27 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage27, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage27, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage27, ptr %usage27, i32 1, ptr elementtype(i32) %usage27) #10, !srcloc !97
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %found.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !96

found.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %found
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !98

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %found.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %found.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage27, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  tail call void @kfree(ptr noundef %candidate.0) #10
  br label %out

out:                                              ; preds = %refcount_inc.exit, %if.end20, %if.then12.out_crit_edge
  %user.0 = phi ptr [ %1, %refcount_inc.exit ], [ %candidate.0, %if.end20 ], [ null, %if.then12.out_crit_edge ]
  ret ptr %user.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_user_put(ptr noundef %user) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.key_user, ptr %user, i32 0, i32 3
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %usage, ptr noundef nonnull @key_user_lock) #10
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef %user, ptr noundef nonnull @key_user_tree) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  tail call void @kfree(ptr noundef %user) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @key_alloc(ptr noundef %type, ptr noundef %desc, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, ptr noundef %cred, i32 noundef %perm, i32 noundef %flags, ptr noundef %restrict_link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract = extractvalue [1 x i32] %uid.coerce, 0
  %gid.coerce.fca.0.extract = extractvalue [1 x i32] %gid.coerce, 0
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.cleanup132_crit_edge, label %lor.lhs.false

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %desc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup132_crit_edge, label %if.end

lor.lhs.false.cleanup132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.end:                                           ; preds = %lor.lhs.false
  %vet_description = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 3
  %2 = ptrtoint ptr %vet_description to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vet_description, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 %3(ptr noundef nonnull %desc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %4 = inttoptr i32 %call6 to ptr
  br label %cleanup132

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @strlen(ptr noundef nonnull %desc) #14
  %add = add i32 %call11, 1
  %def_datalen = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 1
  %5 = ptrtoint ptr %def_datalen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_datalen, align 4
  %add12 = add i32 %add, %6
  %call14 = tail call ptr @key_user_lookup([1 x i32] %uid.coerce)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end10.cleanup132_crit_edge, label %if.end17

if.end10.cleanup132_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.end17:                                         ; preds = %if.end10
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end53_crit_edge

if.end17.if.end53_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uid.coerce.fca.0.extract)
  %cmp.i = icmp eq i32 %uid.coerce.fca.0.extract, 0
  %key_quota_root_maxkeys.val = load i32, ptr @key_quota_root_maxkeys, align 4
  %key_quota_maxkeys.val = load i32, ptr @key_quota_maxkeys, align 4
  %key_quota_root_maxbytes.val = load i32, ptr @key_quota_root_maxbytes, align 4
  %key_quota_maxbytes.val = load i32, ptr @key_quota_maxbytes, align 4
  %cond31 = select i1 %cmp.i, i32 %key_quota_root_maxbytes.val, i32 %key_quota_maxbytes.val
  %lock = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %and32 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34:                                        ; preds = %if.then19
  %cond = select i1 %cmp.i, i32 %key_quota_root_maxkeys.val, i32 %key_quota_maxkeys.val
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 7
  %7 = ptrtoint ptr %qnkeys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qnkeys, align 4
  %add35 = add i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %cond)
  %cmp36 = icmp ugt i32 %add35, %cond
  br i1 %cmp36, label %if.then34.no_quota_crit_edge, label %lor.lhs.false37

if.then34.no_quota_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_quota

lor.lhs.false37:                                  ; preds = %if.then34
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 8
  %9 = ptrtoint ptr %qnbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qnbytes, align 4
  %add38 = add i32 %10, %add12
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %cond31)
  %cmp39 = icmp ugt i32 %add38, %cond31
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %10)
  %cmp44 = icmp ult i32 %add38, %10
  %or.cond = or i1 %cmp39, %cmp44
  br i1 %or.cond, label %lor.lhs.false37.no_quota_crit_edge, label %lor.lhs.false37.cleanup_crit_edge

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false37.no_quota_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_quota

cleanup:                                          ; preds = %lor.lhs.false37.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %qnkeys48 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 7
  %11 = ptrtoint ptr %qnkeys48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qnkeys48, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %qnkeys48, align 4
  %qnbytes49 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 8
  %13 = ptrtoint ptr %qnbytes49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qnbytes49, align 4
  %add50 = add i32 %14, %add12
  store i32 %add50, ptr %qnbytes49, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %if.end53

if.end53:                                         ; preds = %cleanup, %if.end17.if.end53_crit_edge
  %15 = load ptr, ptr @key_jar, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 3520) #10
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %if.end53.no_memory_2_crit_edge, label %if.end57

if.end53.no_memory_2_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_memory_2

if.end57:                                         ; preds = %if.end53
  %conv = trunc i32 %call11 to i16
  %16 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 1
  %desc_len = getelementptr inbounds %struct.anon.68, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %desc_len, align 2
  %call59 = tail call ptr @kmemdup(ptr noundef nonnull %desc, i32 noundef %add, i32 noundef 3264) #10
  %description = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 4
  %18 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call59, ptr %description, align 8
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %no_memory_3, label %if.end63

if.end63:                                         ; preds = %if.end57
  %19 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16
  %type64 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 2
  %20 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %type, ptr %type64, align 8
  tail call void @key_set_index_key(ptr noundef %19) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %call.i, align 8
  %sem = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %sem, ptr noundef nonnull @.str.7, ptr noundef nonnull @key_alloc.__key) #10
  %dep_map = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 4, i32 6
  %lock_class = getelementptr inbounds %struct.key_type, ptr %type, i32 0, i32 20
  %wait_type_inner = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 4, i32 6, i32 4
  %22 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.8, ptr noundef %lock_class, i32 noundef 0, i8 noundef zeroext %23, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %user70 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %user70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %user70, align 8
  %conv71 = trunc i32 %add12 to i16
  %quotalen72 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %quotalen72 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv71, ptr %quotalen72, align 4
  %26 = ptrtoint ptr %def_datalen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %def_datalen, align 4
  %conv74 = trunc i32 %27 to i16
  %datalen = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 13
  %28 = ptrtoint ptr %datalen to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv74, ptr %datalen, align 2
  %uid75 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %uid75 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %uid.coerce.fca.0.extract, ptr %uid75, align 8
  %gid76 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %gid76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %gid.coerce.fca.0.extract, ptr %gid76, align 4
  %perm77 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 11
  %31 = ptrtoint ptr %perm77 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %perm, ptr %perm77, align 8
  %restrict_link78 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %restrict_link78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %restrict_link, ptr %restrict_link78, align 4
  %call79 = tail call i64 @ktime_get_real_seconds() #10
  %last_used_at = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %last_used_at to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call79, ptr %last_used_at, align 8
  br i1 %tobool18.not, label %if.then82, label %if.end63.if.end84_crit_edge

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then82:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %flags83 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 15
  %34 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags83, align 4
  %or = or i32 %35, 4
  store i32 %or, ptr %flags83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end63.if.end84_crit_edge
  %and85 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end90_crit_edge, label %if.then87

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %flags88 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 15
  %36 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags88, align 4
  %or89 = or i32 %37, 64
  store i32 %or89, ptr %flags88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end84.if.end90_crit_edge
  %and91 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end96_crit_edge, label %if.then93

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %flags94 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 15
  %38 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags94, align 4
  %or95 = or i32 %39, 512
  store i32 %or95, ptr %flags94, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end90.if.end96_crit_edge
  %and97 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end102_crit_edge, label %if.then99

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %flags100 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags100, align 4
  %or101 = or i32 %41, 256
  store i32 %or101, ptr %flags100, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end96.if.end102_crit_edge
  %call103 = tail call i32 @security_key_alloc(ptr noundef nonnull %call.i, ptr noundef %cred, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %security_error, label %if.end107

if.end107:                                        ; preds = %if.end102
  %domain_tag = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 3
  %42 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domain_tag, align 4
  %usage108 = getelementptr inbounds %struct.key_tag, ptr %43, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage108, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage108, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage108, ptr %usage108, i32 1, ptr elementtype(i32) %usage108) #10, !srcloc !97
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end107.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !96

if.end107.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end107
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !98

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end107.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end107.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage108, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %nkeys = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nkeys, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nkeys, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nkeys, ptr %nkeys, i32 1, ptr elementtype(i32) %nkeys) #10, !srcloc !99
  %serial.i = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %refcount_inc.exit
  tail call void @get_random_bytes(ptr noundef %serial.i, i32 noundef 4) #10
  %47 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %serial.i, align 4
  %shr.i = ashr i32 %48, 1
  store i32 %shr.i, ptr %serial.i, align 4
  %cmp.i228 = icmp slt i32 %48, 6
  br i1 %cmp.i228, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #10
  %49 = load ptr, ptr @key_serial_tree, align 4
  %tobool.not5458.i = icmp eq ptr %49, null
  br i1 %tobool.not5458.i, label %do.end.i.key_alloc_serial.exit_crit_edge, label %do.end.i.while.body.lr.ph.i_crit_edge

do.end.i.while.body.lr.ph.i_crit_edge:            ; preds = %do.end.i
  br label %while.body.lr.ph.i

do.end.i.key_alloc_serial.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_alloc_serial.exit

while.body.lr.ph.i:                               ; preds = %attempt_insertion.backedge.i.while.body.lr.ph.i_crit_edge, %do.end.i.while.body.lr.ph.i_crit_edge
  %50 = phi ptr [ %61, %attempt_insertion.backedge.i.while.body.lr.ph.i_crit_edge ], [ %49, %do.end.i.while.body.lr.ph.i_crit_edge ]
  %51 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %serial.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %53 = phi ptr [ %50, %while.body.lr.ph.i ], [ %57, %if.end11.i.while.body.i_crit_edge ]
  %serial4.i = getelementptr i8, ptr %53, i32 -4
  %54 = ptrtoint ptr %serial4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %serial4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %55)
  %cmp5.i = icmp slt i32 %52, %55
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 2
  br label %if.end11.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %55)
  %cmp8.i = icmp sgt i32 %52, %55
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  br label %for.cond.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then9.i ]
  %56 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %53 to i32
  br label %key_alloc_serial.exit

for.cond.i:                                       ; preds = %if.end20.i.for.cond.i_crit_edge, %if.else.i.for.cond.i_crit_edge
  %parent.1.i = phi ptr [ %call.i229, %if.end20.i.for.cond.i_crit_edge ], [ %53, %if.else.i.for.cond.i_crit_edge ]
  %58 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %serial.i, align 4
  %inc.i = add i32 %59, 1
  store i32 %inc.i, ptr %serial.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp14.i = icmp slt i32 %inc.i, 3
  br i1 %cmp14.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %serial.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %serial.i, align 4
  br label %attempt_insertion.backedge.i

attempt_insertion.backedge.i:                     ; preds = %if.end20.i.attempt_insertion.backedge.i_crit_edge, %if.end17.i.attempt_insertion.backedge.i_crit_edge, %if.then15.i
  %61 = load ptr, ptr @key_serial_tree, align 4
  %tobool.not54.i = icmp eq ptr %61, null
  br i1 %tobool.not54.i, label %attempt_insertion.backedge.i.key_alloc_serial.exit_crit_edge, label %attempt_insertion.backedge.i.while.body.lr.ph.i_crit_edge

attempt_insertion.backedge.i.while.body.lr.ph.i_crit_edge: ; preds = %attempt_insertion.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

attempt_insertion.backedge.i.key_alloc_serial.exit_crit_edge: ; preds = %attempt_insertion.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_alloc_serial.exit

if.end17.i:                                       ; preds = %for.cond.i
  %call.i229 = tail call ptr @rb_next(ptr noundef nonnull %parent.1.i) #10
  %tobool18.not.i = icmp eq ptr %call.i229, null
  br i1 %tobool18.not.i, label %if.end17.i.attempt_insertion.backedge.i_crit_edge, label %if.end20.i

if.end17.i.attempt_insertion.backedge.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %attempt_insertion.backedge.i

if.end20.i:                                       ; preds = %if.end17.i
  %62 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %serial.i, align 4
  %serial25.i = getelementptr i8, ptr %call.i229, i32 -4
  %64 = ptrtoint ptr %serial25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %serial25.i, align 4
  %cmp26.i = icmp slt i32 %63, %65
  br i1 %cmp26.i, label %if.end20.i.attempt_insertion.backedge.i_crit_edge, label %if.end20.i.for.cond.i_crit_edge

if.end20.i.for.cond.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end20.i.attempt_insertion.backedge.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %attempt_insertion.backedge.i

key_alloc_serial.exit:                            ; preds = %attempt_insertion.backedge.i.key_alloc_serial.exit_crit_edge, %while.cond.while.end_crit_edge.i, %do.end.i.key_alloc_serial.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ @key_serial_tree, %do.end.i.key_alloc_serial.exit_crit_edge ], [ @key_serial_tree, %attempt_insertion.backedge.i.key_alloc_serial.exit_crit_edge ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %do.end.i.key_alloc_serial.exit_crit_edge ], [ 0, %attempt_insertion.backedge.i.key_alloc_serial.exit_crit_edge ]
  %66 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %parent.0.lcssa.i, ptr %66, align 8
  %rb_right.i.i = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %68 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_left.i.i, align 8
  %70 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %66, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %66, ptr noundef nonnull @key_serial_tree) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #10
  br label %cleanup132

security_error:                                   ; preds = %if.end102
  %71 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %description, align 8
  tail call void @kfree(ptr noundef %72) #10
  %73 = load ptr, ptr @key_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %73, ptr noundef nonnull %call.i) #10
  br i1 %tobool18.not, label %if.then112, label %security_error.if.end117_crit_edge

security_error.if.end117_crit_edge:               ; preds = %security_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then112:                                       ; preds = %security_error
  call void @__sanitizer_cov_trace_pc() #12
  %lock113 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock113) #10
  %qnkeys114 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 7
  %74 = ptrtoint ptr %qnkeys114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qnkeys114, align 4
  %dec = add i32 %75, -1
  store i32 %dec, ptr %qnkeys114, align 4
  %qnbytes115 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 8
  %76 = ptrtoint ptr %qnbytes115 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qnbytes115, align 4
  %sub = sub i32 %77, %add12
  store i32 %sub, ptr %qnbytes115, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock113) #10
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %security_error.if.end117_crit_edge
  %usage.i = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 3
  %call.i230 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %usage.i, ptr noundef nonnull @key_user_lock) #10
  br i1 %call.i230, label %if.then.i231, label %if.end117.key_user_put.exit_crit_edge

if.end117.key_user_put.exit_crit_edge:            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_user_put.exit

if.then.i231:                                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef nonnull %call14, ptr noundef nonnull @key_user_tree) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  tail call void @kfree(ptr noundef nonnull %call14) #10
  br label %key_user_put.exit

key_user_put.exit:                                ; preds = %if.then.i231, %if.end117.key_user_put.exit_crit_edge
  %78 = inttoptr i32 %call103 to ptr
  br label %cleanup132

no_memory_3:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %79 = load ptr, ptr @key_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %call.i) #10
  br label %no_memory_2

no_memory_2:                                      ; preds = %no_memory_3, %if.end53.no_memory_2_crit_edge
  br i1 %tobool18.not, label %if.then121, label %no_memory_2.if.end128_crit_edge

no_memory_2.if.end128_crit_edge:                  ; preds = %no_memory_2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then121:                                       ; preds = %no_memory_2
  call void @__sanitizer_cov_trace_pc() #12
  %lock122 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock122) #10
  %qnkeys123 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 7
  %80 = ptrtoint ptr %qnkeys123 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %qnkeys123, align 4
  %dec124 = add i32 %81, -1
  store i32 %dec124, ptr %qnkeys123, align 4
  %qnbytes125 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 8
  %82 = ptrtoint ptr %qnbytes125 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qnbytes125, align 4
  %sub126 = sub i32 %83, %add12
  store i32 %sub126, ptr %qnbytes125, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock122) #10
  br label %if.end128

if.end128:                                        ; preds = %if.then121, %no_memory_2.if.end128_crit_edge
  %usage.i232 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 3
  %call.i233 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %usage.i232, ptr noundef nonnull @key_user_lock) #10
  br i1 %call.i233, label %if.then.i234, label %if.end128.cleanup132_crit_edge

if.end128.cleanup132_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.then.i234:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef nonnull %call14, ptr noundef nonnull @key_user_tree) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  tail call void @kfree(ptr noundef nonnull %call14) #10
  br label %cleanup132

no_quota:                                         ; preds = %lor.lhs.false37.no_quota_crit_edge, %if.then34.no_quota_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %usage.i236 = getelementptr inbounds %struct.key_user, ptr %call14, i32 0, i32 3
  %call.i237 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %usage.i236, ptr noundef nonnull @key_user_lock) #10
  br i1 %call.i237, label %if.then.i238, label %no_quota.cleanup132_crit_edge

no_quota.cleanup132_crit_edge:                    ; preds = %no_quota
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.then.i238:                                     ; preds = %no_quota
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef nonnull %call14, ptr noundef nonnull @key_user_tree) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_user_lock) #10
  tail call void @kfree(ptr noundef nonnull %call14) #10
  br label %cleanup132

cleanup132:                                       ; preds = %if.then.i238, %no_quota.cleanup132_crit_edge, %if.then.i234, %if.end128.cleanup132_crit_edge, %key_user_put.exit, %key_alloc_serial.exit, %if.end10.cleanup132_crit_edge, %if.then7, %lor.lhs.false.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  %key.0 = phi ptr [ %4, %if.then7 ], [ %78, %key_user_put.exit ], [ %call.i, %key_alloc_serial.exit ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup132_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup132_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i234 ], [ inttoptr (i32 -12 to ptr), %if.end128.cleanup132_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup132_crit_edge ], [ inttoptr (i32 -122 to ptr), %no_quota.cleanup132_crit_edge ], [ inttoptr (i32 -122 to ptr), %if.then.i238 ]
  ret ptr %key.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_index_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_key_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_payload_reserve(ptr noundef %key, i32 noundef %datalen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen1 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 13
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %datalen1, align 2
  %conv = zext i16 %1 to i32
  %sub = sub i32 %datalen, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %datalen)
  %cmp.not = icmp eq i32 %conv, %datalen
  br i1 %cmp.not, label %entry.if.then32_crit_edge, label %land.lhs.true

entry.if.then32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.then32_crit_edge, label %if.then

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then:                                          ; preds = %land.lhs.true
  %user = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 5
  %5 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user, align 8
  %uid = getelementptr inbounds %struct.key_user, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %uid, align 4
  %key_quota_root_maxbytes.val = load i32, ptr @key_quota_root_maxbytes, align 4
  %key_quota_maxbytes.val = load i32, ptr @key_quota_maxbytes, align 4
  %lock = getelementptr inbounds %struct.key_user, ptr %6, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp sgt i32 %sub, 0
  br i1 %cmp7, label %land.lhs.true9, label %if.then.if.end29.thread_crit_edge

if.then.if.end29.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.thread

land.lhs.true9:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  %cond = select i1 %cmp.i, i32 %key_quota_root_maxbytes.val, i32 %key_quota_maxbytes.val
  %8 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user, align 8
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %qnbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qnbytes, align 4
  %add = add i32 %11, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp11 = icmp ugt i32 %add, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp18 = icmp slt i32 %add, %11
  %or.cond = or i1 %cmp11, %cmp18
  br i1 %or.cond, label %if.end29, label %land.lhs.true9.if.end29.thread_crit_edge

land.lhs.true9.if.end29.thread_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %land.lhs.true9.if.end29.thread_crit_edge, %if.then.if.end29.thread_crit_edge
  %12 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user, align 8
  %qnbytes22 = getelementptr inbounds %struct.key_user, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %qnbytes22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qnbytes22, align 4
  %add23 = add i32 %15, %sub
  store i32 %add23, ptr %qnbytes22, align 4
  %quotalen = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 12
  %16 = ptrtoint ptr %quotalen to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %quotalen, align 4
  %18 = trunc i32 %sub to i16
  %conv26 = add i16 %17, %18
  store i16 %conv26, ptr %quotalen, align 4
  %19 = load ptr, ptr %user, align 8
  %lock2859 = getelementptr inbounds %struct.key_user, ptr %19, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock2859) #10
  br label %if.then32

if.end29:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user, align 8
  %lock28 = getelementptr inbounds %struct.key_user, ptr %21, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock28) #10
  br label %if.end35

if.then32:                                        ; preds = %if.end29.thread, %land.lhs.true.if.then32_crit_edge, %entry.if.then32_crit_edge
  %conv33 = trunc i32 %datalen to i16
  %22 = ptrtoint ptr %datalen1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv33, ptr %datalen1, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29
  %ret.155 = phi i32 [ 0, %if.then32 ], [ -122, %if.end29 ]
  ret i32 %ret.155
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_instantiate_and_link(ptr noundef %key, ptr noundef %data, i32 noundef %datalen, ptr noundef %keyring, ptr noundef %authkey) #0 align 64 {
entry:
  %prep = alloca %struct.key_preparsed_payload, align 8
  %edit = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prep) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edit) #10
  %0 = ptrtoint ptr %edit to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %edit, align 4
  %1 = call ptr @memset(ptr %prep, i32 0, i32 40)
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %3 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %description, align 8
  %5 = ptrtoint ptr %prep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %prep, align 8
  %data1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %data1, align 8
  %datalen2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %7 = ptrtoint ptr %datalen2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %datalen, ptr %datalen2, align 4
  %type = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 8
  %def_datalen = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %def_datalen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %def_datalen, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %12 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %quotalen, align 8
  %expiry = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %13 = ptrtoint ptr %expiry to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 9223372036854775807, ptr %expiry, align 8
  %preparse = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %preparse to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %preparse, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = call i32 %15(ptr noundef nonnull %prep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.error_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %keyring, null
  br i1 %tobool8.not, label %error_link_end, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call i32 @__key_link_lock(ptr noundef nonnull %keyring, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.error_crit_edge, label %if.end13

if.then9.error_crit_edge:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end13:                                         ; preds = %if.then9
  %call14 = call i32 @__key_link_begin(ptr noundef nonnull %keyring, ptr noundef %2, ptr noundef nonnull %edit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.if.then34_crit_edge, label %if.end17

if.end13.if.then34_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end17:                                         ; preds = %if.end13
  %restrict_link = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 18
  %16 = ptrtoint ptr %restrict_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %restrict_link, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end17.error_link_end.thread74_crit_edge, label %land.lhs.true

if.end17.error_link_end.thread74_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_link_end.thread74

land.lhs.true:                                    ; preds = %if.end17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %land.lhs.true.error_link_end.thread74_crit_edge, label %if.then21

land.lhs.true.error_link_end.thread74_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_link_end.thread74

if.then21:                                        ; preds = %land.lhs.true
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type, align 8
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %key25 = getelementptr inbounds %struct.key_restriction, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %key25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key25, align 4
  %call26 = call i32 %19(ptr noundef nonnull %keyring, ptr noundef %21, ptr noundef %payload, ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then21.if.then34_crit_edge, label %if.then21.error_link_end.thread74_crit_edge

if.then21.error_link_end.thread74_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_link_end.thread74

if.then21.if.then34_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

error_link_end.thread74:                          ; preds = %if.then21.error_link_end.thread74_crit_edge, %land.lhs.true.error_link_end.thread74_crit_edge, %if.end17.error_link_end.thread74_crit_edge
  %call3275 = call fastcc i32 @__key_instantiate_and_link(ptr noundef %key, ptr noundef nonnull %prep, ptr noundef nonnull %keyring, ptr noundef %authkey, ptr noundef nonnull %edit)
  br label %if.then34

error_link_end:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = call fastcc i32 @__key_instantiate_and_link(ptr noundef %key, ptr noundef nonnull %prep, ptr noundef null, ptr noundef %authkey, ptr noundef nonnull %edit)
  br label %error

if.then34:                                        ; preds = %error_link_end.thread74, %if.then21.if.then34_crit_edge, %if.end13.if.then34_crit_edge
  %ret.072 = phi i32 [ %call3275, %error_link_end.thread74 ], [ %call26, %if.then21.if.then34_crit_edge ], [ %call14, %if.end13.if.then34_crit_edge ]
  %24 = ptrtoint ptr %edit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edit, align 4
  call void @__key_link_end(ptr noundef nonnull %keyring, ptr noundef %2, ptr noundef %25) #10
  br label %error

error:                                            ; preds = %if.then34, %error_link_end, %if.then9.error_crit_edge, %if.then.error_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.error_crit_edge ], [ %call10, %if.then9.error_crit_edge ], [ %ret.072, %if.then34 ], [ %call32, %error_link_end ]
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 8
  %preparse37 = getelementptr inbounds %struct.key_type, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %preparse37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %preparse37, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %error.cleanup42_crit_edge, label %if.then39

error.cleanup42_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.then39:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %free_preparse = getelementptr inbounds %struct.key_type, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %free_preparse to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free_preparse, align 4
  call void %31(ptr noundef nonnull %prep) #10
  br label %cleanup42

cleanup42:                                        ; preds = %if.then39, %error.cleanup42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prep) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__key_instantiate_and_link(ptr noundef %key, ptr noundef %prep, ptr noundef %keyring, ptr noundef %authkey, ptr noundef %_edit) unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @key_construction_mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end30.thread_crit_edge

entry.if.end30.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.thread

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %instantiate = getelementptr inbounds %struct.key_type, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %instantiate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instantiate, align 4
  %call = tail call i32 %5(ptr noundef %key, ptr noundef %prep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then7, label %if.then.if.end30.thread_crit_edge

if.then.if.end30.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.thread

if.then7:                                         ; preds = %if.then
  %user = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 5
  %6 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user, align 8
  %nikeys = getelementptr inbounds %struct.key_user, ptr %7, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nikeys, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nikeys, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nikeys, ptr %nikeys, i32 1, ptr elementtype(i32) %nikeys) #10, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %9)
  store volatile i16 1, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #10
  %10 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %13 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %n.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %10, align 4
  %tobool.not.i.i = icmp eq ptr %key, null
  br i1 %tobool.not.i.i, label %if.then7.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then7.key_serial.exit.i_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then7.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %16, %cond.true.i.i ], [ 0, %if.then7.key_serial.exit.i_crit_edge ]
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i.i, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %12, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 3
  %19 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %20, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !98

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %cond.i.i to i64
  %21 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %20, ptr noundef nonnull %n.i, ptr noundef %26, i64 noundef %conv.i) #10
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #10
  %flags = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  %call8 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not.not = icmp eq i32 %call8, 0
  %tobool10.not = icmp eq ptr %keyring, null
  br i1 %tobool10.not, label %notify_key.exit.if.end18_crit_edge, label %if.then11

notify_key.exit.if.end18_crit_edge:               ; preds = %notify_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11:                                        ; preds = %notify_key.exit
  %flags12 = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 15
  %27 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags12, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not = icmp eq i32 %29, 0
  br i1 %tobool14.not, label %if.then11.if.end17_crit_edge, label %if.then15

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 8, ptr noundef %flags) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then11.if.end17_crit_edge
  call void @__key_link(ptr noundef nonnull %keyring, ptr noundef %key, ptr noundef %_edit) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %notify_key.exit.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %authkey, null
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @key_invalidate(ptr noundef nonnull %authkey)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %expiry = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %30 = ptrtoint ptr %expiry to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %expiry, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %31)
  %cmp22.not = icmp eq i64 %31, 9223372036854775807
  br i1 %cmp22.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %32 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 7
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %31, ptr %32, align 8
  %34 = ptrtoint ptr %expiry to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %expiry, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_gc_delay to i32))
  %36 = load i32, ptr @key_gc_delay, align 4
  %conv27 = zext i32 %36 to i64
  %add = add i64 %35, %conv27
  call void @key_schedule_gc(i64 noundef %add) #10
  br label %if.end30

if.end30.thread:                                  ; preds = %if.then.if.end30.thread_crit_edge, %entry.if.end30.thread_crit_edge
  %ret.0.ph = phi i32 [ -16, %entry.if.end30.thread_crit_edge ], [ %call, %if.then.if.end30.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #10
  br label %if.end34

if.end30:                                         ; preds = %if.then24, %if.end21.if.end30_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #10
  br i1 %tobool.not.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void @wake_up_bit(ptr noundef %flags, i32 noundef 3) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge, %if.end30.thread
  %ret.055 = phi i32 [ %ret.0.ph, %if.end30.thread ], [ 0, %if.then32 ], [ 0, %if.end30.if.end34_crit_edge ]
  ret i32 %ret.055
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_reject_and_link(ptr noundef %key, i32 noundef %timeout, i32 noundef %error, ptr noundef %keyring, ptr noundef %authkey) #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  %edit = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edit) #10
  %0 = ptrtoint ptr %edit to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %edit, align 4
  %tobool.not = icmp eq ptr %keyring, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %restrict_link = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 18
  %1 = ptrtoint ptr %restrict_link to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %restrict_link, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16
  %call = tail call i32 @__key_link_lock(ptr noundef nonnull %keyring, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @__key_link_begin(ptr noundef nonnull %keyring, ptr noundef %3, ptr noundef nonnull %edit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %edit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edit, align 4
  call void @__key_link_end(ptr noundef nonnull %keyring, ptr noundef %3, ptr noundef %5) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %link_ret.0 = phi i32 [ %call7, %if.then9 ], [ %call7, %if.then6.if.end12_crit_edge ], [ %call, %if.end.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @key_construction_mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp13 = icmp eq i16 %7, 0
  br i1 %cmp13, label %if.then15, label %if.end12.if.end33_crit_edge

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = xor i1 %tobool.not, true
  br label %if.end33

if.then15:                                        ; preds = %if.end12
  %user = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 5
  %8 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user, align 8
  %nikeys = getelementptr inbounds %struct.key_user, ptr %9, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nikeys, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %nikeys, i32 1, i32 3, i32 1) #10
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nikeys, ptr %nikeys, i32 1, ptr elementtype(i32) %nikeys) #10, !srcloc !99
  %sub = sub i32 0, %error
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 0
  %phi.cast.i = trunc i32 %sub to i16
  %spec.select.i = select i1 %cmp.i, i16 %phi.cast.i, i16 1
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %11)
  store volatile i16 %spec.select.i, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #10
  %12 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %15 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %n.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %key, null
  br i1 %tobool.not.i.i, label %if.then15.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then15.key_serial.exit.i_crit_edge:            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then15.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %18, %cond.true.i.i ], [ 0, %if.then15.key_serial.exit.i_crit_edge ]
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i.i, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %14, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 3
  %21 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %22, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !98

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %cond.i.i to i64
  %23 = call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %22, ptr noundef nonnull %n.i, ptr noundef %28, i64 noundef %conv.i) #10
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #10
  %call17 = call i64 @ktime_get_real_seconds() #10
  %conv18 = zext i32 %timeout to i64
  %add = add i64 %call17, %conv18
  %29 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add, ptr %29, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_gc_delay to i32))
  %31 = load i32, ptr @key_gc_delay, align 4
  %conv19 = zext i32 %31 to i64
  %add20 = add i64 %add, %conv19
  call void @key_schedule_gc(i64 noundef %add20) #10
  %flags = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  %call21 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp ne i32 %call21, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_ret.0)
  %cmp26 = icmp eq i32 %link_ret.0, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %notify_key.exit.if.end29_crit_edge

notify_key.exit.if.end29_crit_edge:               ; preds = %notify_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %notify_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__key_link(ptr noundef nonnull %keyring, ptr noundef %key, ptr noundef nonnull %edit) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %notify_key.exit.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %authkey, null
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void @key_invalidate(ptr noundef nonnull %authkey)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge, %if.end12.if.end33_crit_edge
  %tobool.not.not76.pre-phi = phi i1 [ %.pre, %if.end12.if.end33_crit_edge ], [ %tobool.not.not, %if.end29.if.end33_crit_edge ], [ %tobool.not.not, %if.then31 ]
  %link_ret.0.ret.0 = phi i32 [ -16, %if.end12.if.end33_crit_edge ], [ %link_ret.0, %if.end29.if.end33_crit_edge ], [ %link_ret.0, %if.then31 ]
  %awaken.1.shrunk = phi i1 [ false, %if.end12.if.end33_crit_edge ], [ %tobool22.not, %if.end29.if.end33_crit_edge ], [ %tobool22.not, %if.then31 ]
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_ret.0)
  %cmp36 = icmp eq i32 %link_ret.0, 0
  %or.cond77 = select i1 %tobool.not.not76.pre-phi, i1 %cmp36, i1 false
  br i1 %or.cond77, label %if.then38, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %32 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16
  %33 = ptrtoint ptr %edit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edit, align 4
  call void @__key_link_end(ptr noundef nonnull %keyring, ptr noundef %32, ptr noundef %34) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33.if.end39_crit_edge
  br i1 %awaken.1.shrunk, label %if.then41, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %flags42 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  call void @wake_up_bit(ptr noundef %flags42, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ %link_ret.0.ret.0, %if.then41 ], [ %link_ret.0.ret.0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_schedule_gc(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_invalidate(ptr noundef %key) #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  tail call void @down_write_nested(ptr noundef %sem, i32 noundef 1) #10
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #10
  %3 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 262, ptr %n.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %key, null
  br i1 %tobool.not.i.i, label %if.then4.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then4.key_serial.exit.i_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then4.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %9, %cond.true.i.i ], [ 0, %if.then4.key_serial.exit.i_crit_edge ]
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i.i, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %5, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 3
  %12 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %13, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !98

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %cond.i.i to i64
  %14 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %13, ptr noundef nonnull %n.i, ptr noundef %19, i64 noundef %conv.i) #10
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #10
  call void @key_schedule_gc_links() #10
  br label %if.end

if.end:                                           ; preds = %notify_key.exit, %if.then.if.end_crit_edge
  call void @up_write(ptr noundef %sem) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_put(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %do.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

do.end:                                           ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %key, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %key, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %key, ptr nonnull %key, i32 1, ptr nonnull elementtype(i32) %key) #10, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i, !prof !98

if.end5.i.i.i.if.end3_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %key, i32 noundef 3) #10
  br label %if.end3

if.then1:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @key_gc_work) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then10.i.i.i, %if.end5.i.i.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @key_lookup(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #10
  %n.016 = load ptr, ptr @key_serial_tree, align 4
  %tobool.not17 = icmp eq ptr %n.016, null
  br i1 %tobool.not17, label %entry.not_found_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.not_found_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_found

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry.while.body_crit_edge
  %n.018 = phi ptr [ %n.0, %if.end5.while.body_crit_edge ], [ %n.016, %entry.while.body_crit_edge ]
  %serial = getelementptr i8, ptr %n.018, i32 -4
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp = icmp sgt i32 %1, %id
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.018, i32 0, i32 2
  br label %if.end5

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp2 = icmp slt i32 %1, %id
  br i1 %cmp2, label %if.then3, label %found

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.018, i32 0, i32 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %n.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %2 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %if.end5.not_found_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end5.not_found_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_found

not_found:                                        ; preds = %refcount_inc_not_zero.exit.not_found_crit_edge, %if.end5.not_found_crit_edge, %entry.not_found_crit_edge
  br label %error

found:                                            ; preds = %if.else
  %add.ptr.le = getelementptr i8, ptr %n.018, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.le, i32 noundef 4) #10
  %3 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %add.ptr.le, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %found
  %5 = phi i32 [ %4, %found ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.le, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %add.ptr.le, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.le, ptr %add.ptr.le, i32 %8, i32 %add.i.i.i, ptr elementtype(i32) %add.ptr.le) #10, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !98

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !98

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %add.ptr.le, i32 noundef 0) #10
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %14 = phi i32 [ %11, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.not = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.not_found_crit_edge, label %refcount_inc_not_zero.exit.error_crit_edge

refcount_inc_not_zero.exit.error_crit_edge:       ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

refcount_inc_not_zero.exit.not_found_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_found

error:                                            ; preds = %refcount_inc_not_zero.exit.error_crit_edge, %not_found
  %key.0 = phi ptr [ %add.ptr.le, %refcount_inc_not_zero.exit.error_crit_edge ], [ inttoptr (i32 -126 to ptr), %not_found ]
  call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #10
  ret ptr %key.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @key_type_lookup(ptr nocapture noundef readonly %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @key_types_sem) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @key_types_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @key_types_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ktype.0 = getelementptr i8, ptr %.pn, i32 -76
  %1 = ptrtoint ptr %ktype.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ktype.0, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef %type) #14
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %found_kernel_type.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  br label %found_kernel_type

found_kernel_type.loopexit:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %ktype.0.le = getelementptr i8, ptr %.pn, i32 -76
  br label %found_kernel_type

found_kernel_type:                                ; preds = %found_kernel_type.loopexit, %for.end
  %ktype.1 = phi ptr [ inttoptr (i32 -126 to ptr), %for.end ], [ %ktype.0.le, %found_kernel_type.loopexit ]
  ret ptr %ktype.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_set_timeout(ptr noundef %key, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp.not = icmp eq i32 %timeout, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @ktime_get_real_seconds() #10
  %conv = zext i32 %timeout to i64
  %add = add i64 %call, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %expiry.0 = phi i64 [ %add, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %expiry.0, ptr %0, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_gc_delay to i32))
  %2 = load i32, ptr @key_gc_delay, align 4
  %conv1 = zext i32 %2 to i64
  %add2 = add i64 %expiry.0, %conv1
  tail call void @key_schedule_gc(i64 noundef %add2) #10
  tail call void @up_write(ptr noundef %sem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_type_put(ptr nocapture readnone %ktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @key_create_or_update(ptr noundef %keyring_ref, ptr nocapture noundef readonly %type, ptr noundef %description, ptr noundef %payload, i32 noundef %plen, i32 noundef %perm, i32 noundef %flags) #0 align 64 {
entry:
  %index_key = alloca %struct.keyring_index_key, align 4
  %prep = alloca %struct.key_preparsed_payload, align 8
  %edit = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %index_key) #10
  %0 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 2
  %2 = getelementptr inbounds %struct.keyring_index_key, ptr %index_key, i32 0, i32 4
  %3 = call ptr @memset(ptr %index_key, i32 0, i32 16)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %description, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prep) #10
  %5 = call ptr @memset(ptr %prep, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edit) #10
  %6 = ptrtoint ptr %edit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %edit, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred3 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred3, align 16
  tail call void @down_read(ptr noundef nonnull @key_types_sem) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @key_types_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @key_types_list
  br i1 %cmp.not.i, label %key_type_lookup.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ktype.0.i = getelementptr i8, ptr %.pn.i, i32 -76
  %14 = ptrtoint ptr %ktype.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ktype.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef %type) #15
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %key_type_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

key_type_lookup.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  br label %error

key_type_lookup.exit:                             ; preds = %for.body.i
  %ktype.0.i.le = getelementptr i8, ptr %.pn.i, i32 -76
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ktype.0.i.le, ptr %1, align 4
  %cmp.i = icmp ugt ptr %ktype.0.i.le, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %key_type_lookup.exit.error_crit_edge, label %if.end

key_type_lookup.exit.error_crit_edge:             ; preds = %key_type_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %key_type_lookup.exit
  %instantiate = getelementptr i8, ptr %.pn.i, i32 -52
  %17 = ptrtoint ptr %instantiate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %instantiate, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.error_put_type_crit_edge, label %lor.lhs.false

if.end.error_put_type_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_put_type

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %preparse = getelementptr i8, ptr %.pn.i, i32 -60
  %21 = ptrtoint ptr %preparse to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %preparse, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %land.lhs.true.error_put_type_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.error_put_type_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_put_type

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge
  %23 = ptrtoint ptr %keyring_ref to i32
  %and.i212 = and i32 %23, -2
  %24 = inttoptr i32 %and.i212 to ptr
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %restrict_link23 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %restrict_link23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %restrict_link23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16.if.end24_crit_edge
  %restrict_link.0 = phi ptr [ null, %if.end16.if.end24_crit_edge ], [ %26, %if.then22 ]
  %type26 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 16, i32 0, i32 2
  %27 = ptrtoint ptr %type26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type26, align 8
  %cmp.not = icmp eq ptr %28, @key_type_keyring
  br i1 %cmp.not, label %if.end28, label %if.end24.error_put_type_crit_edge

if.end24.error_put_type_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_put_type

if.end28:                                         ; preds = %if.end24
  %29 = call ptr @memset(ptr %prep, i32 0, i32 48)
  %30 = ptrtoint ptr %prep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %description, ptr %prep, align 8
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %payload, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %32 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %plen, ptr %datalen, align 4
  %def_datalen = getelementptr i8, ptr %.pn.i, i32 -72
  %33 = ptrtoint ptr %def_datalen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %def_datalen, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %35 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %quotalen, align 8
  %expiry = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %36 = ptrtoint ptr %expiry to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 9223372036854775807, ptr %expiry, align 8
  %preparse31 = getelementptr i8, ptr %.pn.i, i32 -60
  %37 = ptrtoint ptr %preparse31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %preparse31, align 4
  %tobool32.not = icmp eq ptr %38, null
  br i1 %tobool32.not, label %if.end28.if.end52_crit_edge, label %if.then33

if.end28.if.end52_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then33:                                        ; preds = %if.end28
  %call36 = call i32 %38(ptr noundef nonnull %prep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %39 = inttoptr i32 %call36 to ptr
  br label %error_free_prep

if.end40:                                         ; preds = %if.then33
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 4
  %tobool42.not = icmp eq ptr %41, null
  br i1 %tobool42.not, label %if.end46, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end46:                                         ; preds = %if.end40
  %description44 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 1
  %42 = ptrtoint ptr %description44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %description44, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %2, align 4
  %tobool49.not = icmp eq ptr %43, null
  br i1 %tobool49.not, label %if.end46.error_free_prep_crit_edge, label %if.end46.if.end52_crit_edge

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end46.error_free_prep_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_free_prep

if.end52:                                         ; preds = %if.end46.if.end52_crit_edge, %if.end40.if.end52_crit_edge, %if.end28.if.end52_crit_edge
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 4
  %call54 = call i32 @strlen(ptr noundef %46) #14
  %conv = trunc i32 %call54 to i16
  %desc_len = getelementptr inbounds %struct.anon.68, ptr %0, i32 0, i32 1
  %47 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %desc_len, align 2
  call void @key_set_index_key(ptr noundef nonnull %index_key) #10
  %call55 = call i32 @__key_link_lock(ptr noundef %24, ptr noundef nonnull %index_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %48 = inttoptr i32 %call55 to ptr
  br label %error_free_prep

if.end60:                                         ; preds = %if.end52
  %call61 = call i32 @__key_link_begin(ptr noundef %24, ptr noundef nonnull %index_key, ptr noundef nonnull %edit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %49 = inttoptr i32 %call61 to ptr
  br label %error_link_end

if.end66:                                         ; preds = %if.end60
  %tobool67.not = icmp eq ptr %restrict_link.0, null
  br i1 %tobool67.not, label %if.end66.if.end81_crit_edge, label %land.lhs.true68

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

land.lhs.true68:                                  ; preds = %if.end66
  %50 = ptrtoint ptr %restrict_link.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %restrict_link.0, align 4
  %tobool69.not = icmp eq ptr %51, null
  br i1 %tobool69.not, label %land.lhs.true68.if.end81_crit_edge, label %if.then70

land.lhs.true68.if.end81_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then70:                                        ; preds = %land.lhs.true68
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %payload73 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %key74 = getelementptr inbounds %struct.key_restriction, ptr %restrict_link.0, i32 0, i32 1
  %54 = ptrtoint ptr %key74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %key74, align 4
  %call75 = call i32 %51(ptr noundef %24, ptr noundef %53, ptr noundef %payload73, ptr noundef %55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.then70.if.end81_crit_edge

if.then70.if.end81_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then78:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %56 = inttoptr i32 %call75 to ptr
  br label %error_link_end

if.end81:                                         ; preds = %if.then70.if.end81_crit_edge, %land.lhs.true68.if.end81_crit_edge, %if.end66.if.end81_crit_edge
  %57 = call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 99
  %61 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cred.i, align 16
  %call1.i = call i32 @key_task_permission(ptr noundef %keyring_ref, ptr noundef %62, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp83 = icmp slt i32 %call1.i, 0
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %63 = inttoptr i32 %call1.i to ptr
  br label %error_link_end

if.end87:                                         ; preds = %if.end81
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %update = getelementptr inbounds %struct.key_type, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %update, align 4
  %tobool89.not = icmp eq ptr %67, null
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %if.then90

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then90:                                        ; preds = %if.end87
  %call91 = call ptr @find_key_to_update(ptr noundef %keyring_ref, ptr noundef nonnull %index_key) #10
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then90.if.end95_crit_edge, label %found_matching_key

if.then90.if.end95_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.end95:                                         ; preds = %if.then90.if.end95_crit_edge, %if.end87.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %perm)
  %cmp96 = icmp eq i32 %perm, -1
  br i1 %cmp96, label %if.then98, label %if.end95.if.end114_crit_edge

if.end95.if.end114_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then98:                                        ; preds = %if.end95
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %read = getelementptr inbounds %struct.key_type, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read, align 4
  %tobool100.not = icmp eq ptr %71, null
  %spec.select = select i1 %tobool100.not, i32 956366848, i32 989921280
  %cmp105 = icmp eq ptr %69, @key_type_keyring
  br i1 %cmp105, label %if.then98.if.then111_crit_edge, label %lor.lhs.false107

if.then98.if.then111_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111

lor.lhs.false107:                                 ; preds = %if.then98
  %update109 = getelementptr inbounds %struct.key_type, ptr %69, i32 0, i32 7
  %72 = ptrtoint ptr %update109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %update109, align 4
  %tobool110.not = icmp eq ptr %73, null
  br i1 %tobool110.not, label %lor.lhs.false107.if.end114_crit_edge, label %lor.lhs.false107.if.then111_crit_edge

lor.lhs.false107.if.then111_crit_edge:            ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111

lor.lhs.false107.if.end114_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then111:                                       ; preds = %lor.lhs.false107.if.then111_crit_edge, %if.then98.if.then111_crit_edge
  %or112 = or i32 %spec.select, 67108864
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %lor.lhs.false107.if.end114_crit_edge, %if.end95.if.end114_crit_edge
  %perm.addr.1 = phi i32 [ %or112, %if.then111 ], [ %spec.select, %lor.lhs.false107.if.end114_crit_edge ], [ %perm, %if.end95.if.end114_crit_edge ]
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 4
  %fsuid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %fsgid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 11
  %78 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack = load i32, ptr %fsuid, align 4
  %79 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %80 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack211 = load i32, ptr %fsgid, align 4
  %81 = insertvalue [1 x i32] undef, i32 %.unpack211, 0
  %call118 = call ptr @key_alloc(ptr noundef %75, ptr noundef %77, [1 x i32] %79, [1 x i32] %81, ptr noundef %12, i32 noundef %perm.addr.1, i32 noundef %flags, ptr noundef null)
  %cmp.i213 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.end114.error_link_end_crit_edge, label %if.end122

if.end114.error_link_end_crit_edge:               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_link_end

if.end122:                                        ; preds = %if.end114
  %call123 = call fastcc i32 @__key_instantiate_and_link(ptr noundef %call118, ptr noundef nonnull %prep, ptr noundef %24, ptr noundef null, ptr noundef nonnull %edit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  call void @key_put(ptr noundef %call118)
  %82 = inttoptr i32 %call123 to ptr
  br label %error_link_end

if.end128:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  call void @ima_post_key_create_or_update(ptr noundef %24, ptr noundef %call118, ptr noundef %payload, i32 noundef %plen, i32 noundef %flags, i1 noundef zeroext true) #10
  %and.i214 = and i32 %23, 1
  %83 = ptrtoint ptr %call118 to i32
  %or.i = or i32 %and.i214, %83
  %84 = inttoptr i32 %or.i to ptr
  br label %error_link_end

error_link_end:                                   ; preds = %if.end128, %if.then126, %if.end114.error_link_end_crit_edge, %if.then85, %if.then78, %if.then64
  %key_ref.0 = phi ptr [ %49, %if.then64 ], [ %56, %if.then78 ], [ %63, %if.then85 ], [ %82, %if.then126 ], [ %84, %if.end128 ], [ %call118, %if.end114.error_link_end_crit_edge ]
  %85 = ptrtoint ptr %edit to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %edit, align 4
  call void @__key_link_end(ptr noundef %24, ptr noundef nonnull %index_key, ptr noundef %86) #10
  br label %error_free_prep

error_free_prep:                                  ; preds = %if.then152, %if.end149.error_free_prep_crit_edge, %if.then146, %error_link_end, %if.then58, %if.end46.error_free_prep_crit_edge, %if.then38
  %key_ref.1 = phi ptr [ %39, %if.then38 ], [ %48, %if.then58 ], [ %key_ref.0, %error_link_end ], [ %100, %if.then146 ], [ %call150, %if.end149.error_free_prep_crit_edge ], [ %call150, %if.then152 ], [ inttoptr (i32 -22 to ptr), %if.end46.error_free_prep_crit_edge ]
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %preparse132 = getelementptr inbounds %struct.key_type, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %preparse132 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %preparse132, align 4
  %tobool133.not = icmp eq ptr %90, null
  br i1 %tobool133.not, label %error_free_prep.error_put_type_crit_edge, label %if.then134

error_free_prep.error_put_type_crit_edge:         ; preds = %error_free_prep
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_put_type

if.then134:                                       ; preds = %error_free_prep
  call void @__sanitizer_cov_trace_pc() #12
  %free_preparse = getelementptr inbounds %struct.key_type, ptr %88, i32 0, i32 5
  %91 = ptrtoint ptr %free_preparse to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %free_preparse, align 4
  call void %92(ptr noundef nonnull %prep) #10
  br label %error_put_type

error_put_type:                                   ; preds = %if.then134, %error_free_prep.error_put_type_crit_edge, %if.end24.error_put_type_crit_edge, %land.lhs.true.error_put_type_crit_edge, %if.end.error_put_type_crit_edge
  %key_ref.2 = phi ptr [ inttoptr (i32 -20 to ptr), %if.end24.error_put_type_crit_edge ], [ %key_ref.1, %if.then134 ], [ %key_ref.1, %error_free_prep.error_put_type_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.error_put_type_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.error_put_type_crit_edge ]
  call void @up_read(ptr noundef nonnull @key_types_sem) #10
  br label %error

error:                                            ; preds = %error_put_type, %key_type_lookup.exit.error_crit_edge, %key_type_lookup.exit.thread
  %key_ref.3 = phi ptr [ %key_ref.2, %error_put_type ], [ inttoptr (i32 -19 to ptr), %key_type_lookup.exit.thread ], [ inttoptr (i32 -19 to ptr), %key_type_lookup.exit.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edit) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prep) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %index_key) #10
  ret ptr %key_ref.3

found_matching_key:                               ; preds = %if.then90
  %93 = ptrtoint ptr %edit to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %edit, align 4
  call void @__key_link_end(ptr noundef %24, ptr noundef nonnull %index_key, ptr noundef %94) #10
  %95 = ptrtoint ptr %call91 to i32
  %and.i215 = and i32 %95, -2
  %96 = inttoptr i32 %and.i215 to ptr
  %flags139 = getelementptr inbounds %struct.key, ptr %96, i32 0, i32 15
  %97 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flags139, align 4
  %99 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool141.not = icmp eq i32 %99, 0
  br i1 %tobool141.not, label %found_matching_key.if.end149_crit_edge, label %if.then142

found_matching_key.if.end149_crit_edge:           ; preds = %found_matching_key
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then142:                                       ; preds = %found_matching_key
  %call143 = call i32 @wait_for_key_construction(ptr noundef %96, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.then142.if.end149_crit_edge

if.then142.if.end149_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then146:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @key_ref_put(ptr noundef nonnull %call91)
  %100 = inttoptr i32 %call143 to ptr
  br label %error_free_prep

if.end149:                                        ; preds = %if.then142.if.end149_crit_edge, %found_matching_key.if.end149_crit_edge
  %call150 = call fastcc ptr @__key_update(ptr noundef nonnull %call91, ptr noundef nonnull %prep)
  %cmp.i216 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.end149.error_free_prep_crit_edge, label %if.then152

if.end149.error_free_prep_crit_edge:              ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_free_prep

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  call void @ima_post_key_create_or_update(ptr noundef %24, ptr noundef %96, ptr noundef %payload, i32 noundef %plen, i32 noundef %flags, i1 noundef zeroext false) #10
  br label %error_free_prep
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_key_to_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_post_key_create_or_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_key_construction(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @key_ref_put(ptr noundef %key_ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %key_ref to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.key_put.exit_crit_edge, label %do.end.i

entry.key_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_put.exit

do.end.i:                                         ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !102
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then1.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.key_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.key_put.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #10
  br label %key_put.exit

if.then1.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef nonnull @key_gc_work) #10
  br label %key_put.exit

key_put.exit:                                     ; preds = %if.then1.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.key_put.exit_crit_edge, %entry.key_put.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__key_update(ptr noundef %key_ref, ptr noundef %prep) unnamed_addr #4 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %key_ref to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i, align 16
  %call1.i = tail call i32 @key_task_permission(ptr noundef %key_ref, ptr noundef %7, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 8
  %update = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.error_crit_edge, label %if.end3

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end3:                                          ; preds = %if.end
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #10
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 8
  %update5 = getelementptr inbounds %struct.key_type, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %update5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %update5, align 4
  %call6 = tail call i32 %15(ptr noundef %1, ptr noundef %prep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  %state.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store volatile i16 1, ptr %state.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #10
  %17 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %20 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 257, ptr %n.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.i, label %if.then8.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then8.key_serial.exit.i_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then8.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %23, %cond.true.i.i ], [ 0, %if.then8.key_serial.exit.i_crit_edge ]
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i.i, ptr %18, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %19, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %27, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.if.end9.thread_crit_edge, label %if.then.i.i, !prof !98

key_serial.exit.i.if.end9.thread_crit_edge:       ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.thread

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %cond.i.i to i64
  %28 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i27 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i27 to ptr
  %task.i28 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i28, align 8
  %cred.i29 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %cred.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred.i29, align 16
  call void @__post_watch_notification(ptr noundef nonnull %27, ptr noundef nonnull %n.i, ptr noundef %33, i64 noundef %conv.i) #10
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.then.i.i, %key_serial.exit.i.if.end9.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #10
  call void @up_write(ptr noundef %sem) #10
  br label %out

if.end9:                                          ; preds = %if.end3
  tail call void @up_write(ptr noundef %sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp11 = icmp slt i32 %call6, 0
  br i1 %cmp11, label %if.end9.error_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

out:                                              ; preds = %key_put.exit, %if.end9.out_crit_edge, %if.end9.thread
  %key_ref.addr.0 = phi ptr [ %36, %key_put.exit ], [ %key_ref, %if.end9.out_crit_edge ], [ %key_ref, %if.end9.thread ]
  ret ptr %key_ref.addr.0

error:                                            ; preds = %if.end9.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call1.i, %entry.error_crit_edge ], [ %call6, %if.end9.error_crit_edge ], [ -17, %if.end.error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %error.key_put.exit_crit_edge, label %do.end.i

error.key_put.exit_crit_edge:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_put.exit

do.end.i:                                         ; preds = %error
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !102
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then1.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.key_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.key_put.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #10
  br label %key_put.exit

if.then1.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef nonnull @key_gc_work) #10
  br label %key_put.exit

key_put.exit:                                     ; preds = %if.then1.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.key_put.exit_crit_edge, %error.key_put.exit_crit_edge
  %36 = inttoptr i32 %ret.0 to ptr
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_update(ptr noundef %key_ref, ptr noundef %payload, i32 noundef %plen) #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  %prep = alloca %struct.key_preparsed_payload, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prep) #10
  %0 = ptrtoint ptr %key_ref to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i, align 16
  %call1.i = tail call i32 @key_task_permission(ptr noundef %key_ref, ptr noundef %7, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 8
  %update = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %12 = call ptr @memset(ptr %prep, i32 0, i32 40)
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %payload, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %plen, ptr %datalen, align 4
  %def_datalen = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %def_datalen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def_datalen, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %17 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %quotalen, align 8
  %expiry = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %18 = ptrtoint ptr %expiry to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 9223372036854775807, ptr %expiry, align 8
  %preparse = getelementptr inbounds %struct.key_type, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %preparse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %preparse, align 4
  %tobool6.not = icmp eq ptr %20, null
  br i1 %tobool6.not, label %if.end3.if.end14_crit_edge, label %if.then7

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.end3
  %call10 = call i32 %20(ptr noundef nonnull %prep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then7.error_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7.error_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  call void @down_write(ptr noundef %sem) #10
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type, align 8
  %update16 = getelementptr inbounds %struct.key_type, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %update16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update16, align 4
  %call17 = call i32 %24(ptr noundef %1, ptr noundef nonnull %prep) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  %state.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store volatile i16 1, ptr %state.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #10
  %26 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %29 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 257, ptr %n.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.i, label %if.then19.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then19.key_serial.exit.i_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then19.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %32, %cond.true.i.i ], [ 0, %if.then19.key_serial.exit.i_crit_edge ]
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i.i, ptr %27, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %28, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %36, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !98

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %cond.i.i to i64
  %37 = call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i46 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i46 to ptr
  %task.i47 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i47, align 8
  %cred.i48 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 99
  %41 = ptrtoint ptr %cred.i48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cred.i48, align 16
  call void @__post_watch_notification(ptr noundef nonnull %36, ptr noundef nonnull %n.i, ptr noundef %42, i64 noundef %conv.i) #10
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #10
  br label %if.end20

if.end20:                                         ; preds = %notify_key.exit, %if.end14.if.end20_crit_edge
  call void @up_write(ptr noundef %sem) #10
  br label %error

error:                                            ; preds = %if.end20, %if.then7.error_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then7.error_crit_edge ], [ %call17, %if.end20 ]
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %type, align 8
  %preparse23 = getelementptr inbounds %struct.key_type, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %preparse23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %preparse23, align 4
  %tobool24.not = icmp eq ptr %46, null
  br i1 %tobool24.not, label %error.cleanup_crit_edge, label %if.then25

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %free_preparse = getelementptr inbounds %struct.key_type, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %free_preparse to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_preparse, align 4
  call void %48(ptr noundef nonnull %prep) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %error.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then25 ], [ %ret.0, %error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prep) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_revoke(ptr noundef %key) #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  tail call void @down_write_nested(ptr noundef %sem, i32 noundef 1) #10
  %flags = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #10
  %0 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %3 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 261, ptr %n.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %key, null
  br i1 %tobool.not.i.i, label %if.then.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then.key_serial.exit.i_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %6, %cond.true.i.i ], [ 0, %if.then.key_serial.exit.i_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i.i, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 3
  %9 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i9.i = icmp eq ptr %10, null
  br i1 %tobool.not.i9.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !98

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i32 %cond.i.i to i64
  %11 = tail call i32 @llvm.read_register.i32(metadata !86) #10
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %10, ptr noundef nonnull %n.i, ptr noundef %16, i64 noundef %conv.i) #10
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #10
  %type = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 8
  %revoke = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %revoke to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %revoke, align 4
  %tobool1.not = icmp eq ptr %20, null
  br i1 %tobool1.not, label %notify_key.exit.if.end_crit_edge, label %if.then2

notify_key.exit.if.end_crit_edge:                 ; preds = %notify_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %notify_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void %20(ptr noundef %key) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %notify_key.exit.if.end_crit_edge
  %call5 = call i64 @ktime_get_real_seconds() #10
  %21 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp = icmp eq i64 %23, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %call5)
  %cmp6 = icmp sgt i64 %23, %call5
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call5, ptr %21, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_gc_delay to i32))
  %25 = load i32, ptr @key_gc_delay, align 4
  %conv = zext i32 %25 to i64
  %add = add i64 %call5, %conv
  call void @key_schedule_gc(i64 noundef %add) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  call void @up_write(ptr noundef %sem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_schedule_gc_links() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_key_instantiate(ptr noundef %key, ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %0 = ptrtoint ptr %quotalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quotalen, align 8
  %call = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body1, label %entry.if.end53_crit_edge

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %4, align 4
  %arrayidx37 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx40, align 8
  %arrayidx41 = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx41, align 4
  %arrayidx43 = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx43, align 4
  %arrayidx44 = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx44, align 4
  %15 = call ptr @memset(ptr %payload, i32 0, i32 16)
  br label %if.end53

if.end53:                                         ; preds = %do.body1, %entry.if.end53_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_key_type(ptr noundef %ktype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_class = getelementptr inbounds %struct.key_type, ptr %ktype, i32 0, i32 20
  %0 = ptrtoint ptr %lock_class to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %lock_class, align 4
  tail call void @down_write(ptr noundef nonnull @key_types_sem) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @key_types_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @key_types_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %p.0 = getelementptr i8, ptr %.pn, i32 -76
  %2 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.0, align 4
  %4 = ptrtoint ptr %ktype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #14
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end:                                          ; preds = %for.cond
  %link7 = getelementptr inbounds %struct.key_type, ptr %ktype, i32 0, i32 19
  %6 = load ptr, ptr @key_types_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link7, ptr noundef nonnull @key_types_list, ptr noundef %6) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link7, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %link7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %link7, align 4
  %prev3.i.i = getelementptr inbounds %struct.key_type, ptr %ktype, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @key_types_list, ptr %prev3.i.i, align 4
  store volatile ptr %link7, ptr @key_types_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %10 = ptrtoint ptr %ktype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ktype, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %11) #16
  br label %out

out:                                              ; preds = %list_add.exit, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_add.exit ], [ -17, %for.body.out_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @key_types_sem) #10
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_key_type(ptr noundef %ktype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @key_types_sem) #10
  %link = getelementptr inbounds %struct.key_type, ptr %ktype, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.key_type, ptr %ktype, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %link, ptr %link, align 4
  %prev.i3.i = getelementptr inbounds %struct.key_type, ptr %ktype, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link, ptr %prev.i3.i, align 4
  tail call void @downgrade_write(ptr noundef nonnull @key_types_sem) #10
  tail call void @key_gc_keytype(ptr noundef %ktype) #10
  %8 = ptrtoint ptr %ktype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ktype, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %9) #16
  tail call void @up_read(ptr noundef nonnull @key_types_sem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_gc_keytype(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @key_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 208, i32 noundef 0, i32 noundef 270336, ptr noundef null) #10
  store ptr %call, ptr @key_jar, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), ptr noundef %0, ptr noundef nonnull @key_types_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19) to i32))
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19, i32 1) to i32))
  store ptr %0, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19, i32 1), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_keyring, i32 0, i32 19), ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  %call.i.i1 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), ptr noundef %2, ptr noundef nonnull @key_types_list) #10
  br i1 %call.i.i1, label %if.end.i.i2, label %list_add_tail.exit.list_add_tail.exit3_crit_edge

list_add_tail.exit.list_add_tail.exit3_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit3

if.end.i.i2:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19) to i32))
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19, i32 1) to i32))
  store ptr %2, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19, i32 1), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_dead, i32 0, i32 19), ptr %2, align 4
  br label %list_add_tail.exit3

list_add_tail.exit3:                              ; preds = %if.end.i.i2, %list_add_tail.exit.list_add_tail.exit3_crit_edge
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  %call.i.i4 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), ptr noundef %4, ptr noundef nonnull @key_types_list) #10
  br i1 %call.i.i4, label %if.end.i.i5, label %list_add_tail.exit3.list_add_tail.exit6_crit_edge

list_add_tail.exit3.list_add_tail.exit6_crit_edge: ; preds = %list_add_tail.exit3
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit6

if.end.i.i5:                                      ; preds = %list_add_tail.exit3
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19) to i32))
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19, i32 1) to i32))
  store ptr %4, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19, i32 1), align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_user, i32 0, i32 19), ptr %4, align 4
  br label %list_add_tail.exit6

list_add_tail.exit6:                              ; preds = %if.end.i.i5, %list_add_tail.exit3.list_add_tail.exit6_crit_edge
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  %call.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), ptr noundef %6, ptr noundef nonnull @key_types_list) #10
  br i1 %call.i.i7, label %if.end.i.i8, label %list_add_tail.exit6.list_add_tail.exit9_crit_edge

list_add_tail.exit6.list_add_tail.exit9_crit_edge: ; preds = %list_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit9

if.end.i.i8:                                      ; preds = %list_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), ptr getelementptr inbounds (%struct.list_head, ptr @key_types_list, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19) to i32))
  store ptr @key_types_list, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19, i32 1) to i32))
  store ptr %6, ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19, i32 1), align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr getelementptr inbounds (%struct.key_type, ptr @key_type_logon, i32 0, i32 19), ptr %6, align 4
  br label %list_add_tail.exit9

list_add_tail.exit9:                              ; preds = %if.end.i.i8, %list_add_tail.exit6.list_add_tail.exit9_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @root_key_user to i32))
  store i32 0, ptr @root_key_user, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_user, ptr @root_key_user, i32 0, i32 0, i32 1) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.key_user, ptr @root_key_user, i32 0, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.key_user, ptr @root_key_user, i32 0, i32 0, i32 2) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.key_user, ptr @root_key_user, i32 0, i32 0, i32 2), align 4
  store ptr @root_key_user, ptr @key_user_tree, align 4
  tail call void @rb_insert_color(ptr noundef nonnull @root_key_user, ptr noundef nonnull @key_user_tree) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__post_watch_notification(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/key.c", i32 22, i32 1}
!2 = !{ptr @key_serial_lock, !1, !"key_serial_lock", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../security/keys/key.c", i32 25, i32 1}
!5 = !{ptr @key_user_lock, !4, !"key_user_lock", i1 false, i1 false}
!6 = !{ptr @key_quota_root_maxkeys, !7, !"key_quota_root_maxkeys", i1 false, i1 false}
!7 = !{!"../security/keys/key.c", i32 27, i32 14}
!8 = !{ptr @key_quota_root_maxbytes, !9, !"key_quota_root_maxbytes", i1 false, i1 false}
!9 = !{!"../security/keys/key.c", i32 28, i32 14}
!10 = !{ptr @key_quota_maxkeys, !11, !"key_quota_maxkeys", i1 false, i1 false}
!11 = !{!"../security/keys/key.c", i32 29, i32 14}
!12 = !{ptr @key_quota_maxbytes, !13, !"key_quota_maxbytes", i1 false, i1 false}
!13 = !{!"../security/keys/key.c", i32 30, i32 14}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/keys/key.c", i32 36, i32 1}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @key_construction_mutex, !15, !"key_construction_mutex", i1 false, i1 false}
!18 = !{ptr @key_user_lookup.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../security/keys/key.c", i32 99, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @key_user_lookup.__key.5, !22, !"__key", i1 false, i1 false}
!22 = !{!"../security/keys/key.c", i32 100, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @key_alloc.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../security/keys/key.c", i32 289, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/keys/key.c", i32 290, i32 2}
!29 = !{ptr @__ksymtab_key_alloc, !30, !"__ksymtab_key_alloc", i1 false, i1 false}
!30 = !{!"../security/keys/key.c", i32 359, i32 1}
!31 = !{ptr @__ksymtab_key_payload_reserve, !32, !"__ksymtab_key_payload_reserve", i1 false, i1 false}
!32 = !{!"../security/keys/key.c", i32 404, i32 1}
!33 = !{ptr @__ksymtab_key_instantiate_and_link, !34, !"__ksymtab_key_instantiate_and_link", i1 false, i1 false}
!34 = !{!"../security/keys/key.c", i32 551, i32 1}
!35 = !{ptr @__ksymtab_key_reject_and_link, !36, !"__ksymtab_key_reject_and_link", i1 false, i1 false}
!36 = !{!"../security/keys/key.c", i32 637, i32 1}
!37 = !{ptr @__ksymtab_key_put, !38, !"__ksymtab_key_put", i1 false, i1 false}
!38 = !{!"../security/keys/key.c", i32 656, i32 1}
!39 = !{ptr @__ksymtab_key_set_timeout, !40, !"__ksymtab_key_set_timeout", i1 false, i1 false}
!40 = !{!"../security/keys/key.c", i32 738, i32 1}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../security/keys/key.c", i32 829, i32 28}
!43 = !{ptr @__ksymtab_key_create_or_update, !44, !"__ksymtab_key_create_or_update", i1 false, i1 false}
!44 = !{!"../security/keys/key.c", i32 988, i32 1}
!45 = !{ptr @__ksymtab_key_update, !46, !"__ksymtab_key_update", i1 false, i1 false}
!46 = !{!"../security/keys/key.c", i32 1047, i32 1}
!47 = !{ptr @__ksymtab_key_revoke, !48, !"__ksymtab_key_revoke", i1 false, i1 false}
!48 = !{!"../security/keys/key.c", i32 1085, i32 1}
!49 = !{ptr @__ksymtab_key_invalidate, !50, !"__ksymtab_key_invalidate", i1 false, i1 false}
!50 = !{!"../security/keys/key.c", i32 1109, i32 1}
!51 = !{ptr @__ksymtab_generic_key_instantiate, !52, !"__ksymtab_generic_key_instantiate", i1 false, i1 false}
!52 = !{!"../security/keys/key.c", i32 1141, i32 1}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/keys/key.c", i32 1170, i32 2}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @register_key_type._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @register_key_type._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__ksymtab_register_key_type, !60, !"__ksymtab_register_key_type", i1 false, i1 false}
!60 = !{!"../security/keys/key.c", i32 1177, i32 1}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/keys/key.c", i32 1193, i32 2}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @unregister_key_type._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @unregister_key_type._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_unregister_key_type, !67, !"__ksymtab_unregister_key_type", i1 false, i1 false}
!67 = !{!"../security/keys/key.c", i32 1196, i32 1}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/keys/key.c", i32 1204, i32 30}
!70 = !{ptr @key_jar, !71, !"key_jar", i1 false, i1 false}
!71 = !{!"../security/keys/key.c", i32 20, i32 20}
!72 = !{ptr @key_serial_tree, !73, !"key_serial_tree", i1 false, i1 false}
!73 = !{!"../security/keys/key.c", i32 21, i32 17}
!74 = !{ptr @key_user_tree, !75, !"key_user_tree", i1 false, i1 false}
!75 = !{!"../security/keys/key.c", i32 24, i32 16}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../security/keys/internal.h", i32 199, i32 51}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/keys/key.c", i32 33, i32 8}
!80 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @key_types_sem, !79, !"key_types_sem", i1 false, i1 false}
!82 = !{ptr @key_types_list, !83, !"key_types_list", i1 false, i1 false}
!83 = !{!"../security/keys/key.c", i32 32, i32 8}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../security/keys/internal.h", i32 210, i32 38}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2148453644, i64 2148453676, i64 2148453705, i64 2148453739, i64 2148453770, i64 2148453793}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148452114, i64 2148452140, i64 2148452169, i64 2148452203, i64 2148452234, i64 2148452257}
!100 = !{i64 2153957979}
!101 = !{i64 2148541645}
!102 = !{i64 2148456109, i64 2148456141, i64 2148456170, i64 2148456204, i64 2148456235, i64 2148456258}
!103 = !{i64 2149585074}
!104 = !{i64 937627, i64 937651, i64 937672, i64 937689, i64 937706}
!105 = !{i64 2153987418}
