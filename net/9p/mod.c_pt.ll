; ModuleID = '/llk/IR_all_yes/net/9p/mod.c_pt.bc'
source_filename = "../net/9p/mod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+p9_debug_level\22, \22a\22\09"
module asm "\09.weak\09__crc_p9_debug_level\09\09\09\09"
module asm "\09.long\09__crc_p9_debug_level\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p9_debug_level:\09\09\09\09\09"
module asm "\09.asciz \09\22p9_debug_level\22\09\09\09\09\09"
module asm "__kstrtabns_p9_debug_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_p9_debug\22, \22a\22\09"
module asm "\09.weak\09__crc__p9_debug\09\09\09\09"
module asm "\09.long\09__crc__p9_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__p9_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22_p9_debug\22\09\09\09\09\09"
module asm "__kstrtabns__p9_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+v9fs_register_trans\22, \22a\22\09"
module asm "\09.weak\09__crc_v9fs_register_trans\09\09\09\09"
module asm "\09.long\09__crc_v9fs_register_trans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v9fs_register_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22v9fs_register_trans\22\09\09\09\09\09"
module asm "__kstrtabns_v9fs_register_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+v9fs_unregister_trans\22, \22a\22\09"
module asm "\09.weak\09__crc_v9fs_unregister_trans\09\09\09\09"
module asm "\09.long\09__crc_v9fs_unregister_trans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v9fs_unregister_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22v9fs_unregister_trans\22\09\09\09\09\09"
module asm "__kstrtabns_v9fs_unregister_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+v9fs_get_trans_by_name\22, \22a\22\09"
module asm "\09.weak\09__crc_v9fs_get_trans_by_name\09\09\09\09"
module asm "\09.long\09__crc_v9fs_get_trans_by_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v9fs_get_trans_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22v9fs_get_trans_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_v9fs_get_trans_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+v9fs_get_default_trans\22, \22a\22\09"
module asm "\09.weak\09__crc_v9fs_get_default_trans\09\09\09\09"
module asm "\09.long\09__crc_v9fs_get_default_trans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v9fs_get_default_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22v9fs_get_default_trans\22\09\09\09\09\09"
module asm "__kstrtabns_v9fs_get_default_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.p9_trans_module = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@p9_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_p9_debug_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_p9_debug_level = external dso_local constant [0 x i8], align 1
@__ksymtab_p9_debug_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p9_debug_level to i32), ptr @__kstrtab_p9_debug_level, ptr @__kstrtabns_p9_debug_level }, section "___ksymtab+p9_debug_level", align 4
@__param_str_debug = internal constant [12 x i8] c"9pnet.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @p9_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debugtype200 = internal constant [26 x i8] c"9pnet.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug201 = internal constant [36 x i8] c"9pnet.parm=debug:9P debugging level\00", section ".modinfo", align 1
@_p9_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0159pnet: (%8.8d) %pV\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_p9_debug\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net/9p/mod.c\00", [19 x i8] zeroinitializer }, align 32
@_p9_debug._entry_ptr = internal global ptr @_p9_debug._entry, section ".printk_index", align 4
@_p9_debug._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0159pnet: -- %s (%d): %pV\00", [39 x i8] zeroinitializer }, align 32
@_p9_debug._entry_ptr.5 = internal global ptr @_p9_debug._entry.3, section ".printk_index", align 4
@__kstrtab__p9_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns__p9_debug = external dso_local constant [0 x i8], align 1
@__ksymtab__p9_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_p9_debug to i32), ptr @__kstrtab__p9_debug, ptr @__kstrtabns__p9_debug }, section "___ksymtab+_p9_debug", align 4
@v9fs_trans_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@v9fs_trans_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @v9fs_trans_list, ptr @v9fs_trans_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_v9fs_register_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_v9fs_register_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_v9fs_register_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v9fs_register_trans to i32), ptr @__kstrtab_v9fs_register_trans, ptr @__kstrtabns_v9fs_register_trans }, section "___ksymtab+v9fs_register_trans", align 4
@__kstrtab_v9fs_unregister_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_v9fs_unregister_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_v9fs_unregister_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v9fs_unregister_trans to i32), ptr @__kstrtab_v9fs_unregister_trans, ptr @__kstrtabns_v9fs_unregister_trans }, section "___ksymtab+v9fs_unregister_trans", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9p-%s\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_v9fs_get_trans_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_v9fs_get_trans_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_v9fs_get_trans_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v9fs_get_trans_by_name to i32), ptr @__kstrtab_v9fs_get_trans_by_name, ptr @__kstrtabns_v9fs_get_trans_by_name }, section "___ksymtab+v9fs_get_trans_by_name", align 4
@v9fs_default_transports = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [40 x i8] zeroinitializer }, align 32
@__kstrtab_v9fs_get_default_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_v9fs_get_default_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_v9fs_get_default_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v9fs_get_default_trans to i32), ptr @__kstrtab_v9fs_get_default_trans, ptr @__kstrtabns_v9fs_get_default_trans }, section "___ksymtab+v9fs_get_default_trans", align 4
@exit_p9._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0169pnet: Unloading 9P2000 support\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"exit_p9\00", [24 x i8] zeroinitializer }, align 32
@exit_p9._entry_ptr = internal global ptr @exit_p9._entry, section ".printk_index", align 4
@__initcall__kmod_9pnet__202_205_init_p96 = internal global ptr @init_p9, section ".initcall6.init", align 4
@__exitcall_exit_p9 = internal global ptr @exit_p9, section ".exitcall.exit", align 4
@__UNIQUE_ID_author203 = internal constant [49 x i8] c"9pnet.author=Latchesar Ionkov <lucho@ionkov.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [52 x i8] c"9pnet.author=Eric Van Hensbergen <ericvh@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author205 = internal constant [45 x i8] c"9pnet.author=Ron Minnich <rminnich@lanl.gov>\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [24 x i8] c"9pnet.file=net/9p/9pnet\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [18 x i8] c"9pnet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [59 x i8] c"9pnet.description=Plan 9 Resource Sharing Support (9P2000)\00", section ".modinfo", align 1
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"v9fs_trans_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"virtio\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xen\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@init_p9._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0169pnet: Installing 9P2000 support\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_p9\00", [24 x i8] zeroinitializer }, align 32
@init_p9._entry_ptr = internal global ptr @init_p9._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"p9_debug_level\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 26, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 46, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 48, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"v9fs_trans_lock\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"v9fs_trans_list\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 58, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 117, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"v9fs_default_transports\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 126, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 200, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 57, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [16 x i8] c"../net/9p/mod.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 188, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_author205, ptr @__UNIQUE_ID_debug201, ptr @__UNIQUE_ID_debugtype200, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__exitcall_exit_p9, ptr @__initcall__kmod_9pnet__202_205_init_p96, ptr @__ksymtab__p9_debug, ptr @__ksymtab_p9_debug_level, ptr @__ksymtab_v9fs_get_default_trans, ptr @__ksymtab_v9fs_get_trans_by_name, ptr @__ksymtab_v9fs_register_trans, ptr @__ksymtab_v9fs_unregister_trans, ptr @__param_debug, ptr @_p9_debug._entry, ptr @_p9_debug._entry.3, ptr @_p9_debug._entry_ptr, ptr @_p9_debug._entry_ptr.5, ptr @exit_p9, ptr @exit_p9._entry, ptr @exit_p9._entry_ptr, ptr @init_p9._entry, ptr @init_p9._entry_ptr, ptr @p9_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @v9fs_trans_lock, ptr @v9fs_trans_list, ptr @.str.6, ptr @v9fs_default_transports, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_p9_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_p9_debug._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_trans_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_trans_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_default_transports to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_p9._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_p9._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_p9_debug(i32 noundef %level, ptr noundef %func, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !86
  %1 = load i32, ptr @p9_debug_level, align 4
  %and = and i32 %1, %level
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %level)
  %cmp.not = icmp eq i32 %and, %level
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %level)
  %cmp2 = icmp eq i32 %level, 4
  %5 = call i32 @llvm.read_register.i32(metadata !76) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  br i1 %cmp2, label %do.end, label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %10, ptr noundef nonnull %vaf) #11
  br label %if.end14

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %func, i32 noundef %10, ptr noundef nonnull %vaf) #11
  br label %if.end14

