; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-streamer.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-streamer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vimc_stream = type { %struct.media_pipeline, [16 x ptr], i32, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon], %struct.media_entity_enum, i32 }
%struct.anon = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vimc-streamer thread\00", [43 x i8] zeroinitializer }, align 32
@vimc_streamer_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kthread_run failed with %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vimc_streamer_s_stream\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/test-drivers/vimc/vimc-streamer.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vimc_streamer_s_stream._entry_ptr = internal global ptr @vimc_streamer_s_stream._entry, section ".printk_index", align 4
@vimc_streamer_s_stream.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vimc\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kthread_stop returned '%d'\0A\00", [36 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vimc_streamer_pipeline_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subdev_call error %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vimc_streamer_pipeline_init\00", [36 x i8] zeroinitializer }, align 32
@vimc_streamer_pipeline_init._entry_ptr = internal global ptr @vimc_streamer_pipeline_init._entry, section ".printk_index", align 4
@vimc_streamer_pipeline_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"first entity in the pipe '%s' is not a source\0A\00", [49 x i8] zeroinitializer }, align 32
@vimc_streamer_pipeline_init._entry_ptr.12 = internal global ptr @vimc_streamer_pipeline_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 207, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 212, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 230, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 99, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private constant [51 x i8] c"../drivers/media/test-drivers/vimc/vimc-streamer.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 111, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 57, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @vimc_streamer_pipeline_init._entry, ptr @vimc_streamer_pipeline_init._entry.10, ptr @vimc_streamer_pipeline_init._entry_ptr, ptr @vimc_streamer_pipeline_init._entry_ptr.12, ptr @vimc_streamer_s_stream._entry, ptr @vimc_streamer_s_stream._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_streamer_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_streamer_pipeline_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_streamer_pipeline_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vimc_streamer_s_stream(ptr noundef %stream, ptr noundef %ved, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  %tobool1.not = icmp eq ptr %ved, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %kthread23 = getelementptr inbounds %struct.vimc_stream, ptr %stream, i32 0, i32 3
  %0 = ptrtoint ptr %kthread23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kthread23, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool24.not, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %pipe_size.i = getelementptr inbounds %struct.vimc_stream, ptr %stream, i32 0, i32 2
  %2 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pipe_size.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %is_media_entity_v4l2_subdev.exit115.i.while.body.i_crit_edge, %if.end6
  %ved.addr.0164.i = phi ptr [ %ved, %if.end6 ], [ %ved.addr.1.i, %is_media_entity_v4l2_subdev.exit115.i.while.body.i_crit_edge ]
  %3 = phi i32 [ 0, %if.end6 ], [ %.pr.i, %is_media_entity_v4l2_subdev.exit115.i.while.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %ved.addr.0164.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not49.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not49.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %4 = phi i32 [ %22, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %3, %if.then.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %4, -1
  %5 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec.i.i, ptr %pipe_size.i, align 4
  %arrayidx.i.i = getelementptr %struct.vimc_stream, ptr %stream, i32 0, i32 1, i32 %dec.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  store ptr null, ptr %arrayidx.i.i, align 4
  %ent.i.i = getelementptr inbounds %struct.vimc_ent_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ent.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.while.cond.backedge.i.i_crit_edge, label %land.rhs.i.i.i

while.body.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i
  %obj_type.i.i.i = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %obj_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i.i, label %if.else.i.i, label %land.rhs.i.i.i.while.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i.i

if.else.i.i:                                      ; preds = %land.rhs.i.i.i
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %video.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i.i, label %if.else.i.i.while.cond.backedge.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.while.cond.backedge.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %s_stream.i.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_stream.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i.i, label %land.lhs.true.i.i.while.cond.backedge.i.i_crit_edge, label %if.else16.i.i

land.lhs.true.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i.i

if.else16.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool17.not.i.i = icmp eq ptr %18, null
  br i1 %tobool17.not.i.i, label %if.else16.i.i.if.else24.i.i_crit_edge, label %land.lhs.true18.i.i

if.else16.i.i.if.else24.i.i_crit_edge:            ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24.i.i

land.lhs.true18.i.i:                              ; preds = %if.else16.i.i
  %s_stream19.i.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_stream19.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_stream19.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %20, null
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.if.else24.i.i_crit_edge, label %land.lhs.true18.i.i.while.cond.backedge.sink.split.i.i_crit_edge

land.lhs.true18.i.i.while.cond.backedge.sink.split.i.i_crit_edge: ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.sink.split.i.i

land.lhs.true18.i.i.if.else24.i.i_crit_edge:      ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24.i.i

if.else24.i.i:                                    ; preds = %land.lhs.true18.i.i.if.else24.i.i_crit_edge, %if.else16.i.i.if.else24.i.i_crit_edge
  br label %while.cond.backedge.sink.split.i.i

while.cond.backedge.sink.split.i.i:               ; preds = %if.else24.i.i, %land.lhs.true18.i.i.while.cond.backedge.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %17, %if.else24.i.i ], [ %20, %land.lhs.true18.i.i.while.cond.backedge.sink.split.i.i_crit_edge ]
  %call23.i.i = tail call i32 %.sink.i.i(ptr noundef nonnull %9, i32 noundef 0) #4
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %while.cond.backedge.sink.split.i.i, %land.lhs.true.i.i.while.cond.backedge.i.i_crit_edge, %if.else.i.i.while.cond.backedge.i.i_crit_edge, %land.rhs.i.i.i.while.cond.backedge.i.i_crit_edge, %while.body.i.i.while.cond.backedge.i.i_crit_edge
  %21 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe_size.i, align 4
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %while.cond.backedge.i.i.cleanup_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.cond.backedge.i.i.cleanup_crit_edge:        ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %3, 1
  %23 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc.i, ptr %pipe_size.i, align 4
  %arrayidx.i = getelementptr %struct.vimc_stream, ptr %stream, i32 0, i32 1, i32 %3
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ved.addr.0164.i, ptr %arrayidx.i, align 4
  %ent.i = getelementptr inbounds %struct.vimc_ent_device, ptr %ved.addr.0164.i, i32 0, i32 1
  %25 = ptrtoint ptr %ent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ent.i, align 4
  %tobool.not.i108.i = icmp eq ptr %26, null
  br i1 %tobool.not.i108.i, label %if.end.i.if.end37.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

is_media_entity_v4l2_subdev.exit.i:               ; preds = %if.end.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 2
  br i1 %cmp.i.i, label %if.else.i, label %is_media_entity_v4l2_subdev.exit.i.if.end37.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end37.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

if.else.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %video.i, align 4
  %tobool9.not.i = icmp eq ptr %32, null
  br i1 %tobool9.not.i, label %if.else.i.if.end37.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_stream.i, align 4
  %tobool12.not.i = icmp eq ptr %34, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %if.else14.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

if.else14.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool15.not.i = icmp eq ptr %35, null
  br i1 %tobool15.not.i, label %if.else14.i.if.else22.i_crit_edge, label %land.lhs.true16.i

if.else14.i.if.else22.i_crit_edge:                ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else22.i

land.lhs.true16.i:                                ; preds = %if.else14.i
  %s_stream17.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %s_stream17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_stream17.i, align 4
  %tobool18.not.i = icmp eq ptr %37, null
  br i1 %tobool18.not.i, label %land.lhs.true16.i.if.else22.i_crit_edge, label %land.lhs.true16.i.if.end29.i_crit_edge

land.lhs.true16.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

land.lhs.true16.i.if.else22.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else22.i

if.else22.i:                                      ; preds = %land.lhs.true16.i.if.else22.i_crit_edge, %if.else14.i.if.else22.i_crit_edge
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else22.i, %land.lhs.true16.i.if.end29.i_crit_edge
  %.sink.i = phi ptr [ %34, %if.else22.i ], [ %37, %land.lhs.true16.i.if.end29.i_crit_edge ]
  %call26.i = tail call i32 %.sink.i(ptr noundef nonnull %26, i32 noundef 1) #4
  %38 = zext i32 %call26.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call26.i, label %if.end29.i.vimc_streamer_pipeline_init.exit_crit_edge [
    i32 0, label %if.end29.i.if.end37.i_crit_edge
    i32 -515, label %if.end29.i.if.end37.i_crit_edge201
  ]

if.end29.i.if.end37.i_crit_edge201:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.i

if.end29.i.vimc_streamer_pipeline_init.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vimc_streamer_pipeline_init.exit

if.end37.i:                                       ; preds = %if.end29.i.if.end37.i_crit_edge, %if.end29.i.if.end37.i_crit_edge201, %land.lhs.true.i.if.end37.i_crit_edge, %if.else.i.if.end37.i_crit_edge, %is_media_entity_v4l2_subdev.exit.i.if.end37.i_crit_edge, %if.end.i.if.end37.i_crit_edge
  %39 = ptrtoint ptr %ent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ent.i, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp13.not.i.i = icmp eq i16 %42, 0
  br i1 %cmp13.not.i.i, label %if.end37.i.if.then41.i_crit_edge, label %for.body.lr.ph.i.i

if.end37.i.if.then41.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41.i

for.body.lr.ph.i.i:                               ; preds = %if.end37.i
  %pads.i.i = getelementptr inbounds %struct.media_entity, ptr %40, i32 0, i32 9
  %43 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pads.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr %struct.media_pad, ptr %44, i32 %i.014.i.i, i32 4
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i109.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i109.i, label %if.end.i.i, label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx.i110.i = getelementptr %struct.media_pad, ptr %44, i32 %i.014.i.i
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx.i110.i) #4
  %tobool4.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.then41.i_crit_edge, label %vimc_get_source_entity.exit.i

