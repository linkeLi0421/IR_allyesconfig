; ModuleID = '/llk/IR_all_yes/drivers/target/tcm_fc/tfc_io.c_pt.bc'
source_filename = "../drivers/target/tcm_fc/tfc_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ft_sess = type { i32, i32, i16, i64, ptr, ptr, %struct.hlist_node, %struct.callback_head, %struct.kref }
%struct.callback_head = type { ptr, ptr }
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
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.6 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ft_cmd = type { ptr, ptr, %struct.se_cmd, ptr, i32, %struct.work_struct, [96 x i8], i8, ptr, i32 }
%struct.ft_tport = type { ptr, ptr, i32, %struct.callback_head, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.ft_tpg = type { i32, ptr, ptr, %struct.list_head, %struct.se_portal_group, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }

@ft_queue_data_in.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcm_fc\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ft_queue_data_in\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/target/tcm_fc/tfc_io.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Command aborted, xid 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ft_queue_data_in._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ft_queue_data_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016%s: Failed to send frame %p, xid <0x%x>, remaining %zu, lso_max <0x%x>\0A\00", [54 x i8] zeroinitializer }, align 32
@ft_queue_data_in._entry_ptr = internal global ptr @ft_queue_data_in._entry, section ".printk_index", align 4
@ft_recv_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [192 x i8], [32 x i8] } { [192 x i8] c"\013%s: xid 0x%x, f_ctl 0x%x, cmd->sg %p, cmd->sg_cnt 0x%x. DDP was setup hence not expected to receive frame with payload, Frame will be dropped if'Sequence Initiative' bit in f_ctl isnot set\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ft_recv_write_data\00", [45 x i8] zeroinitializer }, align 32
@ft_recv_write_data._entry_ptr = internal global ptr @ft_recv_write_data._entry, section ".printk_index", align 4
@ft_recv_write_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&cmd->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 94, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 165, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 230, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private constant [34 x i8] c"../drivers/target/tcm_fc/tfc_io.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 316, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1160, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 698, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 254, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @ft_queue_data_in._entry, ptr @ft_queue_data_in._entry_ptr, ptr @ft_recv_write_data._entry, ptr @ft_recv_write_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ft_queue_data_in._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ft_recv_write_data.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_queue_data_in._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_queue_data_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_recv_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_recv_write_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_queue_data_in(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %aborted = getelementptr i8, ptr %se_cmd, i32 588
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %aborted, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup206_crit_edge

entry.cleanup206_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup206

if.end:                                           ; preds = %entry
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %3)
  %cmp = icmp eq i8 %3, 40
  br i1 %cmp, label %if.end.queue_status_crit_edge, label %if.end3

if.end.queue_status_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %queue_status

if.end3:                                          ; preds = %if.end
  %seq = getelementptr i8, ptr %se_cmd, i32 -4
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq, align 4
  %lp = getelementptr i8, ptr %5, i32 -40
  %6 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lp, align 4
  %call = tail call ptr @fc_seq_start_next(ptr noundef %5) #6
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %seq, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %9 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.end3.queue_status_crit_edge, label %land.rhs

if.end3.queue_status_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %queue_status

land.rhs:                                         ; preds = %if.end3
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 39
  %11 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_data_sg, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %do.body15, label %if.then23.critedge, !prof !36

do.body15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !37
  unreachable

if.then23.critedge:                               ; preds = %land.rhs
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %while.body.lr.ph, label %do.body2.i, !prof !38

do.body2.i:                                       ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

while.body.lr.ph:                                 ; preds = %if.then23.critedge
  %offset = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %and.i = and i32 %14, -4
  %19 = inttoptr i32 %and.i to ptr
  %rem = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool27.not = icmp eq i32 %rem, 0
  %seq_offload = getelementptr inbounds %struct.fc_lport, ptr %7, i32 0, i32 25
  %lso_max = getelementptr inbounds %struct.fc_lport, ptr %7, i32 0, i32 33
  %did = getelementptr i8, ptr %5, i32 -12
  %sid = getelementptr i8, ptr %5, i32 -16
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %fp.0381 = phi ptr [ null, %while.body.lr.ph ], [ %fp.1, %while.cond.backedge.while.body_crit_edge ]
  %sg.1380 = phi ptr [ %12, %while.body.lr.ph ], [ %sg.2, %while.cond.backedge.while.body_crit_edge ]
  %remaining.0377 = phi i32 [ %10, %while.body.lr.ph ], [ %sub175, %while.cond.backedge.while.body_crit_edge ]
  %f_ctl.0375 = phi i32 [ 8388616, %while.body.lr.ph ], [ %f_ctl.2.ph, %while.cond.backedge.while.body_crit_edge ]
  %mem_off.1374 = phi i32 [ %16, %while.body.lr.ph ], [ %add172, %while.cond.backedge.while.body_crit_edge ]
  %to.0373 = phi ptr [ null, %while.body.lr.ph ], [ %to.2, %while.cond.backedge.while.body_crit_edge ]
  %page.1372 = phi ptr [ %19, %while.body.lr.ph ], [ %page.2, %while.cond.backedge.while.body_crit_edge ]
  %mem_len.1371 = phi i32 [ %18, %while.body.lr.ph ], [ %sub173, %while.cond.backedge.while.body_crit_edge ]
  %frame_len.0370 = phi i32 [ 0, %while.body.lr.ph ], [ %sub174, %while.cond.backedge.while.body_crit_edge ]
  %frame_off.0369 = phi i32 [ 0, %while.body.lr.ph ], [ %frame_off.1, %while.cond.backedge.while.body_crit_edge ]
  %fh_off.0368 = phi i32 [ 0, %while.body.lr.ph ], [ %fh_off.1, %while.cond.backedge.while.body_crit_edge ]
  %20 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %seq, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %do.body35, label %if.end50

