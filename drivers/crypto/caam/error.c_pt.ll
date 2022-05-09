; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/error.c_pt.bc'
source_filename = "../drivers/crypto/caam/error.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+caam_dump_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_dump_sg\09\09\09\09"
module asm "\09.long\09__crc_caam_dump_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_dump_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_dump_sg\22\09\09\09\09\09"
module asm "__kstrtabns_caam_dump_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caam_little_end\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_little_end\09\09\09\09"
module asm "\09.long\09__crc_caam_little_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_little_end:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_little_end\22\09\09\09\09\09"
module asm "__kstrtabns_caam_little_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caam_imx\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_imx\09\09\09\09"
module asm "\09.long\09__crc_caam_imx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_imx:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_imx\22\09\09\09\09\09"
module asm "__kstrtabns_caam_imx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caam_ptr_sz\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_ptr_sz\09\09\09\09"
module asm "\09.long\09__crc_caam_ptr_sz\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_ptr_sz:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_ptr_sz\22\09\09\09\09\09"
module asm "__kstrtabns_caam_ptr_sz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caam_strstatus\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_strstatus\09\09\09\09"
module asm "\09.long\09__crc_caam_strstatus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_strstatus:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_strstatus\22\09\09\09\09\09"
module asm "__kstrtabns_caam_strstatus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stat_src = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.155 = type { i8, ptr }
%struct.anon.156 = type { i8, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.104, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.104 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@caam_dump_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013caam_dump_sg: kmap failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"caam_dump_sg\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/crypto/caam/error.c\00", [36 x i8] zeroinitializer }, align 32
@caam_dump_sg._entry_ptr = internal global ptr @caam_dump_sg._entry, section ".printk_index", align 4
@caam_dump_sg.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 9, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_caam_dump_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_dump_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_dump_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_dump_sg to i32), ptr @__kstrtab_caam_dump_sg, ptr @__kstrtabns_caam_dump_sg }, section "___ksymtab+caam_dump_sg", align 4
@caam_little_end = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_caam_little_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_little_end = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_little_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_little_end to i32), ptr @__kstrtab_caam_little_end, ptr @__kstrtabns_caam_little_end }, section "___ksymtab+caam_little_end", align 4
@caam_imx = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_caam_imx = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_imx = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_imx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_imx to i32), ptr @__kstrtab_caam_imx, ptr @__kstrtabns_caam_imx }, section "___ksymtab+caam_imx", align 4
@caam_ptr_sz = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_caam_ptr_sz = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_ptr_sz = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_ptr_sz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_ptr_sz to i32), ptr @__kstrtab_caam_ptr_sz, ptr @__kstrtabns_caam_ptr_sz }, section "___ksymtab+caam_ptr_sz", align 4
@caam_strstatus.status_src = internal constant { <{ [8 x %struct.stat_src], [8 x %struct.stat_src] }>, [32 x i8] } { <{ [8 x %struct.stat_src], [8 x %struct.stat_src] }> <{ [8 x %struct.stat_src] [%struct.stat_src { ptr null, ptr @.str.6 }, %struct.stat_src zeroinitializer, %struct.stat_src { ptr @report_ccb_status, ptr @.str.7 }, %struct.stat_src { ptr @report_jump_status, ptr @.str.8 }, %struct.stat_src { ptr @report_deco_status, ptr @.str.9 }, %struct.stat_src { ptr @report_qi_status, ptr @.str.10 }, %struct.stat_src { ptr @report_jr_status, ptr @.str.11 }, %struct.stat_src { ptr @report_cond_code_status, ptr @.str.12 }], [8 x %struct.stat_src] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No error\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCB\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Jump\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DECO\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Queue Manager Interface\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Job Ring\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Condition Code\00", [17 x i8] zeroinitializer }, align 32
@caam_strstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 383, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"caam_strstatus\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@caam_strstatus._entry_ptr = internal global ptr @caam_strstatus._entry, section ".printk_index", align 4
@caam_strstatus._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 385, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d: unknown error source\0A\00", [38 x i8] zeroinitializer }, align 32
@caam_strstatus._entry_ptr.19 = internal global ptr @caam_strstatus._entry.17, section ".printk_index", align 4
@__kstrtab_caam_strstatus = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_strstatus = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_strstatus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_strstatus to i32), ptr @__kstrtab_caam_strstatus, ptr @__kstrtabns_caam_strstatus }, section "___ksymtab+caam_strstatus", align 4
@__UNIQUE_ID_file515 = internal constant [37 x i8] c"error.file=drivers/crypto/caam/error\00", section ".modinfo", align 1
@__UNIQUE_ID_license516 = internal constant [18 x i8] c"error.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description517 = internal constant [43 x i8] c"error.description=FSL CAAM error reporting\00", section ".modinfo", align 1
@__UNIQUE_ID_author518 = internal constant [37 x i8] c"error.author=Freescale Semiconductor\00", section ".modinfo", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unidentified cha_id value 0x\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jump tgt desc idx\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"desc idx\00", [23 x i8] zeroinitializer }, align 32
@cha_id_list = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@rng_err_id_list = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.27, ptr @.str.27, ptr @.str.27, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.27, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@err_id_list = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [32 x i8] zeroinitializer }, align 32
@report_ccb_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.report_ccb_status = private unnamed_addr constant [18 x i8] c"report_ccb_status\00", align 1
@report_ccb_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.report_ccb_status, ptr @.str.2, i32 262, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%08x: %s: %s %d: %s%s: %s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@report_ccb_status._entry_ptr = internal global ptr @report_ccb_status._entry, section ".printk_index", align 4
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AES\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DES\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ARC4\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDHA\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RNG\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SNOW f8\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Kasumi f8/9\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PKHA\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CRCA\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SNOW f9\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZUCE\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZUCA\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Instantiate\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not instantiated\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Test instantiate\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Prediction resistance\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Prediction resistance and test request\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Uninstantiate\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Secure key generation\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Hardware error\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Continuous check\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No error.\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mode error.\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Data size error.\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Key size error.\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PKHA A memory size error.\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PKHA B memory size error.\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Data arrived out of sequence error.\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PKHA divide-by-zero error.\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PKHA modulus even error.\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DES key parity error.\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ICV check failed.\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hardware error.\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported CCM AAD size.\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Class 1 CHA is not reset\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid CHA combination was selected\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid CHA selected.\00", [42 x i8] zeroinitializer }, align 32
@report_jump_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 271, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%08x: %s: %s() not implemented\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"report_jump_status\00", [45 x i8] zeroinitializer }, align 32
@report_jump_status._entry_ptr = internal global ptr @report_jump_status._entry, section ".printk_index", align 4
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unidentified error value 0x\00", [36 x i8] zeroinitializer }, align 32
@desc_error_list = internal constant { [52 x %struct.anon.155], [96 x i8] } { [52 x %struct.anon.155] [%struct.anon.155 { i8 0, ptr @.str.49 }, %struct.anon.155 { i8 1, ptr @.str.70 }, %struct.anon.155 { i8 2, ptr @.str.71 }, %struct.anon.155 { i8 3, ptr @.str.72 }, %struct.anon.155 { i8 4, ptr @.str.73 }, %struct.anon.155 { i8 5, ptr @.str.74 }, %struct.anon.155 { i8 6, ptr @.str.75 }, %struct.anon.155 { i8 7, ptr @.str.76 }, %struct.anon.155 { i8 8, ptr @.str.77 }, %struct.anon.155 { i8 9, ptr @.str.78 }, %struct.anon.155 { i8 10, ptr @.str.79 }, %struct.anon.155 { i8 11, ptr @.str.80 }, %struct.anon.155 { i8 12, ptr @.str.81 }, %struct.anon.155 { i8 13, ptr @.str.82 }, %struct.anon.155 { i8 14, ptr @.str.83 }, %struct.anon.155 { i8 15, ptr @.str.84 }, %struct.anon.155 { i8 16, ptr @.str.85 }, %struct.anon.155 { i8 17, ptr @.str.86 }, %struct.anon.155 { i8 18, ptr @.str.87 }, %struct.anon.155 { i8 19, ptr @.str.88 }, %struct.anon.155 { i8 20, ptr @.str.89 }, %struct.anon.155 { i8 21, ptr @.str.90 }, %struct.anon.155 { i8 22, ptr @.str.91 }, %struct.anon.155 { i8 23, ptr @.str.74 }, %struct.anon.155 { i8 26, ptr @.str.92 }, %struct.anon.155 { i8 27, ptr @.str.93 }, %struct.anon.155 { i8 28, ptr @.str.94 }, %struct.anon.155 { i8 29, ptr @.str.95 }, %struct.anon.155 { i8 30, ptr @.str.96 }, %struct.anon.155 { i8 31, ptr @.str.97 }, %struct.anon.155 { i8 32, ptr @.str.98 }, %struct.anon.155 { i8 33, ptr @.str.99 }, %struct.anon.155 { i8 34, ptr @.str.100 }, %struct.anon.155 { i8 35, ptr @.str.101 }, %struct.anon.155 { i8 36, ptr @.str.102 }, %struct.anon.155 { i8 -128, ptr @.str.103 }, %struct.anon.155 { i8 -127, ptr @.str.104 }, %struct.anon.155 { i8 -126, ptr @.str.105 }, %struct.anon.155 { i8 -125, ptr @.str.106 }, %struct.anon.155 { i8 -124, ptr @.str.107 }, %struct.anon.155 { i8 -123, ptr @.str.108 }, %struct.anon.155 { i8 -122, ptr @.str.109 }, %struct.anon.155 { i8 -121, ptr @.str.110 }, %struct.anon.155 { i8 -120, ptr @.str.111 }, %struct.anon.155 { i8 -119, ptr @.str.112 }, %struct.anon.155 { i8 -63, ptr @.str.113 }, %struct.anon.155 { i8 -62, ptr @.str.114 }, %struct.anon.155 { i8 -60, ptr @.str.115 }, %struct.anon.155 { i8 -59, ptr @.str.116 }, %struct.anon.155 { i8 -56, ptr @.str.117 }, %struct.anon.155 { i8 -16, ptr @.str.118 }, %struct.anon.155 { i8 -15, ptr @.str.119 }], [96 x i8] zeroinitializer }, align 32
@report_deco_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 302, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%08x: %s: %s %d: %s%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"report_deco_status\00", [45 x i8] zeroinitializer }, align 32
@report_deco_status._entry_ptr = internal global ptr @report_deco_status._entry, section ".printk_index", align 4
@.str.70 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"SGT Length Error. The descriptor is trying to read more data than is contained in the SGT table.\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SGT Null Entry Error.\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Job Ring Control Error. There is a bad value in the Job Ring Control register.\00", [49 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Invalid Descriptor Command. The Descriptor Command field is invalid.\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Reserved.\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid KEY Command\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid LOAD Command\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid STORE Command\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid OPERATION Command\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid FIFO LOAD Command\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid FIFO STORE Command\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid MOVE/MOVE_LEN Command\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [230 x i8], [58 x i8] } { [230 x i8] c"Invalid JUMP Command. A nonlocal JUMP Command is invalid because the target is not a Job Header Command, or the jump is from a Trusted Descriptor to a Job Descriptor, or because the target Descriptor contains a Shared Descriptor.\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid MATH Command\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid SIGNATURE Command\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [273 x i8], [79 x i8] } { [273 x i8] c"Invalid Sequence Command. A SEQ IN PTR OR SEQ OUT PTR Command is invalid or a SEQ KEY, SEQ LOAD, SEQ FIFO LOAD, or SEQ FIFO STORE decremented the input or output sequence length below 0. This error may result if a built-in PROTOCOL Command has encountered a malformed PDU.\00", [79 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Skip data type invalid. The type must be 0xE or 0xF.\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Shared Descriptor Header Error\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Header Error. Invalid length or parity, or certain other problems.\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Burster Error. Burster has gotten to an illegal state\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [268 x i8], [84 x i8] } { [268 x i8] c"Context Register Length Error. The descriptor is trying to read or write past the end of the Context Register. A SEQ LOAD or SEQ STORE with the VLF bit set was executed with too large a length in the variable length register (VSOL for SEQ STORE or VSIL for SEQ LOAD).\00", [84 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA Error\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Job failed due to JR reset\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Job failed due to Fail Mode\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DECO Watchdog timer timeout error\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"DECO tried to copy a key from another DECO but the other DECO's Key Registers were locked\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"DECO attempted to copy data from a DECO that had an unmasked Descriptor error\00", [50 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [214 x i8], [42 x i8] } { [214 x i8] c"LIODN error. DECO was trying to share from itself or from another DECO but the two Non-SEQ LIODN values didn't match or the 'shared from' DECO's Descriptor required that the SEQ LIODNs be the same and they aren't.\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DECO has completed a reset initiated via the DRR register\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [175 x i8], [49 x i8] } { [175 x i8] c"Nonce error. When using EKT (CCM) key encryption option in the FIFO STORE Command, the Nonce counter reached its maximum value and this encryption mode can no longer be used.\00", [49 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [176 x i8], [48 x i8] } { [176 x i8] c"Meta data is too large (> 511 bytes) for TLS decap (input frame; block ciphers) and IPsec decap (output frame, when doing the next header byte update) and DCRC (output frame).\00", [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Read Input Frame error\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"JDKEK, TDKEK or TDSK not loaded error\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DNR (do not run) error\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"undefined protocol command\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid setting in PDB\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Anti-replay LATE error\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Anti-replay REPLAY error\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sequence number overflow\00", [39 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sigver invalid signature\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DSA Sign Illegal test descriptor\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [245 x i8], [43 x i8] } { [245 x i8] c"Protocol Format Error - A protocol has seen an error in the format of data received. When running RSA, this means that formatting with random padding was used, and did not follow the form: 0x00, 0x02, 8-to-N bytes of non-zero pad, 0x00, F data.\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [181 x i8], [43 x i8] } { [181 x i8] c"Protocol Size Error - A protocol has seen an error in size. When running RSA, pdb size N < (size of F) when no formatting is used; or pdb size N < (F + 11) when formatting is used.\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Blob Command error: Undefined mode\00", [61 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Blob Command error: Secure Memory Blob mode error\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Blob Command error: Black Blob key or input size error\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Blob Command error: Invalid key destination\00", [52 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Blob Command error: Trusted/Secure mode error\00", [50 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"IPsec TTL or hop limit field either came in as 0, or was decremented to 0\00", [54 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"3GPP HFN matches or exceeds the Threshold\00", [54 x i8] zeroinitializer }, align 32
@qi_error_list = internal constant { [43 x %struct.anon.156], [72 x i8] } { [43 x %struct.anon.156] [%struct.anon.156 { i8 0, ptr @.str.6 }, %struct.anon.156 { i8 31, ptr @.str.122 }, %struct.anon.156 { i8 32, ptr @.str.123 }, %struct.anon.156 { i8 33, ptr @.str.124 }, %struct.anon.156 { i8 35, ptr @.str.125 }, %struct.anon.156 { i8 37, ptr @.str.126 }, %struct.anon.156 { i8 48, ptr @.str.127 }, %struct.anon.156 { i8 49, ptr @.str.128 }, %struct.anon.156 { i8 50, ptr @.str.129 }, %struct.anon.156 { i8 51, ptr @.str.130 }, %struct.anon.156 { i8 52, ptr @.str.131 }, %struct.anon.156 { i8 53, ptr @.str.132 }, %struct.anon.156 { i8 54, ptr @.str.133 }, %struct.anon.156 { i8 65, ptr @.str.134 }, %struct.anon.156 { i8 66, ptr @.str.135 }, %struct.anon.156 { i8 67, ptr @.str.136 }, %struct.anon.156 { i8 68, ptr @.str.137 }, %struct.anon.156 { i8 69, ptr @.str.138 }, %struct.anon.156 { i8 70, ptr @.str.139 }, %struct.anon.156 { i8 72, ptr @.str.140 }, %struct.anon.156 { i8 73, ptr @.str.141 }, %struct.anon.156 { i8 75, ptr @.str.142 }, %struct.anon.156 { i8 81, ptr @.str.143 }, %struct.anon.156 { i8 82, ptr @.str.144 }, %struct.anon.156 { i8 83, ptr @.str.145 }, %struct.anon.156 { i8 84, ptr @.str.146 }, %struct.anon.156 { i8 -64, ptr @.str.147 }, %struct.anon.156 { i8 -63, ptr @.str.148 }, %struct.anon.156 { i8 -62, ptr @.str.149 }, %struct.anon.156 { i8 -61, ptr @.str.150 }, %struct.anon.156 { i8 -60, ptr @.str.151 }, %struct.anon.156 { i8 -59, ptr @.str.152 }, %struct.anon.156 { i8 -48, ptr @.str.153 }, %struct.anon.156 { i8 -47, ptr @.str.154 }, %struct.anon.156 { i8 -46, ptr @.str.155 }, %struct.anon.156 { i8 -45, ptr @.str.156 }, %struct.anon.156 { i8 -44, ptr @.str.157 }, %struct.anon.156 { i8 -43, ptr @.str.158 }, %struct.anon.156 { i8 -42, ptr @.str.159 }, %struct.anon.156 { i8 -41, ptr @.str.160 }, %struct.anon.156 { i8 -31, ptr @.str.161 }, %struct.anon.156 { i8 -30, ptr @.str.162 }, %struct.anon.156 { i8 -28, ptr @.str.163 }], [72 x i8] zeroinitializer }, align 32
@report_qi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 325, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%08x: %s: %s%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"report_qi_status\00", [47 x i8] zeroinitializer }, align 32
@report_qi_status._entry_ptr = internal global ptr @report_qi_status._entry, section ".printk_index", align 4
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Job terminated by FQ or ICID flush\00", [61 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FD format error\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FD command format error\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FL format error\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CRJD specified in FD, but not enabled in FLC\00", [51 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Max. buffer size too small\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DHR exceeds max. buffer size (allocate mode, S/G format)\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SGT exceeds max. buffer size (allocate mode, S/G format\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Size over/underflow (allocate mode)\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Size over/underflow (reuse mode)\00", [63 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Length exceeds max. short length (allocate mode, S/G/ format)\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Memory footprint exceeds max. value (allocate mode, S/G/ format)\00", [63 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SBC frame format not supported (allocate mode)\00", [49 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Pool 0 invalid / pool 1 size < pool 0 size (allocate mode)\00", [37 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Annotation output enabled but ASAR = 0 (allocate mode)\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Unsupported or reserved frame format or SGHR = 1 (reuse mode)\00", [34 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"DHR correction underflow (reuse mode, single buffer format)\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Annotation length exceeds offset (reuse mode)\00", [50 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Annotation output enabled but ASA limited by ASAR (reuse mode)\00", [33 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Data offset correction exceeds input frame data length (reuse mode)\00", [60 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Annotation output enabled but ASA cannot be expanded (frame list)\00", [62 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported IF reuse mode\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported FL use mode\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported RJD use mode\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported inline descriptor use mode\00", [57 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Table buffer pool 0 depletion\00", [34 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Table buffer pool 1 depletion\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Data buffer pool 0 depletion, no OF allocated\00", [50 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Data buffer pool 1 depletion, no OF allocated\00", [50 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Data buffer pool 0 depletion, partial OF allocated\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Data buffer pool 1 depletion, partial OF allocated\00", [45 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FLC read error\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FL read error\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FL write error\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OF SGT write error\00", [45 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PTA read error\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PTA write error\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OF SGT F-bit write error\00", [39 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ASA write error\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FLC[ICR]=0 ICID error\00", [42 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FLC[ICR]=1 ICID error\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"source of ICID flush not trusted (BDI = 0)\00", [53 x i8] zeroinitializer }, align 32
@report_jr_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.164, ptr @.str.2, i32 334, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"report_jr_status\00", [47 x i8] zeroinitializer }, align 32
@report_jr_status._entry_ptr = internal global ptr @report_jr_status._entry, section ".printk_index", align 4
@report_cond_code_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.165, ptr @.str.2, i32 343, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"report_cond_code_status\00", [40 x i8] zeroinitializer }, align 32
@report_cond_code_status._entry_ptr = internal global ptr @report_cond_code_status._entry, section ".printk_index", align 4
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 32, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 38, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"caam_little_end\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 53, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant [9 x i8] c"caam_imx\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 56, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"caam_ptr_sz\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 59, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"status_src\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 354, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 355, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 357, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 358, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 359, i32 25 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 360, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 361, i32 23 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 362, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 383, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 385, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 229, i32 24 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 235, i32 13 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 237, i32 13 }
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"cha_id_list\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 169, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 242, i32 48 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"rng_err_id_list\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 204, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant [12 x i8] c"err_id_list\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 185, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 260, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 170, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 171, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 172, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 173, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 174, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 175, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 176, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 177, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 178, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 179, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 180, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 181, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 182, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 208, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 209, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 210, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 211, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 212, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 213, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 214, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 216, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 217, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 186, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 187, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 188, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 189, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 190, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 191, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 192, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 193, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 194, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 195, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 196, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 197, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 198, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 199, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 200, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 201, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 270, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 283, i32 24 }
@___asan_gen_.400 = private unnamed_addr constant [16 x i8] c"desc_error_list\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 65, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 301, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 67, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 68, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 69, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 70, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 71, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 72, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 73, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 74, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 75, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 76, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 77, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 78, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 79, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 80, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 81, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 82, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 83, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 84, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 85, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 86, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 87, i32 10 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 88, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 90, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 91, i32 10 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 92, i32 10 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 93, i32 10 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 94, i32 10 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 95, i32 10 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 96, i32 10 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 97, i32 10 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 98, i32 10 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 99, i32 10 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 100, i32 10 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 101, i32 10 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 102, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 103, i32 10 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 104, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 105, i32 10 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 106, i32 10 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 107, i32 10 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 108, i32 10 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 109, i32 10 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 110, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 111, i32 10 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 112, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 113, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 114, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 115, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 116, i32 10 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 117, i32 10 }
@___asan_gen_.562 = private unnamed_addr constant [14 x i8] c"qi_error_list\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 123, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 324, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 125, i32 10 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 126, i32 10 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 127, i32 10 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 128, i32 10 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 129, i32 10 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 130, i32 10 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 131, i32 10 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 132, i32 10 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 133, i32 10 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 134, i32 10 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 135, i32 10 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 136, i32 10 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 137, i32 10 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 138, i32 10 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 139, i32 10 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 140, i32 10 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 141, i32 10 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 142, i32 10 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 143, i32 10 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 144, i32 10 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 145, i32 10 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 146, i32 10 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 147, i32 10 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 148, i32 10 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 149, i32 10 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 150, i32 10 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 151, i32 10 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 152, i32 10 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 153, i32 10 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 154, i32 10 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 155, i32 10 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 156, i32 10 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 157, i32 10 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 158, i32 10 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 159, i32 10 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 160, i32 10 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 161, i32 10 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 162, i32 10 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 163, i32 10 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 164, i32 10 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 165, i32 10 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 166, i32 10 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 333, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.710 = private constant [31 x i8] c"../drivers/crypto/caam/error.c\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.710, i32 342, i32 2 }
@llvm.compiler.used = appending global [200 x ptr] [ptr @__UNIQUE_ID_author518, ptr @__UNIQUE_ID_description517, ptr @__UNIQUE_ID_file515, ptr @__UNIQUE_ID_license516, ptr @__ksymtab_caam_dump_sg, ptr @__ksymtab_caam_imx, ptr @__ksymtab_caam_little_end, ptr @__ksymtab_caam_ptr_sz, ptr @__ksymtab_caam_strstatus, ptr @caam_dump_sg._entry, ptr @caam_dump_sg._entry_ptr, ptr @caam_strstatus._entry, ptr @caam_strstatus._entry.17, ptr @caam_strstatus._entry_ptr, ptr @caam_strstatus._entry_ptr.19, ptr @report_ccb_status._entry, ptr @report_ccb_status._entry_ptr, ptr @report_cond_code_status._entry, ptr @report_cond_code_status._entry_ptr, ptr @report_deco_status._entry, ptr @report_deco_status._entry_ptr, ptr @report_jr_status._entry, ptr @report_jr_status._entry_ptr, ptr @report_jump_status._entry, ptr @report_jump_status._entry_ptr, ptr @report_qi_status._entry, ptr @report_qi_status._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @caam_little_end, ptr @caam_imx, ptr @caam_ptr_sz, ptr @caam_strstatus.status_src, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @cha_id_list, ptr @.str.24, ptr @rng_err_id_list, ptr @err_id_list, ptr @report_ccb_status._rs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @desc_error_list, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @qi_error_list, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_dump_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_little_end to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_ptr_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_strstatus.status_src to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_strstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_strstatus._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cha_id_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_err_id_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @err_id_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_ccb_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_ccb_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_jump_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desc_error_list to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_deco_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 230, i32 288, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 273, i32 352, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 214, i32 256, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 175, i32 224, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 245, i32 288, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 181, i32 224, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qi_error_list to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_qi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_jr_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_cond_code_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caam_dump_sg(ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %sg, i32 noundef %tlen, i1 noundef zeroext %ascii) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not49 = icmp eq ptr %sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tlen)
  %cmp.not50 = icmp eq i32 %tlen, 0
  %or.cond51 = or i1 %tobool.not49, %cmp.not50
  br i1 %or.cond51, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %do.end26.for.body_crit_edge, %entry.for.body_crit_edge
  %tlen.addr.053 = phi i32 [ %sub, %do.end26.for.body_crit_edge ], [ %tlen, %entry.for.body_crit_edge ]
  %it.052 = phi ptr [ %call33, %do.end26.for.body_crit_edge ], [ %sg, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %it.052 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it.052, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !383

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !384
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %4 = tail call i32 @llvm.read_register.i32(metadata !373) #7
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !385
  %8 = tail call i32 @llvm.read_register.i32(metadata !373) #7
  %and.i.i.i1.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 213
  %12 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %13, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !386
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %2, i32 noundef %or.i) #7
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end, !prof !387

do.end:                                           ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %sg_page.exit
  %offset = getelementptr inbounds %struct.scatterlist, ptr %it.052, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %it.052, i32 0, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %tlen.addr.053, i32 %17)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caam_dump_sg.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caam_dump_sg, %do.end26)) #7
          to label %if.then22 [label %do.end26], !srcloc !388

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %15
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %add.ptr, i32 noundef %18, i1 noundef zeroext %ascii) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %if.end
  %sub = sub i32 %tlen.addr.053, %18
  tail call void @kunmap_local_indexed(ptr noundef nonnull %call.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !389
  %19 = tail call i32 @llvm.read_register.i32(metadata !373) #7
  %and.i.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !390
  %25 = tail call i32 @llvm.read_register.i32(metadata !373) #7
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call33 = tail call ptr @sg_next(ptr noundef nonnull %it.052) #7
  %tobool.not = icmp eq ptr %call33, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %do.end26.cleanup_crit_edge, label %do.end26.for.body_crit_edge

do.end26.for.body_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caam_strstatus(ptr noundef %jrdev, i32 noundef %status, i1 zeroext %qi_v2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %status, 28
  %arrayidx = getelementptr [16 x %struct.stat_src], ptr @caam_strstatus.status_src, i32 0, i32 %shr
  %error1 = getelementptr [16 x %struct.stat_src], ptr @caam_strstatus.status_src, i32 0, i32 %shr, i32 1
  %0 = ptrtoint ptr %error1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %error1, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %jrdev, i32 noundef %status, ptr noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.13, i32 noundef %shr, ptr noundef nonnull %1) #10
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.18, i32 noundef %shr) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %do.end9 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_ccb_status(ptr noundef %jrdev, i32 noundef %status, ptr noundef %error) #0 align 64 {
entry:
  %cha_err_code = alloca [3 x i8], align 1
  %err_err_code = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %status, 4
  %1 = trunc i32 %status to i8
  %conv2 = and i8 %1, 15
  %and3 = lshr i32 %status, 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cha_err_code) #7
  %2 = call ptr @memset(ptr %cha_err_code, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %err_err_code) #7
  %3 = call ptr @memset(ptr %err_err_code, i32 0, i32 3)
  %and6 = and i32 %status, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %.str.23..str.22 = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %conv7 = and i32 %0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv7)
  %cmp = icmp ult i32 %conv7, 13
  br i1 %cmp, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cha_err_code, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef %conv7)
  br label %if.else27

if.end12:                                         ; preds = %entry
  %arrayidx = getelementptr [13 x ptr], ptr @cha_id_list, i32 0, i32 %conv7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv7)
  %cmp14 = icmp eq i32 %conv7, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %conv2)
  %cmp17 = icmp ult i8 %conv2, 13
  %or.cond = and i1 %cmp14, %cmp17
  br i1 %or.cond, label %land.lhs.true19, label %if.end12.if.else27_crit_edge