if.end.i.i.if.then41.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then41.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.if.then41.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41.i

vimc_get_source_entity.exit.i:                    ; preds = %if.end.i.i
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entity.i.i, align 4
  %tobool40.not.i = icmp eq ptr %48, null
  br i1 %tobool40.not.i, label %vimc_get_source_entity.exit.i.if.then41.i_crit_edge, label %is_media_entity_v4l2_subdev.exit115.i

vimc_get_source_entity.exit.i.if.then41.i_crit_edge: ; preds = %vimc_get_source_entity.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41.i

if.then41.i:                                      ; preds = %vimc_get_source_entity.exit.i.if.then41.i_crit_edge, %for.inc.i.i.if.then41.i_crit_edge, %if.end.i.i.if.then41.i_crit_edge, %if.end37.i.if.then41.i_crit_edge
  %49 = ptrtoint ptr %ent.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ent.i, align 4
  %call43.i = tail call zeroext i1 @vimc_is_source(ptr noundef %50) #4
  br i1 %call43.i, label %if.then41.i.if.end9_crit_edge, label %if.then41.i.vimc_streamer_pipeline_init.exit_crit_edge

if.then41.i.vimc_streamer_pipeline_init.exit_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vimc_streamer_pipeline_init.exit

if.then41.i.if.end9_crit_edge:                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

