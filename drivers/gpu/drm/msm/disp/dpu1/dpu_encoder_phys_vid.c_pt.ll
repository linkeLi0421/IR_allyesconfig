; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_encoder_phys = type { ptr, ptr, %struct.dpu_encoder_phys_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32, i32, i32, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, [5 x %struct.dpu_encoder_irq] }
%struct.dpu_encoder_phys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dpu_encoder_irq = type { ptr, i32, i32, %struct.dpu_irq_callback }
%struct.dpu_irq_callback = type { %struct.list_head, ptr, ptr }
%struct.dpu_enc_phys_init_params = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_encoder_virt_ops = type { ptr, ptr, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_merge_3d = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_merge_3d_ops }
%struct.dpu_hw_merge_3d_ops = type { ptr }
%struct.dpu_encoder_wait_info = type { ptr, ptr, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.intf_status = type { i8, i8, i32, i32 }
%struct.intf_timing_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.intf_prog_fetch = type { i8, i32 }

@dpu_encoder_phys_vid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013[drm:%s:%d] [dpu error]failed to create encoder due to invalid parameter\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_encoder_phys_vid_init\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c\00", [43 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_init._entry_ptr = internal global ptr @dpu_encoder_phys_vid_init._entry, section ".printk_index", align 4
@dpu_encoder_phys_vid_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013[drm:%s:%d] [dpu error]failed to create encoder due to memory allocation error\0A\00", [46 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_init._entry_ptr.5 = internal global ptr @dpu_encoder_phys_vid_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enc%d intf%d \0A\00", [17 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[drm:%s:%d] enc%d intf%d \0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vsync_irq\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"underrun\00", [23 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&phys_enc->pending_kickoff_wq\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"enc%d intf%d created intf idx:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[drm:%s:%d] enc%d intf%d created intf idx:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enc%d intf%d caching mode:\0A\00", [36 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_mode_set.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.2, ptr @.str.14, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_encoder_phys_vid_mode_set\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm:%s:%d] enc%d intf%d caching mode:\0A\00", [56 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_mode_fixup.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.17, ptr @.str.2, ptr @.str.6, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_encoder_phys_vid_mode_fixup\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.18, ptr @.str.2, ptr @.str.6, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpu_encoder_phys_vid_enable\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"enc%d intf%d update pending flush ctl %d intf %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[drm:%s:%d] enc%d intf%d update pending flush ctl %d intf %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_setup_timing_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dpu_encoder_phys_vid_setup_timing_engine\00", [55 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_setup_timing_engine._entry_ptr = internal global ptr @dpu_encoder_phys_vid_setup_timing_engine._entry, section ".printk_index", align 4
@dpu_encoder_phys_vid_setup_timing_engine._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[drm:%s:%d] [dpu error]timing engine setup is not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_setup_timing_engine._entry_ptr.25 = internal global ptr @dpu_encoder_phys_vid_setup_timing_engine._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enc%d intf%d enabling mode:\0A\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[drm:%s:%d] enc%d intf%d enabling mode:\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"enc%d intf%d split_role %d, halve horizontal %d %d %d %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.2, ptr @.str.28, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[drm:%s:%d] enc%d intf%d split_role %d, halve horizontal %d %d %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enc%d intf%d fmt_fourcc 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.2, ptr @.str.30, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm:%s:%d] enc%d intf%d fmt_fourcc 0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@drm_mode_to_intf_timing_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013[drm:%s:%d] [dpu error]invalid params - hstart:%d,hend:%d,htot:%d,hdisplay:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drm_mode_to_intf_timing_params\00", [33 x i8] zeroinitializer }, align 32
@drm_mode_to_intf_timing_params._entry_ptr = internal global ptr @drm_mode_to_intf_timing_params._entry, section ".printk_index", align 4
@drm_mode_to_intf_timing_params._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]vstart:%d,vend:%d,vtot:%d,vdisplay:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@drm_mode_to_intf_timing_params._entry_ptr.36 = internal global ptr @drm_mode_to_intf_timing_params._entry.34, section ".printk_index", align 4
@programmable_fetch_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"enc%d intf%d vfp_fetch_lines %u vfp_fetch_start_vsync_counter %u\0A\00", [62 x i8] zeroinitializer }, align 32
@programmable_fetch_config.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.38, ptr @.str.2, ptr @.str.37, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"programmable_fetch_config\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"[drm:%s:%d] enc%d intf%d vfp_fetch_lines %u vfp_fetch_start_vsync_counter %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"enc%d intf%d prog fetch is not needed, large vbp+vsw\0A\00", [42 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.2, ptr @.str.40, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"programmable_fetch_get_num_lines\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[drm:%s:%d] enc%d intf%d prog fetch is not needed, large vbp+vsw\0A\00", [62 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@programmable_fetch_get_num_lines._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014[drm:%s:%d] low vbp+vfp may lead to perf issues in some cases\0A\00", [63 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines._entry_ptr = internal global ptr @programmable_fetch_get_num_lines._entry, section ".printk_index", align 4
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"enc%d intf%d less vfp than fetch req, using entire vfp\0A\00", [40 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[drm:%s:%d] enc%d intf%d less vfp than fetch req, using entire vfp\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"enc%d intf%d room in vfp for needed prefetch\0A\00", [50 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.2, ptr @.str.46, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[drm:%s:%d] enc%d intf%d room in vfp for needed prefetch\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"enc%d intf%d v_front_porch %u v_back_porch %u vsync_pulse_width %u\0A\00", [60 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.2, ptr @.str.48, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[drm:%s:%d] enc%d intf%d v_front_porch %u v_back_porch %u vsync_pulse_width %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"enc%d intf%d wc_lines %u needed_vfp_lines %u actual_vfp_lines %u\0A\00", [62 x i8] zeroinitializer }, align 32
@programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.2, ptr @.str.50, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"[drm:%s:%d] enc%d intf%d wc_lines %u needed_vfp_lines %u actual_vfp_lines %u\0A\00", [50 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder/device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpu_encoder_phys_vid_disable\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_disable._entry_ptr = internal global ptr @dpu_encoder_phys_vid_disable._entry, section ".printk_index", align 4
@dpu_encoder_phys_vid_disable._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[drm:%s:%d] [dpu error]invalid hw_intf %d hw_ctl %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_disable._entry_ptr.56 = internal global ptr @dpu_encoder_phys_vid_disable._entry.54, section ".printk_index", align 4
@dpu_encoder_phys_vid_disable._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[drm:%s:%d] [dpu error]already disabled\0A\00", [53 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_disable._entry_ptr.59 = internal global ptr @dpu_encoder_phys_vid_disable._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wait disable failed: id:%u intf:%d ret:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_destroy.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.61, ptr @.str.2, ptr @.str.6, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpu_encoder_phys_vid_destroy\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"id:%u enable=%d/%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed: id:%u intf:%d ret:%d enable:%d refcnt:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_wait_for_commit_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[drm:%s:%d] [dpu error]vblank timeout\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dpu_encoder_phys_vid_wait_for_commit_done\00", [54 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_wait_for_commit_done._entry_ptr = internal global ptr @dpu_encoder_phys_vid_wait_for_commit_done._entry, section ".printk_index", align 4
@__tracepoint_dpu_enc_phys_vid_irq_ctrl = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_enc_phys_vid_irq_ctrl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_prepare_for_kickoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d ctl %d reset failure: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dpu_encoder_phys_vid_prepare_for_kickoff\00", [55 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_vid_prepare_for_kickoff._entry_ptr = internal global ptr @dpu_encoder_phys_vid_prepare_for_kickoff._entry, section ".printk_index", align 4
@__tracepoint_dpu_enc_phys_vid_post_kickoff = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_phys_vid_post_kickoff.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vblank_irq\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@trace_tracing_mark_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 704, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 710, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 717, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 734, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 739, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 745, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 748, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 374, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 233, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 428, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 451, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 252, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 258, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 262, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 271, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 281, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 53, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 57, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 219, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 160, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 165, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 167, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 171, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 175, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 179, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 552, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 557, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 566, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 588, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 464, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 403, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 414, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 513, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 611, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 108, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 539, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [56 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 319, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @dpu_encoder_phys_vid_disable._entry, ptr @dpu_encoder_phys_vid_disable._entry.54, ptr @dpu_encoder_phys_vid_disable._entry.57, ptr @dpu_encoder_phys_vid_disable._entry_ptr, ptr @dpu_encoder_phys_vid_disable._entry_ptr.56, ptr @dpu_encoder_phys_vid_disable._entry_ptr.59, ptr @dpu_encoder_phys_vid_init._entry, ptr @dpu_encoder_phys_vid_init._entry.3, ptr @dpu_encoder_phys_vid_init._entry_ptr, ptr @dpu_encoder_phys_vid_init._entry_ptr.5, ptr @dpu_encoder_phys_vid_prepare_for_kickoff._entry, ptr @dpu_encoder_phys_vid_prepare_for_kickoff._entry_ptr, ptr @dpu_encoder_phys_vid_setup_timing_engine._entry, ptr @dpu_encoder_phys_vid_setup_timing_engine._entry.23, ptr @dpu_encoder_phys_vid_setup_timing_engine._entry_ptr, ptr @dpu_encoder_phys_vid_setup_timing_engine._entry_ptr.25, ptr @dpu_encoder_phys_vid_wait_for_commit_done._entry, ptr @dpu_encoder_phys_vid_wait_for_commit_done._entry_ptr, ptr @drm_mode_to_intf_timing_params._entry, ptr @drm_mode_to_intf_timing_params._entry.34, ptr @drm_mode_to_intf_timing_params._entry_ptr, ptr @drm_mode_to_intf_timing_params._entry_ptr.36, ptr @programmable_fetch_get_num_lines._entry, ptr @programmable_fetch_get_num_lines._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dpu_encoder_phys_vid_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_setup_timing_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_setup_timing_engine._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_mode_to_intf_timing_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_mode_to_intf_timing_params._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @programmable_fetch_get_num_lines._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_disable._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_disable._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_wait_for_commit_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_vid_prepare_for_kickoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_encoder_phys_vid_init(ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 704) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 468) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 710) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %hw_mdp = getelementptr inbounds %struct.dpu_kms, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %hw_mdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_mdp, align 8
  %hw_mdptop = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %hw_mdptop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %hw_mdptop, align 8
  %intf_idx = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_idx, align 4
  %intf_idx12 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %intf_idx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %intf_idx12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %9 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %land.lhs.true.land.lhs.true20_crit_edge, label %cond.true

land.lhs.true.land.lhs.true20_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %cond.true, %land.lhs.true.land.lhs.true20_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ -1, %land.lhs.true.land.lhs.true20_crit_edge ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_intf, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %land.lhs.true20.cond.end25_crit_edge, label %cond.true22

land.lhs.true20.cond.end25_crit_edge:             ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end25

cond.true22:                                      ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  %sub = add i32 %17, -1
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true22, %land.lhs.true20.cond.end25_crit_edge
  %cond26 = phi i32 [ %sub, %cond.true22 ], [ -1, %land.lhs.true20.cond.end25_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %cond, i32 noundef %cond26) #10
  br label %do.end61

do.body27:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_init, %land.lhs.true35)) #10
          to label %do.end61 [label %land.lhs.true35], !srcloc !162

land.lhs.true35:                                  ; preds = %do.body27
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %tobool37.not = icmp eq ptr %19, null
  br i1 %tobool37.not, label %land.lhs.true35.land.lhs.true46_crit_edge, label %cond.true38

land.lhs.true35.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true46

cond.true38:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  %base40 = getelementptr inbounds %struct.drm_encoder, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %base40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base40, align 4
  br label %land.lhs.true46

land.lhs.true46:                                  ; preds = %cond.true38, %land.lhs.true35.land.lhs.true46_crit_edge
  %cond44 = phi i32 [ %21, %cond.true38 ], [ -1, %land.lhs.true35.land.lhs.true46_crit_edge ]
  %hw_intf47 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %hw_intf47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_intf47, align 4
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %land.lhs.true46.cond.end54_crit_edge, label %cond.true49

land.lhs.true46.cond.end54_crit_edge:             ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end54

cond.true49:                                      ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  %idx51 = getelementptr inbounds %struct.dpu_hw_intf, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %idx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx51, align 4
  %sub52 = add i32 %25, -1
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true49, %land.lhs.true46.cond.end54_crit_edge
  %cond55 = phi i32 [ %sub52, %cond.true49 ], [ -1, %land.lhs.true46.cond.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 717, i32 noundef %cond44, i32 noundef %cond55) #10
  br label %do.end61

do.end61:                                         ; preds = %cond.end54, %do.body27, %cond.end25
  %is_master.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %is_master.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dpu_encoder_phys_vid_is_master, ptr %is_master.i, align 8
  %mode_set.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %mode_set.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dpu_encoder_phys_vid_mode_set, ptr %mode_set.i, align 8
  %mode_fixup.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %mode_fixup.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_encoder_phys_vid_mode_fixup, ptr %mode_fixup.i, align 4
  %enable.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_encoder_phys_vid_enable, ptr %enable.i, align 4
  %disable.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_encoder_phys_vid_disable, ptr %disable.i, align 8
  %destroy.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 8
  %31 = ptrtoint ptr %destroy.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dpu_encoder_phys_vid_destroy, ptr %destroy.i, align 8
  %get_hw_resources.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 9
  %32 = ptrtoint ptr %get_hw_resources.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dpu_encoder_phys_vid_get_hw_resources, ptr %get_hw_resources.i, align 4
  %control_vblank_irq.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 10
  %33 = ptrtoint ptr %control_vblank_irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dpu_encoder_phys_vid_control_vblank_irq, ptr %control_vblank_irq.i, align 8
  %wait_for_commit_done.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 11
  %34 = ptrtoint ptr %wait_for_commit_done.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dpu_encoder_phys_vid_wait_for_commit_done, ptr %wait_for_commit_done.i, align 4
  %wait_for_vblank.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 13
  %35 = ptrtoint ptr %wait_for_vblank.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dpu_encoder_phys_vid_wait_for_vblank, ptr %wait_for_vblank.i, align 4
  %wait_for_tx_complete.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 12
  %36 = ptrtoint ptr %wait_for_tx_complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @dpu_encoder_phys_vid_wait_for_vblank, ptr %wait_for_tx_complete.i, align 8
  %irq_control.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 18
  %37 = ptrtoint ptr %irq_control.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dpu_encoder_phys_vid_irq_control, ptr %irq_control.i, align 8
  %prepare_for_kickoff.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 14
  %38 = ptrtoint ptr %prepare_for_kickoff.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dpu_encoder_phys_vid_prepare_for_kickoff, ptr %prepare_for_kickoff.i, align 8
  %handle_post_kickoff.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 15
  %39 = ptrtoint ptr %handle_post_kickoff.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dpu_encoder_phys_vid_handle_post_kickoff, ptr %handle_post_kickoff.i, align 4
  %needs_single_flush.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 17
  %40 = ptrtoint ptr %needs_single_flush.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dpu_encoder_phys_vid_needs_single_flush, ptr %needs_single_flush.i, align 4
  %get_line_count.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 21
  %41 = ptrtoint ptr %get_line_count.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @dpu_encoder_phys_vid_get_line_count, ptr %get_line_count.i, align 4
  %get_frame_count.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 22
  %42 = ptrtoint ptr %get_frame_count.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dpu_encoder_phys_vid_get_frame_count, ptr %get_frame_count.i, align 8
  %parent62 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 1
  %43 = ptrtoint ptr %parent62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent62, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %call7.i.i, align 8
  %parent_ops = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 2
  %46 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent_ops, align 4
  %parent_ops64 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %parent_ops64 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %parent_ops64, align 4
  %49 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p, align 4
  %dpu_kms66 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %dpu_kms66 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dpu_kms66, align 8
  %split_role = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 3
  %52 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %split_role, align 4
  %split_role67 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 10
  %54 = ptrtoint ptr %split_role67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %split_role67, align 4
  %intf_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 11
  %55 = ptrtoint ptr %intf_mode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %intf_mode, align 8
  %enc_spinlock = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 5
  %56 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %enc_spinlock, align 4
  %enc_spinlock68 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 13
  %58 = ptrtoint ptr %enc_spinlock68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %enc_spinlock68, align 8
  %cb = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3
  %59 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %cb, ptr %cb, align 4
  %prev.i = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cb, ptr %prev.i, align 8
  %irq_idx = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 2
  %61 = ptrtoint ptr %irq_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -22, ptr %irq_idx, align 8
  %arg = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %arg, align 8
  %cb.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3
  %63 = ptrtoint ptr %cb.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %cb.1, ptr %cb.1, align 8
  %prev.i.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %cb.1, ptr %prev.i.1, align 4
  %irq_idx.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 2
  %65 = ptrtoint ptr %irq_idx.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -22, ptr %irq_idx.1, align 4
  %arg.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3, i32 2
  %66 = ptrtoint ptr %arg.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %arg.1, align 4
  %cb.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3
  %67 = ptrtoint ptr %cb.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %cb.2, ptr %cb.2, align 4
  %prev.i.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cb.2, ptr %prev.i.2, align 8
  %irq_idx.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 2
  %69 = ptrtoint ptr %irq_idx.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -22, ptr %irq_idx.2, align 8
  %arg.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3, i32 2
  %70 = ptrtoint ptr %arg.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %arg.2, align 8
  %cb.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3
  %71 = ptrtoint ptr %cb.3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %cb.3, ptr %cb.3, align 8
  %prev.i.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cb.3, ptr %prev.i.3, align 4
  %irq_idx.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 2
  %73 = ptrtoint ptr %irq_idx.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -22, ptr %irq_idx.3, align 4
  %arg.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3, i32 2
  %74 = ptrtoint ptr %arg.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %arg.3, align 4
  %cb.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3
  %75 = ptrtoint ptr %cb.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %cb.4, ptr %cb.4, align 4
  %prev.i.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %cb.4, ptr %prev.i.4, align 8
  %irq_idx.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 2
  %77 = ptrtoint ptr %irq_idx.4 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -22, ptr %irq_idx.4, align 8
  %arg.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3, i32 2
  %78 = ptrtoint ptr %arg.4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %arg.4, align 8
  %irq71 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21
  %79 = ptrtoint ptr %irq71 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.9, ptr %irq71, align 8
  %intr_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1
  %80 = ptrtoint ptr %intr_idx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %intr_idx, align 4
  %func = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dpu_encoder_phys_vid_vblank_irq, ptr %func, align 4
  %arrayidx75 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2
  %82 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.10, ptr %arrayidx75, align 8
  %intr_idx77 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 1
  %83 = ptrtoint ptr %intr_idx77 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %intr_idx77, align 4
  %func79 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3, i32 1
  %84 = ptrtoint ptr %func79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @dpu_encoder_phys_vid_underrun_irq, ptr %func79, align 4
  %vblank_refcount = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vblank_refcount, i32 noundef 4) #10
  %85 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 0, ptr %vblank_refcount, align 8
  %pending_kickoff_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 19
  %call.i.i222 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #10
  %86 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 0, ptr %pending_kickoff_cnt, align 8
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %pending_kickoff_wq, ptr noundef nonnull @.str.11, ptr noundef nonnull @dpu_encoder_phys_vid_init.__key) #10
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 14
  %87 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %enable_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %88 = load i32, ptr @__drm_debug, align 4
  %and.i226 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %tobool.i227.not = icmp eq i32 %and.i226, 0
  br i1 %tobool.i227.not, label %do.body110, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %do.end61
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i, align 8
  %tobool89.not = icmp eq ptr %90, null
  br i1 %tobool89.not, label %land.lhs.true87.land.lhs.true98_crit_edge, label %cond.true90