do.body35:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_queue_data_in.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_queue_data_in, %if.then45)) #6
          to label %queue_status [label %if.then45], !srcloc !40

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %xid = getelementptr i8, ptr %5, i32 -28
  %22 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %xid, align 16
  %conv46 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_queue_data_in.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv46) #6
  br label %queue_status

if.end50:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_len.1371)
  %tobool51.not = icmp eq i32 %mem_len.1371, 0
  br i1 %tobool51.not, label %if.then52, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then52:                                        ; preds = %if.end50
  %call53 = tail call ptr @sg_next(ptr noundef %sg.1380) #6
  %24 = ptrtoint ptr %call53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call53, align 4
  %and.i.i313 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i313)
  %tobool.i.not.i314 = icmp eq i32 %and.i.i313, 0
  br i1 %tobool.i.not.i314, label %sg_page.exit317, label %do.body2.i315, !prof !38

do.body2.i315:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

sg_page.exit317:                                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %offset58 = getelementptr inbounds %struct.scatterlist, ptr %call53, i32 0, i32 1
  %26 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset58, align 4
  %length54 = getelementptr inbounds %struct.scatterlist, ptr %call53, i32 0, i32 2
  %28 = ptrtoint ptr %length54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length54, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %remaining.0377)
  %and.i316 = and i32 %25, -4
  %31 = inttoptr i32 %and.i316 to ptr
  br label %if.end60

if.end60:                                         ; preds = %sg_page.exit317, %if.end50.if.end60_crit_edge
  %mem_len.2 = phi i32 [ %mem_len.1371, %if.end50.if.end60_crit_edge ], [ %30, %sg_page.exit317 ]
  %page.2 = phi ptr [ %page.1372, %if.end50.if.end60_crit_edge ], [ %31, %sg_page.exit317 ]
  %mem_off.2 = phi i32 [ %mem_off.1374, %if.end50.if.end60_crit_edge ], [ %27, %sg_page.exit317 ]
  %sg.2 = phi ptr [ %sg.1380, %if.end50.if.end60_crit_edge ], [ %call53, %sg_page.exit317 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_len.0370)
  %tobool61.not = icmp eq i32 %frame_len.0370, 0
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end92_crit_edge

if.end60.if.end92_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then62:                                        ; preds = %if.end60
  %32 = ptrtoint ptr %seq_offload to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load63 = load i8, ptr %seq_offload, align 8
  %33 = and i8 %bf.load63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool67.not = icmp eq i8 %33, 0
  br i1 %tobool67.not, label %cond.false69, label %cond.true68

cond.true68:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %lso_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lso_max, align 4
  br label %cond.end71

cond.false69:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %max_frame = getelementptr inbounds %struct.ft_sess, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %max_frame to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max_frame, align 8
  %conv70 = zext i16 %39 to i32
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true68
  %cond72 = phi i32 [ %35, %cond.true68 ], [ %conv70, %cond.false69 ]
  %40 = tail call i32 @llvm.umin.i32(i32 %cond72, i32 %remaining.0377)
  %cond84 = select i1 %tobool27.not, i32 0, i32 %40
  %rem.i = and i32 %cond84, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %7, i32 noundef %cond84) #6
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %cond84) #6
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool86.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool86.not, label %fc_frame_alloc.exit.cleanup206_crit_edge, label %if.end88

fc_frame_alloc.exit.cleanup206_crit_edge:         ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup206

if.end88:                                         ; preds = %fc_frame_alloc.exit
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %41 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %42)
  %cmp.not.i = icmp ult i32 %42, 24
  br i1 %cmp.not.i, label %if.end88.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.end88.fc_frame_payload_get.exit_crit_edge:     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %44, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end88.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end88.fc_frame_payload_get.exit_crit_edge ]
  %add = add i32 %40, %frame_off.0369
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 8
  %max_frame91 = getelementptr inbounds %struct.ft_sess, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %max_frame91 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max_frame91, align 8
  %fr_max_payload = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 16
  %49 = ptrtoint ptr %fr_max_payload to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %fr_max_payload, align 8
  br label %if.end92