is_media_entity_v4l2_subdev.exit115.i:            ; preds = %vimc_get_source_entity.exit.i
  %obj_type.i112.i = getelementptr inbounds %struct.media_entity, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %obj_type.i112.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %obj_type.i112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i113.i = icmp eq i32 %52, 2
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %48, i32 0, i32 11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %48, i32 0, i32 5, i32 8
  %ved.addr.1.in.i = select i1 %cmp.i113.i, ptr %dev_priv.i.i, ptr %driver_data.i.i.i
  %53 = ptrtoint ptr %ved.addr.1.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %ved.addr.1.i = load ptr, ptr %ved.addr.1.in.i, align 4
  %54 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr.i = load i32, ptr %pipe_size.i, align 4
  %cmp.i = icmp ult i32 %.pr.i, 16
  br i1 %cmp.i, label %is_media_entity_v4l2_subdev.exit115.i.while.body.i_crit_edge, label %is_media_entity_v4l2_subdev.exit115.i.while.body.i122.i_crit_edge

is_media_entity_v4l2_subdev.exit115.i.while.body.i122.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit115.i
  br label %while.body.i122.i

is_media_entity_v4l2_subdev.exit115.i.while.body.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit115.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i122.i:                                ; preds = %while.cond.backedge.i143.i.while.body.i122.i_crit_edge, %is_media_entity_v4l2_subdev.exit115.i.while.body.i122.i_crit_edge
  %55 = phi i32 [ %73, %while.cond.backedge.i143.i.while.body.i122.i_crit_edge ], [ %.pr.i, %is_media_entity_v4l2_subdev.exit115.i.while.body.i122.i_crit_edge ]
  %dec.i118.i = add i32 %55, -1
  %56 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %dec.i118.i, ptr %pipe_size.i, align 4
  %arrayidx.i119.i = getelementptr %struct.vimc_stream, ptr %stream, i32 0, i32 1, i32 %dec.i118.i
  %57 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i119.i, align 4
  store ptr null, ptr %arrayidx.i119.i, align 4
  %ent.i120.i = getelementptr inbounds %struct.vimc_ent_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ent.i120.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ent.i120.i, align 4
  %tobool.not.i.i121.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i121.i, label %while.body.i122.i.while.cond.backedge.i143.i_crit_edge, label %land.rhs.i.i125.i