if.end14:                                         ; preds = %do.end8, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_register_trans(ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_trans_lock) #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @v9fs_trans_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %m, ptr noundef %0, ptr noundef nonnull @v9fs_trans_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %m, ptr getelementptr inbounds (%struct.list_head, ptr @v9fs_trans_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @v9fs_trans_list, ptr %m, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_unregister_trans(ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_trans_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %m) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m, ptr %m, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_get_trans_by_name(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_trans_lock) #8
  %t.011.i = load ptr, ptr @v9fs_trans_list, align 4
  %cmp.not12.i = icmp eq ptr %t.011.i, @v9fs_trans_list
  br i1 %cmp.not12.i, label %entry._p9_get_trans_by_name.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry._p9_get_trans_by_name.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %_p9_get_trans_by_name.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %t.013.i = phi ptr [ %t.0.i, %for.inc.i.for.body.i_crit_edge ], [ %t.011.i, %entry.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.p9_trans_module, ptr %t.013.i, i32 0, i32 1
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %s) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %owner.i = getelementptr inbounds %struct.p9_trans_module, ptr %t.013.i, i32 0, i32 4
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner.i, align 4
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %3) #8
  br i1 %call2.i, label %_p9_get_trans_by_name.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %t.013.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %t.0.i = load ptr, ptr %t.013.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, @v9fs_trans_list
  br i1 %cmp.not.i, label %for.inc.i._p9_get_trans_by_name.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i._p9_get_trans_by_name.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_p9_get_trans_by_name.exit.thread