if.end12.if.else27_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else27

land.lhs.true19:                                  ; preds = %if.end12
  %conv16 = zext i8 %conv2 to i32
  %arrayidx21 = getelementptr [13 x ptr], ptr @rng_err_id_list, i32 0, i32 %conv16
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx21, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %char0 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool23.not = icmp eq i8 %char0, 0
  br i1 %tobool23.not, label %land.lhs.true19.if.else27_crit_edge, label %land.lhs.true19.if.end30_crit_edge

land.lhs.true19.if.end30_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true19.if.else27_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else27

if.else27:                                        ; preds = %land.lhs.true19.if.else27_crit_edge, %if.end12.if.else27_crit_edge, %if.end12.thread
  %cha_str.069 = phi ptr [ @.str.20, %if.end12.thread ], [ %5, %land.lhs.true19.if.else27_crit_edge ], [ %5, %if.end12.if.else27_crit_edge ]
  %idxprom28 = zext i8 %conv2 to i32
  %arrayidx29 = getelementptr [16 x ptr], ptr @err_id_list, i32 0, i32 %idxprom28
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %land.lhs.true19.if.end30_crit_edge
  %cha_str.068 = phi ptr [ %cha_str.069, %if.else27 ], [ %5, %land.lhs.true19.if.end30_crit_edge ]
  %err_str.0 = phi ptr [ %10, %if.else27 ], [ %7, %land.lhs.true19.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv2)
  %cmp32 = icmp eq i8 %conv2, 10
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %do.body

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end30
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @report_ccb_status._rs, ptr noundef nonnull @__func__.report_ccb_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv40 = and i32 %and3, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.26, i32 noundef %status, ptr noundef %error, ptr noundef nonnull %.str.23..str.22, i32 noundef %conv40, ptr noundef %cha_str.068, ptr noundef nonnull %cha_err_code, ptr noundef %err_str.0, ptr noundef nonnull %err_err_code) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %if.end30.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %err_err_code) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cha_err_code) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_jump_status(ptr noundef %jrdev, i32 noundef %status, ptr noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.65, i32 noundef %status, ptr noundef %error, ptr noundef nonnull @.str.66) #10
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_deco_status(ptr noundef %jrdev, i32 noundef %status, ptr noundef %error) #0 align 64 {
entry:
  %err_err_code = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %err_err_code) #7
  %0 = call ptr @memset(ptr %err_err_code, i32 0, i32 3)
  %1 = trunc i32 %status to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [52 x %struct.anon.155], ptr @desc_error_list, i32 0, i32 %i.035
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp7 = icmp eq i8 %3, %1
  br i1 %cmp7, label %if.then15, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %if.else18, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %error_text = getelementptr [52 x %struct.anon.155], ptr @desc_error_list, i32 0, i32 %i.035, i32 1
  %4 = ptrtoint ptr %error_text to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %error_text, align 4
  br label %do.end