if.end92:                                         ; preds = %fc_frame_payload_get.exit, %if.end60.if.end92_crit_edge
  %fh_off.1 = phi i32 [ %fh_off.0368, %if.end60.if.end92_crit_edge ], [ %frame_off.0369, %fc_frame_payload_get.exit ]
  %frame_off.1 = phi i32 [ %frame_off.0369, %if.end60.if.end92_crit_edge ], [ %add, %fc_frame_payload_get.exit ]
  %frame_len.1 = phi i32 [ %frame_len.0370, %if.end60.if.end92_crit_edge ], [ %40, %fc_frame_payload_get.exit ]
  %to.1 = phi ptr [ %to.0373, %if.end60.if.end92_crit_edge ], [ %pp.0.i, %fc_frame_payload_get.exit ]
  %fp.1 = phi ptr [ %fp.0381, %if.end60.if.end92_crit_edge ], [ %fp.0.i, %fc_frame_payload_get.exit ]
  %50 = tail call i32 @llvm.umin.i32(i32 %mem_len.2, i32 %frame_len.1)
  %tobool103.not = icmp eq ptr %page.2, null
  br i1 %tobool27.not, label %if.then101, label %do.body133

if.then101:                                       ; preds = %if.end92
  br i1 %tobool103.not, label %do.body113, label %do.end121, !prof !36

do.body113:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

do.end121:                                        ; preds = %if.then101
  %51 = getelementptr inbounds %struct.page, ptr %page.2, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i319 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i319)
  %tobool.not.i.i = icmp eq i32 %and.i.i319, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !38

if.then.i.i:                                      ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %53, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %page.2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %54, %if.end.i.i ]
  %55 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  %56 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %57, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i320 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i320, label %if.then.i1.i, label %do.end5.i.i, !prof !36

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.9) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #6
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #6, !srcloc !43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ft_queue_data_in, %if.then.i.i.i.i)) #6
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !40

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__page_ref_mod(ptr noundef %55, i32 noundef 1) #6
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 17
  %60 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nr_frags, align 2
  %conv125 = zext i8 %63 to i32
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %61, i32 0, i32 12, i32 %conv125
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %page.2, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %61, i32 0, i32 12, i32 %conv125, i32 2
  %65 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mem_off.2, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %61, i32 0, i32 12, i32 %conv125, i32 1
  %66 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %50, ptr %bv_len.i.i.i, align 4
  %67 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %51, align 4
  %and.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !38

if.then.i.i.i:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %68, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %page.2 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %69, %if.end.i.i.i ]
  %70 = inttoptr i32 %retval.0.i.i.i to ptr
  %71 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %73 to i32
  %and.i8.i.i = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i321

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_fill_page_desc.exit

if.then.i.i321:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 12
  %75 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i321, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i = add i8 %63, 1
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 6
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %add127 = add i32 %80, %50
  store i32 %add127, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 7
  %81 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_len, align 8
  %add129 = add i32 %82, %50
  store i32 %add129, ptr %data_len, align 8
  %83 = ptrtoint ptr %page.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %page.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp.i.not.i.i.i = icmp eq i32 %84, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i322, label %PageHead.exit.i.i, !prof !36

if.then.i.i.i322:                                 ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef nonnull %page.2, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

PageHead.exit.i.i:                                ; preds = %skb_fill_page_desc.exit
  %85 = ptrtoint ptr %page.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %page.2, align 4
  %87 = and i32 %86, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i323 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i323, label %PageHead.exit.i.i.page_size.exit_crit_edge, label %if.end.i.i324

PageHead.exit.i.i.page_size.exit_crit_edge:       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_size.exit

if.end.i.i324:                                    ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = getelementptr %struct.page, ptr %page.2, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.6, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %90 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i324, %PageHead.exit.i.i.page_size.exit_crit_edge
  %retval.0.i.i325 = phi i32 [ %conv.i.i, %if.end.i.i324 ], [ 0, %PageHead.exit.i.i.page_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i325
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 20
  %91 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %truesize, align 8
  %add132 = add i32 %92, %shl.i
  store i32 %add132, ptr %truesize, align 8
  br label %if.end171

do.body133:                                       ; preds = %if.end92
  br i1 %tobool103.not, label %do.body144, label %do.end152, !prof !36

do.body144:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 140, 0\0A.popsection", ""() #6, !srcloc !45
  unreachable

do.end152:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %mem_off.2, 12
  %add.ptr153 = getelementptr %struct.page, ptr %page.2, i32 %shr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %93 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %93, 512
  %94 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %97, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  %98 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i1.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 213
  %102 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %103, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !47
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr153, i32 noundef %or.i) #6
  %and = and i32 %mem_off.2, 4095
  %add.ptr155 = getelementptr i8, ptr %call.i.i, i32 %and
  %sub = sub nuw nsw i32 4096, %and
  %104 = tail call i32 @llvm.umin.i32(i32 %50, i32 %sub)
  %105 = call ptr @memcpy(ptr %to.1, ptr %add.ptr155, i32 %104)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !48
  %106 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i1.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 213
  %110 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %111, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !49
  %112 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i326 = add i32 %115, -1
  store volatile i32 %sub.i.i326, ptr %preempt_count.i.i.i, align 4
  %add.ptr170 = getelementptr i8, ptr %to.1, i32 %104
  br label %if.end171

if.end171:                                        ; preds = %do.end152, %page_size.exit
  %tlen.0 = phi i32 [ %50, %page_size.exit ], [ %104, %do.end152 ]
  %to.2 = phi ptr [ %to.1, %page_size.exit ], [ %add.ptr170, %do.end152 ]
  %add172 = add i32 %tlen.0, %mem_off.2
  %sub173 = sub i32 %mem_len.2, %tlen.0
  %sub174 = sub i32 %frame_len.1, %tlen.0
  %sub175 = sub i32 %remaining.0377, %tlen.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub174)
  %tobool176.not = icmp eq i32 %sub174, 0
  br i1 %tobool176.not, label %if.end171.if.end184_crit_edge, label %land.lhs.true

