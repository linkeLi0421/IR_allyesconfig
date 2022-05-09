; ModuleID = '/llk/IR_all_yes/drivers/scsi/libfc/fc_libfc.c_pt.bc'
source_filename = "../drivers/scsi/libfc/fc_libfc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc_lport_notifier_head\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_lport_notifier_head\09\09\09\09"
module asm "\09.long\09__crc_fc_lport_notifier_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_lport_notifier_head:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_lport_notifier_head\22\09\09\09\09\09"
module asm "__kstrtabns_fc_lport_notifier_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_fill_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_fill_hdr\09\09\09\09"
module asm "\09.long\09__crc_fc_fill_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_fill_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_fill_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_fc_fill_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_fill_reply_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_fill_reply_hdr\09\09\09\09"
module asm "\09.long\09__crc_fc_fill_reply_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_fill_reply_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_fill_reply_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_fc_fill_reply_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_lport_iterate\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_lport_iterate\09\09\09\09"
module asm "\09.long\09__crc_fc_lport_iterate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_lport_iterate:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_lport_iterate\22\09\09\09\09\09"
module asm "__kstrtabns_fc_lport_iterate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_fc4_register_provider\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_fc4_register_provider\09\09\09\09"
module asm "\09.long\09__crc_fc_fc4_register_provider\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_fc4_register_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_fc4_register_provider\22\09\09\09\09\09"
module asm "__kstrtabns_fc_fc4_register_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_fc4_deregister_provider\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_fc4_deregister_provider\09\09\09\09"
module asm "\09.long\09__crc_fc_fc4_deregister_provider\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_fc4_deregister_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_fc4_deregister_provider\22\09\09\09\09\09"
module asm "__kstrtabns_fc_fc4_deregister_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fc4_prov = type { ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sk_buff = type { %union.anon.83, %union.anon.86, %union.anon.87, [48 x i8], %union.anon.88, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.90, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr, %union.anon.85 }
%union.anon.85 = type { ptr }
%union.anon.86 = type { ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, ptr }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.92, i32, i32, i32, i16, i16, %union.anon.94, i32, %union.anon.95, %union.anon.96, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.92 = type { i32 }
%union.anon.94 = type { i32 }
%union.anon.95 = type { i32 }
%union.anon.96 = type { i16 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.fc_seq = type { i8, i16, i16, i32 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__UNIQUE_ID_author307 = internal constant [27 x i8] c"libfc.author=Open-FCoE.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [24 x i8] c"libfc.description=libfc\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [36 x i8] c"libfc.file=drivers/scsi/libfc/libfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [21 x i8] c"libfc.license=GPL v2\00", section ".modinfo", align 1
@__param_str_debug_logging = internal constant [20 x i8] c"libfc.debug_logging\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fc_debug_logging = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_debug_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @fc_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_debug_loggingtype311 = internal constant [33 x i8] c"libfc.parmtype=debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_logging312 = internal constant [54 x i8] c"libfc.parm=debug_logging:a bit mask of logging levels\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fc_prov_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@fc_prov_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fc_prov_mutex, i64 52), ptr getelementptr (i8, ptr @fc_prov_mutex, i64 52) }, ptr @fc_prov_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc_prov_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(fc_lport_notifier_head).rwsem.wait_lock\00", [55 x i8] zeroinitializer }, align 32
@fc_lport_notifier_head = dso_local global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @fc_lport_notifier_head, i64 56), ptr getelementptr (i8, ptr @fc_lport_notifier_head, i64 56) }, ptr @fc_lport_notifier_head, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(fc_lport_notifier_head).rwsem\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_fc_lport_notifier_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_lport_notifier_head = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_lport_notifier_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_lport_notifier_head to i32), ptr @__kstrtab_fc_lport_notifier_head, ptr @__kstrtabns_fc_lport_notifier_head }, section "___ksymtab+fc_lport_notifier_head", align 4
@fc_rport_t0_prov = external dso_local global %struct.fc4_prov, align 4
@fc_rport_fcp_init = external dso_local global %struct.fc4_prov, align 4
@fc_active_prov = dso_local global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @fc_rport_t0_prov, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_rport_fcp_init], [60 x i8] zeroinitializer }, align 32
@fc_lport_els_prov = external dso_local global %struct.fc4_prov, align 4
@fc_passive_prov = dso_local global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr null, ptr @fc_lport_els_prov, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_libfc__313_74_libfc_init6 = internal global ptr @libfc_init, section ".initcall6.init", align 4
@__exitcall_libfc_exit = internal global ptr @libfc_exit, section ".exitcall.exit", align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/libfc/fc_libfc.c\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_fc_fill_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_fill_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_fill_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_fill_hdr to i32), ptr @__kstrtab_fc_fill_hdr, ptr @__kstrtabns_fc_fill_hdr }, section "___ksymtab+fc_fill_hdr", align 4
@__kstrtab_fc_fill_reply_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_fill_reply_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_fill_reply_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_fill_reply_hdr to i32), ptr @__kstrtab_fc_fill_reply_hdr, ptr @__kstrtabns_fc_fill_reply_hdr }, section "___ksymtab+fc_fill_reply_hdr", align 4
@fc_local_ports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fc_local_ports, ptr @fc_local_ports }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_fc_lport_iterate = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_lport_iterate = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_lport_iterate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_lport_iterate to i32), ptr @__kstrtab_fc_lport_iterate, ptr @__kstrtabns_fc_lport_iterate }, section "___ksymtab+fc_lport_iterate", align 4
@__kstrtab_fc_fc4_register_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_fc4_register_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_fc4_register_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_fc4_register_provider to i32), ptr @__kstrtab_fc_fc4_register_provider, ptr @__kstrtabns_fc_fc4_register_provider }, section "___ksymtab+fc_fc4_register_provider", align 4
@__kstrtab_fc_fc4_deregister_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_fc4_deregister_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_fc4_deregister_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_fc4_deregister_provider to i32), ptr @__kstrtab_fc_fc4_deregister_provider, ptr @__kstrtabns_fc_fc4_deregister_provider }, section "___ksymtab+fc_fc4_deregister_provider", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"fc_debug_logging\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 23, i32 14 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"fc_prov_mutex\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 27, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"fc_lport_notifier_head\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 29, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 30, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"fc_active_prov\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 36, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"fc_passive_prov\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 44, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 174, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"fc_local_ports\00", align 1
@___asan_gen_.36 = private constant [33 x i8] c"../drivers/scsi/libfc/fc_libfc.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 28, i32 8 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_debug_logging312, ptr @__UNIQUE_ID_debug_loggingtype311, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_libfc_exit, ptr @__initcall__kmod_libfc__313_74_libfc_init6, ptr @__ksymtab_fc_fc4_deregister_provider, ptr @__ksymtab_fc_fc4_register_provider, ptr @__ksymtab_fc_fill_hdr, ptr @__ksymtab_fc_fill_reply_hdr, ptr @__ksymtab_fc_lport_iterate, ptr @__ksymtab_fc_lport_notifier_head, ptr @__param_debug_logging, ptr @libfc_exit, ptr @fc_debug_logging, ptr @.str, ptr @fc_prov_mutex, ptr @.str.1, ptr @.str.2, ptr @fc_lport_notifier_head, ptr @.str.3, ptr @fc_active_prov, ptr @fc_passive_prov, ptr @.str.4, ptr @fc_local_ports], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_debug_logging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_prov_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_lport_notifier_head to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_active_prov to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_passive_prov to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_local_ports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @libfc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fc_setup_fcp() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fc_setup_exch_mgr() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.destroy_pkt_cache_crit_edge