land.lhs.true87.land.lhs.true98_crit_edge:        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true98

cond.true90:                                      ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  %base92 = getelementptr inbounds %struct.drm_encoder, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %base92 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %base92, align 4
  br label %land.lhs.true98

land.lhs.true98:                                  ; preds = %cond.true90, %land.lhs.true87.land.lhs.true98_crit_edge
  %cond96 = phi i32 [ %92, %cond.true90 ], [ -1, %land.lhs.true87.land.lhs.true98_crit_edge ]
  %hw_intf99 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 7
  %93 = ptrtoint ptr %hw_intf99 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_intf99, align 4
  %tobool100.not = icmp eq ptr %94, null
  br i1 %tobool100.not, label %land.lhs.true98.cond.end106_crit_edge, label %cond.true101

land.lhs.true98.cond.end106_crit_edge:            ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end106

cond.true101:                                     ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #12
  %idx103 = getelementptr inbounds %struct.dpu_hw_intf, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %idx103 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %idx103, align 4
  %sub104 = add i32 %96, -1
  br label %cond.end106

cond.end106:                                      ; preds = %cond.true101, %land.lhs.true98.cond.end106_crit_edge
  %cond107 = phi i32 [ %sub104, %cond.true101 ], [ -1, %land.lhs.true98.cond.end106_crit_edge ]
  %97 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %intf_idx, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %cond96, i32 noundef %cond107, i32 noundef %98) #10
  br label %cleanup

do.body110:                                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_init, %land.lhs.true124)) #10
          to label %cleanup [label %land.lhs.true124], !srcloc !162

land.lhs.true124:                                 ; preds = %do.body110
  %99 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call7.i.i, align 8
  %tobool126.not = icmp eq ptr %100, null
  br i1 %tobool126.not, label %land.lhs.true124.land.lhs.true135_crit_edge, label %cond.true127

land.lhs.true124.land.lhs.true135_crit_edge:      ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true135

cond.true127:                                     ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #12
  %base129 = getelementptr inbounds %struct.drm_encoder, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %base129 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base129, align 4
  br label %land.lhs.true135

land.lhs.true135:                                 ; preds = %cond.true127, %land.lhs.true124.land.lhs.true135_crit_edge
  %cond133 = phi i32 [ %102, %cond.true127 ], [ -1, %land.lhs.true124.land.lhs.true135_crit_edge ]
  %hw_intf136 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 7
  %103 = ptrtoint ptr %hw_intf136 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_intf136, align 4
  %tobool137.not = icmp eq ptr %104, null
  br i1 %tobool137.not, label %land.lhs.true135.cond.end143_crit_edge, label %cond.true138

land.lhs.true135.cond.end143_crit_edge:           ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end143

cond.true138:                                     ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  %idx140 = getelementptr inbounds %struct.dpu_hw_intf, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %idx140 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %idx140, align 4
  %sub141 = add i32 %106, -1
  br label %cond.end143

cond.end143:                                      ; preds = %cond.true138, %land.lhs.true135.cond.end143_crit_edge
  %cond144 = phi i32 [ %sub141, %cond.true138 ], [ -1, %land.lhs.true135.cond.end143_crit_edge ]
  %107 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %intf_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef %cond133, i32 noundef %cond144, i32 noundef %108) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end143, %do.body110, %cond.end106, %do.end7, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end7 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %cond.end143 ], [ %call7.i.i, %cond.end106 ], [ %call7.i.i, %do.body110 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_vblank_irq(ptr noundef %arg, i32 noundef %irq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ctl1 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %hw_ctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ctl1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %7, i1 noundef zeroext true)
  %parent_ops = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 3
  %8 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  tail call void %11(ptr noundef %13, ptr noundef %arg) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pending_kickoff_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #10
  %14 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %pending_kickoff_cnt, align 4
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 13
  %16 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enc_spinlock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #10
  %get_flush_register = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %get_flush_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_flush_register, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 %19(ptr noundef %1) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %flush_register.0 = phi i32 [ %call14, %if.then11 ], [ 0, %if.end.if.end15_crit_edge ]
  %get_pending_flush = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %get_pending_flush to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_pending_flush, align 4
  %call17 = tail call i32 %21(ptr noundef %1) #10
  %and = and i32 %call17, %flush_register.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %pending_kickoff_cnt, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_kickoff_cnt, ptr %pending_kickoff_cnt, i32 0, i32 -1, ptr elementtype(i32) %pending_kickoff_cnt) #10, !srcloc !164
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then19.if.end22_crit_edge, label %do.end11.i.i.i

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end11.i.i.i:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !165
  br label %if.end22

if.end22:                                         ; preds = %do.end11.i.i.i, %if.then19.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %23 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enc_spinlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call7) #10
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %pending_kickoff_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  %25 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent_ops, align 4
  %handle_frame_done = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %handle_frame_done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle_frame_done, align 4
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arg, align 4
  tail call void %28(ptr noundef %30, ptr noundef %arg, i32 noundef 1) #10
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %tgid28 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 69
  %33 = ptrtoint ptr %tgid28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tgid28, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %34, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_underrun_irq(ptr noundef %arg, i32 noundef %irq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_ops = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_ops, align 4
  %handle_underrun_virt = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %handle_underrun_virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_underrun_virt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  tail call void %3(ptr noundef %5, ptr noundef %arg) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_vid_is_master(ptr nocapture noundef readonly %phys_enc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %split_role = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %0 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp ne i32 %1, 2
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_mode_set(ptr noundef %phys_enc, ptr nocapture noundef readnone %mode, ptr noundef %adj_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %adj_mode, null
  br i1 %tobool.not, label %entry.if.end44_crit_edge, label %if.then

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then:                                          ; preds = %entry
  %cached_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9
  %0 = call ptr @memcpy(ptr %cached_mode, ptr %adj_mode, i32 112)
  tail call void @drm_mode_debug_printmodeline(ptr noundef nonnull %adj_mode) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %1 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body13, label %if.then1

if.then1:                                         ; preds = %if.then
  %tobool2.not = icmp eq ptr %phys_enc, null
  br i1 %tobool2.not, label %if.then1.cond.end11_crit_edge, label %land.lhs.true

if.then1.cond.end11_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end11

land.lhs.true:                                    ; preds = %if.then1
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.land.lhs.true6_crit_edge, label %cond.true

land.lhs.true.land.lhs.true6_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true6

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %land.lhs.true6

land.lhs.true6:                                   ; preds = %cond.true, %land.lhs.true.land.lhs.true6_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true6_crit_edge ], [ %5, %cond.true ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %6 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_intf, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true6.cond.end11_crit_edge, label %cond.true8

land.lhs.true6.cond.end11_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end11

cond.true8:                                       ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %sub = add i32 %9, -1
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true8, %land.lhs.true6.cond.end11_crit_edge, %if.then1.cond.end11_crit_edge
  %cond76 = phi i32 [ %cond.ph, %cond.true8 ], [ %cond.ph, %land.lhs.true6.cond.end11_crit_edge ], [ -1, %if.then1.cond.end11_crit_edge ]
  %cond12 = phi i32 [ %sub, %cond.true8 ], [ -1, %land.lhs.true6.cond.end11_crit_edge ], [ -1, %if.then1.cond.end11_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %cond76, i32 noundef %cond12) #10
  br label %if.end44

do.body13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_mode_set.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_mode_set, %if.then18)) #10
          to label %if.end44 [label %if.then18], !srcloc !162

if.then18:                                        ; preds = %do.body13
  %tobool19.not = icmp eq ptr %phys_enc, null
  br i1 %tobool19.not, label %if.then18.cond.end39_crit_edge, label %land.lhs.true20

if.then18.cond.end39_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39

land.lhs.true20:                                  ; preds = %if.then18
  %10 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys_enc, align 4
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %land.lhs.true20.land.lhs.true31_crit_edge, label %cond.true23

land.lhs.true20.land.lhs.true31_crit_edge:        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true31

cond.true23:                                      ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  %base25 = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base25, align 4
  br label %land.lhs.true31

land.lhs.true31:                                  ; preds = %cond.true23, %land.lhs.true20.land.lhs.true31_crit_edge
  %cond29.ph = phi i32 [ -1, %land.lhs.true20.land.lhs.true31_crit_edge ], [ %13, %cond.true23 ]
  %hw_intf32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %14 = ptrtoint ptr %hw_intf32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_intf32, align 4
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %land.lhs.true31.cond.end39_crit_edge, label %cond.true34

land.lhs.true31.cond.end39_crit_edge:             ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39

cond.true34:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  %idx36 = getelementptr inbounds %struct.dpu_hw_intf, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %idx36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx36, align 4
  %sub37 = add i32 %17, -1
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true34, %land.lhs.true31.cond.end39_crit_edge, %if.then18.cond.end39_crit_edge
  %cond2980 = phi i32 [ %cond29.ph, %cond.true34 ], [ %cond29.ph, %land.lhs.true31.cond.end39_crit_edge ], [ -1, %if.then18.cond.end39_crit_edge ]
  %cond40 = phi i32 [ %sub37, %cond.true34 ], [ -1, %land.lhs.true31.cond.end39_crit_edge ], [ -1, %if.then18.cond.end39_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_mode_set.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 374, i32 noundef %cond2980, i32 noundef %cond40) #10
  br label %if.end44

if.end44:                                         ; preds = %cond.end39, %do.body13, %cond.end11, %entry.if.end44_crit_edge
  %hw_intf46 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %18 = ptrtoint ptr %hw_intf46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_intf46, align 4
  %cap = getelementptr inbounds %struct.dpu_hw_intf, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cap, align 4
  %intr_vsync = getelementptr inbounds %struct.dpu_intf_cfg, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %intr_vsync to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intr_vsync, align 4
  %irq_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 0, i32 2
  %24 = ptrtoint ptr %irq_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irq_idx, align 4
  %25 = load ptr, ptr %cap, align 4
  %intr_underrun = getelementptr inbounds %struct.dpu_intf_cfg, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %intr_underrun to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intr_underrun, align 4
  %irq_idx51 = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 2, i32 2
  %28 = ptrtoint ptr %irq_idx51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq_idx51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_vid_mode_fixup(ptr noundef readonly %phys_enc, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adj_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %0 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %if.then.cond.end9_crit_edge, label %land.lhs.true

if.then.cond.end9_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

land.lhs.true:                                    ; preds = %if.then
  %1 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phys_enc, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true4_crit_edge, label %cond.true

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true4

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %cond.true, %land.lhs.true.land.lhs.true4_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true4_crit_edge ], [ %4, %cond.true ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %5 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_intf, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true4.cond.end9_crit_edge, label %cond.true6

land.lhs.true4.cond.end9_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true6:                                       ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %sub = add i32 %8, -1
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %land.lhs.true4.cond.end9_crit_edge, %if.then.cond.end9_crit_edge
  %cond57 = phi i32 [ %cond.ph, %cond.true6 ], [ %cond.ph, %land.lhs.true4.cond.end9_crit_edge ], [ -1, %if.then.cond.end9_crit_edge ]
  %cond10 = phi i32 [ %sub, %cond.true6 ], [ -1, %land.lhs.true4.cond.end9_crit_edge ], [ -1, %if.then.cond.end9_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %cond57, i32 noundef %cond10) #10
  br label %do.end40

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_mode_fixup.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_mode_fixup, %if.then16)) #10
          to label %do.end40 [label %if.then16], !srcloc !162

if.then16:                                        ; preds = %do.body11
  %tobool17.not = icmp eq ptr %phys_enc, null
  br i1 %tobool17.not, label %if.then16.cond.end37_crit_edge, label %land.lhs.true18

if.then16.cond.end37_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

land.lhs.true18:                                  ; preds = %if.then16
  %9 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phys_enc, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %land.lhs.true18.land.lhs.true29_crit_edge, label %cond.true21

land.lhs.true18.land.lhs.true29_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29

cond.true21:                                      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  %base23 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base23, align 4
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %cond.true21, %land.lhs.true18.land.lhs.true29_crit_edge
  %cond27.ph = phi i32 [ -1, %land.lhs.true18.land.lhs.true29_crit_edge ], [ %12, %cond.true21 ]
  %hw_intf30 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %13 = ptrtoint ptr %hw_intf30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_intf30, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %land.lhs.true29.cond.end37_crit_edge, label %cond.true32

land.lhs.true29.cond.end37_crit_edge:             ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

cond.true32:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  %idx34 = getelementptr inbounds %struct.dpu_hw_intf, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %idx34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx34, align 4
  %sub35 = add i32 %16, -1
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %land.lhs.true29.cond.end37_crit_edge, %if.then16.cond.end37_crit_edge
  %cond2761 = phi i32 [ %cond27.ph, %cond.true32 ], [ %cond27.ph, %land.lhs.true29.cond.end37_crit_edge ], [ -1, %if.then16.cond.end37_crit_edge ]
  %cond38 = phi i32 [ %sub35, %cond.true32 ], [ -1, %land.lhs.true29.cond.end37_crit_edge ], [ -1, %if.then16.cond.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_mode_fixup.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17, i32 noundef 233, i32 noundef %cond2761, i32 noundef %cond38) #10
  br label %do.end40