if.else18:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = and i32 %status, 255
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_err_code, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef %conv19)
  br label %do.end

do.end:                                           ; preds = %if.else18, %if.then15
  %err_str.0 = phi ptr [ %5, %if.then15 ], [ @.str.67, %if.else18 ]
  %and3 = and i32 %status, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %.str.23..str.22 = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %and1 = lshr i32 %status, 8
  %conv21 = and i32 %and1, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.68, i32 noundef %status, ptr noundef %error, ptr noundef nonnull %.str.23..str.22, i32 noundef %conv21, ptr noundef nonnull %err_str.0, ptr noundef nonnull %err_err_code) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %err_err_code) #7
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_qi_status(ptr noundef %qidev, i32 noundef %status, ptr noundef %error) #0 align 64 {
entry:
  %err_err_code = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %err_err_code) #7
  %0 = call ptr @memset(ptr %err_err_code, i32 0, i32 3)
  %1 = trunc i32 %status to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [43 x %struct.anon.156], ptr @qi_error_list, i32 0, i32 %i.025
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp4 = icmp eq i8 %3, %1
  br i1 %cmp4, label %if.then9, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %if.else, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %error_text = getelementptr [43 x %struct.anon.156], ptr @qi_error_list, i32 0, i32 %i.025, i32 1
  %4 = ptrtoint ptr %error_text to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %error_text, align 4
  br label %do.end