if.end.destroy_pkt_cache_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_pkt_cache

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @fc_setup_rport() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %destroy_em

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

destroy_em:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fc_destroy_exch_mgr() #6
  br label %destroy_pkt_cache

destroy_pkt_cache:                                ; preds = %destroy_em, %if.end.destroy_pkt_cache_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.destroy_pkt_cache_crit_edge ], [ %call5, %destroy_em ]
  tail call void @fc_destroy_fcp() #6
  br label %cleanup

cleanup:                                          ; preds = %destroy_pkt_cache, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %destroy_pkt_cache ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @libfc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fc_destroy_fcp() #6
  tail call void @fc_destroy_exch_mgr() #6
  tail call void @fc_destroy_rport() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_destroy_fcp() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_destroy_exch_mgr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_destroy_rport() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_copy_buffer_to_sglist(ptr noundef %buf, i32 noundef %len, ptr noundef %sg, ptr nocapture noundef %nents, ptr nocapture noundef %offset, ptr noundef %crc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not77 = icmp eq i32 %len, 0
  %tobool.not78 = icmp eq ptr %sg, null
  %or.cond79 = or i1 %cmp.not77, %tobool.not78
  br i1 %or.cond79, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool19.not = icmp eq ptr %crc, null
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.083 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.1, %cleanup.while.body_crit_edge ]
  %sg.addr.082 = phi ptr [ %sg, %while.body.lr.ph ], [ %sg.addr.1, %cleanup.while.body_crit_edge ]
  %copy_len.081 = phi i32 [ 0, %while.body.lr.ph ], [ %copy_len.1, %cleanup.while.body_crit_edge ]
  %remaining.080 = phi i32 [ %len, %while.body.lr.ph ], [ %remaining.1, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.082, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.not = icmp ugt i32 %3, %1
  br i1 %cmp1.not, label %if.end5, label %if.then

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then.while.end_crit_edge, label %if.end

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %nents, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %sub = sub i32 %10, %8
  store i32 %sub, ptr %offset, align 4
  %call = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.082) #6
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %sub7 = sub i32 %3, %1
  %11 = tail call i32 @llvm.umin.i32(i32 %remaining.080, i32 %sub7)
  %offset9 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.082, i32 0, i32 1
  %12 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset9, align 4
  %add = add i32 %13, %1
  %and = and i32 %add, 4095
  %sub10 = sub nuw nsw i32 4096, %and
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub10)
  %15 = ptrtoint ptr %sg.addr.082 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg.addr.082, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !58