do.end40:                                         ; preds = %cond.end37, %do.body11, %cond.end9
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_enable(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %0 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ctl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %2 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %if.then.cond.end9_crit_edge, label %land.lhs.true

if.then.cond.end9_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

land.lhs.true:                                    ; preds = %if.then
  %3 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phys_enc, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true4_crit_edge, label %cond.true

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true4

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %cond.true, %land.lhs.true.land.lhs.true4_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true4_crit_edge ], [ %6, %cond.true ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %7 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_intf, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true4.cond.end9_crit_edge, label %cond.true6

land.lhs.true4.cond.end9_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true6:                                       ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %sub = add i32 %10, -1
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %land.lhs.true4.cond.end9_crit_edge, %if.then.cond.end9_crit_edge
  %cond239 = phi i32 [ %cond.ph, %cond.true6 ], [ %cond.ph, %land.lhs.true4.cond.end9_crit_edge ], [ -1, %if.then.cond.end9_crit_edge ]
  %cond10 = phi i32 [ %sub, %cond.true6 ], [ -1, %land.lhs.true4.cond.end9_crit_edge ], [ -1, %if.then.cond.end9_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %cond239, i32 noundef %cond10) #10
  br label %do.end41

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_enable, %if.then16)) #10
          to label %do.end41 [label %if.then16], !srcloc !162

if.then16:                                        ; preds = %do.body11
  %tobool17.not = icmp eq ptr %phys_enc, null
  br i1 %tobool17.not, label %if.then16.cond.end37_crit_edge, label %land.lhs.true18

if.then16.cond.end37_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

land.lhs.true18:                                  ; preds = %if.then16
  %11 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phys_enc, align 4
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %land.lhs.true18.land.lhs.true29_crit_edge, label %cond.true21

land.lhs.true18.land.lhs.true29_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29

cond.true21:                                      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  %base23 = getelementptr inbounds %struct.drm_encoder, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base23, align 4
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %cond.true21, %land.lhs.true18.land.lhs.true29_crit_edge
  %cond27.ph = phi i32 [ -1, %land.lhs.true18.land.lhs.true29_crit_edge ], [ %14, %cond.true21 ]
  %hw_intf30 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %15 = ptrtoint ptr %hw_intf30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_intf30, align 4
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %land.lhs.true29.cond.end37_crit_edge, label %cond.true32

land.lhs.true29.cond.end37_crit_edge:             ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

cond.true32:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  %idx34 = getelementptr inbounds %struct.dpu_hw_intf, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %idx34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx34, align 4
  %sub35 = add i32 %18, -1
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %land.lhs.true29.cond.end37_crit_edge, %if.then16.cond.end37_crit_edge
  %cond27243 = phi i32 [ %cond27.ph, %cond.true32 ], [ %cond27.ph, %land.lhs.true29.cond.end37_crit_edge ], [ -1, %if.then16.cond.end37_crit_edge ]
  %cond38 = phi i32 [ %sub35, %cond.true32 ], [ -1, %land.lhs.true29.cond.end37_crit_edge ], [ -1, %if.then16.cond.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18, i32 noundef 428, i32 noundef %cond27243, i32 noundef %cond38) #10
  br label %do.end41

do.end41:                                         ; preds = %cond.end37, %do.body11, %cond.end9
  %hw_intf42 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %19 = ptrtoint ptr %hw_intf42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_intf42, align 4
  %enable_timing = getelementptr inbounds %struct.dpu_hw_intf, ptr %20, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %enable_timing to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_timing, align 4
  %tobool43.not = icmp eq ptr %22, null
  br i1 %tobool43.not, label %do.end61, label %if.end77, !prof !166

do.end61:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 430, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end77:                                         ; preds = %do.end41
  %idx79 = getelementptr inbounds %struct.dpu_hw_intf, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %idx79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx79, align 4
  tail call void @dpu_encoder_helper_split_config(ptr noundef %phys_enc, i32 noundef %24) #10
  tail call fastcc void @dpu_encoder_phys_vid_setup_timing_engine(ptr noundef %phys_enc)
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %25 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cond = icmp eq i32 %26, 2
  br i1 %cond, label %if.end77.do.body99_crit_edge, label %if.end84

if.end77.do.body99_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

if.end84:                                         ; preds = %if.end77
  %update_pending_flush_intf = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9, i32 5
  %27 = ptrtoint ptr %update_pending_flush_intf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_pending_flush_intf, align 4
  %29 = ptrtoint ptr %hw_intf42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_intf42, align 4
  %idx87 = getelementptr inbounds %struct.dpu_hw_intf, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %idx87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx87, align 4
  tail call void %28(ptr noundef %1, i32 noundef %32) #10
  %update_pending_flush_merge_3d = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9, i32 6
  %33 = ptrtoint ptr %update_pending_flush_merge_3d to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %update_pending_flush_merge_3d, align 4
  %tobool89.not = icmp eq ptr %34, null
  br i1 %tobool89.not, label %if.end84.do.body99_crit_edge, label %land.lhs.true90

if.end84.do.body99_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

land.lhs.true90:                                  ; preds = %if.end84
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %35 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_pp, align 4
  %merge_3d = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %merge_3d to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %merge_3d, align 4
  %tobool91.not = icmp eq ptr %38, null
  br i1 %tobool91.not, label %land.lhs.true90.do.body99_crit_edge, label %if.then92

land.lhs.true90.do.body99_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  %idx97 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %idx97 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx97, align 4
  tail call void %34(ptr noundef %1, i32 noundef %40) #10
  br label %do.body99

do.body99:                                        ; preds = %if.then92, %land.lhs.true90.do.body99_crit_edge, %if.end84.do.body99_crit_edge, %if.end77.do.body99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %41 = load i32, ptr @__drm_debug, align 4
  %and.i235 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235)
  %tobool.i236.not = icmp eq i32 %and.i235, 0
  br i1 %tobool.i236.not, label %do.body129, label %if.then101

if.then101:                                       ; preds = %do.body99
  %tobool102.not = icmp eq ptr %phys_enc, null
  br i1 %tobool102.not, label %if.then101.cond.end122_crit_edge, label %land.lhs.true103

if.then101.cond.end122_crit_edge:                 ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end122

land.lhs.true103:                                 ; preds = %if.then101
  %42 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phys_enc, align 4
  %tobool105.not = icmp eq ptr %43, null
  br i1 %tobool105.not, label %land.lhs.true103.land.lhs.true114_crit_edge, label %cond.true106

land.lhs.true103.land.lhs.true114_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true114

cond.true106:                                     ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #12
  %base108 = getelementptr inbounds %struct.drm_encoder, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base108, align 4
  br label %land.lhs.true114

land.lhs.true114:                                 ; preds = %cond.true106, %land.lhs.true103.land.lhs.true114_crit_edge
  %cond112.ph = phi i32 [ -1, %land.lhs.true103.land.lhs.true114_crit_edge ], [ %45, %cond.true106 ]
  %46 = ptrtoint ptr %hw_intf42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_intf42, align 4
  %tobool116.not = icmp eq ptr %47, null
  br i1 %tobool116.not, label %land.lhs.true114.cond.end122_crit_edge, label %cond.true117

land.lhs.true114.cond.end122_crit_edge:           ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end122

cond.true117:                                     ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  %idx119 = getelementptr inbounds %struct.dpu_hw_intf, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %idx119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx119, align 4
  %sub120 = add i32 %49, -1
  br label %cond.end122

cond.end122:                                      ; preds = %cond.true117, %land.lhs.true114.cond.end122_crit_edge, %if.then101.cond.end122_crit_edge
  %cond112246 = phi i32 [ %cond112.ph, %cond.true117 ], [ %cond112.ph, %land.lhs.true114.cond.end122_crit_edge ], [ -1, %if.then101.cond.end122_crit_edge ]
  %cond123 = phi i32 [ %sub120, %cond.true117 ], [ -1, %land.lhs.true114.cond.end122_crit_edge ], [ -1, %if.then101.cond.end122_crit_edge ]
  %idx124 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %idx124 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idx124, align 4
  %sub125 = add i32 %51, -1
  %52 = ptrtoint ptr %hw_intf42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_intf42, align 4
  %idx127 = getelementptr inbounds %struct.dpu_hw_intf, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %idx127 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx127, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %cond112246, i32 noundef %cond123, i32 noundef %sub125, i32 noundef %55) #10
  br label %do.end173

do.body129:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_enable, %if.then141)) #10
          to label %do.end173 [label %if.then141], !srcloc !162

if.then141:                                       ; preds = %do.body129
  %tobool142.not = icmp eq ptr %phys_enc, null
  br i1 %tobool142.not, label %if.then141.cond.end162_crit_edge, label %land.lhs.true143

if.then141.cond.end162_crit_edge:                 ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end162

land.lhs.true143:                                 ; preds = %if.then141
  %56 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phys_enc, align 4
  %tobool145.not = icmp eq ptr %57, null
  br i1 %tobool145.not, label %land.lhs.true143.land.lhs.true154_crit_edge, label %cond.true146

land.lhs.true143.land.lhs.true154_crit_edge:      ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true154

cond.true146:                                     ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  %base148 = getelementptr inbounds %struct.drm_encoder, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %base148 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base148, align 4
  br label %land.lhs.true154

land.lhs.true154:                                 ; preds = %cond.true146, %land.lhs.true143.land.lhs.true154_crit_edge
  %cond152.ph = phi i32 [ -1, %land.lhs.true143.land.lhs.true154_crit_edge ], [ %59, %cond.true146 ]
  %60 = ptrtoint ptr %hw_intf42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_intf42, align 4
  %tobool156.not = icmp eq ptr %61, null
  br i1 %tobool156.not, label %land.lhs.true154.cond.end162_crit_edge, label %cond.true157

land.lhs.true154.cond.end162_crit_edge:           ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end162

cond.true157:                                     ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #12
  %idx159 = getelementptr inbounds %struct.dpu_hw_intf, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %idx159 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx159, align 4
  %sub160 = add i32 %63, -1
  br label %cond.end162

cond.end162:                                      ; preds = %cond.true157, %land.lhs.true154.cond.end162_crit_edge, %if.then141.cond.end162_crit_edge
  %cond152250 = phi i32 [ %cond152.ph, %cond.true157 ], [ %cond152.ph, %land.lhs.true154.cond.end162_crit_edge ], [ -1, %if.then141.cond.end162_crit_edge ]
  %cond163 = phi i32 [ %sub160, %cond.true157 ], [ -1, %land.lhs.true154.cond.end162_crit_edge ], [ -1, %if.then141.cond.end162_crit_edge ]
  %idx164 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %idx164 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx164, align 4
  %sub165 = add i32 %65, -1
  %66 = ptrtoint ptr %hw_intf42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_intf42, align 4
  %idx167 = getelementptr inbounds %struct.dpu_hw_intf, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %idx167 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idx167, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 453, i32 noundef %cond152250, i32 noundef %cond163, i32 noundef %sub165, i32 noundef %69) #10
  br label %do.end173

do.end173:                                        ; preds = %cond.end162, %do.body129, %cond.end122
  %underrun_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %underrun_cnt, i32 noundef 4) #10
  %70 = ptrtoint ptr %underrun_cnt to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %underrun_cnt, align 4
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %71 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp = icmp eq i32 %72, 1
  br i1 %cmp, label %if.then174, label %do.end173.cleanup_crit_edge

do.end173.cleanup_crit_edge:                      ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then174:                                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %enable_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %do.end173.cleanup_crit_edge, %do.end61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_disable(ptr noundef %phys_enc) #0 align 64 {
entry:
  %wait_info.i = alloca %struct.dpu_encoder_wait_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_enc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 552) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %4 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_intf, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end7, label %if.end13

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %6 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ctl, align 4
  %cmp10 = icmp ne ptr %7, null
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 558, i32 noundef 0, i32 noundef %conv11) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %enable_timing = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %enable_timing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_timing, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %do.end28, label %if.end44, !prof !166

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 562, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end13
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %10 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp45 = icmp eq i32 %11, 1
  br i1 %cmp45, label %do.end50, label %do.body55

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef 566) #13
  br label %cleanup

do.body55:                                        ; preds = %if.end44
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 13
  %12 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enc_spinlock, align 4
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #10
  %14 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_intf, align 4
  %enable_timing67 = getelementptr inbounds %struct.dpu_hw_intf, ptr %15, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %enable_timing67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_timing67, align 4
  tail call void %17(ptr noundef %15, i8 noundef zeroext 0) #10
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %18 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i.not = icmp eq i32 %19, 2
  br i1 %cmp.not.i.not, label %do.body55.if.end72_crit_edge, label %if.then70

do.body55.if.end72_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then70:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %pending_ctlstart_cnt.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_ctlstart_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @llvm.prefetch.p0(ptr %pending_ctlstart_cnt.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_ctlstart_cnt.i, ptr %pending_ctlstart_cnt.i, i32 1, ptr elementtype(i32) %pending_ctlstart_cnt.i) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  %pending_kickoff_cnt.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 19
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @llvm.prefetch.p0(ptr %pending_kickoff_cnt.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_kickoff_cnt.i, ptr %pending_kickoff_cnt.i, i32 1, ptr elementtype(i32) %pending_kickoff_cnt.i) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %do.body55.if.end72_crit_edge
  %22 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enc_spinlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call60) #10
  %24 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.not.i111.not = icmp eq i32 %25, 2
  br i1 %cmp.not.i111.not, label %if.end72.if.end84_crit_edge, label %if.end.i

if.end72.if.end84_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end.i:                                         ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wait_info.i) #10
  %26 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info.i, i32 0, i32 2
  %pending_kickoff_wq.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 20
  %28 = ptrtoint ptr %wait_info.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pending_kickoff_wq.i, ptr %wait_info.i, align 8
  %pending_kickoff_cnt.i112 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 19
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pending_kickoff_cnt.i112, ptr %26, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 84, ptr %27, align 8
  %call1.i = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %phys_enc, i32 noundef 0, ptr noundef nonnull %wait_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, -110
  br i1 %cmp.i, label %dpu_encoder_phys_vid_wait_for_vblank.exit.thread, label %dpu_encoder_phys_vid_wait_for_vblank.exit

dpu_encoder_phys_vid_wait_for_vblank.exit.thread: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dpu_encoder_helper_report_irq_timeout(ptr noundef %phys_enc, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wait_info.i) #10
  br label %if.then78

dpu_encoder_phys_vid_wait_for_vblank.exit:        ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wait_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool77.not = icmp eq i32 %call1.i, 0
  br i1 %tobool77.not, label %dpu_encoder_phys_vid_wait_for_vblank.exit.if.end84_crit_edge, label %dpu_encoder_phys_vid_wait_for_vblank.exit.if.then78_crit_edge

dpu_encoder_phys_vid_wait_for_vblank.exit.if.then78_crit_edge: ; preds = %dpu_encoder_phys_vid_wait_for_vblank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

dpu_encoder_phys_vid_wait_for_vblank.exit.if.end84_crit_edge: ; preds = %dpu_encoder_phys_vid_wait_for_vblank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then78:                                        ; preds = %dpu_encoder_phys_vid_wait_for_vblank.exit.if.then78_crit_edge, %dpu_encoder_phys_vid_wait_for_vblank.exit.thread
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt.i112, i32 noundef 4) #10
  %31 = ptrtoint ptr %pending_kickoff_cnt.i112 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %pending_kickoff_cnt.i112, align 4
  %32 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phys_enc, align 4
  %tobool80.not = icmp eq ptr %33, null
  br i1 %tobool80.not, label %if.then78.cond.end_crit_edge, label %cond.true

if.then78.cond.end_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then78.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ -1, %if.then78.cond.end_crit_edge ]
  %36 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_intf, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  %sub = add i32 %39, -1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.60, i32 noundef %cond, i32 noundef %sub, i32 noundef %call1.i) #10
  br label %if.end84

if.end84:                                         ; preds = %cond.end, %dpu_encoder_phys_vid_wait_for_vblank.exit.if.end84_crit_edge, %if.end72.if.end84_crit_edge
  %40 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %enable_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end50, %do.end28, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_destroy(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %0 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %if.then.cond.end9_crit_edge, label %land.lhs.true

if.then.cond.end9_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

land.lhs.true:                                    ; preds = %if.then
  %1 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phys_enc, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true4_crit_edge, label %cond.true

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true4

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %cond.true, %land.lhs.true.land.lhs.true4_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true4_crit_edge ], [ %4, %cond.true ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %5 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_intf, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true4.cond.end9_crit_edge, label %cond.true6

land.lhs.true4.cond.end9_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true6:                                       ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %sub = add i32 %8, -1
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %land.lhs.true4.cond.end9_crit_edge, %if.then.cond.end9_crit_edge
  %cond58 = phi i32 [ %cond.ph, %cond.true6 ], [ %cond.ph, %land.lhs.true4.cond.end9_crit_edge ], [ -1, %if.then.cond.end9_crit_edge ]
  %cond10 = phi i32 [ %sub, %cond.true6 ], [ -1, %land.lhs.true4.cond.end9_crit_edge ], [ -1, %if.then.cond.end9_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %cond58, i32 noundef %cond10) #10
  br label %do.end40

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_destroy.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_destroy, %if.then16)) #10
          to label %do.end40 [label %if.then16], !srcloc !162