if.end171.if.end184_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

land.lhs.true:                                    ; preds = %if.end171
  %end.i327 = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 17
  %116 = ptrtoint ptr %end.i327 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i327, align 4
  %nr_frags179 = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nr_frags179 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nr_frags179, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %119)
  %cmp181 = icmp ult i8 %119, 16
  br i1 %cmp181, label %land.lhs.true.while.cond.backedge_crit_edge, label %land.lhs.true.if.end184_crit_edge

land.lhs.true.if.end184_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end184:                                        ; preds = %land.lhs.true.if.end184_crit_edge, %if.end171.if.end184_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub175)
  %tobool185.not = icmp eq i32 %sub175, 0
  %or = or i32 %f_ctl.0375, 524288
  %spec.select = select i1 %tobool185.not, i32 %or, i32 %f_ctl.0375
  %120 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %did, align 32
  %122 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sid, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 6
  %124 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %125)
  %cmp.i.i328 = icmp ult i32 %125, 24
  br i1 %cmp.i.i328, label %do.end.i.i329, label %if.end184.fc_fill_fc_hdr.exit_crit_edge, !prof !36

if.end184.fc_fill_fc_hdr.exit_crit_edge:          ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_fill_fc_hdr.exit

do.end.i.i329:                                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i329, %if.end184.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i330 = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 19
  %126 = ptrtoint ptr %data.i.i.i330 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i.i.i330, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %127, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 1
  %shr.i.i.i = lshr i32 %121, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %129 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %121, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %127, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %121 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %127, i32 0, i32 1, i32 2
  %131 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 3
  %shr.i1.i.i = lshr i32 %123, 16
  %conv.i2.i.i = trunc i32 %shr.i1.i.i to i8
  %132 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv.i2.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i3.i.i = lshr i32 %123, 8
  %conv3.i4.i.i = trunc i32 %shr1.i3.i.i to i8
  %arrayidx4.i5.i.i = getelementptr %struct.fc_frame_header, ptr %127, i32 0, i32 3, i32 1
  %133 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv3.i4.i.i, ptr %arrayidx4.i5.i.i, align 1
  %conv6.i6.i.i = trunc i32 %123 to i8
  %arrayidx7.i7.i.i = getelementptr %struct.fc_frame_header, ptr %127, i32 0, i32 3, i32 2
  %134 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv6.i6.i.i, ptr %arrayidx7.i7.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 4
  %135 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 8, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 5
  %shr.i8.i.i = lshr i32 %spec.select, 16
  %conv.i9.i.i = trunc i32 %shr.i8.i.i to i8
  %136 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv.i9.i.i, ptr %fh_f_ctl.i.i, align 1
  %shr1.i10.i.i = lshr i32 %spec.select, 8
  %conv3.i11.i.i = trunc i32 %shr1.i10.i.i to i8
  %arrayidx4.i12.i.i = getelementptr %struct.fc_frame_header, ptr %127, i32 0, i32 5, i32 1
  %137 = ptrtoint ptr %arrayidx4.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv3.i11.i.i, ptr %arrayidx4.i12.i.i, align 1
  %conv6.i13.i.i = trunc i32 %spec.select to i8
  %arrayidx7.i14.i.i = getelementptr %struct.fc_frame_header, ptr %127, i32 0, i32 5, i32 2
  %138 = ptrtoint ptr %arrayidx7.i14.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv6.i13.i.i, ptr %arrayidx7.i14.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 2
  %139 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 7
  %140 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 11
  %141 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %fh_off.1, ptr %fh_parm_offset.i.i, align 4
  %call188 = tail call i32 @fc_seq_send(ptr noundef %7, ptr noundef nonnull %21, ptr noundef %fp.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %fc_fill_fc_hdr.exit.while.cond.backedge_crit_edge, label %if.then190

fc_fill_fc_hdr.exit.while.cond.backedge_crit_edge: ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then190:                                       ; preds = %fc_fill_fc_hdr.exit
  %call191 = tail call i32 @___ratelimit(ptr noundef nonnull @ft_queue_data_in._rs, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.then190.if.end202_crit_edge, label %do.end196

if.then190.if.end202_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202

do.end196:                                        ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #8
  %xid198 = getelementptr i8, ptr %5, i32 -28
  %142 = ptrtoint ptr %xid198 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %xid198, align 16
  %conv199 = zext i16 %143 to i32
  %144 = ptrtoint ptr %lso_max to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %lso_max, align 4
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef %fp.1, i32 noundef %conv199, i32 noundef %sub175, i32 noundef %145) #9
  br label %if.end202

if.end202:                                        ; preds = %do.end196, %if.then190.if.end202_crit_edge
  %146 = ptrtoint ptr %scsi_status to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 40, ptr %scsi_status, align 4
  br label %queue_status

while.cond.backedge:                              ; preds = %fc_fill_fc_hdr.exit.while.cond.backedge_crit_edge, %land.lhs.true.while.cond.backedge_crit_edge
  %f_ctl.2.ph = phi i32 [ %spec.select, %fc_fill_fc_hdr.exit.while.cond.backedge_crit_edge ], [ %f_ctl.0375, %land.lhs.true.while.cond.backedge_crit_edge ]
  %tobool30.not = icmp eq i32 %sub175, 0
  br i1 %tobool30.not, label %while.cond.backedge.queue_status_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.queue_status_crit_edge:       ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %queue_status

queue_status:                                     ; preds = %while.cond.backedge.queue_status_crit_edge, %if.end202, %if.then45, %do.body35, %if.end3.queue_status_crit_edge, %if.end.queue_status_crit_edge
  %call205 = tail call i32 @ft_queue_status(ptr noundef %se_cmd) #6
  br label %cleanup206

cleanup206:                                       ; preds = %queue_status, %fc_frame_alloc.exit.cleanup206_crit_edge, %entry.cleanup206_crit_edge
  %retval.2 = phi i32 [ %call205, %queue_status ], [ 0, %entry.cleanup206_crit_edge ], [ -12, %fc_frame_alloc.exit.cleanup206_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_seq_start_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_seq_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_queue_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_recv_write_data(ptr noundef %cmd, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq2 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %seq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq2, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i = icmp ult i32 %3, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !36

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %fh_f_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_f_ctl, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %11 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %and = and i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %fc_frame_header_get.exit.drop_crit_edge, label %if.end

fc_frame_header_get.exit.drop_crit_edge:          ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end:                                           ; preds = %fc_frame_header_get.exit
  %was_ddp_setup = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 7
  %12 = ptrtoint ptr %was_ddp_setup to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %was_ddp_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.end33, label %do.body

do.body:                                          ; preds = %if.end
  %lp = getelementptr i8, ptr %1, i32 -40
  %13 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lp, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %do.body14, label %do.end20, !prof !36

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #6, !srcloc !50
  unreachable

do.end20:                                         ; preds = %do.body
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 25
  br i1 %cmp.not.i, label %do.end20.if.end29_crit_edge, label %fc_frame_payload_get.exit

do.end20.if.end29_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

fc_frame_payload_get.exit:                        ; preds = %do.end20
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %18, i32 1
  %tobool22.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool22.not, label %fc_frame_payload_get.exit.if.end29_crit_edge, label %do.end26

fc_frame_payload_get.exit.if.end29_crit_edge:     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end26:                                         ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %xid = getelementptr i8, ptr %1, i32 -28
  %19 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %xid, align 16
  %conv = zext i16 %20 to i32
  %t_data_sg = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 39
  %21 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 41
  %23 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t_data_nents, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %or6.i, ptr noundef %22, i32 noundef %24) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %fc_frame_payload_get.exit.if.end29_crit_edge, %do.end20.if.end29_crit_edge
  %tobool.not.i = icmp eq ptr %cmd, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !36

do.body4.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

do.end9.i:                                        ; preds = %if.end29
  %25 = ptrtoint ptr %seq2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %seq2, align 4
  %27 = ptrtoint ptr %was_ddp_setup to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %was_ddp_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  %tobool12.not.i = icmp eq ptr %26, null
  %or.cond.i = select i1 %tobool11.not.i, i1 true, i1 %tobool12.not.i
  %add.ptr.i213 = getelementptr i8, ptr %26, i32 -108
  %tobool14.not.i = icmp eq ptr %add.ptr.i213, null
  %or.cond39.i = select i1 %or.cond.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond39.i, label %do.end9.i.ft_invl_hw_context.exit_crit_edge, label %if.then15.i

do.end9.i.ft_invl_hw_context.exit_crit_edge:      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ft_invl_hw_context.exit

if.then15.i:                                      ; preds = %do.end9.i
  %lp.i = getelementptr i8, ptr %26, i32 -40
  %28 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lp.i, align 4
  %tobool16.not.i = icmp eq ptr %29, null
  br i1 %tobool16.not.i, label %if.then15.i.ft_invl_hw_context.exit_crit_edge, label %land.lhs.true17.i

if.then15.i.ft_invl_hw_context.exit_crit_edge:    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ft_invl_hw_context.exit

land.lhs.true17.i:                                ; preds = %if.then15.i
  %xid.i = getelementptr i8, ptr %26, i32 -28
  %30 = ptrtoint ptr %xid.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %xid.i, align 16
  %lro_xid.i = getelementptr inbounds %struct.fc_lport, ptr %29, i32 0, i32 32
  %32 = ptrtoint ptr %lro_xid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %lro_xid.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp.not.i214 = icmp ugt i16 %31, %33
  br i1 %cmp.not.i214, label %land.lhs.true17.i.ft_invl_hw_context.exit_crit_edge, label %if.then20.i

land.lhs.true17.i.ft_invl_hw_context.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ft_invl_hw_context.exit

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  %ddp_done.i = getelementptr inbounds %struct.fc_lport, ptr %29, i32 0, i32 9, i32 3
  %34 = ptrtoint ptr %ddp_done.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ddp_done.i, align 4
  %call.i = tail call i32 %35(ptr noundef nonnull %29, i16 noundef zeroext %31) #6
  %write_data_len.i = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 4
  %36 = ptrtoint ptr %write_data_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i, ptr %write_data_len.i, align 4
  %37 = ptrtoint ptr %was_ddp_setup to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load23.i = load i8, ptr %was_ddp_setup, align 4
  %bf.clear.i = and i8 %bf.load23.i, 127
  store i8 %bf.clear.i, ptr %was_ddp_setup, align 4
  br label %ft_invl_hw_context.exit

ft_invl_hw_context.exit:                          ; preds = %if.then20.i, %land.lhs.true17.i.ft_invl_hw_context.exit_crit_edge, %if.then15.i.ft_invl_hw_context.exit_crit_edge, %do.end9.i.ft_invl_hw_context.exit_crit_edge
  %38 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  br i1 %tobool31.not, label %ft_invl_hw_context.exit.drop_crit_edge, label %ft_invl_hw_context.exit.last_frame_crit_edge

ft_invl_hw_context.exit.last_frame_crit_edge:     ; preds = %ft_invl_hw_context.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %last_frame

ft_invl_hw_context.exit.drop_crit_edge:           ; preds = %ft_invl_hw_context.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end33:                                         ; preds = %if.end
  %fh_parm_offset = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 11
  %39 = ptrtoint ptr %fh_parm_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fh_parm_offset, align 4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %42)
  %cmp = icmp ult i32 %42, 25
  br i1 %cmp, label %if.end33.drop_crit_edge, label %fc_frame_payload_get.exit224

if.end33.drop_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

fc_frame_payload_get.exit224:                     ; preds = %if.end33
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i221 = getelementptr %struct.fc_frame_header, ptr %44, i32 1
  %data_length = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 12
  %45 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %40)
  %cmp38.not = icmp ugt i32 %46, %40
  br i1 %cmp38.not, label %if.end41, label %fc_frame_payload_get.exit224.drop_crit_edge