do.body2.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !59
  unreachable

sg_page.exit:                                     ; preds = %if.end5
  %and.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i to ptr
  %shr = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %17, i32 %shr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %18 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %18, 512
  %19 = tail call i32 @llvm.read_register.i32(metadata !48) #6
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !60
  %23 = tail call i32 @llvm.read_register.i32(metadata !48) #6
  %and.i.i.i1.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #6
  br i1 %tobool19.not, label %sg_page.exit.if.end22_crit_edge, label %if.then20

sg_page.exit.if.end22_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crc, align 4
  %call21 = tail call i32 @crc32_le(i32 noundef %30, ptr noundef %buf.addr.083, i32 noundef %14) #9
  %31 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call21, ptr %crc, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %sg_page.exit.if.end22_crit_edge
  %add.ptr24 = getelementptr i8, ptr %call.i.i, i32 %and
  %32 = call ptr @memcpy(ptr %add.ptr24, ptr %buf.addr.083, i32 %14)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %33 = tail call i32 @llvm.read_register.i32(metadata !48) #6
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %38, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !63
  %39 = tail call i32 @llvm.read_register.i32(metadata !48) #6
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %add.ptr28 = getelementptr i8, ptr %buf.addr.083, i32 %14
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset, align 4
  %add29 = add i32 %44, %14
  store i32 %add29, ptr %offset, align 4
  %sub30 = sub i32 %remaining.080, %14
  %add31 = add i32 %14, %copy_len.081
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end
  %remaining.1 = phi i32 [ %remaining.080, %if.end ], [ %sub30, %if.end22 ]
  %copy_len.1 = phi i32 [ %copy_len.081, %if.end ], [ %add31, %if.end22 ]
  %sg.addr.1 = phi ptr [ %call, %if.end ], [ %sg.addr.082, %if.end22 ]
  %buf.addr.1 = phi ptr [ %buf.addr.083, %if.end ], [ %add.ptr28, %if.end22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.1)
  %cmp.not = icmp eq i32 %remaining.1, 0
  %tobool.not = icmp eq ptr %sg.addr.1, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %copy_len.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %copy_len.081, %if.then.while.end_crit_edge ], [ %copy_len.1, %cleanup.while.end_crit_edge ]
  ret i32 %copy_len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fill_hdr(ptr noundef %fp, ptr nocapture noundef readonly %in_fp, i32 noundef %r_ctl, i32 noundef %f_ctl, i16 noundef zeroext %seq_cnt, i32 noundef %parm_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %data.i105 = getelementptr inbounds %struct.sk_buff, ptr %in_fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i105 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i105, align 4
  %and = and i32 %f_ctl, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %4 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i32 0, %5
  %and2 = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end35_crit_edge, label %if.then4

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @skb_put(ptr noundef %fp, i32 noundef %and2) #6
  %6 = call ptr @memset(ptr %call.i, i32 0, i32 %and2)
  %or = or i32 %and2, %f_ctl
  br label %if.end35

if.else:                                          ; preds = %entry
  %rem = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.else.if.end35_crit_edge, label %do.end, !prof !58

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 174, i32 noundef 9, ptr noundef null) #6
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.else.if.end35_crit_edge, %if.then4, %if.then.if.end35_crit_edge
  %.sink = phi i8 [ 66, %if.then4 ], [ 66, %if.then.if.end35_crit_edge ], [ 65, %do.end ], [ 65, %if.else.if.end35_crit_edge ]
  %f_ctl.addr.1 = phi i32 [ %or, %if.then4 ], [ %f_ctl, %if.then.if.end35_crit_edge ], [ %f_ctl, %do.end ], [ %f_ctl, %if.else.if.end35_crit_edge ]
  %fr_eof34 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 19
  %7 = ptrtoint ptr %fr_eof34 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %fr_eof34, align 1
  %conv = trunc i32 %r_ctl to i8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %1, align 4
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 1
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %fh_d_id, ptr %fh_s_id, i32 3)
  %fh_s_id37 = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 3
  %fh_d_id39 = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %fh_s_id37, ptr %fh_d_id39, i32 3)
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_type, align 4
  %fh_type41 = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %fh_type41 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %fh_type41, align 4
  %fh_f_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 5
  %shr.i = lshr i32 %f_ctl.addr.1, 16
  %conv.i = trunc i32 %shr.i to i8
  %14 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %fh_f_ctl, align 1
  %shr1.i = lshr i32 %f_ctl.addr.1, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %1, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %f_ctl.addr.1 to i8
  %arrayidx7.i = getelementptr %struct.fc_frame_header, ptr %1, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fh_ox_id, align 4
  %fh_ox_id43 = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %fh_ox_id43 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %fh_ox_id43, align 4
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fh_rx_id, align 2
  %fh_rx_id44 = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %fh_rx_id44 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %fh_rx_id44, align 2
  %fh_cs_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %fh_cs_ctl to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %fh_cs_ctl, align 4
  %fh_df_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %fh_df_ctl to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fh_df_ctl, align 1
  %fh_parm_offset = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %fh_parm_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %parm_offset, ptr %fh_parm_offset, align 4
  %fr_seq = getelementptr inbounds %struct.sk_buff, ptr %in_fp, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %fr_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fr_seq, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %if.else54, label %if.then49