if.then16:                                        ; preds = %do.body11
  %tobool17.not = icmp eq ptr %phys_enc, null
  br i1 %tobool17.not, label %if.then16.cond.end37_crit_edge, label %land.lhs.true18

if.then16.cond.end37_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

land.lhs.true18:                                  ; preds = %if.then16
  %9 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phys_enc, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %land.lhs.true18.land.lhs.true29_crit_edge, label %cond.true21

land.lhs.true18.land.lhs.true29_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29

cond.true21:                                      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  %base23 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base23, align 4
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %cond.true21, %land.lhs.true18.land.lhs.true29_crit_edge
  %cond27.ph = phi i32 [ -1, %land.lhs.true18.land.lhs.true29_crit_edge ], [ %12, %cond.true21 ]
  %hw_intf30 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %13 = ptrtoint ptr %hw_intf30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_intf30, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %land.lhs.true29.cond.end37_crit_edge, label %cond.true32

land.lhs.true29.cond.end37_crit_edge:             ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

cond.true32:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  %idx34 = getelementptr inbounds %struct.dpu_hw_intf, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %idx34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx34, align 4
  %sub35 = add i32 %16, -1
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %land.lhs.true29.cond.end37_crit_edge, %if.then16.cond.end37_crit_edge
  %cond2762 = phi i32 [ %cond27.ph, %cond.true32 ], [ %cond27.ph, %land.lhs.true29.cond.end37_crit_edge ], [ -1, %if.then16.cond.end37_crit_edge ]
  %cond38 = phi i32 [ %sub35, %cond.true32 ], [ -1, %land.lhs.true29.cond.end37_crit_edge ], [ -1, %if.then16.cond.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_destroy.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.61, i32 noundef 464, i32 noundef %cond2762, i32 noundef %cond38) #10
  br label %do.end40

do.end40:                                         ; preds = %cond.end37, %do.body11, %cond.end9
  tail call void @kfree(ptr noundef %phys_enc) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpu_encoder_phys_vid_get_hw_resources(ptr nocapture noundef readonly %phys_enc, ptr nocapture noundef writeonly %hw_res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %0 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr [8 x i32], ptr %hw_res, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_control_vblank_irq(ptr noundef %phys_enc, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank_refcount = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vblank_refcount, i32 noundef 4) #10
  %0 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %vblank_refcount, align 4
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %2 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not.i.not = icmp eq i32 %3, 2
  br i1 %cmp.not.i.not, label %entry.if.end41_crit_edge, label %if.end

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end:                                           ; preds = %entry
  %enable.not = xor i1 %enable, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %or.cond = select i1 %enable.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.if.then29_crit_edge, label %if.end3

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys_enc, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.cond.end_crit_edge, label %cond.true

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end3.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %if.end3.cond.end_crit_edge ]
  %conv = zext i1 %enable to i32
  %call.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vblank_refcount, i32 noundef 4) #10
  %8 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %vblank_refcount, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.62, i32 noundef %cond, i32 noundef %conv, i32 noundef %9) #10
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vblank_refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10
  tail call void @llvm.prefetch.p0(ptr %vblank_refcount, i32 1, i32 3, i32 1) #10
  br i1 %enable, label %land.lhs.true11, label %land.lhs.true19.critedge

land.lhs.true11:                                  ; preds = %cond.end
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vblank_refcount, ptr %vblank_refcount, i32 1, ptr elementtype(i32) %vblank_refcount) #10, !srcloc !168
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.if.end41_crit_edge

land.lhs.true11.if.end41_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef 0) #10
  br label %end

land.lhs.true19.critedge:                         ; preds = %cond.end
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vblank_refcount, ptr %vblank_refcount, i32 1, ptr elementtype(i32) %vblank_refcount) #10, !srcloc !170
  %asmresult.i.i.i.i64 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i64)
  %cmp22 = icmp eq i32 %asmresult.i.i.i.i64, 0
  br i1 %cmp22, label %if.then24, label %land.lhs.true19.critedge.if.end41_crit_edge

land.lhs.true19.critedge.if.end41_crit_edge:      ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then24:                                        ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 0) #10
  br label %end

end:                                              ; preds = %if.then24, %if.then16
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ %call25, %if.then24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool28.not = icmp eq i32 %ret.0, 0
  br i1 %tobool28.not, label %end.if.end41_crit_edge, label %end.if.then29_crit_edge

end.if.then29_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

end.if.end41_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then29:                                        ; preds = %end.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %ret.071 = phi i32 [ %ret.0, %end.if.then29_crit_edge ], [ -22, %if.end.if.then29_crit_edge ]
  %12 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phys_enc, align 4
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %if.then29.cond.end37_crit_edge, label %cond.true32

if.then29.cond.end37_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end37

cond.true32:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %base34 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base34, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true32, %if.then29.cond.end37_crit_edge
  %cond38 = phi i32 [ %15, %cond.true32 ], [ -1, %if.then29.cond.end37_crit_edge ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %16 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_intf, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  %sub = add i32 %19, -1
  %conv40 = zext i1 %enable to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, i32 noundef %cond38, i32 noundef %sub, i32 noundef %ret.071, i32 noundef %conv40, i32 noundef %1) #10
  br label %if.end41

if.end41:                                         ; preds = %cond.end37, %end.if.end41_crit_edge, %land.lhs.true19.critedge.if.end41_crit_edge, %land.lhs.true11.if.end41_crit_edge, %entry.if.end41_crit_edge
  %ret.067 = phi i32 [ %ret.071, %cond.end37 ], [ 0, %end.if.end41_crit_edge ], [ 0, %land.lhs.true19.critedge.if.end41_crit_edge ], [ 0, %entry.if.end41_crit_edge ], [ 0, %land.lhs.true11.if.end41_crit_edge ]
  ret i32 %ret.067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_wait_for_commit_done(ptr noundef %phys_enc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ctl1 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %0 = ptrtoint ptr %hw_ctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ctl1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 511) #10
  %get_flush_register = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %get_flush_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_flush_register, align 4
  %call5 = tail call i32 %3(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup51_crit_edge, label %if.then13

if.end.cleanup51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 20
  %call1673 = call i32 @prepare_to_wait_event(ptr noundef %pending_kickoff_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %5 = ptrtoint ptr %get_flush_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_flush_register, align 4
  %call2074 = call i32 %6(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2074)
  %cmp2175 = icmp eq i32 %call2074, 0
  br i1 %cmp2175, label %if.end41.thread, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

if.end41.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %pending_kickoff_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup51

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.176 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ 5, %if.then13.cleanup_crit_edge ]
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret14.176) #10
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %pending_kickoff_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %7 = ptrtoint ptr %get_flush_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_flush_register, align 4
  %call20 = call i32 %8(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool25.not = icmp eq i32 %call38, 0
  %9 = select i1 %cmp21, i1 %tobool25.not, i1 false
  %__ret14.1 = select i1 %9, i32 1, i32 %call38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool31.not = icmp eq i32 %__ret14.1, 0
  %10 = select i1 %cmp21, i1 true, i1 %tobool31.not
  br i1 %10, label %if.end41, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret14.1)
  %phi.cmp = icmp slt i32 %__ret14.1, 1
  call void @finish_wait(ptr noundef %pending_kickoff_wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %do.end47, label %if.end41.cleanup51_crit_edge

if.end41.cleanup51_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 513) #13
  br label %cleanup51

cleanup51:                                        ; preds = %do.end47, %if.end41.cleanup51_crit_edge, %if.end41.thread, %if.end.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.0 = phi i32 [ -110, %do.end47 ], [ 0, %entry.cleanup51_crit_edge ], [ 0, %if.end41.cleanup51_crit_edge ], [ 0, %if.end.cleanup51_crit_edge ], [ 0, %if.end41.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_wait_for_vblank(ptr noundef %phys_enc) #0 align 64 {
entry:
  %wait_info = alloca %struct.dpu_encoder_wait_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wait_info) #10
  %0 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info, i32 0, i32 2
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 20
  %2 = ptrtoint ptr %wait_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pending_kickoff_wq, ptr %wait_info, align 8
  %pending_kickoff_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 19
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pending_kickoff_cnt, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 84, ptr %1, align 8
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %5 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not.i.not = icmp eq i32 %6, 2
  br i1 %cmp.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %phys_enc, i32 noundef 0, ptr noundef nonnull %wait_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call1)
  %cmp = icmp eq i32 %call1, -110
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @dpu_encoder_helper_report_irq_timeout(ptr noundef %phys_enc, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wait_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_irq_control(ptr noundef %phys_enc, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_enc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %4 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_intf, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %sub = add i32 %7, -1
  %vblank_refcount = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vblank_refcount, i32 noundef 4) #10
  %8 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %vblank_refcount, align 4
  tail call fastcc void @trace_dpu_enc_phys_vid_irq_ctrl(i32 noundef %cond, i32 noundef %sub, i1 noundef zeroext %enable, i32 noundef %9)
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call4 = tail call i32 @dpu_encoder_phys_vid_control_vblank_irq(ptr noundef %phys_enc, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end28, label %do.end, !prof !172

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 628, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end28:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef 2) #10
  br label %cleanup

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 @dpu_encoder_phys_vid_control_vblank_irq(ptr noundef %phys_enc, i1 noundef zeroext false)
  %call31 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end28, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_prepare_for_kickoff(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_enc, align 4
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %2 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_ctl, align 4
  %wait_reset_status = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 9, i32 11
  %4 = ptrtoint ptr %wait_reset_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait_reset_status, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %5(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  %tobool5.not = icmp eq ptr %phys_enc, null
  br i1 %tobool5.not, label %do.end.cond.end15_crit_edge, label %land.lhs.true

do.end.cond.end15_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

land.lhs.true:                                    ; preds = %do.end
  %6 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys_enc, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true.land.lhs.true10_crit_edge, label %cond.true

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true10

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %cond.true, %land.lhs.true.land.lhs.true10_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true10_crit_edge ], [ %9, %cond.true ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %10 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_intf, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.lhs.true10.cond.end15_crit_edge, label %cond.true12

land.lhs.true10.cond.end15_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.true12:                                      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %sub = add i32 %13, -1
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %land.lhs.true10.cond.end15_crit_edge, %do.end.cond.end15_crit_edge
  %cond39 = phi i32 [ %cond.ph, %cond.true12 ], [ %cond.ph, %land.lhs.true10.cond.end15_crit_edge ], [ -1, %do.end.cond.end15_crit_edge ]
  %cond16 = phi i32 [ %sub, %cond.true12 ], [ -1, %land.lhs.true10.cond.end15_crit_edge ], [ -1, %do.end.cond.end15_crit_edge ]
  %idx17 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %idx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx17, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 540, i32 noundef %cond39, i32 noundef %cond16, i32 noundef %15, i32 noundef %call) #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @msm_disp_snapshot_state(ptr noundef %17) #10
  %call19 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_handle_post_kickoff(ptr nocapture noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %0 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %6 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_intf, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %sub = add i32 %9, -1
  tail call fastcc void @trace_dpu_enc_phys_vid_post_kickoff(i32 noundef %cond, i32 noundef %sub)
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 13
  %10 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enc_spinlock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #10
  %12 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_intf, align 4
  %enable_timing = getelementptr inbounds %struct.dpu_hw_intf, ptr %13, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %enable_timing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_timing, align 4
  tail call void %15(ptr noundef %13, i8 noundef zeroext 1) #10
  %16 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enc_spinlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call4) #10
  %18 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %enable_state, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_vid_needs_single_flush(ptr nocapture noundef readonly %phys_enc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %split_role = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %0 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_get_line_count(ptr nocapture noundef readonly %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %0 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not.i.not = icmp eq i32 %1, 2
  br i1 %cmp.not.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %2 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_intf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %get_line_count = getelementptr inbounds %struct.dpu_hw_intf, ptr %3, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %get_line_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_line_count, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 %5(ptr noundef nonnull %3) #10
  br label %return

return:                                           ; preds = %if.end4, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end4 ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_get_frame_count(ptr nocapture noundef readonly %phys_enc) #0 align 64 {
entry:
  %s = alloca %struct.intf_status, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %s) #10
  %0 = call ptr @memset(ptr %s, i32 0, i32 12)
  %mode.sroa.4.0.cached_mode.sroa_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9, i32 6
  %1 = ptrtoint ptr %mode.sroa.4.0.cached_mode.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %mode.sroa.4.0.copyload = load i16, ptr %mode.sroa.4.0.cached_mode.sroa_idx, align 2
  %mode.sroa.5.0.cached_mode.sroa_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9, i32 7
  %2 = ptrtoint ptr %mode.sroa.5.0.cached_mode.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %mode.sroa.5.0.copyload = load i16, ptr %mode.sroa.5.0.cached_mode.sroa_idx, align 4
  %mode.sroa.630.0.cached_mode.sroa_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9, i32 9
  %3 = ptrtoint ptr %mode.sroa.630.0.cached_mode.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %mode.sroa.630.0.copyload = load i16, ptr %mode.sroa.630.0.cached_mode.sroa_idx, align 4
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %4 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i.not = icmp eq i32 %5, 2
  br i1 %cmp.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %6 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_intf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %get_status = getelementptr inbounds %struct.dpu_hw_intf, ptr %7, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_status, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void %9(ptr noundef nonnull %7, ptr noundef nonnull %s) #10
  %is_prog_fetch_en = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 1
  %10 = ptrtoint ptr %is_prog_fetch_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_prog_fetch_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.end4.if.end26_crit_edge, label %land.lhs.true

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end4
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end26_crit_edge, label %if.then12

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then12:                                        ; preds = %land.lhs.true
  %conv13 = zext i16 %mode.sroa.630.0.copyload to i32
  %conv14 = zext i16 %mode.sroa.5.0.copyload to i32
  %conv15 = zext i16 %mode.sroa.4.0.copyload to i32
  %sub.neg = sub nsw i32 %conv15, %conv14
  %sub16 = add nsw i32 %sub.neg, %conv13
  %line_count = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 3
  %14 = ptrtoint ptr %line_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub16)
  %cmp = icmp ule i32 %15, %sub16
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv13)
  %cmp22.not = icmp ugt i32 %15, %conv13
  %or.cond = or i1 %cmp, %cmp22.not
  br i1 %or.cond, label %if.then12.if.end26_crit_edge, label %if.then24

if.then12.if.end26_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %frame_count = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 2
  %16 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_count, align 4
  %add = add i32 %17, 1
  br label %cleanup

if.end26:                                         ; preds = %if.then12.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end4.if.end26_crit_edge
  %frame_count27 = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 2
  %18 = ptrtoint ptr %frame_count27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_count27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then24 ], [ %19, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %s) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_split_config(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpu_encoder_phys_vid_setup_timing_engine(ptr noundef %phys_enc) unnamed_addr #0 align 64 {
entry:
  %mode = alloca %struct.drm_display_mode, align 4
  %timing_params = alloca %struct.intf_timing_params, align 4
  %intf_cfg = alloca %struct.dpu_hw_intf_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %mode) #10
  %0 = call ptr @memset(ptr %mode, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %timing_params) #10
  %1 = call ptr @memset(ptr %timing_params, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %intf_cfg) #10
  %2 = call ptr @memset(ptr %intf_cfg, i32 0, i32 20)
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %3 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ctl, align 4
  %setup_intf_cfg = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 9, i32 9
  %5 = ptrtoint ptr %setup_intf_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setup_intf_cfg, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmp = icmp ne ptr %phys_enc, null
  %conv = zext i1 %cmp to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 252, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cached_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9
  %7 = call ptr @memcpy(ptr %mode, ptr %cached_mode, i32 112)
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %8 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_intf, align 4
  %ops1 = getelementptr inbounds %struct.dpu_hw_intf, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops1, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %do.end6, label %do.body10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 258) #13
  br label %cleanup

do.body10:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %12 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body25, label %if.then12

if.then12:                                        ; preds = %do.body10
  %tobool13.not = icmp eq ptr %phys_enc, null
  br i1 %tobool13.not, label %if.then12.cond.end23_crit_edge, label %land.lhs.true

if.then12.cond.end23_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end23

land.lhs.true:                                    ; preds = %if.then12
  %13 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phys_enc, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %land.lhs.true.land.lhs.true17_crit_edge, label %cond.true

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true17

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base, align 4
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %cond.true, %land.lhs.true.land.lhs.true17_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true17_crit_edge ], [ %16, %cond.true ]
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %land.lhs.true17.cond.end23_crit_edge, label %cond.true20