while.body.i122.i.while.cond.backedge.i143.i_crit_edge: ; preds = %while.body.i122.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i143.i

land.rhs.i.i125.i:                                ; preds = %while.body.i122.i
  %obj_type.i.i123.i = getelementptr inbounds %struct.media_entity, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %obj_type.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %obj_type.i.i123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i.i124.i = icmp eq i32 %62, 2
  br i1 %cmp.i.i124.i, label %if.else.i129.i, label %land.rhs.i.i125.i.while.cond.backedge.i143.i_crit_edge

land.rhs.i.i125.i.while.cond.backedge.i143.i_crit_edge: ; preds = %land.rhs.i.i125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i143.i

if.else.i129.i:                                   ; preds = %land.rhs.i.i125.i
  %ops.i126.i = getelementptr inbounds %struct.v4l2_subdev, ptr %60, i32 0, i32 6
  %63 = ptrtoint ptr %ops.i126.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i126.i, align 4
  %video.i127.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %video.i127.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %video.i127.i, align 4
  %tobool11.not.i128.i = icmp eq ptr %66, null
  br i1 %tobool11.not.i128.i, label %if.else.i129.i.while.cond.backedge.i143.i_crit_edge, label %land.lhs.true.i132.i

if.else.i129.i.while.cond.backedge.i143.i_crit_edge: ; preds = %if.else.i129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i143.i

land.lhs.true.i132.i:                             ; preds = %if.else.i129.i
  %s_stream.i130.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %s_stream.i130.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_stream.i130.i, align 4
  %tobool14.not.i131.i = icmp eq ptr %68, null
  br i1 %tobool14.not.i131.i, label %land.lhs.true.i132.i.while.cond.backedge.i143.i_crit_edge, label %if.else16.i134.i

land.lhs.true.i132.i.while.cond.backedge.i143.i_crit_edge: ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i143.i

if.else16.i134.i:                                 ; preds = %land.lhs.true.i132.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool17.not.i133.i = icmp eq ptr %69, null
  br i1 %tobool17.not.i133.i, label %if.else16.i134.i.if.else24.i138.i_crit_edge, label %land.lhs.true18.i137.i

if.else16.i134.i.if.else24.i138.i_crit_edge:      ; preds = %if.else16.i134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24.i138.i

land.lhs.true18.i137.i:                           ; preds = %if.else16.i134.i
  %s_stream19.i135.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %s_stream19.i135.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_stream19.i135.i, align 4
  %tobool20.not.i136.i = icmp eq ptr %71, null
  br i1 %tobool20.not.i136.i, label %land.lhs.true18.i137.i.if.else24.i138.i_crit_edge, label %land.lhs.true18.i137.i.while.cond.backedge.sink.split.i141.i_crit_edge