if.then49:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %fr_seq53 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %fr_seq53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %fr_seq53, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %27, align 4
  %fh_seq_id = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %fh_seq_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fh_seq_id, align 4
  %cnt = getelementptr inbounds %struct.fc_seq, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %cnt to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cnt, align 4
  br label %if.end56

if.else54:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %fh_seq_id55 = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %fh_seq_id55 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %fh_seq_id55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then49
  %seq_cnt.addr.0 = phi i16 [ %33, %if.then49 ], [ %seq_cnt, %if.else54 ]
  %fh_seq_cnt = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %fh_seq_cnt to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %seq_cnt.addr.0, ptr %fh_seq_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %seq_cnt.addr.0)
  %tobool58.not = icmp eq i16 %seq_cnt.addr.0, 0
  %conv59 = select i1 %tobool58.not, i8 46, i8 54
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 18
  %36 = ptrtoint ptr %fr_sof to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv59, ptr %fr_sof, align 2
  %fr_encaps = getelementptr inbounds %struct.sk_buff, ptr %in_fp, i32 0, i32 3, i32 21
  %37 = ptrtoint ptr %fr_encaps to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fr_encaps, align 1
  %fr_encaps69 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 21
  %39 = ptrtoint ptr %fr_encaps69 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %fr_encaps69, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fill_reply_hdr(ptr noundef %fp, ptr nocapture noundef readonly %in_fp, i32 noundef %r_ctl, i32 noundef %parm_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fr_seq = getelementptr inbounds %struct.sk_buff, ptr %in_fp, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %fr_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fr_seq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @fc_seq_start_next(ptr noundef nonnull %1) #6
  %fr_seq4 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %fr_seq4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fr_seq4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %data.i105.i = getelementptr inbounds %struct.sk_buff, ptr %in_fp, i32 0, i32 19
  %5 = ptrtoint ptr %data.i105.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i105.i, align 4
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %7 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len9.i, align 4
  %sub.i = sub i32 0, %8
  %and2.i = and i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.if.end35.i_crit_edge, label %if.then4.i

if.end.if.end35.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call ptr @skb_put(ptr noundef %fp, i32 noundef %and2.i) #6
  %9 = call ptr @memset(ptr %call.i.i, i32 0, i32 %and2.i)
  %or.i = or i32 %and2.i, 10027008
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then4.i, %if.end.if.end35.i_crit_edge
  %f_ctl.addr.1.i = phi i32 [ %or.i, %if.then4.i ], [ 10027008, %if.end.if.end35.i_crit_edge ]
  %fr_eof34.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 19
  %10 = ptrtoint ptr %fr_eof34.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 66, ptr %fr_eof34.i, align 1
  %conv.i = trunc i32 %r_ctl to i8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %4, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 1
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %6, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %fh_d_id.i, ptr %fh_s_id.i, i32 3)
  %fh_s_id37.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 3
  %fh_d_id39.i = getelementptr inbounds %struct.fc_frame_header, ptr %6, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %fh_s_id37.i, ptr %fh_d_id39.i, i32 3)
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %6, i32 0, i32 4
  %14 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_type.i, align 4
  %fh_type41.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 4
  %16 = ptrtoint ptr %fh_type41.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %fh_type41.i, align 4
  %fh_f_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 5
  %shr.i.i = lshr i32 %f_ctl.addr.1.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i8
  %17 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %fh_f_ctl.i, align 1
  %shr1.i.i = lshr i32 %f_ctl.addr.1.i, 8
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %4, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %conv6.i.i = trunc i32 %f_ctl.addr.1.i to i8
  %arrayidx7.i.i = getelementptr %struct.fc_frame_header, ptr %4, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %6, i32 0, i32 9
  %20 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fh_ox_id.i, align 4
  %fh_ox_id43.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 9
  %22 = ptrtoint ptr %fh_ox_id43.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %fh_ox_id43.i, align 4
  %fh_rx_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %6, i32 0, i32 10
  %23 = ptrtoint ptr %fh_rx_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fh_rx_id.i, align 2
  %fh_rx_id44.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 10
  %25 = ptrtoint ptr %fh_rx_id44.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %fh_rx_id44.i, align 2
  %fh_cs_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 2
  %26 = ptrtoint ptr %fh_cs_ctl.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %fh_cs_ctl.i, align 4
  %fh_df_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 7
  %27 = ptrtoint ptr %fh_df_ctl.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %fh_df_ctl.i, align 1
  %fh_parm_offset.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 11
  %28 = ptrtoint ptr %fh_parm_offset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %parm_offset, ptr %fh_parm_offset.i, align 4
  %29 = ptrtoint ptr %fr_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fr_seq, align 4
  %tobool48.not.i = icmp eq ptr %30, null
  br i1 %tobool48.not.i, label %fc_fill_hdr.exit.thread, label %fc_fill_hdr.exit