if.else:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %conv12 = and i32 %status, 255
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_err_code, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef %conv12)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then9
  %err_str.0 = phi ptr [ %5, %if.then9 ], [ @.str.67, %if.else ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %qidev, ptr noundef nonnull @.str.120, i32 noundef %status, ptr noundef %error, ptr noundef nonnull %err_str.0, ptr noundef nonnull %err_err_code) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %err_err_code) #7
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_jr_status(ptr noundef %jrdev, i32 noundef %status, ptr noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.65, i32 noundef %status, ptr noundef %error, ptr noundef nonnull @.str.164) #10
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @report_cond_code_status(ptr noundef %jrdev, i32 noundef %status, ptr noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.65, i32 noundef %status, ptr noundef %error, ptr noundef nonnull @.str.165) #10
  ret i32 -22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !169, !170, !171, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !368, !369, !371, !372}
!llvm.named.register.sp = !{!373}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/error.c", i32 32, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @caam_dump_sg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @caam_dump_sg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/caam/error.c", i32 38, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @caam_dump_sg.__UNIQUE_ID_ddebug513, !7, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_caam_dump_sg, !12, !"__ksymtab_caam_dump_sg", i1 false, i1 false}
!12 = !{!"../drivers/crypto/caam/error.c", i32 51, i32 1}
!13 = !{ptr @__ksymtab_caam_little_end, !14, !"__ksymtab_caam_little_end", i1 false, i1 false}
!14 = !{!"../drivers/crypto/caam/error.c", i32 54, i32 1}
!15 = !{ptr @__ksymtab_caam_imx, !16, !"__ksymtab_caam_imx", i1 false, i1 false}
!16 = !{!"../drivers/crypto/caam/error.c", i32 57, i32 1}
!17 = !{ptr @__ksymtab_caam_ptr_sz, !18, !"__ksymtab_caam_ptr_sz", i1 false, i1 false}
!18 = !{!"../drivers/crypto/caam/error.c", i32 60, i32 1}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/caam/error.c", i32 355, i32 11}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/caam/error.c", i32 357, i32 24}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/crypto/caam/error.c", i32 358, i32 25}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/caam/error.c", i32 359, i32 25}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/caam/error.c", i32 360, i32 23}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/caam/error.c", i32 361, i32 23}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/caam/error.c", i32 362, i32 30}
!33 = !{ptr @caam_strstatus.status_src, !34, !"status_src", i1 false, i1 false}
!34 = !{!"../drivers/crypto/caam/error.c", i32 354, i32 4}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/caam/error.c", i32 383, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @caam_strstatus._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @caam_strstatus._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/caam/error.c", i32 385, i32 3}
!44 = !{ptr @caam_strstatus._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @caam_strstatus._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_caam_strstatus, !47, !"__ksymtab_caam_strstatus", i1 false, i1 false}
!47 = !{!"../drivers/crypto/caam/error.c", i32 389, i32 1}
!48 = !{ptr @__UNIQUE_ID_file515, !49, !"__UNIQUE_ID_file515", i1 false, i1 false}
!49 = !{!"../drivers/crypto/caam/error.c", i32 391, i32 1}
!50 = !{ptr @__UNIQUE_ID_license516, !49, !"__UNIQUE_ID_license516", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_description517, !52, !"__UNIQUE_ID_description517", i1 false, i1 false}
!52 = !{!"../drivers/crypto/caam/error.c", i32 392, i32 1}
!53 = !{ptr @__UNIQUE_ID_author518, !54, !"__UNIQUE_ID_author518", i1 false, i1 false}
!54 = !{!"../drivers/crypto/caam/error.c", i32 393, i32 1}
!55 = !{ptr @caam_little_end, !56, !"caam_little_end", i1 false, i1 false}
!56 = !{!"../drivers/crypto/caam/error.c", i32 53, i32 6}
!57 = !{ptr @caam_imx, !58, !"caam_imx", i1 false, i1 false}
!58 = !{!"../drivers/crypto/caam/error.c", i32 56, i32 6}
!59 = !{ptr @caam_ptr_sz, !60, !"caam_ptr_sz", i1 false, i1 false}
!60 = !{!"../drivers/crypto/caam/error.c", i32 59, i32 8}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/caam/error.c", i32 229, i32 24}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/crypto/caam/error.c", i32 231, i32 24}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/caam/error.c", i32 235, i32 13}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/caam/error.c", i32 237, i32 13}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/caam/error.c", i32 242, i32 48}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/caam/error.c", i32 260, i32 2}
!73 = !{ptr @report_ccb_status._rs, !72, !"_rs", i1 false, i1 false}
!74 = !{ptr @__func__.report_ccb_status, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @report_ccb_status._entry, !72, !"_entry", i1 false, i1 false}
!77 = !{ptr @report_ccb_status._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/caam/error.c", i32 170, i32 2}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/caam/error.c", i32 171, i32 2}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/caam/error.c", i32 172, i32 2}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/caam/error.c", i32 173, i32 2}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/caam/error.c", i32 174, i32 2}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/caam/error.c", i32 175, i32 2}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/caam/error.c", i32 176, i32 2}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/caam/error.c", i32 177, i32 2}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/caam/error.c", i32 178, i32 2}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/caam/error.c", i32 179, i32 2}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/caam/error.c", i32 180, i32 2}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/caam/error.c", i32 181, i32 2}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/caam/error.c", i32 182, i32 2}
!104 = !{ptr @cha_id_list, !105, !"cha_id_list", i1 false, i1 false}
!105 = !{!"../drivers/crypto/caam/error.c", i32 169, i32 27}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/caam/error.c", i32 208, i32 2}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/caam/error.c", i32 209, i32 2}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/caam/error.c", i32 210, i32 2}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/caam/error.c", i32 211, i32 2}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/caam/error.c", i32 212, i32 2}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/caam/error.c", i32 213, i32 2}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/caam/error.c", i32 214, i32 2}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/caam/error.c", i32 216, i32 2}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/caam/error.c", i32 217, i32 2}
!124 = !{ptr @rng_err_id_list, !125, !"rng_err_id_list", i1 false, i1 false}
!125 = !{!"../drivers/crypto/caam/error.c", i32 204, i32 27}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/caam/error.c", i32 186, i32 2}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/caam/error.c", i32 187, i32 2}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/caam/error.c", i32 188, i32 2}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/caam/error.c", i32 189, i32 2}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/caam/error.c", i32 190, i32 2}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/caam/error.c", i32 191, i32 2}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/caam/error.c", i32 192, i32 2}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/caam/error.c", i32 193, i32 2}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/caam/error.c", i32 194, i32 2}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/caam/error.c", i32 195, i32 2}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/caam/error.c", i32 196, i32 2}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/caam/error.c", i32 197, i32 2}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/caam/error.c", i32 198, i32 2}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/caam/error.c", i32 199, i32 2}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/caam/error.c", i32 200, i32 2}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/caam/error.c", i32 201, i32 2}
!158 = !{ptr @err_id_list, !159, !"err_id_list", i1 false, i1 false}
!159 = !{!"../drivers/crypto/caam/error.c", i32 185, i32 27}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/caam/error.c", i32 270, i32 2}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @report_jump_status._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @report_jump_status._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/caam/error.c", i32 283, i32 24}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/crypto/caam/error.c", i32 301, i32 2}
!169 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @report_deco_status._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @report_deco_status._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/crypto/caam/error.c", i32 67, i32 10}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/crypto/caam/error.c", i32 68, i32 10}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/caam/error.c", i32 69, i32 10}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/caam/error.c", i32 70, i32 10}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/crypto/caam/error.c", i32 71, i32 10}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/caam/error.c", i32 72, i32 10}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/crypto/caam/error.c", i32 73, i32 10}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/caam/error.c", i32 74, i32 10}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/crypto/caam/error.c", i32 75, i32 10}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/crypto/caam/error.c", i32 76, i32 10}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/crypto/caam/error.c", i32 77, i32 10}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/crypto/caam/error.c", i32 78, i32 10}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/caam/error.c", i32 79, i32 10}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/crypto/caam/error.c", i32 80, i32 10}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/crypto/caam/error.c", i32 81, i32 10}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/crypto/caam/error.c", i32 82, i32 10}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/crypto/caam/error.c", i32 83, i32 10}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/crypto/caam/error.c", i32 84, i32 10}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/crypto/caam/error.c", i32 85, i32 10}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/caam/error.c", i32 86, i32 10}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/crypto/caam/error.c", i32 87, i32 10}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/crypto/caam/error.c", i32 88, i32 10}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/crypto/caam/error.c", i32 90, i32 10}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/crypto/caam/error.c", i32 91, i32 10}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/caam/error.c", i32 92, i32 10}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/crypto/caam/error.c", i32 93, i32 10}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/crypto/caam/error.c", i32 94, i32 10}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/crypto/caam/error.c", i32 95, i32 10}
!228 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/crypto/caam/error.c", i32 96, i32 10}
!230 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/crypto/caam/error.c", i32 97, i32 10}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/crypto/caam/error.c", i32 98, i32 10}
!234 = !{ptr @.str.101, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/crypto/caam/error.c", i32 99, i32 10}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/crypto/caam/error.c", i32 100, i32 10}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/crypto/caam/error.c", i32 101, i32 10}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/crypto/caam/error.c", i32 102, i32 10}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/crypto/caam/error.c", i32 103, i32 10}
!244 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/crypto/caam/error.c", i32 104, i32 10}
!246 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/crypto/caam/error.c", i32 105, i32 10}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/crypto/caam/error.c", i32 106, i32 10}
!250 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/crypto/caam/error.c", i32 107, i32 10}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/crypto/caam/error.c", i32 108, i32 10}
!254 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/crypto/caam/error.c", i32 109, i32 10}
!256 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/crypto/caam/error.c", i32 110, i32 10}
!258 = !{ptr @.str.113, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/crypto/caam/error.c", i32 111, i32 10}
!260 = !{ptr @.str.114, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/crypto/caam/error.c", i32 112, i32 10}
!262 = !{ptr @.str.115, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/crypto/caam/error.c", i32 113, i32 10}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/crypto/caam/error.c", i32 114, i32 10}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/crypto/caam/error.c", i32 115, i32 10}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/crypto/caam/error.c", i32 116, i32 10}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/crypto/caam/error.c", i32 117, i32 10}
!272 = !{ptr @desc_error_list, !273, !"desc_error_list", i1 false, i1 false}
!273 = !{!"../drivers/crypto/caam/error.c", i32 65, i32 3}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/crypto/caam/error.c", i32 324, i32 2}
!276 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @report_qi_status._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @report_qi_status._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/crypto/caam/error.c", i32 125, i32 10}
!281 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/crypto/caam/error.c", i32 126, i32 10}
!283 = !{ptr @.str.124, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/crypto/caam/error.c", i32 127, i32 10}
!285 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/crypto/caam/error.c", i32 128, i32 10}
!287 = !{ptr @.str.126, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/crypto/caam/error.c", i32 129, i32 10}
!289 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/crypto/caam/error.c", i32 130, i32 10}
!291 = !{ptr @.str.128, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/crypto/caam/error.c", i32 131, i32 10}
!293 = !{ptr @.str.129, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/crypto/caam/error.c", i32 132, i32 10}
!295 = !{ptr @.str.130, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/crypto/caam/error.c", i32 133, i32 10}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/crypto/caam/error.c", i32 134, i32 10}
!299 = !{ptr @.str.132, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/crypto/caam/error.c", i32 135, i32 10}
!301 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/crypto/caam/error.c", i32 136, i32 10}
!303 = !{ptr @.str.134, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/crypto/caam/error.c", i32 137, i32 10}
!305 = !{ptr @.str.135, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/crypto/caam/error.c", i32 138, i32 10}
!307 = !{ptr @.str.136, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/crypto/caam/error.c", i32 139, i32 10}
!309 = !{ptr @.str.137, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/crypto/caam/error.c", i32 140, i32 10}
!311 = !{ptr @.str.138, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/crypto/caam/error.c", i32 141, i32 10}
!313 = !{ptr @.str.139, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/crypto/caam/error.c", i32 142, i32 10}
!315 = !{ptr @.str.140, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/crypto/caam/error.c", i32 143, i32 10}
!317 = !{ptr @.str.141, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/crypto/caam/error.c", i32 144, i32 10}
!319 = !{ptr @.str.142, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/crypto/caam/error.c", i32 145, i32 10}
!321 = !{ptr @.str.143, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/crypto/caam/error.c", i32 146, i32 10}
!323 = !{ptr @.str.144, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/crypto/caam/error.c", i32 147, i32 10}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/crypto/caam/error.c", i32 148, i32 10}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/crypto/caam/error.c", i32 149, i32 10}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/crypto/caam/error.c", i32 150, i32 10}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/crypto/caam/error.c", i32 151, i32 10}
!333 = !{ptr @.str.149, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/crypto/caam/error.c", i32 152, i32 10}
!335 = !{ptr @.str.150, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/crypto/caam/error.c", i32 153, i32 10}
!337 = !{ptr @.str.151, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/crypto/caam/error.c", i32 154, i32 10}
!339 = !{ptr @.str.152, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/crypto/caam/error.c", i32 155, i32 10}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/crypto/caam/error.c", i32 156, i32 10}
!343 = !{ptr @.str.154, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/crypto/caam/error.c", i32 157, i32 10}
!345 = !{ptr @.str.155, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/crypto/caam/error.c", i32 158, i32 10}
!347 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/crypto/caam/error.c", i32 159, i32 10}
!349 = !{ptr @.str.157, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/crypto/caam/error.c", i32 160, i32 10}
!351 = !{ptr @.str.158, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/crypto/caam/error.c", i32 161, i32 10}
!353 = !{ptr @.str.159, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/crypto/caam/error.c", i32 162, i32 10}
!355 = !{ptr @.str.160, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/crypto/caam/error.c", i32 163, i32 10}
!357 = !{ptr @.str.161, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/crypto/caam/error.c", i32 164, i32 10}
!359 = !{ptr @.str.162, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/crypto/caam/error.c", i32 165, i32 10}
!361 = !{ptr @.str.163, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/crypto/caam/error.c", i32 166, i32 10}
!363 = !{ptr @qi_error_list, !364, !"qi_error_list", i1 false, i1 false}
!364 = !{!"../drivers/crypto/caam/error.c", i32 123, i32 3}
!365 = !{ptr @.str.164, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/crypto/caam/error.c", i32 333, i32 2}
!367 = !{ptr @report_jr_status._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @report_jr_status._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.165, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/crypto/caam/error.c", i32 342, i32 2}
!371 = !{ptr @report_cond_code_status._entry, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @report_cond_code_status._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{!"sp"}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{!"branch_weights", i32 2000, i32 1}
!384 = !{i64 2154270260, i64 2154270752, i64 2154270297, i64 2154270353, i64 2154270387, i64 2154270411, i64 2154270452, i64 2154270473, i64 2154270501, i64 2154270535}
!385 = !{i64 2155038309}
!386 = !{i64 2153788924}
!387 = !{!"branch_weights", i32 1, i32 2000}
!388 = !{i64 2148704296, i64 2148704301, i64 2148704314, i64 2148704358, i64 2148704392, i64 2148704413}
!389 = !{i64 2153789131}
!390 = !{i64 2155045141}