land.lhs.true18.i137.i.while.cond.backedge.sink.split.i141.i_crit_edge: ; preds = %land.lhs.true18.i137.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.sink.split.i141.i

land.lhs.true18.i137.i.if.else24.i138.i_crit_edge: ; preds = %land.lhs.true18.i137.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24.i138.i

if.else24.i138.i:                                 ; preds = %land.lhs.true18.i137.i.if.else24.i138.i_crit_edge, %if.else16.i134.i.if.else24.i138.i_crit_edge
  br label %while.cond.backedge.sink.split.i141.i

while.cond.backedge.sink.split.i141.i:            ; preds = %if.else24.i138.i, %land.lhs.true18.i137.i.while.cond.backedge.sink.split.i141.i_crit_edge
  %.sink.i139.i = phi ptr [ %68, %if.else24.i138.i ], [ %71, %land.lhs.true18.i137.i.while.cond.backedge.sink.split.i141.i_crit_edge ]
  %call23.i140.i = tail call i32 %.sink.i139.i(ptr noundef nonnull %60, i32 noundef 0) #4
  br label %while.cond.backedge.i143.i

while.cond.backedge.i143.i:                       ; preds = %while.cond.backedge.sink.split.i141.i, %land.lhs.true.i132.i.while.cond.backedge.i143.i_crit_edge, %if.else.i129.i.while.cond.backedge.i143.i_crit_edge, %land.rhs.i.i125.i.while.cond.backedge.i143.i_crit_edge, %while.body.i122.i.while.cond.backedge.i143.i_crit_edge
  %72 = ptrtoint ptr %pipe_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pipe_size.i, align 4
  %tobool.not.i142.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i142.i, label %while.cond.backedge.i143.i.cleanup_crit_edge, label %while.cond.backedge.i143.i.while.body.i122.i_crit_edge

while.cond.backedge.i143.i.while.body.i122.i_crit_edge: ; preds = %while.cond.backedge.i143.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i122.i

while.cond.backedge.i143.i.cleanup_crit_edge:     ; preds = %while.cond.backedge.i143.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

vimc_streamer_pipeline_init.exit:                 ; preds = %if.then41.i.vimc_streamer_pipeline_init.exit_crit_edge, %if.end29.i.vimc_streamer_pipeline_init.exit_crit_edge
  %.str.11.sink.i = phi ptr [ @.str.11, %if.then41.i.vimc_streamer_pipeline_init.exit_crit_edge ], [ @.str.8, %if.end29.i.vimc_streamer_pipeline_init.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -32, %if.then41.i.vimc_streamer_pipeline_init.exit_crit_edge ], [ %call26.i, %if.end29.i.vimc_streamer_pipeline_init.exit_crit_edge ]
  %74 = ptrtoint ptr %ved.addr.0164.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ved.addr.0164.i, align 4
  %76 = ptrtoint ptr %ent.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ent.i, align 4
  %name50.i = getelementptr inbounds %struct.media_entity, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %name50.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name50.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull %.str.11.sink.i, ptr noundef %79) #7
  tail call fastcc void @vimc_streamer_pipeline_terminate(ptr noundef %stream) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %tobool7.not = icmp eq i32 %retval.0.ph.i, 0
  br i1 %tobool7.not, label %vimc_streamer_pipeline_init.exit.if.end9_crit_edge, label %vimc_streamer_pipeline_init.exit.cleanup_crit_edge

vimc_streamer_pipeline_init.exit.cleanup_crit_edge: ; preds = %vimc_streamer_pipeline_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