fc_frame_payload_get.exit224.drop_crit_edge:      ; preds = %fc_frame_payload_get.exit224
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end41:                                         ; preds = %fc_frame_payload_get.exit224
  %sub = add i32 %42, -24
  %add = add i32 %sub, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp43 = icmp ugt i32 %add, %46
  %sub47 = sub i32 %46, %40
  %spec.select = select i1 %cmp43, i32 %sub47, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool50.not = icmp eq i32 %spec.select, 0
  br i1 %tobool50.not, label %if.end41.last_frame_crit_edge, label %land.rhs

if.end41.last_frame_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %last_frame

land.rhs:                                         ; preds = %if.end41
  %t_data_sg51 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 39
  %47 = ptrtoint ptr %t_data_sg51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %t_data_sg51, align 4
  %tobool52.not = icmp eq ptr %48, null
  br i1 %tobool52.not, label %do.body62, label %if.then72.critedge, !prof !36

do.body62:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #6, !srcloc !52
  unreachable

if.then72.critedge:                               ; preds = %land.rhs
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %while.body.lr.ph.lr.ph, label %do.body2.i, !prof !38

do.body2.i:                                       ; preds = %if.then72.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

while.body.lr.ph.lr.ph:                           ; preds = %if.then72.critedge
  %offset = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 4
  %and.i = and i32 %50, -4
  %55 = inttoptr i32 %and.i to ptr
  %write_data_len = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end88.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %sg.1.ph248 = phi ptr [ %48, %while.body.lr.ph.lr.ph ], [ %sg.2, %if.end88.while.body.lr.ph_crit_edge ]
  %from.0.ph247 = phi ptr [ %add.ptr.i221, %while.body.lr.ph.lr.ph ], [ %add.ptr113, %if.end88.while.body.lr.ph_crit_edge ]
  %page.1.ph246 = phi ptr [ %55, %while.body.lr.ph.lr.ph ], [ %page.2, %if.end88.while.body.lr.ph_crit_edge ]
  %mem_len.1.ph245 = phi i32 [ %54, %while.body.lr.ph.lr.ph ], [ %sub116, %if.end88.while.body.lr.ph_crit_edge ]
  %frame_len.1.ph244 = phi i32 [ %spec.select, %while.body.lr.ph.lr.ph ], [ %sub114, %if.end88.while.body.lr.ph_crit_edge ]
  %rel_off.0.ph243 = phi i32 [ %40, %while.body.lr.ph.lr.ph ], [ 0, %if.end88.while.body.lr.ph_crit_edge ]
  %mem_off.1.ph242 = phi i32 [ %52, %while.body.lr.ph.lr.ph ], [ %add115, %if.end88.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then86, %while.body.lr.ph
  %sg.1240 = phi ptr [ %sg.1.ph248, %while.body.lr.ph ], [ %sg.2, %if.then86 ]
  %page.1239 = phi ptr [ %page.1.ph246, %while.body.lr.ph ], [ %page.2, %if.then86 ]
  %mem_len.1238 = phi i32 [ %mem_len.1.ph245, %while.body.lr.ph ], [ 0, %if.then86 ]
  %rel_off.0237 = phi i32 [ %rel_off.0.ph243, %while.body.lr.ph ], [ %sub87, %if.then86 ]
  %mem_off.1236 = phi i32 [ %mem_off.1.ph242, %while.body.lr.ph ], [ %mem_off.2, %if.then86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_len.1238)
  %tobool77.not = icmp eq i32 %mem_len.1238, 0
  br i1 %tobool77.not, label %if.then78, label %while.body.if.end83_crit_edge

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then78:                                        ; preds = %while.body
  %call79 = tail call ptr @sg_next(ptr noundef %sg.1240) #6
  %56 = ptrtoint ptr %call79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call79, align 4
  %and.i.i225 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i225)
  %tobool.i.not.i226 = icmp eq i32 %and.i.i225, 0
  br i1 %tobool.i.not.i226, label %sg_page.exit229, label %do.body2.i227, !prof !38