_p9_get_trans_by_name.exit.thread:                ; preds = %for.inc.i._p9_get_trans_by_name.exit.thread_crit_edge, %entry._p9_get_trans_by_name.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  br label %if.then

_p9_get_trans_by_name.exit:                       ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  %tobool.not = icmp eq ptr %t.013.i, null
  br i1 %tobool.not, label %_p9_get_trans_by_name.exit.if.then_crit_edge, label %_p9_get_trans_by_name.exit.if.end_crit_edge

_p9_get_trans_by_name.exit.if.end_crit_edge:      ; preds = %_p9_get_trans_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

_p9_get_trans_by_name.exit.if.then_crit_edge:     ; preds = %_p9_get_trans_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %_p9_get_trans_by_name.exit.if.then_crit_edge, %_p9_get_trans_by_name.exit.thread
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %s) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_trans_lock) #8
  %t.011.i6 = load ptr, ptr @v9fs_trans_list, align 4
  %cmp.not12.i7 = icmp eq ptr %t.011.i6, @v9fs_trans_list
  br i1 %cmp.not12.i7, label %if.then._p9_get_trans_by_name.exit20_crit_edge, label %if.then.for.body.i12_crit_edge

if.then.for.body.i12_crit_edge:                   ; preds = %if.then
  br label %for.body.i12

if.then._p9_get_trans_by_name.exit20_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %_p9_get_trans_by_name.exit20

for.body.i12:                                     ; preds = %for.inc.i18.for.body.i12_crit_edge, %if.then.for.body.i12_crit_edge
  %t.013.i8 = phi ptr [ %t.0.i16, %for.inc.i18.for.body.i12_crit_edge ], [ %t.011.i6, %if.then.for.body.i12_crit_edge ]
  %name.i9 = getelementptr inbounds %struct.p9_trans_module, ptr %t.013.i8, i32 0, i32 1
  %5 = ptrtoint ptr %name.i9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i9, align 4
  %call.i10 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %s) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp1.i11 = icmp eq i32 %call.i10, 0
  br i1 %cmp1.i11, label %land.lhs.true.i15, label %for.body.i12.for.inc.i18_crit_edge

for.body.i12.for.inc.i18_crit_edge:               ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i18

land.lhs.true.i15:                                ; preds = %for.body.i12
  %owner.i13 = getelementptr inbounds %struct.p9_trans_module, ptr %t.013.i8, i32 0, i32 4
  %7 = ptrtoint ptr %owner.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner.i13, align 4
  %call2.i14 = tail call zeroext i1 @try_module_get(ptr noundef %8) #8
  br i1 %call2.i14, label %land.lhs.true.i15._p9_get_trans_by_name.exit20_crit_edge, label %land.lhs.true.i15.for.inc.i18_crit_edge

land.lhs.true.i15.for.inc.i18_crit_edge:          ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i18

land.lhs.true.i15._p9_get_trans_by_name.exit20_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %_p9_get_trans_by_name.exit20