vimc_streamer_pipeline_init.exit.if.end9_crit_edge: ; preds = %vimc_streamer_pipeline_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %vimc_streamer_pipeline_init.exit.if.end9_crit_edge, %if.then41.i.if.end9_crit_edge
  %call10 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vimc_streamer_thread, ptr noundef nonnull %stream, i32 noundef -1, ptr noundef nonnull @.str) #4
  %cmp.i68 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then18, label %if.end14

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 @wake_up_process(ptr noundef %call10) #4
  br label %cleanup.sink.split

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %kthread23 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call10, ptr %kthread23, align 4
  %81 = ptrtoint ptr %call10 to i32
  %82 = ptrtoint ptr %ved to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ved, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.1, i32 noundef %81) #7
  tail call fastcc void @vimc_streamer_pipeline_terminate(ptr noundef nonnull %stream)
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  br i1 %tobool24.not, label %if.else.cleanup_crit_edge, label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.else
  %call28 = tail call i32 @kthread_stop(ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.if.end42_crit_edge, label %do.body31

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.body31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_streamer_s_stream.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_streamer_s_stream, %if.then37)) #4
          to label %if.end42 [label %if.then37], !srcloc !37

if.then37:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %ved to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ved, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_streamer_s_stream.__UNIQUE_ID_ddebug293, ptr noundef %85, ptr noundef nonnull @.str.7, i32 noundef %call28) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body31, %if.end26.if.end42_crit_edge
  %86 = ptrtoint ptr %kthread23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %kthread23, align 4
  %pipe_size.i70 = getelementptr inbounds %struct.vimc_stream, ptr %stream, i32 0, i32 2
  %87 = ptrtoint ptr %pipe_size.i70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pipe_size.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not49.i = icmp eq i32 %88, 0
  br i1 %tobool.not49.i, label %if.end42.cleanup_crit_edge, label %if.end42.while.body.i74_crit_edge

if.end42.while.body.i74_crit_edge:                ; preds = %if.end42
  br label %while.body.i74

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.i74:                                   ; preds = %while.cond.backedge.i.while.body.i74_crit_edge, %if.end42.while.body.i74_crit_edge
  %89 = phi i32 [ %107, %while.cond.backedge.i.while.body.i74_crit_edge ], [ %88, %if.end42.while.body.i74_crit_edge ]
  %dec.i = add i32 %89, -1
  %90 = ptrtoint ptr %pipe_size.i70 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %dec.i, ptr %pipe_size.i70, align 4
  %arrayidx.i71 = getelementptr %struct.vimc_stream, ptr %stream, i32 0, i32 1, i32 %dec.i
  %91 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i71, align 4
  store ptr null, ptr %arrayidx.i71, align 4
  %ent.i72 = getelementptr inbounds %struct.vimc_ent_device, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %ent.i72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ent.i72, align 4
  %tobool.not.i.i73 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i73, label %while.body.i74.while.cond.backedge.i_crit_edge, label %land.rhs.i.i

while.body.i74.while.cond.backedge.i_crit_edge:   ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %while.body.i74
  %obj_type.i.i75 = getelementptr inbounds %struct.media_entity, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %obj_type.i.i75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %obj_type.i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp.i.i76 = icmp eq i32 %96, 2
  br i1 %cmp.i.i76, label %if.else.i79, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i

if.else.i79:                                      ; preds = %land.rhs.i.i
  %ops.i77 = getelementptr inbounds %struct.v4l2_subdev, ptr %94, i32 0, i32 6
  %97 = ptrtoint ptr %ops.i77 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i77, align 4
  %video.i78 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %video.i78 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %video.i78, align 4
  %tobool11.not.i = icmp eq ptr %100, null
  br i1 %tobool11.not.i, label %if.else.i79.while.cond.backedge.i_crit_edge, label %land.lhs.true.i81

if.else.i79.while.cond.backedge.i_crit_edge:      ; preds = %if.else.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i

land.lhs.true.i81:                                ; preds = %if.else.i79
  %s_stream.i80 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %100, i32 0, i32 10
  %101 = ptrtoint ptr %s_stream.i80 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_stream.i80, align 4
  %tobool14.not.i = icmp eq ptr %102, null
  br i1 %tobool14.not.i, label %land.lhs.true.i81.while.cond.backedge.i_crit_edge, label %if.else16.i

land.lhs.true.i81.while.cond.backedge.i_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.i