do.body2.i227:                                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

sg_page.exit229:                                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %offset81 = getelementptr inbounds %struct.scatterlist, ptr %call79, i32 0, i32 1
  %58 = ptrtoint ptr %offset81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset81, align 4
  %length80 = getelementptr inbounds %struct.scatterlist, ptr %call79, i32 0, i32 2
  %60 = ptrtoint ptr %length80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length80, align 4
  %and.i228 = and i32 %57, -4
  %62 = inttoptr i32 %and.i228 to ptr
  br label %if.end83

if.end83:                                         ; preds = %sg_page.exit229, %while.body.if.end83_crit_edge
  %mem_off.2 = phi i32 [ %mem_off.1236, %while.body.if.end83_crit_edge ], [ %59, %sg_page.exit229 ]
  %mem_len.2 = phi i32 [ %mem_len.1238, %while.body.if.end83_crit_edge ], [ %61, %sg_page.exit229 ]
  %page.2 = phi ptr [ %page.1239, %while.body.if.end83_crit_edge ], [ %62, %sg_page.exit229 ]
  %sg.2 = phi ptr [ %sg.1240, %while.body.if.end83_crit_edge ], [ %call79, %sg_page.exit229 ]
  %cmp84.not = icmp ult i32 %rel_off.0237, %mem_len.2
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %sub87 = sub i32 %rel_off.0237, %mem_len.2
  br label %while.body