land.lhs.true17.cond.end23_crit_edge:             ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end23

cond.true20:                                      ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx, align 4
  %sub = add i32 %18, -1
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %land.lhs.true17.cond.end23_crit_edge, %if.then12.cond.end23_crit_edge
  %cond379 = phi i32 [ %cond.ph, %cond.true20 ], [ %cond.ph, %land.lhs.true17.cond.end23_crit_edge ], [ -1, %if.then12.cond.end23_crit_edge ]
  %cond24 = phi i32 [ %sub, %cond.true20 ], [ -1, %land.lhs.true17.cond.end23_crit_edge ], [ -1, %if.then12.cond.end23_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %cond379, i32 noundef %cond24) #10
  br label %do.end59

do.body25:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_setup_timing_engine, %if.then31)) #10
          to label %do.end59 [label %if.then31], !srcloc !162

if.then31:                                        ; preds = %do.body25
  %tobool32.not = icmp eq ptr %phys_enc, null
  br i1 %tobool32.not, label %if.then31.cond.end52_crit_edge, label %land.lhs.true33

if.then31.cond.end52_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end52

land.lhs.true33:                                  ; preds = %if.then31
  %19 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phys_enc, align 4
  %tobool35.not = icmp eq ptr %20, null
  br i1 %tobool35.not, label %land.lhs.true33.land.lhs.true44_crit_edge, label %cond.true36

land.lhs.true33.land.lhs.true44_crit_edge:        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true44

cond.true36:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  %base38 = getelementptr inbounds %struct.drm_encoder, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base38, align 4
  br label %land.lhs.true44

land.lhs.true44:                                  ; preds = %cond.true36, %land.lhs.true33.land.lhs.true44_crit_edge
  %cond42.ph = phi i32 [ -1, %land.lhs.true33.land.lhs.true44_crit_edge ], [ %22, %cond.true36 ]
  %23 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_intf, align 4
  %tobool46.not = icmp eq ptr %24, null
  br i1 %tobool46.not, label %land.lhs.true44.cond.end52_crit_edge, label %cond.true47

land.lhs.true44.cond.end52_crit_edge:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end52

cond.true47:                                      ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  %idx49 = getelementptr inbounds %struct.dpu_hw_intf, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %idx49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx49, align 4
  %sub50 = add i32 %26, -1
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true47, %land.lhs.true44.cond.end52_crit_edge, %if.then31.cond.end52_crit_edge
  %cond42383 = phi i32 [ %cond42.ph, %cond.true47 ], [ %cond42.ph, %land.lhs.true44.cond.end52_crit_edge ], [ -1, %if.then31.cond.end52_crit_edge ]
  %cond53 = phi i32 [ %sub50, %cond.true47 ], [ -1, %land.lhs.true44.cond.end52_crit_edge ], [ -1, %if.then31.cond.end52_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef 262, i32 noundef %cond42383, i32 noundef %cond53) #10
  br label %do.end59

do.end59:                                         ; preds = %cond.end52, %do.body25, %cond.end23
  call void @drm_mode_debug_printmodeline(ptr noundef nonnull %mode) #10
  %split_role = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %27 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp60.not = icmp eq i32 %28, 0
  br i1 %cmp60.not, label %do.end59.if.end159_crit_edge, label %if.then62

do.end59.if.end159_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then62:                                        ; preds = %do.end59
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %29 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdisplay, align 4
  %31 = lshr i16 %30, 1
  store i16 %31, ptr %hdisplay, align 4
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %32 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %htotal, align 2
  %34 = lshr i16 %33, 1
  store i16 %34, ptr %htotal, align 2
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %35 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hsync_start, align 2
  %37 = lshr i16 %36, 1
  store i16 %37, ptr %hsync_start, align 2
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %38 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hsync_end, align 4
  %40 = lshr i16 %39, 1
  store i16 %40, ptr %hsync_end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %41 = load i32, ptr @__drm_debug, align 4
  %and.i368 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i368)
  %tobool.i369.not = icmp eq i32 %and.i368, 0
  br i1 %tobool.i369.not, label %do.body109, label %if.then76

if.then76:                                        ; preds = %if.then62
  %tobool77.not = icmp eq ptr %phys_enc, null
  br i1 %tobool77.not, label %if.then76.cond.end97_crit_edge, label %land.lhs.true78

if.then76.cond.end97_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end97

land.lhs.true78:                                  ; preds = %if.then76
  %42 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phys_enc, align 4
  %tobool80.not = icmp eq ptr %43, null
  br i1 %tobool80.not, label %land.lhs.true78.land.lhs.true89_crit_edge, label %cond.true81

land.lhs.true78.land.lhs.true89_crit_edge:        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true89

cond.true81:                                      ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  %base83 = getelementptr inbounds %struct.drm_encoder, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %base83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base83, align 4
  br label %land.lhs.true89

land.lhs.true89:                                  ; preds = %cond.true81, %land.lhs.true78.land.lhs.true89_crit_edge
  %cond87.ph = phi i32 [ -1, %land.lhs.true78.land.lhs.true89_crit_edge ], [ %45, %cond.true81 ]
  %46 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_intf, align 4
  %tobool91.not = icmp eq ptr %47, null
  br i1 %tobool91.not, label %land.lhs.true89.cond.end97_crit_edge, label %cond.true92

land.lhs.true89.cond.end97_crit_edge:             ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end97

cond.true92:                                      ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  %idx94 = getelementptr inbounds %struct.dpu_hw_intf, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %idx94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx94, align 4
  %sub95 = add i32 %49, -1
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true92, %land.lhs.true89.cond.end97_crit_edge, %if.then76.cond.end97_crit_edge
  %cond87386 = phi i32 [ %cond87.ph, %cond.true92 ], [ %cond87.ph, %land.lhs.true89.cond.end97_crit_edge ], [ -1, %if.then76.cond.end97_crit_edge ]
  %cond98 = phi i32 [ %sub95, %cond.true92 ], [ -1, %land.lhs.true89.cond.end97_crit_edge ], [ -1, %if.then76.cond.end97_crit_edge ]
  %conv101 = zext i16 %31 to i32
  %conv103 = zext i16 %34 to i32
  %conv105 = zext i16 %37 to i32
  %conv107 = zext i16 %40 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %cond87386, i32 noundef %cond98, i32 noundef %28, i32 noundef %conv101, i32 noundef %conv103, i32 noundef %conv105, i32 noundef %conv107) #10
  br label %if.end159

do.body109:                                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_setup_timing_engine, %if.then121)) #10
          to label %if.end159 [label %if.then121], !srcloc !162

if.then121:                                       ; preds = %do.body109
  %tobool122.not = icmp eq ptr %phys_enc, null
  br i1 %tobool122.not, label %if.then121.cond.end142_crit_edge, label %land.lhs.true123

if.then121.cond.end142_crit_edge:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end142

land.lhs.true123:                                 ; preds = %if.then121
  %50 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phys_enc, align 4
  %tobool125.not = icmp eq ptr %51, null
  br i1 %tobool125.not, label %land.lhs.true123.land.lhs.true134_crit_edge, label %cond.true126

land.lhs.true123.land.lhs.true134_crit_edge:      ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true134

cond.true126:                                     ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  %base128 = getelementptr inbounds %struct.drm_encoder, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %base128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base128, align 4
  br label %land.lhs.true134

land.lhs.true134:                                 ; preds = %cond.true126, %land.lhs.true123.land.lhs.true134_crit_edge
  %cond132.ph = phi i32 [ -1, %land.lhs.true123.land.lhs.true134_crit_edge ], [ %53, %cond.true126 ]
  %54 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_intf, align 4
  %tobool136.not = icmp eq ptr %55, null
  br i1 %tobool136.not, label %land.lhs.true134.cond.end142_crit_edge, label %cond.true137

land.lhs.true134.cond.end142_crit_edge:           ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end142

cond.true137:                                     ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #12
  %idx139 = getelementptr inbounds %struct.dpu_hw_intf, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %idx139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %idx139, align 4
  %sub140 = add i32 %57, -1
  br label %cond.end142

cond.end142:                                      ; preds = %cond.true137, %land.lhs.true134.cond.end142_crit_edge, %if.then121.cond.end142_crit_edge
  %cond132390 = phi i32 [ %cond132.ph, %cond.true137 ], [ %cond132.ph, %land.lhs.true134.cond.end142_crit_edge ], [ -1, %if.then121.cond.end142_crit_edge ]
  %cond143 = phi i32 [ %sub140, %cond.true137 ], [ -1, %land.lhs.true134.cond.end142_crit_edge ], [ -1, %if.then121.cond.end142_crit_edge ]
  %58 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %split_role, align 4
  %60 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hdisplay, align 4
  %conv146 = zext i16 %61 to i32
  %62 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %htotal, align 2
  %conv148 = zext i16 %63 to i32
  %64 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hsync_start, align 2
  %conv150 = zext i16 %65 to i32
  %66 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %hsync_end, align 4
  %conv152 = zext i16 %67 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, i32 noundef 275, i32 noundef %cond132390, i32 noundef %cond143, i32 noundef %59, i32 noundef %conv146, i32 noundef %conv148, i32 noundef %conv150, i32 noundef %conv152) #10
  br label %if.end159

if.end159:                                        ; preds = %cond.end142, %do.body109, %cond.end97, %do.end59.if.end159_crit_edge
  %68 = call ptr @memset(ptr %timing_params, i32 0, i32 60)
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %69 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %htotal.i, align 2
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %71 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %hsync_end.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp.i = icmp ult i16 %70, %72
  br i1 %cmp.i, label %if.end159.do.end.i_crit_edge, label %lor.lhs.false.i

if.end159.do.end.i_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end159
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %73 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hsync_start.i, align 2
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %75 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hdisplay.i, align 4
  %conv4.i = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %76)
  %cmp5.i = icmp ult i16 %74, %76
  br i1 %cmp5.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false7.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %77 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vtotal.i, align 4
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %79 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vsync_end.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp10.i = icmp ult i16 %78, %80
  br i1 %cmp10.i, label %lor.lhs.false7.i.do.end.i_crit_edge, label %lor.lhs.false12.i

lor.lhs.false7.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false7.i
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %81 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vsync_start.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %83 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp15.i = icmp ult i16 %82, %84
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %74)
  %cmp22.i = icmp ult i16 %72, %74
  %or.cond.i = select i1 %cmp15.i, i1 true, i1 %cmp22.i
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp29.i = icmp ult i16 %80, %82
  %or.cond180.i = select i1 %or.cond.i, i1 true, i1 %cmp29.i
  br i1 %or.cond180.i, label %lor.lhs.false12.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false12.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false12.i.do.end.i_crit_edge, %lor.lhs.false7.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end159.do.end.i_crit_edge
  %hsync_start31.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %85 = ptrtoint ptr %hsync_start31.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %hsync_start31.i, align 2
  %conv32.i = zext i16 %86 to i32
  %conv34.i = zext i16 %72 to i32
  %conv36.i = zext i16 %70 to i32
  %hdisplay37.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %87 = ptrtoint ptr %hdisplay37.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %hdisplay37.i, align 4
  %conv38.i = zext i16 %88 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 56, i32 noundef %conv32.i, i32 noundef %conv34.i, i32 noundef %conv36.i, i32 noundef %conv38.i) #13
  %vsync_start42.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %89 = ptrtoint ptr %vsync_start42.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vsync_start42.i, align 4
  %conv43.i = zext i16 %90 to i32
  %vsync_end44.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %91 = ptrtoint ptr %vsync_end44.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vsync_end44.i, align 2
  %conv45.i = zext i16 %92 to i32
  %vtotal46.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %93 = ptrtoint ptr %vtotal46.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vtotal46.i, align 4
  %conv47.i = zext i16 %94 to i32
  %vdisplay48.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %95 = ptrtoint ptr %vdisplay48.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vdisplay48.i, align 2
  %conv49.i = zext i16 %96 to i32
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 59, i32 noundef %conv43.i, i32 noundef %conv45.i, i32 noundef %conv47.i, i32 noundef %conv49.i) #13
  br label %drm_mode_to_intf_timing_params.exit

if.end.i:                                         ; preds = %lor.lhs.false12.i
  %97 = ptrtoint ptr %timing_params to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv4.i, ptr %timing_params, align 4
  %conv54.i = zext i16 %84 to i32
  %height.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 1
  %98 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv54.i, ptr %height.i, align 4
  %xres.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 2
  %99 = ptrtoint ptr %xres.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv4.i, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 3
  %100 = ptrtoint ptr %yres.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv54.i, ptr %yres.i, align 4
  %conv58.i = zext i16 %70 to i32
  %conv60.i = zext i16 %72 to i32
  %sub.i = sub nsw i32 %conv58.i, %conv60.i
  %h_back_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 4
  %101 = ptrtoint ptr %h_back_porch.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %sub.i, ptr %h_back_porch.i, align 4
  %conv62.i = zext i16 %74 to i32
  %sub65.i = sub nsw i32 %conv62.i, %conv4.i
  %h_front_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 5
  %102 = ptrtoint ptr %h_front_porch.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub65.i, ptr %h_front_porch.i, align 4
  %conv67.i = zext i16 %78 to i32
  %conv69.i = zext i16 %80 to i32
  %sub70.i = sub nsw i32 %conv67.i, %conv69.i
  %v_back_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 6
  %103 = ptrtoint ptr %v_back_porch.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub70.i, ptr %v_back_porch.i, align 4
  %conv72.i = zext i16 %82 to i32
  %sub75.i = sub nsw i32 %conv72.i, %conv54.i
  %v_front_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 7
  %104 = ptrtoint ptr %v_front_porch.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub75.i, ptr %v_front_porch.i, align 4
  %sub80.i = sub nsw i32 %conv60.i, %conv62.i
  %hsync_pulse_width.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 8
  %105 = ptrtoint ptr %hsync_pulse_width.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub80.i, ptr %hsync_pulse_width.i, align 4
  %sub85.i = sub nsw i32 %conv69.i, %conv72.i
  %vsync_pulse_width.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 9
  %106 = ptrtoint ptr %vsync_pulse_width.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub85.i, ptr %vsync_pulse_width.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i, align 4
  %and.i370 = lshr i32 %108, 1
  %and.lobit.i = and i32 %and.i370, 1
  %hsync_polarity.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 10
  %109 = ptrtoint ptr %hsync_polarity.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and.lobit.i, ptr %hsync_polarity.i, align 4
  %and87.i = lshr i32 %108, 3
  %and87.lobit.i = and i32 %and87.i, 1
  %vsync_polarity.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 11
  %110 = ptrtoint ptr %vsync_polarity.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and87.lobit.i, ptr %vsync_polarity.i, align 4
  %border_clr.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 12
  %111 = ptrtoint ptr %border_clr.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %border_clr.i, align 4
  %underflow_clr.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 13
  %112 = ptrtoint ptr %underflow_clr.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 255, ptr %underflow_clr.i, align 4
  %hskew.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 5
  %113 = ptrtoint ptr %hskew.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %hskew.i, align 4
  %conv90.i = zext i16 %114 to i32
  %hsync_skew.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing_params, i32 0, i32 14
  %115 = ptrtoint ptr %hsync_skew.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv90.i, ptr %hsync_skew.i, align 4
  %116 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_intf, align 4
  %cap.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cap.i, align 4
  %type.i = getelementptr inbounds %struct.dpu_intf_cfg, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp91.i = icmp eq i32 %121, 1
  br i1 %cmp91.i, label %if.then93.i, label %if.end.i.if.end96.i_crit_edge

if.end.i.if.end96.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

if.then93.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %hsync_polarity.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %hsync_polarity.i, align 4
  %123 = ptrtoint ptr %vsync_polarity.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %vsync_polarity.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then93.i, %if.end.i.if.end96.i_crit_edge
  %124 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cap.i, align 4
  %type99.i = getelementptr inbounds %struct.dpu_intf_cfg, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %type99.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type99.i, align 4
  %.off.i = add i32 %127, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then108.i, label %if.end96.i.drm_mode_to_intf_timing_params.exit_crit_edge

if.end96.i.drm_mode_to_intf_timing_params.exit_crit_edge: ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_mode_to_intf_timing_params.exit