for.inc.i18:                                      ; preds = %land.lhs.true.i15.for.inc.i18_crit_edge, %for.body.i12.for.inc.i18_crit_edge
  %9 = ptrtoint ptr %t.013.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %t.0.i16 = load ptr, ptr %t.013.i8, align 4
  %cmp.not.i17 = icmp eq ptr %t.0.i16, @v9fs_trans_list
  br i1 %cmp.not.i17, label %for.inc.i18._p9_get_trans_by_name.exit20_crit_edge, label %for.inc.i18.for.body.i12_crit_edge

for.inc.i18.for.body.i12_crit_edge:               ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i12

for.inc.i18._p9_get_trans_by_name.exit20_crit_edge: ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %_p9_get_trans_by_name.exit20

_p9_get_trans_by_name.exit20:                     ; preds = %for.inc.i18._p9_get_trans_by_name.exit20_crit_edge, %land.lhs.true.i15._p9_get_trans_by_name.exit20_crit_edge, %if.then._p9_get_trans_by_name.exit20_crit_edge
  %found.0.i19 = phi ptr [ null, %if.then._p9_get_trans_by_name.exit20_crit_edge ], [ null, %for.inc.i18._p9_get_trans_by_name.exit20_crit_edge ], [ %t.013.i8, %land.lhs.true.i15._p9_get_trans_by_name.exit20_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  br label %if.end

if.end:                                           ; preds = %_p9_get_trans_by_name.exit20, %_p9_get_trans_by_name.exit.if.end_crit_edge
  %found.0 = phi ptr [ %t.013.i, %_p9_get_trans_by_name.exit.if.end_crit_edge ], [ %found.0.i19, %_p9_get_trans_by_name.exit20 ]
  ret ptr %found.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_get_default_trans() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_trans_lock) #8
  %t.046 = load ptr, ptr @v9fs_trans_list, align 4
  %cmp.not47 = icmp eq ptr %t.046, @v9fs_trans_list
  br i1 %cmp.not47, label %entry.for.cond10.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond10.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.048 = phi ptr [ %t.0, %for.inc.for.body_crit_edge ], [ %t.046, %entry.for.body_crit_edge ]
  %def = getelementptr inbounds %struct.p9_trans_module, ptr %t.048, i32 0, i32 3
  %0 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %owner = getelementptr inbounds %struct.p9_trans_module, ptr %t.048, i32 0, i32 4
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #8
  br i1 %call, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %t.048 to i32
  call void @__asan_load4_noabort(i32 %4)
  %t.0 = load ptr, ptr %t.048, align 4
  %cmp.not = icmp eq ptr %t.0, @v9fs_trans_list
  br i1 %cmp.not, label %for.inc.for.cond10.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.cond10.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader

for.end:                                          ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %t.048, null
  br i1 %tobool5.not, label %for.end.for.cond10.preheader_crit_edge, label %if.end26.thread57

for.end.for.cond10.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.end.for.cond10.preheader_crit_edge, %for.inc.for.cond10.preheader_crit_edge, %entry.for.cond10.preheader_crit_edge
  br label %for.cond10

if.end26.thread57:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  br label %for.end33

for.cond10:                                       ; preds = %for.body14.for.cond10_crit_edge, %for.cond10.preheader
  %t.1.in = phi ptr [ %t.1, %for.body14.for.cond10_crit_edge ], [ @v9fs_trans_list, %for.cond10.preheader ]
  %5 = ptrtoint ptr %t.1.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.1 = load ptr, ptr %t.1.in, align 4
  %cmp12.not = icmp eq ptr %t.1, @v9fs_trans_list
  br i1 %cmp12.not, label %if.end26.thread, label %for.body14

if.end26.thread:                                  ; preds = %for.cond10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  br label %for.body30

for.body14:                                       ; preds = %for.cond10
  %owner15 = getelementptr inbounds %struct.p9_trans_module, ptr %t.1, i32 0, i32 4
  %6 = ptrtoint ptr %owner15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner15, align 4
  %call16 = tail call zeroext i1 @try_module_get(ptr noundef %7) #8
  br i1 %call16, label %if.end26, label %for.body14.for.cond10_crit_edge

for.body14.for.cond10_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10