if.end88:                                         ; preds = %if.end83
  %add89 = add i32 %mem_off.2, %rel_off.0237
  %sub90 = sub i32 %mem_len.2, %rel_off.0237
  %63 = tail call i32 @llvm.umin.i32(i32 %sub90, i32 %frame_len.1.ph244)
  %shr = lshr i32 %add89, 12
  %add.ptr94 = getelementptr %struct.page, ptr %page.2, i32 %shr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %64 = load i32, ptr @pgprot_kernel, align 4
  %or.i230 = or i32 %64, 512
  %65 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %68, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  %69 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i1.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !47
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr94, i32 noundef %or.i230) #6
  %and96 = and i32 %add89, 4095
  %add.ptr97 = getelementptr i8, ptr %call.i.i, i32 %and96
  %sub99 = sub nuw nsw i32 4096, %and96
  %75 = tail call i32 @llvm.umin.i32(i32 %63, i32 %sub99)
  %76 = call ptr @memcpy(ptr %add.ptr97, ptr %from.0.ph247, i32 %75)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !48
  %77 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i1.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 213
  %81 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %82, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !49
  %83 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %add.ptr113 = getelementptr i8, ptr %from.0.ph247, i32 %75
  %sub114 = sub i32 %frame_len.1.ph244, %75
  %add115 = add i32 %75, %add89
  %sub116 = sub i32 %sub90, %75
  %87 = ptrtoint ptr %write_data_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %write_data_len, align 4
  %add117 = add i32 %88, %75
  store i32 %add117, ptr %write_data_len, align 4
  %tobool76.not = icmp eq i32 %sub114, 0
  br i1 %tobool76.not, label %if.end88.last_frame_crit_edge, label %if.end88.while.body.lr.ph_crit_edge

if.end88.while.body.lr.ph_crit_edge:              ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

if.end88.last_frame_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %last_frame

last_frame:                                       ; preds = %if.end88.last_frame_crit_edge, %if.end41.last_frame_crit_edge, %ft_invl_hw_context.exit.last_frame_crit_edge
  %write_data_len118 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 4
  %89 = ptrtoint ptr %write_data_len118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %write_data_len118, align 4
  %data_length119 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 12
  %91 = ptrtoint ptr %data_length119 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_length119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp120 = icmp eq i32 %90, %92
  br i1 %cmp120, label %do.body123, label %last_frame.drop_crit_edge

last_frame.drop_crit_edge:                        ; preds = %last_frame
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

do.body123:                                       ; preds = %last_frame
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %93 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @ft_recv_write_data.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry127 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 5, i32 1
  %94 = ptrtoint ptr %entry127 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry127, ptr %entry127, align 4
  %prev.i = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 5, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry127, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 5, i32 2
  %96 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @ft_execute_work, ptr %func, align 4
  %97 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cmd, align 8
  %tport = getelementptr inbounds %struct.ft_sess, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tport, align 8
  %tpg = getelementptr inbounds %struct.ft_tport, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tpg, align 4
  %workqueue = getelementptr inbounds %struct.ft_tpg, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %workqueue, align 4
  %call.i231 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %104, ptr noundef %work) #6
  br label %drop