if.then108.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %sub65.i, %sub.i
  %128 = ptrtoint ptr %h_back_porch.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add.i, ptr %h_back_porch.i, align 4
  %129 = ptrtoint ptr %h_front_porch.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %h_front_porch.i, align 4
  %add114.i = add nsw i32 %sub75.i, %sub70.i
  %130 = ptrtoint ptr %v_back_porch.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add114.i, ptr %v_back_porch.i, align 4
  %131 = ptrtoint ptr %v_front_porch.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %v_front_porch.i, align 4
  br label %drm_mode_to_intf_timing_params.exit

drm_mode_to_intf_timing_params.exit:              ; preds = %if.then108.i, %if.end96.i.drm_mode_to_intf_timing_params.exit_crit_edge, %do.end.i
  %call160 = call ptr @dpu_get_dpu_format_ext(i32 noundef 875710290, i64 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %132 = load i32, ptr @__drm_debug, align 4
  %and.i371 = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i371)
  %tobool.i372.not = icmp eq i32 %and.i371, 0
  br i1 %tobool.i372.not, label %do.body187, label %if.then163

if.then163:                                       ; preds = %drm_mode_to_intf_timing_params.exit
  %tobool164.not = icmp eq ptr %phys_enc, null
  br i1 %tobool164.not, label %if.then163.cond.end184_crit_edge, label %land.lhs.true165

if.then163.cond.end184_crit_edge:                 ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end184

land.lhs.true165:                                 ; preds = %if.then163
  %133 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %phys_enc, align 4
  %tobool167.not = icmp eq ptr %134, null
  br i1 %tobool167.not, label %land.lhs.true165.land.lhs.true176_crit_edge, label %cond.true168

land.lhs.true165.land.lhs.true176_crit_edge:      ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true176

cond.true168:                                     ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #12
  %base170 = getelementptr inbounds %struct.drm_encoder, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %base170 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %base170, align 4
  br label %land.lhs.true176

land.lhs.true176:                                 ; preds = %cond.true168, %land.lhs.true165.land.lhs.true176_crit_edge
  %cond174.ph = phi i32 [ -1, %land.lhs.true165.land.lhs.true176_crit_edge ], [ %136, %cond.true168 ]
  %137 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw_intf, align 4
  %tobool178.not = icmp eq ptr %138, null
  br i1 %tobool178.not, label %land.lhs.true176.cond.end184_crit_edge, label %cond.true179

land.lhs.true176.cond.end184_crit_edge:           ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end184

cond.true179:                                     ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #12
  %idx181 = getelementptr inbounds %struct.dpu_hw_intf, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %idx181 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %idx181, align 4
  %sub182 = add i32 %140, -1
  br label %cond.end184

cond.end184:                                      ; preds = %cond.true179, %land.lhs.true176.cond.end184_crit_edge, %if.then163.cond.end184_crit_edge
  %cond174393 = phi i32 [ %cond174.ph, %cond.true179 ], [ %cond174.ph, %land.lhs.true176.cond.end184_crit_edge ], [ -1, %if.then163.cond.end184_crit_edge ]
  %cond185 = phi i32 [ %sub182, %cond.true179 ], [ -1, %land.lhs.true176.cond.end184_crit_edge ], [ -1, %if.then163.cond.end184_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %cond174393, i32 noundef %cond185, i32 noundef 875710290) #10
  br label %do.end227

do.body187:                                       ; preds = %drm_mode_to_intf_timing_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_vid_setup_timing_engine, %if.then199)) #10
          to label %do.end227 [label %if.then199], !srcloc !162

if.then199:                                       ; preds = %do.body187
  %tobool200.not = icmp eq ptr %phys_enc, null
  br i1 %tobool200.not, label %if.then199.cond.end220_crit_edge, label %land.lhs.true201

if.then199.cond.end220_crit_edge:                 ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end220

land.lhs.true201:                                 ; preds = %if.then199
  %141 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %phys_enc, align 4
  %tobool203.not = icmp eq ptr %142, null
  br i1 %tobool203.not, label %land.lhs.true201.land.lhs.true212_crit_edge, label %cond.true204

land.lhs.true201.land.lhs.true212_crit_edge:      ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true212

cond.true204:                                     ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #12
  %base206 = getelementptr inbounds %struct.drm_encoder, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %base206 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %base206, align 4
  br label %land.lhs.true212

land.lhs.true212:                                 ; preds = %cond.true204, %land.lhs.true201.land.lhs.true212_crit_edge
  %cond210.ph = phi i32 [ -1, %land.lhs.true201.land.lhs.true212_crit_edge ], [ %144, %cond.true204 ]
  %145 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw_intf, align 4
  %tobool214.not = icmp eq ptr %146, null
  br i1 %tobool214.not, label %land.lhs.true212.cond.end220_crit_edge, label %cond.true215

land.lhs.true212.cond.end220_crit_edge:           ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end220

cond.true215:                                     ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  %idx217 = getelementptr inbounds %struct.dpu_hw_intf, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %idx217 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %idx217, align 4
  %sub218 = add i32 %148, -1
  br label %cond.end220

cond.end220:                                      ; preds = %cond.true215, %land.lhs.true212.cond.end220_crit_edge, %if.then199.cond.end220_crit_edge
  %cond210397 = phi i32 [ %cond210.ph, %cond.true215 ], [ %cond210.ph, %land.lhs.true212.cond.end220_crit_edge ], [ -1, %if.then199.cond.end220_crit_edge ]
  %cond221 = phi i32 [ %sub218, %cond.true215 ], [ -1, %land.lhs.true212.cond.end220_crit_edge ], [ -1, %if.then199.cond.end220_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.22, i32 noundef 281, i32 noundef %cond210397, i32 noundef %cond221, i32 noundef 875710290) #10
  br label %do.end227

do.end227:                                        ; preds = %cond.end220, %do.body187, %cond.end184
  %149 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_intf, align 4
  %idx229 = getelementptr inbounds %struct.dpu_hw_intf, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %idx229 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %idx229, align 4
  %153 = ptrtoint ptr %intf_cfg to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %intf_cfg, align 4
  %intf_mode_sel = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg, i32 0, i32 3
  %154 = ptrtoint ptr %intf_mode_sel to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %intf_mode_sel, align 4
  %stream_sel = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg, i32 0, i32 4
  %155 = ptrtoint ptr %stream_sel to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %stream_sel, align 4
  %tobool.not.i = icmp eq ptr %phys_enc, null
  br i1 %tobool.not.i, label %do.end227.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge, label %lor.lhs.false.i374

do.end227.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge: ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %dpu_encoder_helper_get_3d_blend_mode.exit

lor.lhs.false.i374:                               ; preds = %do.end227
  %enable_state.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %156 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %enable_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i373 = icmp eq i32 %157, 0
  br i1 %cmp.i373, label %lor.lhs.false.i374.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge, label %if.end.i375

lor.lhs.false.i374.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge: ; preds = %lor.lhs.false.i374
  call void @__sanitizer_cov_trace_pc() #12
  br label %dpu_encoder_helper_get_3d_blend_mode.exit

if.end.i375:                                      ; preds = %lor.lhs.false.i374
  %158 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp1.i = icmp eq i32 %159, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i375.if.end4.i_crit_edge

if.end.i375.if.end4.i_crit_edge:                  ; preds = %if.end.i375
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i375
  %160 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %phys_enc, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %161, i32 0, i32 8
  %162 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %crtc.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %163, i32 0, i32 22
  %164 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %state.i, align 4
  %num_mixers.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %165, i32 0, i32 6
  %166 = ptrtoint ptr %num_mixers.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_mixers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %167)
  %cmp2.i = icmp eq i32 %167, 2
  br i1 %cmp2.i, label %land.lhs.true.i.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

land.lhs.true.i.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dpu_encoder_helper_get_3d_blend_mode.exit

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i375.if.end4.i_crit_edge
  br label %dpu_encoder_helper_get_3d_blend_mode.exit

dpu_encoder_helper_get_3d_blend_mode.exit:        ; preds = %if.end4.i, %land.lhs.true.i.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge, %lor.lhs.false.i374.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge, %do.end227.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge
  %retval.0.i376 = phi i32 [ 0, %if.end4.i ], [ 0, %lor.lhs.false.i374.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge ], [ 0, %do.end227.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge ], [ 2, %land.lhs.true.i.dpu_encoder_helper_get_3d_blend_mode.exit_crit_edge ]
  %mode_3d = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg, i32 0, i32 1
  %168 = ptrtoint ptr %mode_3d to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.0.i376, ptr %mode_3d, align 4
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %169 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_pp, align 4
  %merge_3d = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %merge_3d to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %merge_3d, align 4
  %tobool231.not = icmp eq ptr %172, null
  br i1 %tobool231.not, label %dpu_encoder_helper_get_3d_blend_mode.exit.do.body239_crit_edge, label %if.then232

dpu_encoder_helper_get_3d_blend_mode.exit.do.body239_crit_edge: ; preds = %dpu_encoder_helper_get_3d_blend_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body239

if.then232:                                       ; preds = %dpu_encoder_helper_get_3d_blend_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %idx235 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %idx235 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %idx235, align 4
  %merge_3d236 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg, i32 0, i32 2
  %175 = ptrtoint ptr %merge_3d236 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %merge_3d236, align 4
  br label %do.body239

do.body239:                                       ; preds = %if.then232, %dpu_encoder_helper_get_3d_blend_mode.exit.do.body239_crit_edge
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 13
  %176 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %enc_spinlock, align 4
  %call244 = call i32 @_raw_spin_lock_irqsave(ptr noundef %177) #10
  %178 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw_intf, align 4
  %ops250 = getelementptr inbounds %struct.dpu_hw_intf, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %ops250 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ops250, align 4
  call void %181(ptr noundef %179, ptr noundef nonnull %timing_params, ptr noundef %call160) #10
  %182 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw_ctl, align 4
  %setup_intf_cfg255 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %183, i32 0, i32 9, i32 9
  %184 = ptrtoint ptr %setup_intf_cfg255 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %setup_intf_cfg255, align 4
  call void %185(ptr noundef %183, ptr noundef nonnull %intf_cfg) #10
  %186 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw_intf, align 4
  %bind_pingpong_blk = getelementptr inbounds %struct.dpu_hw_intf, ptr %187, i32 0, i32 5, i32 5
  %188 = ptrtoint ptr %bind_pingpong_blk to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bind_pingpong_blk, align 4
  %tobool259.not = icmp eq ptr %189, null
  br i1 %tobool259.not, label %do.body239.if.end267_crit_edge, label %if.then260

do.body239.if.end267_crit_edge:                   ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end267

if.then260:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw_pp, align 4
  %idx266 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %idx266 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %idx266, align 4
  call void %189(ptr noundef %187, i1 noundef zeroext true, i32 noundef %193) #10
  br label %if.end267

if.end267:                                        ; preds = %if.then260, %do.body239.if.end267_crit_edge
  %194 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw_pp, align 4
  %merge_3d269 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %merge_3d269 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %merge_3d269, align 4
  %tobool270.not = icmp eq ptr %197, null
  br i1 %tobool270.not, label %if.end267.if.end278_crit_edge, label %if.then271

if.end267.if.end278_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278

if.then271:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  %ops274 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %197, i32 0, i32 4
  %198 = ptrtoint ptr %ops274 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ops274, align 4
  %200 = ptrtoint ptr %mode_3d to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %mode_3d, align 4
  call void %199(ptr noundef nonnull %197, i32 noundef %201) #10
  br label %if.end278

if.end278:                                        ; preds = %if.then271, %if.end267.if.end278_crit_edge
  %202 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %enc_spinlock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %203, i32 noundef %call244) #10
  call fastcc void @programmable_fetch_config(ptr noundef %phys_enc, ptr noundef nonnull %timing_params)
  br label %cleanup

cleanup:                                          ; preds = %if.end278, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %intf_cfg) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %timing_params) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %mode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_get_dpu_format_ext(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @programmable_fetch_config(ptr noundef %phys_enc, ptr nocapture noundef readonly %timing) unnamed_addr #0 align 64 {
entry:
  %f = alloca %struct.intf_prog_fetch, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f) #10
  %0 = ptrtoint ptr %f to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %f, align 8
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %1 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_intf, align 4
  %setup_prg_fetch = getelementptr inbounds %struct.dpu_hw_intf, ptr %2, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %setup_prg_fetch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setup_prg_fetch, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b149 = load i1, ptr @programmable_fetch_config.__already_done, align 1
  br i1 %.b149, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !172

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @programmable_fetch_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39:                                         ; preds = %entry
  %call = tail call fastcc i32 @programmable_fetch_get_num_lines(ptr noundef %phys_enc, ptr noundef %timing)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %if.end39.do.body45_crit_edge, label %if.then41

if.end39.do.body45_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %yres.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 3
  %5 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres.i, align 4
  %v_back_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 6
  %7 = ptrtoint ptr %v_back_porch.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v_back_porch.i, align 4
  %v_front_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 7
  %9 = ptrtoint ptr %v_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v_front_porch.i, align 4
  %vsync_pulse_width.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 9
  %11 = ptrtoint ptr %vsync_pulse_width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsync_pulse_width.i, align 4
  %xres.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 2
  %13 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres.i, align 4
  %h_back_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 4
  %15 = ptrtoint ptr %h_back_porch.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_back_porch.i, align 4
  %h_front_porch.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 5
  %17 = ptrtoint ptr %h_front_porch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_front_porch.i, align 4
  %hsync_pulse_width.i = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 8
  %19 = ptrtoint ptr %hsync_pulse_width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hsync_pulse_width.i, align 4
  %add.i151 = add i32 %16, %14
  %add1.i152 = add i32 %add.i151, %18
  %add2.i153 = add i32 %add1.i152, %20
  %add.i = sub i32 %6, %call
  %add1.i = add i32 %add.i, %8
  %add2.i = add i32 %add1.i, %10
  %sub = add i32 %add2.i, %12
  %mul = mul i32 %add2.i153, %sub
  %add = add i32 %mul, 1
  %21 = ptrtoint ptr %f to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %f, align 8
  %fetch_start = getelementptr inbounds %struct.intf_prog_fetch, ptr %f, i32 0, i32 1
  %22 = ptrtoint ptr %fetch_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %fetch_start, align 4
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %if.end39.do.body45_crit_edge
  %vfp_fetch_start_vsync_counter.0 = phi i32 [ %add, %if.then41 ], [ 0, %if.end39.do.body45_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %23 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body61, label %if.then47

if.then47:                                        ; preds = %do.body45
  %tobool48.not = icmp eq ptr %phys_enc, null
  br i1 %tobool48.not, label %if.then47.cond.end59_crit_edge, label %land.lhs.true

if.then47.cond.end59_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end59

land.lhs.true:                                    ; preds = %if.then47
  %24 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phys_enc, align 4
  %tobool49.not = icmp eq ptr %25, null
  br i1 %tobool49.not, label %land.lhs.true.land.lhs.true52_crit_edge, label %cond.true

land.lhs.true.land.lhs.true52_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base, align 4
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %cond.true, %land.lhs.true.land.lhs.true52_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true52_crit_edge ], [ %27, %cond.true ]
  %28 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_intf, align 4
  %tobool54.not = icmp eq ptr %29, null
  br i1 %tobool54.not, label %land.lhs.true52.cond.end59_crit_edge, label %cond.true55

land.lhs.true52.cond.end59_crit_edge:             ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end59

cond.true55:                                      ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx, align 4
  %sub57 = add i32 %31, -1
  br label %cond.end59

cond.end59:                                       ; preds = %cond.true55, %land.lhs.true52.cond.end59_crit_edge, %if.then47.cond.end59_crit_edge
  %cond156 = phi i32 [ %cond.ph, %cond.true55 ], [ %cond.ph, %land.lhs.true52.cond.end59_crit_edge ], [ -1, %if.then47.cond.end59_crit_edge ]
  %cond60 = phi i32 [ %sub57, %cond.true55 ], [ -1, %land.lhs.true52.cond.end59_crit_edge ], [ -1, %if.then47.cond.end59_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %cond156, i32 noundef %cond60, i32 noundef %call, i32 noundef %vfp_fetch_start_vsync_counter.0) #10
  br label %do.body102

do.body61:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @programmable_fetch_config.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_fetch_config, %if.then72)) #10
          to label %do.body102 [label %if.then72], !srcloc !162

if.then72:                                        ; preds = %do.body61
  %tobool73.not = icmp eq ptr %phys_enc, null
  br i1 %tobool73.not, label %if.then72.cond.end93_crit_edge, label %land.lhs.true74

if.then72.cond.end93_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end93

land.lhs.true74:                                  ; preds = %if.then72
  %32 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phys_enc, align 4
  %tobool76.not = icmp eq ptr %33, null
  br i1 %tobool76.not, label %land.lhs.true74.land.lhs.true85_crit_edge, label %cond.true77