if.else16.i:                                      ; preds = %land.lhs.true.i81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool17.not.i = icmp eq ptr %103, null
  br i1 %tobool17.not.i, label %if.else16.i.if.else24.i_crit_edge, label %land.lhs.true18.i

if.else16.i.if.else24.i_crit_edge:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24.i

land.lhs.true18.i:                                ; preds = %if.else16.i
  %s_stream19.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %103, i32 0, i32 10
  %104 = ptrtoint ptr %s_stream19.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_stream19.i, align 4
  %tobool20.not.i = icmp eq ptr %105, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.if.else24.i_crit_edge, label %land.lhs.true18.i.while.cond.backedge.sink.split.i_crit_edge

land.lhs.true18.i.while.cond.backedge.sink.split.i_crit_edge: ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.sink.split.i

land.lhs.true18.i.if.else24.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24.i

if.else24.i:                                      ; preds = %land.lhs.true18.i.if.else24.i_crit_edge, %if.else16.i.if.else24.i_crit_edge
  br label %while.cond.backedge.sink.split.i

while.cond.backedge.sink.split.i:                 ; preds = %if.else24.i, %land.lhs.true18.i.while.cond.backedge.sink.split.i_crit_edge
  %.sink.i82 = phi ptr [ %102, %if.else24.i ], [ %105, %land.lhs.true18.i.while.cond.backedge.sink.split.i_crit_edge ]
  %call23.i = tail call i32 %.sink.i82(ptr noundef nonnull %94, i32 noundef 0) #4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %while.cond.backedge.sink.split.i, %land.lhs.true.i81.while.cond.backedge.i_crit_edge, %if.else.i79.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %while.body.i74.while.cond.backedge.i_crit_edge
  %106 = ptrtoint ptr %pipe_size.i70 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pipe_size.i70, align 4
  %tobool.not.i83 = icmp eq i32 %107, 0
  br i1 %tobool.not.i83, label %while.cond.backedge.i.cleanup_crit_edge, label %while.cond.backedge.i.while.body.i74_crit_edge

while.cond.backedge.i.while.body.i74_crit_edge:   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i74