fc_fill_hdr.exit.thread:                          ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %fh_seq_id55.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 6
  %31 = ptrtoint ptr %fh_seq_id55.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %fh_seq_id55.i, align 4
  %fh_seq_cnt.i9 = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 8
  %32 = ptrtoint ptr %fh_seq_cnt.i9 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %fh_seq_cnt.i9, align 2
  br label %40

fc_fill_hdr.exit:                                 ; preds = %if.end35.i
  %fr_seq53.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %fr_seq53.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %fr_seq53.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %30, align 4
  %fh_seq_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 6
  %36 = ptrtoint ptr %fh_seq_id.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %fh_seq_id.i, align 4
  %cnt.i = getelementptr inbounds %struct.fc_seq, ptr %30, i32 0, i32 2
  %37 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cnt.i, align 4
  %fh_seq_cnt.i = getelementptr inbounds %struct.fc_frame_header, ptr %4, i32 0, i32 8
  %39 = ptrtoint ptr %fh_seq_cnt.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %fh_seq_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool58.not.i = icmp eq i16 %38, 0
  br i1 %tobool58.not.i, label %fc_fill_hdr.exit._crit_edge, label %fc_fill_hdr.exit._crit_edge11

fc_fill_hdr.exit._crit_edge11:                    ; preds = %fc_fill_hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %41