land.lhs.true74.land.lhs.true85_crit_edge:        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true85

cond.true77:                                      ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  %base79 = getelementptr inbounds %struct.drm_encoder, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %base79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base79, align 4
  br label %land.lhs.true85

land.lhs.true85:                                  ; preds = %cond.true77, %land.lhs.true74.land.lhs.true85_crit_edge
  %cond83.ph = phi i32 [ -1, %land.lhs.true74.land.lhs.true85_crit_edge ], [ %35, %cond.true77 ]
  %36 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_intf, align 4
  %tobool87.not = icmp eq ptr %37, null
  br i1 %tobool87.not, label %land.lhs.true85.cond.end93_crit_edge, label %cond.true88

land.lhs.true85.cond.end93_crit_edge:             ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end93

cond.true88:                                      ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  %idx90 = getelementptr inbounds %struct.dpu_hw_intf, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %idx90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx90, align 4
  %sub91 = add i32 %39, -1
  br label %cond.end93

cond.end93:                                       ; preds = %cond.true88, %land.lhs.true85.cond.end93_crit_edge, %if.then72.cond.end93_crit_edge
  %cond83160 = phi i32 [ %cond83.ph, %cond.true88 ], [ %cond83.ph, %land.lhs.true85.cond.end93_crit_edge ], [ -1, %if.then72.cond.end93_crit_edge ]
  %cond94 = phi i32 [ %sub91, %cond.true88 ], [ -1, %land.lhs.true85.cond.end93_crit_edge ], [ -1, %if.then72.cond.end93_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @programmable_fetch_config.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 221, i32 noundef %cond83160, i32 noundef %cond94, i32 noundef %call, i32 noundef %vfp_fetch_start_vsync_counter.0) #10
  br label %do.body102

do.body102:                                       ; preds = %cond.end93, %do.body61, %cond.end59
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 13
  %40 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enc_spinlock, align 4
  %call105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #10
  %42 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_intf, align 4
  %setup_prg_fetch112 = getelementptr inbounds %struct.dpu_hw_intf, ptr %43, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %setup_prg_fetch112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %setup_prg_fetch112, align 4
  call void %45(ptr noundef %43, ptr noundef nonnull %f) #10
  %46 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enc_spinlock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %call105) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body102, %if.then, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @programmable_fetch_get_num_lines(ptr noundef readonly %phys_enc, ptr nocapture noundef readonly %timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %0 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_intf, align 4
  %cap = getelementptr inbounds %struct.dpu_hw_intf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cap, align 4
  %prog_fetch_lines_worst_case = getelementptr inbounds %struct.dpu_intf_cfg, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %prog_fetch_lines_worst_case to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog_fetch_lines_worst_case, align 4
  %v_back_porch = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 6
  %6 = ptrtoint ptr %v_back_porch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v_back_porch, align 4
  %vsync_pulse_width = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 9
  %8 = ptrtoint ptr %vsync_pulse_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsync_pulse_width, align 4
  %add = add i32 %9, %7
  %sub = sub i32 %5, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.not = icmp ugt i32 %5, %add
  br i1 %cmp.not, label %if.else45, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %10 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body14, label %if.then1

if.then1:                                         ; preds = %do.body
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %if.then1.cond.end12_crit_edge, label %land.lhs.true

if.then1.cond.end12_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

land.lhs.true:                                    ; preds = %if.then1
  %11 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phys_enc, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %land.lhs.true.land.lhs.true5_crit_edge, label %cond.true

land.lhs.true.land.lhs.true5_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true5

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.drm_encoder, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  br label %land.lhs.true5

land.lhs.true5:                                   ; preds = %cond.true, %land.lhs.true.land.lhs.true5_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.land.lhs.true5_crit_edge ], [ %14, %cond.true ]
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %land.lhs.true5.cond.end12_crit_edge, label %cond.true8

land.lhs.true5.cond.end12_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.true8:                                       ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  %sub10 = add i32 %16, -1
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true8, %land.lhs.true5.cond.end12_crit_edge, %if.then1.cond.end12_crit_edge
  %cond471 = phi i32 [ %cond.ph, %cond.true8 ], [ %cond.ph, %land.lhs.true5.cond.end12_crit_edge ], [ -1, %if.then1.cond.end12_crit_edge ]
  %cond13 = phi i32 [ %sub10, %cond.true8 ], [ -1, %land.lhs.true5.cond.end12_crit_edge ], [ -1, %if.then1.cond.end12_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %cond471, i32 noundef %cond13) #10
  br label %do.body210

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_fetch_get_num_lines, %if.then19)) #10
          to label %do.body210 [label %if.then19], !srcloc !162

if.then19:                                        ; preds = %do.body14
  %tobool20.not = icmp eq ptr %phys_enc, null
  br i1 %tobool20.not, label %if.then19.cond.end40_crit_edge, label %land.lhs.true21

if.then19.cond.end40_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end40

land.lhs.true21:                                  ; preds = %if.then19
  %17 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phys_enc, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %land.lhs.true21.land.lhs.true32_crit_edge, label %cond.true24

land.lhs.true21.land.lhs.true32_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32

cond.true24:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  %base26 = getelementptr inbounds %struct.drm_encoder, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %base26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base26, align 4
  br label %land.lhs.true32

land.lhs.true32:                                  ; preds = %cond.true24, %land.lhs.true21.land.lhs.true32_crit_edge
  %cond30.ph = phi i32 [ -1, %land.lhs.true21.land.lhs.true32_crit_edge ], [ %20, %cond.true24 ]
  %21 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_intf, align 4
  %tobool34.not = icmp eq ptr %22, null
  br i1 %tobool34.not, label %land.lhs.true32.cond.end40_crit_edge, label %cond.true35

land.lhs.true32.cond.end40_crit_edge:             ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end40

cond.true35:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  %idx37 = getelementptr inbounds %struct.dpu_hw_intf, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %idx37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx37, align 4
  %sub38 = add i32 %24, -1
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true35, %land.lhs.true32.cond.end40_crit_edge, %if.then19.cond.end40_crit_edge
  %cond30475 = phi i32 [ %cond30.ph, %cond.true35 ], [ %cond30.ph, %land.lhs.true32.cond.end40_crit_edge ], [ -1, %if.then19.cond.end40_crit_edge ]
  %cond41 = phi i32 [ %sub38, %cond.true35 ], [ -1, %land.lhs.true32.cond.end40_crit_edge ], [ -1, %if.then19.cond.end40_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef 161, i32 noundef %cond30475, i32 noundef %cond41) #10
  br label %do.body210

if.else45:                                        ; preds = %entry
  %v_front_porch = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 7
  %25 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v_front_porch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub)
  %cmp46 = icmp ult i32 %26, %sub
  br i1 %cmp46, label %land.end, label %do.body141

land.end:                                         ; preds = %if.else45
  %.b448 = load i1, ptr @programmable_fetch_get_num_lines.__already_done, align 1
  br i1 %.b448, label %land.end.if.end64_crit_edge, label %if.then58, !prof !172

land.end.if.end64_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then58:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @programmable_fetch_get_num_lines.__already_done, align 1
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 166) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %land.end.if.end64_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %27 = load i32, ptr @__drm_debug, align 4
  %and.i461 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i461)
  %tobool.i462.not = icmp eq i32 %and.i461, 0
  br i1 %tobool.i462.not, label %do.body98, label %if.then74

if.then74:                                        ; preds = %if.end64
  %tobool75.not = icmp eq ptr %phys_enc, null
  br i1 %tobool75.not, label %if.then74.cond.end95_crit_edge, label %land.lhs.true76

if.then74.cond.end95_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end95

land.lhs.true76:                                  ; preds = %if.then74
  %28 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phys_enc, align 4
  %tobool78.not = icmp eq ptr %29, null
  br i1 %tobool78.not, label %land.lhs.true76.land.lhs.true87_crit_edge, label %cond.true79

land.lhs.true76.land.lhs.true87_crit_edge:        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true87

cond.true79:                                      ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  %base81 = getelementptr inbounds %struct.drm_encoder, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %base81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base81, align 4
  br label %land.lhs.true87

land.lhs.true87:                                  ; preds = %cond.true79, %land.lhs.true76.land.lhs.true87_crit_edge
  %cond85.ph = phi i32 [ -1, %land.lhs.true76.land.lhs.true87_crit_edge ], [ %31, %cond.true79 ]
  %32 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_intf, align 4
  %tobool89.not = icmp eq ptr %33, null
  br i1 %tobool89.not, label %land.lhs.true87.cond.end95_crit_edge, label %cond.true90

land.lhs.true87.cond.end95_crit_edge:             ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end95

cond.true90:                                      ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  %idx92 = getelementptr inbounds %struct.dpu_hw_intf, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %idx92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx92, align 4
  %sub93 = add i32 %35, -1
  br label %cond.end95

cond.end95:                                       ; preds = %cond.true90, %land.lhs.true87.cond.end95_crit_edge, %if.then74.cond.end95_crit_edge
  %cond85478 = phi i32 [ %cond85.ph, %cond.true90 ], [ %cond85.ph, %land.lhs.true87.cond.end95_crit_edge ], [ -1, %if.then74.cond.end95_crit_edge ]
  %cond96 = phi i32 [ %sub93, %cond.true90 ], [ -1, %land.lhs.true87.cond.end95_crit_edge ], [ -1, %if.then74.cond.end95_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %cond85478, i32 noundef %cond96) #10
  br label %do.end138

do.body98:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_fetch_get_num_lines, %if.then110)) #10
          to label %do.end138 [label %if.then110], !srcloc !162

if.then110:                                       ; preds = %do.body98
  %tobool111.not = icmp eq ptr %phys_enc, null
  br i1 %tobool111.not, label %if.then110.cond.end131_crit_edge, label %land.lhs.true112

if.then110.cond.end131_crit_edge:                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end131

land.lhs.true112:                                 ; preds = %if.then110
  %36 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phys_enc, align 4
  %tobool114.not = icmp eq ptr %37, null
  br i1 %tobool114.not, label %land.lhs.true112.land.lhs.true123_crit_edge, label %cond.true115

land.lhs.true112.land.lhs.true123_crit_edge:      ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true123

cond.true115:                                     ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  %base117 = getelementptr inbounds %struct.drm_encoder, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %base117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base117, align 4
  br label %land.lhs.true123

land.lhs.true123:                                 ; preds = %cond.true115, %land.lhs.true112.land.lhs.true123_crit_edge
  %cond121.ph = phi i32 [ -1, %land.lhs.true112.land.lhs.true123_crit_edge ], [ %39, %cond.true115 ]
  %40 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_intf, align 4
  %tobool125.not = icmp eq ptr %41, null
  br i1 %tobool125.not, label %land.lhs.true123.cond.end131_crit_edge, label %cond.true126

land.lhs.true123.cond.end131_crit_edge:           ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end131

cond.true126:                                     ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  %idx128 = getelementptr inbounds %struct.dpu_hw_intf, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %idx128 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx128, align 4
  %sub129 = add i32 %43, -1
  br label %cond.end131

cond.end131:                                      ; preds = %cond.true126, %land.lhs.true123.cond.end131_crit_edge, %if.then110.cond.end131_crit_edge
  %cond121482 = phi i32 [ %cond121.ph, %cond.true126 ], [ %cond121.ph, %land.lhs.true123.cond.end131_crit_edge ], [ -1, %if.then110.cond.end131_crit_edge ]
  %cond132 = phi i32 [ %sub129, %cond.true126 ], [ -1, %land.lhs.true123.cond.end131_crit_edge ], [ -1, %if.then110.cond.end131_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, i32 noundef 168, i32 noundef %cond121482, i32 noundef %cond132) #10
  br label %do.end138

do.end138:                                        ; preds = %cond.end131, %do.body98, %cond.end95
  %44 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v_front_porch, align 4
  br label %do.body210

do.body141:                                       ; preds = %if.else45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %46 = load i32, ptr @__drm_debug, align 4
  %and.i463 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i463)
  %tobool.i464.not = icmp eq i32 %and.i463, 0
  br i1 %tobool.i464.not, label %do.body167, label %if.then143

if.then143:                                       ; preds = %do.body141
  %tobool144.not = icmp eq ptr %phys_enc, null
  br i1 %tobool144.not, label %if.then143.cond.end164_crit_edge, label %land.lhs.true145

if.then143.cond.end164_crit_edge:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end164

land.lhs.true145:                                 ; preds = %if.then143
  %47 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phys_enc, align 4
  %tobool147.not = icmp eq ptr %48, null
  br i1 %tobool147.not, label %land.lhs.true145.land.lhs.true156_crit_edge, label %cond.true148

land.lhs.true145.land.lhs.true156_crit_edge:      ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true156

cond.true148:                                     ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  %base150 = getelementptr inbounds %struct.drm_encoder, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %base150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base150, align 4
  br label %land.lhs.true156

land.lhs.true156:                                 ; preds = %cond.true148, %land.lhs.true145.land.lhs.true156_crit_edge
  %cond154.ph = phi i32 [ -1, %land.lhs.true145.land.lhs.true156_crit_edge ], [ %50, %cond.true148 ]
  %tobool158.not = icmp eq ptr %1, null
  br i1 %tobool158.not, label %land.lhs.true156.cond.end164_crit_edge, label %cond.true159

land.lhs.true156.cond.end164_crit_edge:           ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end164

cond.true159:                                     ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  %idx161 = getelementptr inbounds %struct.dpu_hw_intf, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %idx161 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx161, align 4
  %sub162 = add i32 %52, -1
  br label %cond.end164

cond.end164:                                      ; preds = %cond.true159, %land.lhs.true156.cond.end164_crit_edge, %if.then143.cond.end164_crit_edge
  %cond154485 = phi i32 [ %cond154.ph, %cond.true159 ], [ %cond154.ph, %land.lhs.true156.cond.end164_crit_edge ], [ -1, %if.then143.cond.end164_crit_edge ]
  %cond165 = phi i32 [ %sub162, %cond.true159 ], [ -1, %land.lhs.true156.cond.end164_crit_edge ], [ -1, %if.then143.cond.end164_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef %cond154485, i32 noundef %cond165) #10
  br label %do.body210

do.body167:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_fetch_get_num_lines, %if.then179)) #10
          to label %do.body210 [label %if.then179], !srcloc !162

if.then179:                                       ; preds = %do.body167
  %tobool180.not = icmp eq ptr %phys_enc, null
  br i1 %tobool180.not, label %if.then179.cond.end200_crit_edge, label %land.lhs.true181

if.then179.cond.end200_crit_edge:                 ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end200

land.lhs.true181:                                 ; preds = %if.then179
  %53 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phys_enc, align 4
  %tobool183.not = icmp eq ptr %54, null
  br i1 %tobool183.not, label %land.lhs.true181.land.lhs.true192_crit_edge, label %cond.true184

land.lhs.true181.land.lhs.true192_crit_edge:      ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true192

cond.true184:                                     ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #12
  %base186 = getelementptr inbounds %struct.drm_encoder, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %base186 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base186, align 4
  br label %land.lhs.true192

land.lhs.true192:                                 ; preds = %cond.true184, %land.lhs.true181.land.lhs.true192_crit_edge
  %cond190.ph = phi i32 [ -1, %land.lhs.true181.land.lhs.true192_crit_edge ], [ %56, %cond.true184 ]
  %57 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_intf, align 4
  %tobool194.not = icmp eq ptr %58, null
  br i1 %tobool194.not, label %land.lhs.true192.cond.end200_crit_edge, label %cond.true195

land.lhs.true192.cond.end200_crit_edge:           ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end200

cond.true195:                                     ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #12
  %idx197 = getelementptr inbounds %struct.dpu_hw_intf, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %idx197 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx197, align 4
  %sub198 = add i32 %60, -1
  br label %cond.end200

cond.end200:                                      ; preds = %cond.true195, %land.lhs.true192.cond.end200_crit_edge, %if.then179.cond.end200_crit_edge
  %cond190489 = phi i32 [ %cond190.ph, %cond.true195 ], [ %cond190.ph, %land.lhs.true192.cond.end200_crit_edge ], [ -1, %if.then179.cond.end200_crit_edge ]
  %cond201 = phi i32 [ %sub198, %cond.true195 ], [ -1, %land.lhs.true192.cond.end200_crit_edge ], [ -1, %if.then179.cond.end200_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.41, i32 noundef 171, i32 noundef %cond190489, i32 noundef %cond201) #10
  br label %do.body210