if.end26:                                         ; preds = %for.body14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_trans_lock) #8
  %tobool28.not50 = icmp eq ptr %t.1, null
  br i1 %tobool28.not50, label %if.end26.for.body30_crit_edge, label %if.end26.for.end33_crit_edge

if.end26.for.end33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

if.end26.for.body30_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.body30:                                       ; preds = %if.end26.for.body30_crit_edge, %if.end26.thread
  %call31 = tail call ptr @v9fs_get_trans_by_name(ptr noundef nonnull @.str.10)
  %tobool28.not = icmp eq ptr %call31, null
  br i1 %tobool28.not, label %for.body30.1, label %for.body30.for.end33_crit_edge

for.body30.for.end33_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.body30.1:                                     ; preds = %for.body30
  %call31.1 = tail call ptr @v9fs_get_trans_by_name(ptr noundef nonnull @.str.11)
  %tobool28.not.1 = icmp eq ptr %call31.1, null
  br i1 %tobool28.not.1, label %for.body30.2, label %for.body30.1.for.end33_crit_edge

for.body30.1.for.end33_crit_edge:                 ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.body30.2:                                     ; preds = %for.body30.1
  %call31.2 = tail call ptr @v9fs_get_trans_by_name(ptr noundef nonnull @.str.12)
  %tobool28.not.2 = icmp eq ptr %call31.2, null
  br i1 %tobool28.not.2, label %for.body30.3, label %for.body30.2.for.end33_crit_edge

for.body30.2.for.end33_crit_edge:                 ; preds = %for.body30.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.body30.3:                                     ; preds = %for.body30.2
  %call31.3 = tail call ptr @v9fs_get_trans_by_name(ptr noundef nonnull @.str.13)
  %tobool28.not.3 = icmp eq ptr %call31.3, null
  br i1 %tobool28.not.3, label %for.body30.4, label %for.body30.3.for.end33_crit_edge

for.body30.3.for.end33_crit_edge:                 ; preds = %for.body30.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.body30.4:                                     ; preds = %for.body30.3
  %call31.4 = tail call ptr @v9fs_get_trans_by_name(ptr noundef nonnull @.str.14)
  %tobool28.not.4 = icmp eq ptr %call31.4, null
  br i1 %tobool28.not.4, label %for.body30.5, label %for.body30.4.for.end33_crit_edge

for.body30.4.for.end33_crit_edge:                 ; preds = %for.body30.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.body30.5:                                     ; preds = %for.body30.4
  call void @__sanitizer_cov_trace_pc() #10
  %call31.5 = tail call ptr @v9fs_get_trans_by_name(ptr noundef nonnull @.str.15)
  br label %for.end33