fc_fill_hdr.exit._crit_edge:                      ; preds = %fc_fill_hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %40

40:                                               ; preds = %fc_fill_hdr.exit._crit_edge, %fc_fill_hdr.exit.thread
  br label %41

41:                                               ; preds = %40, %fc_fill_hdr.exit._crit_edge11
  %42 = phi i8 [ 46, %40 ], [ 54, %fc_fill_hdr.exit._crit_edge11 ]
  %fr_sof.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 18
  %43 = ptrtoint ptr %fr_sof.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %fr_sof.i, align 2
  %fr_encaps.i = getelementptr inbounds %struct.sk_buff, ptr %in_fp, i32 0, i32 3, i32 21
  %44 = ptrtoint ptr %fr_encaps.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fr_encaps.i, align 1
  %fr_encaps69.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 21
  %46 = ptrtoint ptr %fr_encaps69.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %fr_encaps69.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_seq_start_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fc4_conf_lport_params(ptr noundef %lport, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp = icmp ugt i32 %type, 8
  br i1 %cmp, label %do.body2, label %do.body8, !prof !64

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libfc/fc_libfc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #6, !srcloc !65
  unreachable

do.body8:                                         ; preds = %entry
  %tobool9.not = icmp eq ptr %lport, null
  br i1 %tobool9.not, label %do.body19, label %do.end27, !prof !64

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libfc/fc_libfc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 233, 0\0A.popsection", ""() #6, !srcloc !66
  unreachable

do.end27:                                         ; preds = %do.body8
  %arrayidx = getelementptr [9 x ptr], ptr @fc_passive_prov, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp28 = icmp ne i32 %type, 8
  %tobool30.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp28, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %do.end27.if.end34_crit_edge, label %land.lhs.true

do.end27.if.end34_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %do.end27
  %recv = getelementptr inbounds %struct.fc4_prov, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv, align 4
  %tobool31.not = icmp eq ptr %3, null
  br i1 %tobool31.not, label %land.lhs.true.if.end34_crit_edge, label %if.then32

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %service_params = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 21
  %4 = ptrtoint ptr %service_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service_params, align 8
  %or = or i32 %5, 16
  store i32 %or, ptr %service_params, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true.if.end34_crit_edge, %do.end27.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_lport_iterate(ptr nocapture noundef readonly %notify, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fc_prov_mutex, i32 noundef 0) #6
  %.pn7 = load ptr, ptr @fc_local_ports, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @fc_local_ports
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %lport.0 = getelementptr i8, ptr %.pn9, i32 -996
  tail call void %notify(ptr noundef %lport.0, ptr noundef %arg) #6
  %0 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @fc_local_ports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fc_prov_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_fc4_register_provider(i32 noundef %type, ptr noundef %prov) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp = icmp ugt i32 %type, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @fc_prov_mutex, i32 noundef 0) #6
  %recv = getelementptr inbounds %struct.fc4_prov, ptr %prov, i32 0, i32 2
  %0 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv, align 4
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, ptr @fc_active_prov, ptr @fc_passive_prov
  %add.ptr = getelementptr ptr, ptr %cond, i32 %type
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.else, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %prov, ptr %add.ptr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end.if.end3_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -16, %if.end.if.end3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @fc_prov_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fc4_deregister_provider(i32 noundef %type, ptr nocapture noundef readonly %prov) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp = icmp ugt i32 %type, 8
  br i1 %cmp, label %do.body2, label %do.end5, !prof !64

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libfc/fc_libfc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #6, !srcloc !67
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @fc_prov_mutex, i32 noundef 0) #6
  %recv = getelementptr inbounds %struct.fc4_prov, ptr %prov, i32 0, i32 2
  %0 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv, align 4
  %tobool6.not = icmp eq ptr %1, null
  %fc_active_prov.fc_passive_prov = select i1 %tobool6.not, ptr @fc_active_prov, ptr @fc_passive_prov
  %arrayidx21 = getelementptr [9 x ptr], ptr %fc_active_prov.fc_passive_prov, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx21, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @fc_prov_mutex) #6
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fc4_add_lport(ptr noundef %lport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fc_prov_mutex, i32 noundef 0) #6
  %lport_list = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 39
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fc_local_ports, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lport_list, ptr noundef %0, ptr noundef nonnull @fc_local_ports) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %lport_list, ptr getelementptr inbounds (%struct.list_head, ptr @fc_local_ports, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %lport_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fc_local_ports, ptr %lport_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 39, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %lport_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @fc_lport_notifier_head, i32 noundef 0, ptr noundef %lport) #6
  tail call void @mutex_unlock(ptr noundef nonnull @fc_prov_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fc4_del_lport(ptr noundef %lport) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fc_prov_mutex, i32 noundef 0) #6
  %lport_list = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 39
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lport_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 39, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %lport_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %lport_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %lport_list, align 4
  %prev.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 39, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @fc_lport_notifier_head, i32 noundef 1, ptr noundef %lport) #6
  tail call void @mutex_unlock(ptr noundef nonnull @fc_prov_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_setup_fcp() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_setup_exch_mgr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_setup_rport() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__UNIQUE_ID_author307, !1, !"__UNIQUE_ID_author307", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description308, !3, !"__UNIQUE_ID_description308", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file309, !5, !"__UNIQUE_ID_file309", i1 false, i1 false}