do.body210:                                       ; preds = %cond.end200, %do.body167, %cond.end164, %do.end138, %cond.end40, %do.body14, %cond.end12
  %actual_vfp_lines.0 = phi i32 [ %45, %do.end138 ], [ 0, %cond.end40 ], [ 0, %cond.end12 ], [ %sub, %cond.end200 ], [ %sub, %cond.end164 ], [ 0, %do.body14 ], [ %sub, %do.body167 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %61 = load i32, ptr @__drm_debug, align 4
  %and.i465 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i465)
  %tobool.i466.not = icmp eq i32 %and.i465, 0
  br i1 %tobool.i466.not, label %do.body239, label %if.then212

if.then212:                                       ; preds = %do.body210
  %tobool213.not = icmp eq ptr %phys_enc, null
  br i1 %tobool213.not, label %if.then212.cond.end233_crit_edge, label %land.lhs.true214

if.then212.cond.end233_crit_edge:                 ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end233

land.lhs.true214:                                 ; preds = %if.then212
  %62 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phys_enc, align 4
  %tobool216.not = icmp eq ptr %63, null
  br i1 %tobool216.not, label %land.lhs.true214.land.lhs.true225_crit_edge, label %cond.true217

land.lhs.true214.land.lhs.true225_crit_edge:      ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true225

cond.true217:                                     ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #12
  %base219 = getelementptr inbounds %struct.drm_encoder, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %base219 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base219, align 4
  br label %land.lhs.true225

land.lhs.true225:                                 ; preds = %cond.true217, %land.lhs.true214.land.lhs.true225_crit_edge
  %cond223.ph = phi i32 [ -1, %land.lhs.true214.land.lhs.true225_crit_edge ], [ %65, %cond.true217 ]
  %66 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_intf, align 4
  %tobool227.not = icmp eq ptr %67, null
  br i1 %tobool227.not, label %land.lhs.true225.cond.end233_crit_edge, label %cond.true228

land.lhs.true225.cond.end233_crit_edge:           ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end233

cond.true228:                                     ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #12
  %idx230 = getelementptr inbounds %struct.dpu_hw_intf, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %idx230 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idx230, align 4
  %sub231 = add i32 %69, -1
  br label %cond.end233

cond.end233:                                      ; preds = %cond.true228, %land.lhs.true225.cond.end233_crit_edge, %if.then212.cond.end233_crit_edge
  %cond223492 = phi i32 [ %cond223.ph, %cond.true228 ], [ %cond223.ph, %land.lhs.true225.cond.end233_crit_edge ], [ -1, %if.then212.cond.end233_crit_edge ]
  %cond234 = phi i32 [ %sub231, %cond.true228 ], [ -1, %land.lhs.true225.cond.end233_crit_edge ], [ -1, %if.then212.cond.end233_crit_edge ]
  %v_front_porch235 = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 7
  %70 = ptrtoint ptr %v_front_porch235 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %v_front_porch235, align 4
  %72 = ptrtoint ptr %v_back_porch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %v_back_porch, align 4
  %74 = ptrtoint ptr %vsync_pulse_width to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vsync_pulse_width, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %cond223492, i32 noundef %cond234, i32 noundef %71, i32 noundef %73, i32 noundef %75) #10
  br label %do.body283

do.body239:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_fetch_get_num_lines, %if.then251)) #10
          to label %do.body283 [label %if.then251], !srcloc !162

if.then251:                                       ; preds = %do.body239
  %tobool252.not = icmp eq ptr %phys_enc, null
  br i1 %tobool252.not, label %if.then251.cond.end272_crit_edge, label %land.lhs.true253

if.then251.cond.end272_crit_edge:                 ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end272

land.lhs.true253:                                 ; preds = %if.then251
  %76 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phys_enc, align 4
  %tobool255.not = icmp eq ptr %77, null
  br i1 %tobool255.not, label %land.lhs.true253.land.lhs.true264_crit_edge, label %cond.true256

land.lhs.true253.land.lhs.true264_crit_edge:      ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true264

cond.true256:                                     ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #12
  %base258 = getelementptr inbounds %struct.drm_encoder, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %base258 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base258, align 4
  br label %land.lhs.true264

land.lhs.true264:                                 ; preds = %cond.true256, %land.lhs.true253.land.lhs.true264_crit_edge
  %cond262.ph = phi i32 [ -1, %land.lhs.true253.land.lhs.true264_crit_edge ], [ %79, %cond.true256 ]
  %80 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_intf, align 4
  %tobool266.not = icmp eq ptr %81, null
  br i1 %tobool266.not, label %land.lhs.true264.cond.end272_crit_edge, label %cond.true267

land.lhs.true264.cond.end272_crit_edge:           ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end272

cond.true267:                                     ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #12
  %idx269 = getelementptr inbounds %struct.dpu_hw_intf, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %idx269 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %idx269, align 4
  %sub270 = add i32 %83, -1
  br label %cond.end272

cond.end272:                                      ; preds = %cond.true267, %land.lhs.true264.cond.end272_crit_edge, %if.then251.cond.end272_crit_edge
  %cond262496 = phi i32 [ %cond262.ph, %cond.true267 ], [ %cond262.ph, %land.lhs.true264.cond.end272_crit_edge ], [ -1, %if.then251.cond.end272_crit_edge ]
  %cond273 = phi i32 [ %sub270, %cond.true267 ], [ -1, %land.lhs.true264.cond.end272_crit_edge ], [ -1, %if.then251.cond.end272_crit_edge ]
  %v_front_porch274 = getelementptr inbounds %struct.intf_timing_params, ptr %timing, i32 0, i32 7
  %84 = ptrtoint ptr %v_front_porch274 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %v_front_porch274, align 4
  %86 = ptrtoint ptr %v_back_porch to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %v_back_porch, align 4
  %88 = ptrtoint ptr %vsync_pulse_width to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vsync_pulse_width, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, i32 noundef 178, i32 noundef %cond262496, i32 noundef %cond273, i32 noundef %85, i32 noundef %87, i32 noundef %89) #10
  br label %do.body283

do.body283:                                       ; preds = %cond.end272, %do.body239, %cond.end233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %90 = load i32, ptr @__drm_debug, align 4
  %and.i467 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i467)
  %tobool.i468.not = icmp eq i32 %and.i467, 0
  br i1 %tobool.i468.not, label %do.body309, label %if.then285

if.then285:                                       ; preds = %do.body283
  %tobool286.not = icmp eq ptr %phys_enc, null
  br i1 %tobool286.not, label %if.then285.cond.end306_crit_edge, label %land.lhs.true287

if.then285.cond.end306_crit_edge:                 ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end306

land.lhs.true287:                                 ; preds = %if.then285
  %91 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phys_enc, align 4
  %tobool289.not = icmp eq ptr %92, null
  br i1 %tobool289.not, label %land.lhs.true287.land.lhs.true298_crit_edge, label %cond.true290

land.lhs.true287.land.lhs.true298_crit_edge:      ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true298

cond.true290:                                     ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #12
  %base292 = getelementptr inbounds %struct.drm_encoder, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %base292 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %base292, align 4
  br label %land.lhs.true298

land.lhs.true298:                                 ; preds = %cond.true290, %land.lhs.true287.land.lhs.true298_crit_edge
  %cond296.ph = phi i32 [ -1, %land.lhs.true287.land.lhs.true298_crit_edge ], [ %94, %cond.true290 ]
  %95 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_intf, align 4
  %tobool300.not = icmp eq ptr %96, null
  br i1 %tobool300.not, label %land.lhs.true298.cond.end306_crit_edge, label %cond.true301

land.lhs.true298.cond.end306_crit_edge:           ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end306

cond.true301:                                     ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #12
  %idx303 = getelementptr inbounds %struct.dpu_hw_intf, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %idx303 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %idx303, align 4
  %sub304 = add i32 %98, -1
  br label %cond.end306

cond.end306:                                      ; preds = %cond.true301, %land.lhs.true298.cond.end306_crit_edge, %if.then285.cond.end306_crit_edge
  %cond296499 = phi i32 [ %cond296.ph, %cond.true301 ], [ %cond296.ph, %land.lhs.true298.cond.end306_crit_edge ], [ -1, %if.then285.cond.end306_crit_edge ]
  %cond307 = phi i32 [ %sub304, %cond.true301 ], [ -1, %land.lhs.true298.cond.end306_crit_edge ], [ -1, %if.then285.cond.end306_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %cond296499, i32 noundef %cond307, i32 noundef %5, i32 noundef %sub, i32 noundef %actual_vfp_lines.0) #10
  br label %do.end349

do.body309:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_fetch_get_num_lines, %if.then321)) #10
          to label %do.end349 [label %if.then321], !srcloc !162

if.then321:                                       ; preds = %do.body309
  %tobool322.not = icmp eq ptr %phys_enc, null
  br i1 %tobool322.not, label %if.then321.cond.end342_crit_edge, label %land.lhs.true323

if.then321.cond.end342_crit_edge:                 ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end342

land.lhs.true323:                                 ; preds = %if.then321
  %99 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phys_enc, align 4
  %tobool325.not = icmp eq ptr %100, null
  br i1 %tobool325.not, label %land.lhs.true323.land.lhs.true334_crit_edge, label %cond.true326

land.lhs.true323.land.lhs.true334_crit_edge:      ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true334

cond.true326:                                     ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #12
  %base328 = getelementptr inbounds %struct.drm_encoder, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %base328 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base328, align 4
  br label %land.lhs.true334

land.lhs.true334:                                 ; preds = %cond.true326, %land.lhs.true323.land.lhs.true334_crit_edge
  %cond332.ph = phi i32 [ -1, %land.lhs.true323.land.lhs.true334_crit_edge ], [ %102, %cond.true326 ]
  %103 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_intf, align 4
  %tobool336.not = icmp eq ptr %104, null
  br i1 %tobool336.not, label %land.lhs.true334.cond.end342_crit_edge, label %cond.true337

land.lhs.true334.cond.end342_crit_edge:           ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end342

cond.true337:                                     ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #12
  %idx339 = getelementptr inbounds %struct.dpu_hw_intf, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %idx339 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %idx339, align 4
  %sub340 = add i32 %106, -1
  br label %cond.end342

cond.end342:                                      ; preds = %cond.true337, %land.lhs.true334.cond.end342_crit_edge, %if.then321.cond.end342_crit_edge
  %cond332503 = phi i32 [ %cond332.ph, %cond.true337 ], [ %cond332.ph, %land.lhs.true334.cond.end342_crit_edge ], [ -1, %if.then321.cond.end342_crit_edge ]
  %cond343 = phi i32 [ %sub340, %cond.true337 ], [ -1, %land.lhs.true334.cond.end342_crit_edge ], [ -1, %if.then321.cond.end342_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.41, i32 noundef 181, i32 noundef %cond332503, i32 noundef %cond343, i32 noundef %5, i32 noundef %sub, i32 noundef %actual_vfp_lines.0) #10
  br label %do.end349

do.end349:                                        ; preds = %cond.end342, %do.body309, %cond.end306
  ret i32 %actual_vfp_lines.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_register_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_unregister_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_wait_for_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_report_irq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_phys_vid_irq_ctrl(i32 noundef %drm_id, i32 noundef %intf_idx, i1 noundef zeroext %enable, i32 noundef %refcnt) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_phys_vid_irq_ctrl, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !172

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !173
  %call43 = tail call i32 @__traceiter_dpu_enc_phys_vid_irq_ctrl(ptr noundef null, i32 noundef %drm_id, i32 noundef %intf_idx, i1 noundef zeroext %enable, i32 noundef %refcnt) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !174
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !172

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_phys_vid_irq_ctrl.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dpu_enc_phys_vid_irq_ctrl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 630, ptr noundef nonnull @.str.67) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_vid_irq_ctrl(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_phys_vid_post_kickoff(i32 noundef %drm_id, i32 noundef %intf_idx) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_phys_vid_post_kickoff, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !172

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !177
  %call42 = tail call i32 @__traceiter_dpu_enc_phys_vid_post_kickoff(ptr noundef null, i32 noundef %drm_id, i32 noundef %intf_idx) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !178
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !172

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_phys_vid_post_kickoff.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dpu_enc_phys_vid_post_kickoff.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 609, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_vid_post_kickoff(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tracing_mark_write(i32 noundef %pid, i1 noundef zeroext %trace_begin) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), ptr blockaddress(@trace_tracing_mark_write, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !172

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !179
  %call43 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %pid, ptr noundef nonnull @.str.71, i1 noundef zeroext %trace_begin) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !172

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tracing_mark_write.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_tracing_mark_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 121, ptr noundef nonnull @.str.67) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !149, !151}
!llvm.named.register.sp = !{!152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 704, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_encoder_phys_vid_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_encoder_phys_vid_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 710, i32 3}
!8 = !{ptr @dpu_encoder_phys_vid_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dpu_encoder_phys_vid_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 717, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug491, !11, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 734, i32 14}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 739, i32 14}
!19 = !{ptr @dpu_encoder_phys_vid_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 745, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 748, i32 2}
!24 = !{ptr @dpu_encoder_phys_vid_init.__UNIQUE_ID_ddebug492, !23, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 374, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dpu_encoder_phys_vid_mode_set.__UNIQUE_ID_ddebug487, !27, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!30 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 233, i32 2}
!33 = !{ptr @dpu_encoder_phys_vid_mode_fixup.__UNIQUE_ID_ddebug483, !32, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 428, i32 2}
!36 = !{ptr @dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug488, !35, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 451, i32 2}
!39 = !{ptr @dpu_encoder_phys_vid_enable.__UNIQUE_ID_ddebug489, !38, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!40 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 252, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 258, i32 3}
!48 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 262, i32 2}
!52 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug484, !51, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 271, i32 3}
!56 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug485, !55, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!57 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 281, i32 2}
!60 = !{ptr @dpu_encoder_phys_vid_setup_timing_engine.__UNIQUE_ID_ddebug486, !59, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!61 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 53, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @drm_mode_to_intf_timing_params._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @drm_mode_to_intf_timing_params._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 57, i32 3}
!69 = !{ptr @drm_mode_to_intf_timing_params._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @drm_mode_to_intf_timing_params._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 206, i32 6}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 219, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @programmable_fetch_config.__UNIQUE_ID_ddebug482, !74, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!77 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 160, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug477, !79, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!82 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 165, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @programmable_fetch_get_num_lines._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @programmable_fetch_get_num_lines._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 167, i32 3}
!90 = !{ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug478, !89, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!91 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 171, i32 3}
!94 = !{ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug479, !93, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!95 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 175, i32 2}
!98 = !{ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug480, !97, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!99 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 179, i32 2}
!102 = !{ptr @programmable_fetch_get_num_lines.__UNIQUE_ID_ddebug481, !101, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!103 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 552, i32 3}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dpu_encoder_phys_vid_disable._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @dpu_encoder_phys_vid_disable._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 557, i32 3}
!111 = !{ptr @dpu_encoder_phys_vid_disable._entry.54, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @dpu_encoder_phys_vid_disable._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 566, i32 3}
!115 = !{ptr @dpu_encoder_phys_vid_disable._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @dpu_encoder_phys_vid_disable._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 588, i32 4}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 464, i32 2}
!121 = !{ptr @dpu_encoder_phys_vid_destroy.__UNIQUE_ID_ddebug490, !120, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 403, i32 2}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 414, i32 3}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 513, i32 3}
!128 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @dpu_encoder_phys_vid_wait_for_commit_done._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @dpu_encoder_phys_vid_wait_for_commit_done._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 611, i32 1}
!133 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!135 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!138 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 539, i32 3}
!141 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @dpu_encoder_phys_vid_prepare_for_kickoff._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @dpu_encoder_phys_vid_prepare_for_kickoff._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 597, i32 1}
!146 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c", i32 319, i32 2}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 106, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{!"sp"}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 2148820556, i64 2148820561, i64 2148820574, i64 2148820618, i64 2148820652, i64 2148820673}
!163 = !{i64 2148249170}
!164 = !{i64 734790, i64 734815, i64 734837, i64 734853, i64 734865, i64 734885, i64 734909, i64 734925, i64 734937}
!165 = !{i64 2148249358}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2148335162}
!168 = !{i64 2148250471, i64 2148250503, i64 2148250532, i64 2148250566, i64 2148250597, i64 2148250620}
!169 = !{i64 2148335391}
!170 = !{i64 2148252936, i64 2148252968, i64 2148252997, i64 2148253031, i64 2148253062, i64 2148253085}
!171 = !{i64 2148338432}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2158237252}
!174 = !{i64 2158237529}
!175 = !{i64 2150046879}
!176 = !{i64 2150047915}
!177 = !{i64 2158219013}
!178 = !{i64 2158219266}
!179 = !{i64 2157473070}
!180 = !{i64 2157473313}