for.end33:                                        ; preds = %for.body30.5, %for.body30.4.for.end33_crit_edge, %for.body30.3.for.end33_crit_edge, %for.body30.2.for.end33_crit_edge, %for.body30.1.for.end33_crit_edge, %for.body30.for.end33_crit_edge, %if.end26.for.end33_crit_edge, %if.end26.thread57
  %found.2.lcssa = phi ptr [ %t.1, %if.end26.for.end33_crit_edge ], [ %t.048, %if.end26.thread57 ], [ %call31, %for.body30.for.end33_crit_edge ], [ %call31.1, %for.body30.1.for.end33_crit_edge ], [ %call31.2, %for.body30.2.for.end33_crit_edge ], [ %call31.3, %for.body30.3.for.end33_crit_edge ], [ %call31.4, %for.body30.4.for.end33_crit_edge ], [ %call31.5, %for.body30.5 ]
  ret ptr %found.2.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_put_trans(ptr noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %owner = getelementptr inbounds %struct.p9_trans_module, ptr %m, i32 0, i32 4
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_p9() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  tail call void @p9_client_exit() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_exit() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_p9() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @p9_client_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @p9_error_init() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_error_init() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab_p9_debug_level, !1, !"__ksymtab_p9_debug_level", i1 false, i1 false}
!1 = !{!"../net/9p/mod.c", i32 27, i32 1}
!2 = !{ptr @__param_debug, !3, !"__param_debug", i1 false, i1 false}
!3 = !{!"../net/9p/mod.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_debugtype200, !3, !"__UNIQUE_ID_debugtype200", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_debug201, !6, !"__UNIQUE_ID_debug201", i1 false, i1 false}
!6 = !{!"../net/9p/mod.c", i32 29, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/9p/mod.c", i32 46, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @_p9_debug._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @_p9_debug._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/9p/mod.c", i32 48, i32 3}
!15 = !{ptr @_p9_debug._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @_p9_debug._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab__p9_debug, !18, !"__ksymtab__p9_debug", i1 false, i1 false}
!18 = !{!"../net/9p/mod.c", i32 52, i32 1}
!19 = !{ptr @__ksymtab_v9fs_register_trans, !20, !"__ksymtab_v9fs_register_trans", i1 false, i1 false}
!20 = !{!"../net/9p/mod.c", i32 71, i32 1}
!21 = !{ptr @__ksymtab_v9fs_unregister_trans, !22, !"__ksymtab_v9fs_unregister_trans", i1 false, i1 false}
!22 = !{!"../net/9p/mod.c", i32 84, i32 1}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/9p/mod.c", i32 117, i32 3}
!25 = !{ptr @__ksymtab_v9fs_get_trans_by_name, !26, !"__ksymtab_v9fs_get_trans_by_name", i1 false, i1 false}
!26 = !{!"../net/9p/mod.c", i32 124, i32 1}
!27 = !{ptr @__ksymtab_v9fs_get_default_trans, !28, !"__ksymtab_v9fs_get_default_trans", i1 false, i1 false}
!28 = !{!"../net/9p/mod.c", i32 162, i32 1}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/9p/mod.c", i32 200, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @exit_p9._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @exit_p9._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_9pnet__202_205_init_p96, !35, !"__initcall__kmod_9pnet__202_205_init_p96", i1 false, i1 false}
!35 = !{!"../net/9p/mod.c", i32 205, i32 1}
!36 = !{ptr @__exitcall_exit_p9, !37, !"__exitcall_exit_p9", i1 false, i1 false}
!37 = !{!"../net/9p/mod.c", i32 206, i32 1}
!38 = !{ptr @__UNIQUE_ID_author203, !39, !"__UNIQUE_ID_author203", i1 false, i1 false}
!39 = !{!"../net/9p/mod.c", i32 208, i32 1}
!40 = !{ptr @__UNIQUE_ID_author204, !41, !"__UNIQUE_ID_author204", i1 false, i1 false}
!41 = !{!"../net/9p/mod.c", i32 209, i32 1}
!42 = !{ptr @__UNIQUE_ID_author205, !43, !"__UNIQUE_ID_author205", i1 false, i1 false}
!43 = !{!"../net/9p/mod.c", i32 210, i32 1}
!44 = !{ptr @__UNIQUE_ID_file206, !45, !"__UNIQUE_ID_file206", i1 false, i1 false}
!45 = !{!"../net/9p/mod.c", i32 211, i32 1}
!46 = !{ptr @__UNIQUE_ID_license207, !45, !"__UNIQUE_ID_license207", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_description208, !48, !"__UNIQUE_ID_description208", i1 false, i1 false}
!48 = !{!"../net/9p/mod.c", i32 212, i32 1}
!49 = !{ptr @p9_debug_level, !50, !"p9_debug_level", i1 false, i1 false}
!50 = !{!"../net/9p/mod.c", i32 26, i32 14}
!51 = !{ptr @__param_str_debug, !3, !"__param_str_debug", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/9p/mod.c", i32 57, i32 8}
!54 = !{ptr @v9fs_trans_lock, !53, !"v9fs_trans_lock", i1 false, i1 false}
!55 = !{ptr @v9fs_trans_list, !56, !"v9fs_trans_list", i1 false, i1 false}
!56 = !{!"../net/9p/mod.c", i32 58, i32 8}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/9p/mod.c", i32 127, i32 2}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/9p/mod.c", i32 127, i32 12}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/9p/mod.c", i32 127, i32 19}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/9p/mod.c", i32 127, i32 25}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/9p/mod.c", i32 127, i32 33}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/9p/mod.c", i32 127, i32 40}
!69 = !{ptr @v9fs_default_transports, !70, !"v9fs_default_transports", i1 false, i1 false}
!70 = !{!"../net/9p/mod.c", i32 126, i32 27}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/9p/mod.c", i32 188, i32 2}
!73 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @init_p9._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @init_p9._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