drop:                                             ; preds = %do.body123, %last_frame.drop_crit_edge, %fc_frame_payload_get.exit224.drop_crit_edge, %if.end33.drop_crit_edge, %ft_invl_hw_context.exit.drop_crit_edge, %fc_frame_header_get.exit.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_invl_hw_context(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !36

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

do.end9:                                          ; preds = %entry
  %seq10 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %seq10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq10, align 4
  %was_ddp_setup = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 7
  %2 = ptrtoint ptr %was_ddp_setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %was_ddp_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  %tobool12.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  %add.ptr = getelementptr i8, ptr %1, i32 -108
  %tobool14.not = icmp eq ptr %add.ptr, null
  %or.cond39 = select i1 %or.cond, i1 true, i1 %tobool14.not
  br i1 %or.cond39, label %do.end9.if.end26_crit_edge, label %if.then15

do.end9.if.end26_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then15:                                        ; preds = %do.end9
  %lp = getelementptr i8, ptr %1, i32 -40
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  %tobool16.not = icmp eq ptr %4, null
  br i1 %tobool16.not, label %if.then15.if.end26_crit_edge, label %land.lhs.true17

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true17:                                  ; preds = %if.then15
  %xid = getelementptr i8, ptr %1, i32 -28
  %5 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %xid, align 16
  %lro_xid = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 32
  %7 = ptrtoint ptr %lro_xid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %lro_xid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.not = icmp ugt i16 %6, %8
  br i1 %cmp.not, label %land.lhs.true17.if.end26_crit_edge, label %if.then20

land.lhs.true17.if.end26_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  %ddp_done = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %ddp_done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddp_done, align 4
  %call = tail call i32 %10(ptr noundef nonnull %4, i16 noundef zeroext %6) #6
  %write_data_len = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %write_data_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %write_data_len, align 4
  %12 = ptrtoint ptr %was_ddp_setup to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load23 = load i8, ptr %was_ddp_setup, align 4
  %bf.clear = and i8 %bf.load23, 127
  store i8 %bf.clear, ptr %was_ddp_setup, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.lhs.true17.if.end26_crit_edge, %if.then15.if.end26_crit_edge, %do.end9.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_execute_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd = getelementptr i8, ptr %work, i32 -448
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/tcm_fc/tfc_io.c", i32 94, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ft_queue_data_in.__UNIQUE_ID_ddebug307, !1, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/tcm_fc/tfc_io.c", i32 165, i32 4}
!8 = !{ptr @ft_queue_data_in._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ft_queue_data_in._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ft_queue_data_in._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/target/tcm_fc/tfc_io.c", i32 230, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ft_recv_write_data._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ft_recv_write_data._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ft_recv_write_data.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/target/tcm_fc/tfc_io.c", i32 316, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/scsi/fc_frame.h", i32 254, i32 2}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2155460591, i64 2155461085, i64 2155460628, i64 2155460684, i64 2155460718, i64 2155460742, i64 2155460783, i64 2155460804, i64 2155460832, i64 2155460866}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2154487763, i64 2154488255, i64 2154487800, i64 2154487856, i64 2154487890, i64 2154487914, i64 2154487955, i64 2154487976, i64 2154488004, i64 2154488038}
!40 = !{i64 2148960505, i64 2148960510, i64 2148960523, i64 2148960567, i64 2148960601, i64 2148960622}
!41 = !{i64 2155468949, i64 2155469444, i64 2155468986, i64 2155469042, i64 2155469076, i64 2155469100, i64 2155469141, i64 2155469162, i64 2155469190, i64 2155469224}
!42 = !{i64 2153833343, i64 2153833827, i64 2153833380, i64 2153833436, i64 2153833470, i64 2153833494, i64 2153833535, i64 2153833556, i64 2153833584, i64 2153833618}
!43 = !{i64 2148347128, i64 2148347154, i64 2148347183, i64 2148347217, i64 2148347248, i64 2148347271}
!44 = !{i64 2150935869, i64 2150936360, i64 2150935906, i64 2150935962, i64 2150935996, i64 2150936020, i64 2150936061, i64 2150936082, i64 2150936110, i64 2150936144}
!45 = !{i64 2155470707, i64 2155471202, i64 2155470744, i64 2155470800, i64 2155470834, i64 2155470858, i64 2155470899, i64 2155470920, i64 2155470948, i64 2155470982}
!46 = !{i64 2154184427}
!47 = !{i64 2153276590}
!48 = !{i64 2153276797}
!49 = !{i64 2154187198}
!50 = !{i64 2155482447, i64 2155482942, i64 2155482484, i64 2155482540, i64 2155482574, i64 2155482598, i64 2155482639, i64 2155482660, i64 2155482688, i64 2155482722}
!51 = !{i64 2155495537, i64 2155496032, i64 2155495574, i64 2155495630, i64 2155495664, i64 2155495688, i64 2155495729, i64 2155495750, i64 2155495778, i64 2155495812}
!52 = !{i64 2155487577, i64 2155488072, i64 2155487614, i64 2155487670, i64 2155487704, i64 2155487728, i64 2155487769, i64 2155487790, i64 2155487818, i64 2155487852}