!5 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license310, !5, !"__UNIQUE_ID_license310", i1 false, i1 false}
!7 = !{ptr @__param_debug_logging, !8, !"__param_debug_logging", i1 false, i1 false}
!8 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_debug_loggingtype311, !8, !"__UNIQUE_ID_debug_loggingtype311", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug_logging312, !11, !"__UNIQUE_ID_debug_logging312", i1 false, i1 false}
!11 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 25, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 27, i32 1}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fc_prov_mutex, !13, !"fc_prov_mutex", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 30, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fc_lport_notifier_head, !20, !"fc_lport_notifier_head", i1 false, i1 false}
!20 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 29, i32 31}
!21 = !{ptr @__ksymtab_fc_lport_notifier_head, !22, !"__ksymtab_fc_lport_notifier_head", i1 false, i1 false}
!22 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 31, i32 1}
!23 = !{ptr @fc_active_prov, !24, !"fc_active_prov", i1 false, i1 false}
!24 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 36, i32 18}
!25 = !{ptr @fc_passive_prov, !26, !"fc_passive_prov", i1 false, i1 false}
!26 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 44, i32 18}
!27 = !{ptr @__initcall__kmod_libfc__313_74_libfc_init6, !28, !"__initcall__kmod_libfc__313_74_libfc_init6", i1 false, i1 false}
!28 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 74, i32 1}
!29 = !{ptr @__exitcall_libfc_exit, !30, !"__exitcall_libfc_exit", i1 false, i1 false}
!30 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 85, i32 1}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 174, i32 3}
!33 = !{ptr @__ksymtab_fc_fill_hdr, !34, !"__ksymtab_fc_fill_hdr", i1 false, i1 false}
!34 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 201, i32 1}
!35 = !{ptr @__ksymtab_fc_fill_reply_hdr, !36, !"__ksymtab_fc_fill_reply_hdr", i1 false, i1 false}
!36 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 220, i32 1}
!37 = !{ptr @__ksymtab_fc_lport_iterate, !38, !"__ksymtab_fc_lport_iterate", i1 false, i1 false}
!38 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 250, i32 1}
!39 = !{ptr @__ksymtab_fc_fc4_register_provider, !40, !"__ksymtab_fc_fc4_register_provider", i1 false, i1 false}
!40 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 275, i32 1}
!41 = !{ptr @__ksymtab_fc_fc4_deregister_provider, !42, !"__ksymtab_fc_fc4_deregister_provider", i1 false, i1 false}
!42 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 293, i32 1}
!43 = !{ptr @fc_debug_logging, !44, !"fc_debug_logging", i1 false, i1 false}
!44 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 23, i32 14}
!45 = !{ptr @__param_str_debug_logging, !8, !"__param_str_debug_logging", i1 false, i1 false}
!46 = !{ptr @fc_local_ports, !47, !"fc_local_ports", i1 false, i1 false}
!47 = !{!"../drivers/scsi/libfc/fc_libfc.c", i32 28, i32 8}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2153352258, i64 2153352750, i64 2153352295, i64 2153352351, i64 2153352385, i64 2153352409, i64 2153352450, i64 2153352471, i64 2153352499, i64 2153352533}
!60 = !{i64 2154188853}
!61 = !{i64 2152752849}
!62 = !{i64 2152753056}
!63 = !{i64 2154191624}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2155444310, i64 2155444804, i64 2155444347, i64 2155444403, i64 2155444437, i64 2155444461, i64 2155444502, i64 2155444523, i64 2155444551, i64 2155444585}
!66 = !{i64 2155449969, i64 2155450463, i64 2155450006, i64 2155450062, i64 2155450096, i64 2155450120, i64 2155450161, i64 2155450182, i64 2155450210, i64 2155450244}
!67 = !{i64 2155458363, i64 2155458857, i64 2155458400, i64 2155458456, i64 2155458490, i64 2155458514, i64 2155458555, i64 2155458576, i64 2155458604, i64 2155458638}