while.cond.backedge.i.cleanup_crit_edge:          ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then18, %if.end14
  %call10.sink = phi ptr [ %call10, %if.end14 ], [ null, %if.then18 ]
  %retval.0.ph = phi i32 [ 0, %if.end14 ], [ %81, %if.then18 ]
  %108 = ptrtoint ptr %kthread23 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call10.sink, ptr %kthread23, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.backedge.i.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %vimc_streamer_pipeline_init.exit.cleanup_crit_edge, %while.cond.backedge.i143.i.cleanup_crit_edge, %while.cond.backedge.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ %retval.0.ph.i, %vimc_streamer_pipeline_init.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %while.cond.backedge.i.cleanup_crit_edge ], [ -22, %while.cond.backedge.i.i.cleanup_crit_edge ], [ -22, %while.cond.backedge.i143.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_streamer_thread(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #4
  %pipe_size = getelementptr inbounds %struct.vimc_stream, ptr %data, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %__here, %entry
  %frame.0 = phi ptr [ null, %entry ], [ %frame.2, %__here ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.if.end.i_crit_edge

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_check_no_locks_held() #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 57) #4
  %6 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %10 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !38

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %9) #4
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !39

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #4
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call2 = tail call zeroext i1 @kthread_should_stop() #4
  br i1 %call2, label %for.end74, label %if.end

if.end:                                           ; preds = %try_to_freeze.exit
  %11 = ptrtoint ptr %pipe_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe_size, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %lor.lhs.false.for.cond3_crit_edge, %if.end
  %i.0.in = phi i32 [ %12, %if.end ], [ %i.0, %lor.lhs.false.for.cond3_crit_edge ]
  %frame.1 = phi ptr [ %frame.0, %if.end ], [ %call6, %lor.lhs.false.for.cond3_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %for.cond3.__here_crit_edge

for.cond3.__here_crit_edge:                       ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

for.body:                                         ; preds = %for.cond3
  %arrayidx = getelementptr %struct.vimc_stream, ptr %data, i32 0, i32 1, i32 %i.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %process_frame = getelementptr inbounds %struct.vimc_ent_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %process_frame to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %process_frame, align 4
  %call6 = tail call ptr %16(ptr noundef %14, ptr noundef %frame.1) #4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.body.__here_crit_edge, label %lor.lhs.false

for.body.__here_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

lor.lhs.false:                                    ; preds = %for.body
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false.__here_crit_edge, label %lor.lhs.false.for.cond3_crit_edge

lor.lhs.false.for.cond3_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond3

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %lor.lhs.false.__here_crit_edge, %for.body.__here_crit_edge, %for.cond3.__here_crit_edge
  %frame.2 = phi ptr [ %call6, %lor.lhs.false.__here_crit_edge ], [ null, %for.body.__here_crit_edge ], [ %frame.1, %for.cond3.__here_crit_edge ]
  %17 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i84 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i84 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@vimc_streamer_thread, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 2, ptr %22, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !40
  %call73 = tail call i32 @schedule_timeout(i32 noundef 1) #4
  br label %for.cond

for.end74:                                        ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vimc_streamer_pipeline_terminate(ptr nocapture noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_size = getelementptr inbounds %struct.vimc_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %pipe_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not49 = icmp eq i32 %1, 0
  br i1 %tobool.not49, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i32 [ %20, %while.cond.backedge.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %dec = add i32 %2, -1
  %3 = ptrtoint ptr %pipe_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %pipe_size, align 4
  %arrayidx = getelementptr %struct.vimc_stream, ptr %stream, i32 0, i32 1, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %ent = getelementptr inbounds %struct.vimc_ent_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ent, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %while.body.while.cond.backedge_crit_edge, label %land.rhs.i

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

land.rhs.i:                                       ; preds = %while.body
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.else, label %land.rhs.i.while.cond.backedge_crit_edge

land.rhs.i.while.cond.backedge_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.else:                                          ; preds = %land.rhs.i
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.else.while.cond.backedge_crit_edge, label %land.lhs.true

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_stream, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %land.lhs.true.while.cond.backedge_crit_edge, label %if.else16

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.else16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %if.else16.if.else24_crit_edge, label %land.lhs.true18

if.else16.if.else24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24

land.lhs.true18:                                  ; preds = %if.else16
  %s_stream19 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_stream19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_stream19, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %land.lhs.true18.if.else24_crit_edge, label %land.lhs.true18.while.cond.backedge.sink.split_crit_edge

land.lhs.true18.while.cond.backedge.sink.split_crit_edge: ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge.sink.split

land.lhs.true18.if.else24_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else24

if.else24:                                        ; preds = %land.lhs.true18.if.else24_crit_edge, %if.else16.if.else24_crit_edge
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %if.else24, %land.lhs.true18.while.cond.backedge.sink.split_crit_edge
  %.sink = phi ptr [ %15, %if.else24 ], [ %18, %land.lhs.true18.while.cond.backedge.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %7, i32 noundef 0) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %land.lhs.true.while.cond.backedge_crit_edge, %if.else.while.cond.backedge_crit_edge, %land.rhs.i.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %19 = ptrtoint ptr %pipe_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe_size, align 4
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vimc_is_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-streamer.c", i32 207, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vimc/vimc-streamer.c", i32 212, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vimc_streamer_s_stream._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vimc_streamer_s_stream._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vimc/vimc-streamer.c", i32 230, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vimc_streamer_s_stream.__UNIQUE_ID_ddebug293, !11, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vimc/vimc-streamer.c", i32 99, i32 5}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vimc_streamer_pipeline_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @vimc_streamer_pipeline_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/test-drivers/vimc/vimc-streamer.c", i32 111, i32 5}
!21 = !{ptr @vimc_streamer_pipeline_init._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vimc_streamer_pipeline_init._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vimc/vimc-streamer.c", i32 168, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148666487, i64 2148666492, i64 2148666505, i64 2148666549, i64 2148666583, i64 2148666604}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2156136993}
