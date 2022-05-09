; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_enc_phys_init_params = type { ptr, ptr, ptr, i32, i32, ptr }
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
%struct.dpu_encoder_phys_cmd = type { %struct.dpu_encoder_phys, i32, i8, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dpu_encoder_virt_ops = type { ptr, ptr, ptr }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_pp_vsync_info = type { i32, i32, i32, i32 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_encoder_wait_info = type { ptr, ptr, i64 }
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_hw_tear_check = type { i32, i32, i32, i32, i32, i32, i32, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intf %d\0A\00", [23 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_encoder_phys_cmd_init\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[drm:%s:%d] intf %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[drm:%s:%d] [dpu error]failed to allocate\0A\00", [51 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_init._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctl_start\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pp_done\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pp_rd_ptr\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"underrun\00", [23 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&phys_enc->pending_kickoff_wq\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cmd_enc->pending_vblank_wq\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enc%d intf%d created\0A\00", [42 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[drm:%s:%d] enc%d intf%d created\0A\00", [62 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dpu_encoder_phys_cmd_prepare_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d disable autorefresh failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dpu_encoder_phys_cmd_prepare_commit\00", [60 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_prepare_commit._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_prepare_commit._entry, section ".printk_index", align 4
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enc%d intf%d disabled autorefresh\0A\00", [61 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_prepare_commit.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[drm:%s:%d] enc%d intf%d disabled autorefresh\0A\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_phys_cmd_connect_te = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_enc_phys_cmd_connect_te.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[drm:%s:%d] [dpu error]invalid args\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_encoder_phys_cmd_mode_set\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_mode_set._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_mode_set._entry, section ".printk_index", align 4
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enc%d intf%d caching mode:\0A\00", [36 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_mode_set.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm:%s:%d] enc%d intf%d caching mode:\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enc%d intf%d \0A\00", [17 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_mode_fixup.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.26, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_encoder_phys_cmd_mode_fixup\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[drm:%s:%d] enc%d intf%d \0A\00", [37 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[drm:%s:%d] [dpu error]invalid phys encoder\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpu_encoder_phys_cmd_enable\00", [36 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_enable._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_enable._entry, section ".printk_index", align 4
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enc%d intf%d pp %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_enable.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[drm:%s:%d] enc%d intf%d pp %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_enable._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[drm:%s:%d] [dpu error]already enabled\0A\00", [54 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_enable._entry_ptr.35 = internal global ptr @dpu_encoder_phys_cmd_enable._entry.33, section ".printk_index", align 4
@dpu_encoder_phys_cmd_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpu_encoder_phys_cmd_disable\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_disable._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_disable._entry, section ".printk_index", align 4
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"id:%u pp:%d state:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_disable._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d already disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_disable._entry_ptr.41 = internal global ptr @dpu_encoder_phys_cmd_disable._entry.39, section ".printk_index", align 4
@dpu_encoder_phys_cmd_control_vblank_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.42, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dpu_encoder_phys_cmd_control_vblank_irq\00", [56 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_control_vblank_irq._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_control_vblank_irq._entry, section ".printk_index", align 4
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"id:%u pp:%d enable=%s/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"vblank irq err id:%u pp:%d ret:%d, enable %s/%d\0A\00", [47 x i8] zeroinitializer }, align 32
@_dpu_encoder_phys_cmd_wait_for_ctl_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d ctl start interrupt wait failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"_dpu_encoder_phys_cmd_wait_for_ctl_start\00", [55 x i8] zeroinitializer }, align 32
@_dpu_encoder_phys_cmd_wait_for_ctl_start._entry_ptr = internal global ptr @_dpu_encoder_phys_cmd_wait_for_ctl_start._entry, section ".printk_index", align 4
@dpu_encoder_phys_cmd_prepare_for_kickoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.49, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dpu_encoder_phys_cmd_prepare_for_kickoff\00", [55 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_prepare_for_kickoff._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_prepare_for_kickoff._entry, section ".printk_index", align 4
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"id:%u pp:%d pending_cnt:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed wait_for_idle: id:%u ret:%d pp:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enc%d intf%d pp:%d pending_cnt %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_prepare_for_kickoff.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.52, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[drm:%s:%d] enc%d intf%d pp:%d pending_cnt %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"id:%d pp:%d kickoff timeout %d cnt %d koff_cnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_phys_cmd_pdone_timeout = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_phys_cmd_pdone_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed wait_for_idle: id:%u ret:%d intf:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_phys_cmd_irq_ctrl = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_phys_cmd_irq_ctrl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_phys_cmd_enable_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), encoder %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dpu_encoder_phys_cmd_enable_helper\00", [61 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_enable_helper._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_enable_helper._entry, section ".printk_index", align 4
@_dpu_encoder_phys_cmd_pingpong_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), enc %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"_dpu_encoder_phys_cmd_pingpong_config\00", [58 x i8] zeroinitializer }, align 32
@_dpu_encoder_phys_cmd_pingpong_config._entry_ptr = internal global ptr @_dpu_encoder_phys_cmd_pingpong_config._entry, section ".printk_index", align 4
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enc%d intf%d pp %d, enabling mode:\0A\00", [60 x i8] zeroinitializer }, align 32
@_dpu_encoder_phys_cmd_pingpong_config.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[drm:%s:%d] enc%d intf%d pp %d, enabling mode:\0A\00", [48 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.62, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dpu_encoder_phys_cmd_tearcheck_config\00", [58 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config._entry_ptr = internal global ptr @dpu_encoder_phys_cmd_tearcheck_config._entry, section ".printk_index", align 4
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.31, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"enc%d intf%d tearcheck not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[drm:%s:%d] enc%d intf%d tearcheck not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsync\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enc%d intf%d invalid - vsync_hz %u\0A\00", [60 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.66, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[drm:%s:%d] enc%d intf%d invalid - vsync_hz %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"enc%d intf%d tc %d vsync_clk_speed_hz %u vtotal %u vrefresh %u\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.68, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[drm:%s:%d] enc%d intf%d tc %d vsync_clk_speed_hz %u vtotal %u vrefresh %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"enc%d intf%d tc %d enable %u start_pos %u rd_ptr_irq %u\0A\00", [39 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.70, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[drm:%s:%d] enc%d intf%d tc %d enable %u start_pos %u rd_ptr_irq %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"enc%d intf%d tc %d hw_vsync_mode %u vsync_count %u vsync_init_val %u\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.72, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"[drm:%s:%d] enc%d intf%d tc %d hw_vsync_mode %u vsync_count %u vsync_init_val %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"enc%d intf%d tc %d cfgheight %u thresh_start %u thresh_cont %u\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.74, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[drm:%s:%d] enc%d intf%d tc %d cfgheight %u thresh_start %u thresh_cont %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctl_start_irq\00", [18 x i8] zeroinitializer }, align 32
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@trace_tracing_mark_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_done_irq\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_phys_cmd_pp_tx_done = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_phys_cmd_pp_tx_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rd_ptr_irq\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 762, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 767, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 791, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 796, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 801, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 806, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 814, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 815, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 817, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 626, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 636, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 362, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 108, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 157, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 161, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 53, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 457, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 461, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 464, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 512, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 515, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 520, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 259, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 275, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 287, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 655, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 552, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 555, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 567, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 572, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 207, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 670, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 436, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 408, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 412, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 334, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 343, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 358, i32 43 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 360, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 380, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 384, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 388, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 392, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 129, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 86, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [56 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 113, i32 2 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @_dpu_encoder_phys_cmd_pingpong_config._entry, ptr @_dpu_encoder_phys_cmd_pingpong_config._entry_ptr, ptr @_dpu_encoder_phys_cmd_wait_for_ctl_start._entry, ptr @_dpu_encoder_phys_cmd_wait_for_ctl_start._entry_ptr, ptr @dpu_encoder_phys_cmd_control_vblank_irq._entry, ptr @dpu_encoder_phys_cmd_control_vblank_irq._entry_ptr, ptr @dpu_encoder_phys_cmd_disable._entry, ptr @dpu_encoder_phys_cmd_disable._entry.39, ptr @dpu_encoder_phys_cmd_disable._entry_ptr, ptr @dpu_encoder_phys_cmd_disable._entry_ptr.41, ptr @dpu_encoder_phys_cmd_enable._entry, ptr @dpu_encoder_phys_cmd_enable._entry.33, ptr @dpu_encoder_phys_cmd_enable._entry_ptr, ptr @dpu_encoder_phys_cmd_enable._entry_ptr.35, ptr @dpu_encoder_phys_cmd_enable_helper._entry, ptr @dpu_encoder_phys_cmd_enable_helper._entry_ptr, ptr @dpu_encoder_phys_cmd_init._entry, ptr @dpu_encoder_phys_cmd_init._entry_ptr, ptr @dpu_encoder_phys_cmd_mode_set._entry, ptr @dpu_encoder_phys_cmd_mode_set._entry_ptr, ptr @dpu_encoder_phys_cmd_prepare_commit._entry, ptr @dpu_encoder_phys_cmd_prepare_commit._entry_ptr, ptr @dpu_encoder_phys_cmd_prepare_for_kickoff._entry, ptr @dpu_encoder_phys_cmd_prepare_for_kickoff._entry_ptr, ptr @dpu_encoder_phys_cmd_tearcheck_config._entry, ptr @dpu_encoder_phys_cmd_tearcheck_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dpu_encoder_phys_cmd_init.__key, ptr @.str.10, ptr @dpu_encoder_phys_cmd_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_prepare_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_enable._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_disable._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_control_vblank_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_phys_cmd_wait_for_ctl_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_prepare_for_kickoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_enable_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_phys_cmd_pingpong_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_phys_cmd_tearcheck_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_encoder_phys_cmd_init(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %0 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf_idx = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %2, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %sub) #11
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_init, %if.then5)) #11
          to label %do.end10 [label %if.then5], !srcloc !189

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %intf_idx6 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %intf_idx6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intf_idx6, align 4
  %sub7 = add i32 %4, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 762, i32 noundef %sub7) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 536) #14
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end20

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 767) #15
  br label %cleanup

if.end20:                                         ; preds = %do.end10
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %hw_mdp = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %hw_mdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_mdp, align 8
  %hw_mdptop = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %hw_mdptop to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %hw_mdptop, align 8
  %intf_idx21 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 4
  %11 = ptrtoint ptr %intf_idx21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intf_idx21, align 4
  %intf_idx22 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %intf_idx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %intf_idx22, align 4
  %prepare_commit.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prepare_commit.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dpu_encoder_phys_cmd_prepare_commit, ptr %prepare_commit.i, align 4
  %is_master.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %is_master.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dpu_encoder_phys_cmd_is_master, ptr %is_master.i, align 8
  %mode_set.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %mode_set.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dpu_encoder_phys_cmd_mode_set, ptr %mode_set.i, align 8
  %mode_fixup.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %mode_fixup.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dpu_encoder_phys_cmd_mode_fixup, ptr %mode_fixup.i, align 4
  %enable.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dpu_encoder_phys_cmd_enable, ptr %enable.i, align 4
  %disable.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dpu_encoder_phys_cmd_disable, ptr %disable.i, align 8
  %destroy.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 8
  %20 = ptrtoint ptr %destroy.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dpu_encoder_phys_cmd_destroy, ptr %destroy.i, align 8
  %get_hw_resources.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %get_hw_resources.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dpu_encoder_phys_cmd_get_hw_resources, ptr %get_hw_resources.i, align 4
  %control_vblank_irq.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 10
  %22 = ptrtoint ptr %control_vblank_irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dpu_encoder_phys_cmd_control_vblank_irq, ptr %control_vblank_irq.i, align 8
  %wait_for_commit_done.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 11
  %23 = ptrtoint ptr %wait_for_commit_done.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dpu_encoder_phys_cmd_wait_for_commit_done, ptr %wait_for_commit_done.i, align 4
  %prepare_for_kickoff.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 14
  %24 = ptrtoint ptr %prepare_for_kickoff.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dpu_encoder_phys_cmd_prepare_for_kickoff, ptr %prepare_for_kickoff.i, align 8
  %wait_for_tx_complete.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 12
  %25 = ptrtoint ptr %wait_for_tx_complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dpu_encoder_phys_cmd_wait_for_tx_complete, ptr %wait_for_tx_complete.i, align 8
  %wait_for_vblank.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 13
  %26 = ptrtoint ptr %wait_for_vblank.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dpu_encoder_phys_cmd_wait_for_vblank, ptr %wait_for_vblank.i, align 4
  %trigger_start.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 16
  %27 = ptrtoint ptr %trigger_start.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dpu_encoder_phys_cmd_trigger_start, ptr %trigger_start.i, align 8
  %needs_single_flush.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 17
  %28 = ptrtoint ptr %needs_single_flush.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_encoder_phys_cmd_needs_single_flush, ptr %needs_single_flush.i, align 4
  %irq_control.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 18
  %29 = ptrtoint ptr %irq_control.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_encoder_phys_cmd_irq_control, ptr %irq_control.i, align 8
  %restore.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 20
  %30 = ptrtoint ptr %restore.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_encoder_phys_cmd_enable_helper, ptr %restore.i, align 8
  %prepare_idle_pc.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 19
  %31 = ptrtoint ptr %prepare_idle_pc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dpu_encoder_phys_cmd_prepare_idle_pc, ptr %prepare_idle_pc.i, align 4
  %handle_post_kickoff.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 15
  %32 = ptrtoint ptr %handle_post_kickoff.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dpu_encoder_phys_cmd_handle_post_kickoff, ptr %handle_post_kickoff.i, align 4
  %get_line_count.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 2, i32 21
  %33 = ptrtoint ptr %get_line_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dpu_encoder_phys_cmd_get_line_count, ptr %get_line_count.i, align 4
  %parent = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %call7.i.i, align 8
  %parent_ops = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 2
  %37 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent_ops, align 4
  %parent_ops24 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %parent_ops24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %parent_ops24, align 4
  %dpu_kms26 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %dpu_kms26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %7, ptr %dpu_kms26, align 8
  %split_role = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 3
  %41 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %split_role, align 4
  %split_role27 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %split_role27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %split_role27, align 4
  %intf_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %intf_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %intf_mode, align 8
  %enc_spinlock = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %p, i32 0, i32 5
  %45 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %enc_spinlock, align 4
  %enc_spinlock28 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 13
  %47 = ptrtoint ptr %enc_spinlock28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %enc_spinlock28, align 8
  %stream_sel = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %stream_sel to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %stream_sel, align 4
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 14
  %49 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %enable_state, align 4
  %cb = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3
  %50 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %cb, ptr %cb, align 4
  %prev.i = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cb, ptr %prev.i, align 8
  %irq_idx = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 2
  %52 = ptrtoint ptr %irq_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -22, ptr %irq_idx, align 8
  %arg = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %arg, align 8
  %cb.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3
  %54 = ptrtoint ptr %cb.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %cb.1, ptr %cb.1, align 8
  %prev.i.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cb.1, ptr %prev.i.1, align 4
  %irq_idx.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 2
  %56 = ptrtoint ptr %irq_idx.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -22, ptr %irq_idx.1, align 4
  %arg.1 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3, i32 2
  %57 = ptrtoint ptr %arg.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %arg.1, align 4
  %cb.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3
  %58 = ptrtoint ptr %cb.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %cb.2, ptr %cb.2, align 4
  %prev.i.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cb.2, ptr %prev.i.2, align 8
  %irq_idx.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 2
  %60 = ptrtoint ptr %irq_idx.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -22, ptr %irq_idx.2, align 8
  %arg.2 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3, i32 2
  %61 = ptrtoint ptr %arg.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %arg.2, align 8
  %cb.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3
  %62 = ptrtoint ptr %cb.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %cb.3, ptr %cb.3, align 8
  %prev.i.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %cb.3, ptr %prev.i.3, align 4
  %irq_idx.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 2
  %64 = ptrtoint ptr %irq_idx.3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -22, ptr %irq_idx.3, align 4
  %arg.3 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3, i32 2
  %65 = ptrtoint ptr %arg.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i, ptr %arg.3, align 4
  %cb.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3
  %66 = ptrtoint ptr %cb.4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %cb.4, ptr %cb.4, align 4
  %prev.i.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cb.4, ptr %prev.i.4, align 8
  %irq_idx.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 2
  %68 = ptrtoint ptr %irq_idx.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -22, ptr %irq_idx.4, align 8
  %arg.4 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3, i32 2
  %69 = ptrtoint ptr %arg.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %arg.4, align 8
  %arrayidx32 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3
  %70 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.6, ptr %arrayidx32, align 4
  %intr_idx = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 1
  %71 = ptrtoint ptr %intr_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %intr_idx, align 8
  %func = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 3, i32 3, i32 1
  %72 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dpu_encoder_phys_cmd_ctl_start_irq, ptr %func, align 8
  %arrayidx35 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1
  %73 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.7, ptr %arrayidx35, align 4
  %intr_idx37 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 1
  %74 = ptrtoint ptr %intr_idx37 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %intr_idx37, align 8
  %func39 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3, i32 1
  %75 = ptrtoint ptr %func39 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dpu_encoder_phys_cmd_pp_tx_done_irq, ptr %func39, align 8
  %arrayidx41 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4
  %76 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.8, ptr %arrayidx41, align 8
  %intr_idx43 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 1
  %77 = ptrtoint ptr %intr_idx43 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %intr_idx43, align 4
  %func45 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 4, i32 3, i32 1
  %78 = ptrtoint ptr %func45 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dpu_encoder_phys_cmd_pp_rd_ptr_irq, ptr %func45, align 4
  %arrayidx47 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2
  %79 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.9, ptr %arrayidx47, align 8
  %intr_idx49 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 1
  %80 = ptrtoint ptr %intr_idx49 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %intr_idx49, align 4
  %func51 = getelementptr %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 21, i32 2, i32 3, i32 1
  %81 = ptrtoint ptr %func51 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dpu_encoder_phys_cmd_underrun_irq, ptr %func51, align 4
  %vblank_refcount = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vblank_refcount, i32 noundef 4) #11
  %82 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %vblank_refcount, align 8
  %pending_kickoff_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 19
  %call.i.i180 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %83 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 0, ptr %pending_kickoff_cnt, align 8
  %pending_ctlstart_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 18
  %call.i.i181 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_ctlstart_cnt, i32 noundef 4) #11
  %84 = ptrtoint ptr %pending_ctlstart_cnt to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %pending_ctlstart_cnt, align 4
  %pending_vblank_cnt = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %call7.i.i, i32 0, i32 4
  %call.i.i182 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_vblank_cnt, i32 noundef 4) #11
  %85 = ptrtoint ptr %pending_vblank_cnt to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 0, ptr %pending_vblank_cnt, align 8
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %pending_kickoff_wq, ptr noundef nonnull @.str.10, ptr noundef nonnull @dpu_encoder_phys_cmd_init.__key) #11
  %pending_vblank_wq = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %pending_vblank_wq, ptr noundef nonnull @.str.12, ptr noundef nonnull @dpu_encoder_phys_cmd_init.__key.11) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %86 = load i32, ptr @__drm_debug, align 4
  %and.i186 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.i187.not = icmp eq i32 %and.i186, 0
  br i1 %tobool.i187.not, label %do.body77, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i, align 8
  %tobool64.not = icmp eq ptr %88, null
  br i1 %tobool64.not, label %land.lhs.true.cond.end74_crit_edge, label %cond.true

land.lhs.true.cond.end74_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end74

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base67 = getelementptr inbounds %struct.drm_encoder, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %base67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %base67, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true, %land.lhs.true.cond.end74_crit_edge
  %cond = phi i32 [ %90, %cond.true ], [ -1, %land.lhs.true.cond.end74_crit_edge ]
  %91 = ptrtoint ptr %intf_idx22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %intf_idx22, align 4
  %sub72 = add i32 %92, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %cond, i32 noundef %sub72) #11
  br label %cleanup

do.body77:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_init, %land.lhs.true91)) #11
          to label %cleanup [label %land.lhs.true91], !srcloc !189

land.lhs.true91:                                  ; preds = %do.body77
  %93 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call7.i.i, align 8
  %tobool94.not = icmp eq ptr %94, null
  br i1 %tobool94.not, label %land.lhs.true91.cond.end109_crit_edge, label %cond.true95

land.lhs.true91.cond.end109_crit_edge:            ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end109

cond.true95:                                      ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  %base98 = getelementptr inbounds %struct.drm_encoder, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %base98 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base98, align 4
  br label %cond.end109

cond.end109:                                      ; preds = %cond.true95, %land.lhs.true91.cond.end109_crit_edge
  %cond102 = phi i32 [ %96, %cond.true95 ], [ -1, %land.lhs.true91.cond.end109_crit_edge ]
  %97 = ptrtoint ptr %intf_idx22 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %intf_idx22, align 4
  %sub107 = add i32 %98, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 817, i32 noundef %cond102, i32 noundef %sub107) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end109, %do.body77, %cond.end74, %if.then13
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then13 ], [ %call7.i.i, %cond.end109 ], [ %call7.i.i, %cond.end74 ], [ %call7.i.i, %do.body77 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_ctl_start_irq(ptr noundef %arg, i32 noundef %irq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %5, ptr noundef nonnull @.str.76, i1 noundef zeroext true)
  %pending_ctlstart_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_ctlstart_cnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %pending_ctlstart_cnt, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_ctlstart_cnt, ptr %pending_ctlstart_cnt, i32 0, i32 -1, ptr elementtype(i32) %pending_ctlstart_cnt) #11, !srcloc !191
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !192
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %pending_kickoff_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %tgid4 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 69
  %9 = ptrtoint ptr %tgid4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tgid4, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %10, ptr noundef nonnull @.str.76, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_pp_tx_done_irq(ptr noundef %arg, i32 noundef %irq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %7, ptr noundef nonnull @.str.77, i1 noundef zeroext true)
  %parent_ops = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 3
  %8 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_ops, align 4
  %handle_frame_done = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %handle_frame_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle_frame_done, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.do.body6_crit_edge, label %if.then2

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  tail call void %11(ptr noundef %13, ptr noundef %arg, i32 noundef 1) #11
  br label %do.body6

do.body6:                                         ; preds = %if.then2, %if.end.do.body6_crit_edge
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 13
  %14 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc_spinlock, align 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #11
  %pending_kickoff_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %pending_kickoff_cnt, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_kickoff_cnt, ptr %pending_kickoff_cnt, i32 0, i32 -1, ptr elementtype(i32) %pending_kickoff_cnt) #11, !srcloc !191
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.body6.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

do.body6.atomic_add_unless.exit_crit_edge:        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !192
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %do.body6.atomic_add_unless.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i = icmp ne i32 %asmresult.i.i.i, 0
  %conv12 = zext i1 %cmp.i.i to i32
  %17 = ptrtoint ptr %enc_spinlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enc_spinlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call8) #11
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %atomic_add_unless.exit.cond.end_crit_edge, label %cond.true

atomic_add_unless.exit.cond.end_crit_edge:        ; preds = %atomic_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %atomic_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_encoder, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %atomic_add_unless.exit.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.true ], [ -1, %atomic_add_unless.exit.cond.end_crit_edge ]
  %23 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_pp, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 4
  %sub = add i32 %26, -1
  tail call fastcc void @trace_dpu_enc_phys_cmd_pp_tx_done(i32 noundef %cond, i32 noundef %sub, i32 noundef %conv12)
  %pending_kickoff_wq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %pending_kickoff_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %tgid20 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 69
  %29 = ptrtoint ptr %tgid20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tgid20, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %30, ptr noundef nonnull @.str.77, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_pp_rd_ptr_irq(ptr noundef %arg, i32 noundef %irq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %7, ptr noundef nonnull @.str.78, i1 noundef zeroext true)
  %parent_ops = getelementptr inbounds %struct.dpu_encoder_phys, ptr %arg, i32 0, i32 3
  %8 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  tail call void %11(ptr noundef %13, ptr noundef %arg) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %pending_vblank_cnt = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %arg, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_vblank_cnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %pending_vblank_cnt, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_vblank_cnt, ptr %pending_vblank_cnt, i32 0, i32 -1, ptr elementtype(i32) %pending_vblank_cnt) #11, !srcloc !191
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end5.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

if.end5.atomic_add_unless.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !192
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %if.end5.atomic_add_unless.exit_crit_edge
  %pending_vblank_wq = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %arg, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %pending_vblank_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %tgid9 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 69
  %17 = ptrtoint ptr %tgid9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tgid9, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %18, ptr noundef nonnull @.str.78, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %atomic_add_unless.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_underrun_irq(ptr noundef %arg, i32 noundef %irq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  tail call void %3(ptr noundef %5, ptr noundef %arg) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_prepare_commit(ptr noundef readonly %phys_enc) #0 align 64 {
entry:
  %info.i = alloca %struct.dpu_hw_pp_vsync_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %2 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 2
  br i1 %cmp.i.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %get_autorefresh = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %get_autorefresh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_autorefresh, align 4
  %call8 = tail call zeroext i1 %5(ptr noundef nonnull %1, ptr noundef null) #11
  br i1 %call8, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_pp, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end10._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, label %lor.lhs.false.i

if.end10._dpu_encoder_phys_cmd_connect_te.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit

lor.lhs.false.i:                                  ; preds = %if.end10
  %connect_external_te.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %7, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %connect_external_te.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connect_external_te.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, label %if.end.i

lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys_enc, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ -1, %if.end.i.cond.end.i_crit_edge ]
  tail call fastcc void @trace_dpu_enc_phys_cmd_connect_te(i32 noundef %cond.i, i1 noundef zeroext false) #11
  %14 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_pp, align 4
  %connect_external_te8.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %15, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %connect_external_te8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connect_external_te8.i, align 4
  %call.i = tail call i32 %17(ptr noundef %15, i1 noundef zeroext false) #11
  br label %_dpu_encoder_phys_cmd_connect_te.exit

_dpu_encoder_phys_cmd_connect_te.exit:            ; preds = %cond.end.i, %lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, %if.end10._dpu_encoder_phys_cmd_connect_te.exit_crit_edge
  %18 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_pp, align 4
  %setup_autorefresh = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %19, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %setup_autorefresh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup_autorefresh, align 4
  tail call void %21(ptr noundef %19, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 429496000) #11
  %23 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %info.i, i32 0, i32 3
  %vdisplay.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9, i32 6
  br label %if.end.i152

land.lhs.true:                                    ; preds = %dpu_encoder_phys_cmd_is_ongoing_pptx.exit
  %24 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phys_enc, align 4
  %tobool18.not = icmp eq ptr %25, null
  br i1 %tobool18.not, label %land.lhs.true.cond.end26_crit_edge, label %cond.true

land.lhs.true.cond.end26_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end26

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base21 = getelementptr inbounds %struct.drm_encoder, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base21, align 4
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true, %land.lhs.true.cond.end26_crit_edge
  %cond = phi i32 [ %27, %cond.true ], [ -1, %land.lhs.true.cond.end26_crit_edge ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %28 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %29, -1
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 627, i32 noundef %cond, i32 noundef %sub) #15
  br label %do.end32

if.end.i152:                                      ; preds = %dpu_encoder_phys_cmd_is_ongoing_pptx.exit.if.end.i152_crit_edge, %_dpu_encoder_phys_cmd_connect_te.exit
  %trial.0170 = phi i32 [ 0, %_dpu_encoder_phys_cmd_connect_te.exit ], [ %inc, %dpu_encoder_phys_cmd_is_ongoing_pptx.exit.if.end.i152_crit_edge ]
  %inc = add nuw nsw i32 %trial.0170, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #11
  %30 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  %31 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_pp, align 4
  %get_vsync_info.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %32, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %get_vsync_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_vsync_info.i, align 4
  %call.i151 = call i32 %34(ptr noundef %32, ptr noundef nonnull %info.i) #11
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.end.i152.dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread_crit_edge, label %land.lhs.true.i

if.end.i152.dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread_crit_edge: ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread

land.lhs.true.i:                                  ; preds = %if.end.i152
  %37 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vdisplay.i, align 2
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i)
  %cmp3.i = icmp ult i32 %36, %conv.i
  br i1 %cmp3.i, label %dpu_encoder_phys_cmd_is_ongoing_pptx.exit, label %land.lhs.true.i.dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread_crit_edge

land.lhs.true.i.dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread

dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread: ; preds = %land.lhs.true.i.dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread_crit_edge, %if.end.i152.dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #11
  br label %do.end32

dpu_encoder_phys_cmd_is_ongoing_pptx.exit:        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 429496000) #11
  %exitcond = icmp eq i32 %inc, 43
  br i1 %exitcond, label %land.lhs.true, label %dpu_encoder_phys_cmd_is_ongoing_pptx.exit.if.end.i152_crit_edge

dpu_encoder_phys_cmd_is_ongoing_pptx.exit.if.end.i152_crit_edge: ; preds = %dpu_encoder_phys_cmd_is_ongoing_pptx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i152

do.end32:                                         ; preds = %dpu_encoder_phys_cmd_is_ongoing_pptx.exit.thread, %cond.end26
  %40 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_pp, align 4
  %tobool.not.i155 = icmp eq ptr %41, null
  br i1 %tobool.not.i155, label %do.end32._dpu_encoder_phys_cmd_connect_te.exit167_crit_edge, label %lor.lhs.false.i158

do.end32._dpu_encoder_phys_cmd_connect_te.exit167_crit_edge: ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit167

lor.lhs.false.i158:                               ; preds = %do.end32
  %connect_external_te.i156 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %41, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %connect_external_te.i156 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %connect_external_te.i156, align 4
  %tobool2.not.i157 = icmp eq ptr %43, null
  br i1 %tobool2.not.i157, label %lor.lhs.false.i158._dpu_encoder_phys_cmd_connect_te.exit167_crit_edge, label %if.end.i160

lor.lhs.false.i158._dpu_encoder_phys_cmd_connect_te.exit167_crit_edge: ; preds = %lor.lhs.false.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit167

if.end.i160:                                      ; preds = %lor.lhs.false.i158
  %44 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phys_enc, align 4
  %tobool3.not.i159 = icmp eq ptr %45, null
  br i1 %tobool3.not.i159, label %if.end.i160.cond.end.i166_crit_edge, label %cond.true.i162

if.end.i160.cond.end.i166_crit_edge:              ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i166

cond.true.i162:                                   ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #13
  %base.i161 = getelementptr inbounds %struct.drm_encoder, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %base.i161 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base.i161, align 4
  br label %cond.end.i166

cond.end.i166:                                    ; preds = %cond.true.i162, %if.end.i160.cond.end.i166_crit_edge
  %cond.i163 = phi i32 [ %47, %cond.true.i162 ], [ -1, %if.end.i160.cond.end.i166_crit_edge ]
  call fastcc void @trace_dpu_enc_phys_cmd_connect_te(i32 noundef %cond.i163, i1 noundef zeroext true) #11
  %48 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_pp, align 4
  %connect_external_te8.i164 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %49, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %connect_external_te8.i164 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %connect_external_te8.i164, align 4
  %call.i165 = call i32 %51(ptr noundef %49, i1 noundef zeroext true) #11
  br label %_dpu_encoder_phys_cmd_connect_te.exit167

_dpu_encoder_phys_cmd_connect_te.exit167:         ; preds = %cond.end.i166, %lor.lhs.false.i158._dpu_encoder_phys_cmd_connect_te.exit167_crit_edge, %do.end32._dpu_encoder_phys_cmd_connect_te.exit167_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %52 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body72, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %_dpu_encoder_phys_cmd_connect_te.exit167
  %53 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phys_enc, align 4
  %tobool46.not = icmp eq ptr %54, null
  br i1 %tobool46.not, label %land.lhs.true40.cond.end70_crit_edge, label %cond.true47

land.lhs.true40.cond.end70_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end70

cond.true47:                                      ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  %base53 = getelementptr inbounds %struct.drm_encoder, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base53, align 4
  br label %cond.end70

cond.end70:                                       ; preds = %cond.true47, %land.lhs.true40.cond.end70_crit_edge
  %cond57 = phi i32 [ %56, %cond.true47 ], [ -1, %land.lhs.true40.cond.end70_crit_edge ]
  %intf_idx67 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %57 = ptrtoint ptr %intf_idx67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %intf_idx67, align 4
  %sub68 = add i32 %58, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %cond57, i32 noundef %sub68) #11
  br label %cleanup

do.body72:                                        ; preds = %_dpu_encoder_phys_cmd_connect_te.exit167
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_prepare_commit.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_prepare_commit, %land.lhs.true83)) #11
          to label %cleanup [label %land.lhs.true83], !srcloc !189

land.lhs.true83:                                  ; preds = %do.body72
  %59 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phys_enc, align 4
  %tobool89.not = icmp eq ptr %60, null
  br i1 %tobool89.not, label %land.lhs.true83.cond.end113_crit_edge, label %cond.true90

land.lhs.true83.cond.end113_crit_edge:            ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end113

cond.true90:                                      ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  %base96 = getelementptr inbounds %struct.drm_encoder, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %base96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base96, align 4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.true90, %land.lhs.true83.cond.end113_crit_edge
  %cond100 = phi i32 [ %62, %cond.true90 ], [ -1, %land.lhs.true83.cond.end113_crit_edge ]
  %intf_idx110 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %63 = ptrtoint ptr %intf_idx110 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %intf_idx110, align 4
  %sub111 = add i32 %64, -1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_prepare_commit.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 637, i32 noundef %cond100, i32 noundef %sub111) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end113, %do.body72, %cond.end70, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_cmd_is_master(ptr nocapture noundef readonly %phys_enc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %split_role = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %0 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ne i32 %1, 2
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_mode_set(ptr noundef %phys_enc, ptr noundef readnone %mode, ptr noundef %adj_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mode, null
  %tobool1.not = icmp eq ptr %adj_mode, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 157) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cached_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9
  %0 = call ptr @memcpy(ptr %cached_mode, ptr %adj_mode, i32 112)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %1 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body17, label %if.then5

if.then5:                                         ; preds = %if.end
  %tobool6.not = icmp eq ptr %phys_enc, null
  br i1 %tobool6.not, label %if.then5.cond.end15_crit_edge, label %land.lhs.true

if.then5.cond.end15_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

land.lhs.true:                                    ; preds = %if.then5
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %land.lhs.true.cond.true12_crit_edge, label %cond.true

land.lhs.true.cond.true12_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true12

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base10 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base10, align 4
  br label %cond.true12

cond.true12:                                      ; preds = %cond.true, %land.lhs.true.cond.true12_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.cond.true12_crit_edge ], [ %5, %cond.true ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %6 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %7, -1
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %if.then5.cond.end15_crit_edge
  %cond91 = phi i32 [ %cond.ph, %cond.true12 ], [ -1, %if.then5.cond.end15_crit_edge ]
  %cond16 = phi i32 [ %sub, %cond.true12 ], [ -1, %if.then5.cond.end15_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %cond91, i32 noundef %cond16) #11
  br label %do.end50

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_mode_set.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_mode_set, %if.then23)) #11
          to label %do.end50 [label %if.then23], !srcloc !189

if.then23:                                        ; preds = %do.body17
  %tobool24.not = icmp eq ptr %phys_enc, null
  br i1 %tobool24.not, label %if.then23.cond.end43_crit_edge, label %land.lhs.true25

if.then23.cond.end43_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end43

land.lhs.true25:                                  ; preds = %if.then23
  %8 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys_enc, align 4
  %tobool28.not = icmp eq ptr %9, null
  br i1 %tobool28.not, label %land.lhs.true25.cond.true38_crit_edge, label %cond.true29

land.lhs.true25.cond.true38_crit_edge:            ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true38

cond.true29:                                      ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  %base32 = getelementptr inbounds %struct.drm_encoder, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base32, align 4
  br label %cond.true38

cond.true38:                                      ; preds = %cond.true29, %land.lhs.true25.cond.true38_crit_edge
  %cond36.ph = phi i32 [ -1, %land.lhs.true25.cond.true38_crit_edge ], [ %11, %cond.true29 ]
  %intf_idx40 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %12 = ptrtoint ptr %intf_idx40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intf_idx40, align 4
  %sub41 = add i32 %13, -1
  br label %cond.end43

cond.end43:                                       ; preds = %cond.true38, %if.then23.cond.end43_crit_edge
  %cond3695 = phi i32 [ %cond36.ph, %cond.true38 ], [ -1, %if.then23.cond.end43_crit_edge ]
  %cond44 = phi i32 [ %sub41, %cond.true38 ], [ -1, %if.then23.cond.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_mode_set.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 161, i32 noundef %cond3695, i32 noundef %cond44) #11
  br label %do.end50

do.end50:                                         ; preds = %cond.end43, %do.body17, %cond.end15
  tail call void @drm_mode_debug_printmodeline(ptr noundef nonnull %adj_mode) #11
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %14 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ctl, align 4
  %caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps, align 4
  %intr_start = getelementptr inbounds %struct.dpu_ctl_cfg, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %intr_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intr_start, align 4
  %irq_idx = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 3, i32 2
  %20 = ptrtoint ptr %irq_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq_idx, align 4
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %21 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_pp, align 4
  %caps54 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %caps54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %caps54, align 4
  %intr_done = getelementptr inbounds %struct.dpu_pingpong_cfg, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %intr_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_done, align 4
  %irq_idx55 = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 1, i32 2
  %27 = ptrtoint ptr %irq_idx55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq_idx55, align 4
  %28 = load ptr, ptr %caps54, align 4
  %intr_rdptr = getelementptr inbounds %struct.dpu_pingpong_cfg, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %intr_rdptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %intr_rdptr, align 4
  %irq_idx60 = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 4, i32 2
  %31 = ptrtoint ptr %irq_idx60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %irq_idx60, align 4
  %hw_intf = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 7
  %32 = ptrtoint ptr %hw_intf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_intf, align 4
  %cap = getelementptr inbounds %struct.dpu_hw_intf, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cap, align 4
  %intr_underrun = getelementptr inbounds %struct.dpu_intf_cfg, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %intr_underrun to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intr_underrun, align 4
  %irq_idx63 = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 2, i32 2
  %38 = ptrtoint ptr %irq_idx63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %irq_idx63, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_cmd_mode_fixup(ptr noundef readonly %phys_enc, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adj_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %0 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body23, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %if.then.cond.end21_crit_edge, label %land.lhs.true

if.then.cond.end21_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

land.lhs.true:                                    ; preds = %if.then
  %1 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phys_enc, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %land.lhs.true.cond.true15_crit_edge, label %cond.true

land.lhs.true.cond.true15_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true15

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base10 = getelementptr inbounds %struct.drm_encoder, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base10, align 4
  br label %cond.true15

cond.true15:                                      ; preds = %cond.true, %land.lhs.true.cond.true15_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.cond.true15_crit_edge ], [ %4, %cond.true ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %5 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %6, -1
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true15, %if.then.cond.end21_crit_edge
  %cond80 = phi i32 [ %cond.ph, %cond.true15 ], [ -1, %if.then.cond.end21_crit_edge ]
  %cond22 = phi i32 [ %sub, %cond.true15 ], [ -1, %if.then.cond.end21_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %cond80, i32 noundef %cond22) #11
  br label %do.end67

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_mode_fixup.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_mode_fixup, %if.then29)) #11
          to label %do.end67 [label %if.then29], !srcloc !189

if.then29:                                        ; preds = %do.body23
  %tobool33.not = icmp eq ptr %phys_enc, null
  br i1 %tobool33.not, label %if.then29.cond.end64_crit_edge, label %land.lhs.true34

if.then29.cond.end64_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end64

land.lhs.true34:                                  ; preds = %if.then29
  %7 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phys_enc, align 4
  %tobool40.not = icmp eq ptr %8, null
  br i1 %tobool40.not, label %land.lhs.true34.cond.true56_crit_edge, label %cond.true41

land.lhs.true34.cond.true56_crit_edge:            ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true56

cond.true41:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  %base47 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base47 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base47, align 4
  br label %cond.true56

cond.true56:                                      ; preds = %cond.true41, %land.lhs.true34.cond.true56_crit_edge
  %cond51.ph = phi i32 [ -1, %land.lhs.true34.cond.true56_crit_edge ], [ %10, %cond.true41 ]
  %intf_idx61 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %11 = ptrtoint ptr %intf_idx61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intf_idx61, align 4
  %sub62 = add i32 %12, -1
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true56, %if.then29.cond.end64_crit_edge
  %cond5184 = phi i32 [ %cond51.ph, %cond.true56 ], [ -1, %if.then29.cond.end64_crit_edge ]
  %cond65 = phi i32 [ %sub62, %cond.true56 ], [ -1, %if.then29.cond.end64_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_mode_fixup.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 53, i32 noundef %cond5184, i32 noundef %cond65) #11
  br label %do.end67

do.end67:                                         ; preds = %cond.end64, %do.body23, %cond.end21
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_enable(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 457) #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %2 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body18, label %if.then4

if.then4:                                         ; preds = %do.body2
  %tobool5.not = icmp eq ptr %phys_enc, null
  br i1 %tobool5.not, label %if.then4.cond.end14_crit_edge, label %land.lhs.true

if.then4.cond.end14_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end14

land.lhs.true:                                    ; preds = %if.then4
  %3 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phys_enc, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.lhs.true.cond.true11_crit_edge, label %cond.true

land.lhs.true.cond.true11_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true11

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base9 = getelementptr inbounds %struct.drm_encoder, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base9, align 4
  br label %cond.true11

cond.true11:                                      ; preds = %cond.true, %land.lhs.true.cond.true11_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.cond.true11_crit_edge ], [ %6, %cond.true ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %7 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %8, -1
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true11, %if.then4.cond.end14_crit_edge
  %cond81 = phi i32 [ %cond.ph, %cond.true11 ], [ -1, %if.then4.cond.end14_crit_edge ]
  %cond15 = phi i32 [ %sub, %cond.true11 ], [ -1, %if.then4.cond.end14_crit_edge ]
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %sub17 = add i32 %10, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %cond81, i32 noundef %cond15, i32 noundef %sub17) #11
  br label %do.end54

do.body18:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_enable.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_enable, %if.then24)) #11
          to label %do.end54 [label %if.then24], !srcloc !189

if.then24:                                        ; preds = %do.body18
  %tobool25.not = icmp eq ptr %phys_enc, null
  br i1 %tobool25.not, label %if.then24.cond.end44_crit_edge, label %land.lhs.true26

if.then24.cond.end44_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end44

land.lhs.true26:                                  ; preds = %if.then24
  %11 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phys_enc, align 4
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %land.lhs.true26.cond.true39_crit_edge, label %cond.true30

land.lhs.true26.cond.true39_crit_edge:            ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true39

cond.true30:                                      ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  %base33 = getelementptr inbounds %struct.drm_encoder, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base33, align 4
  br label %cond.true39

cond.true39:                                      ; preds = %cond.true30, %land.lhs.true26.cond.true39_crit_edge
  %cond37.ph = phi i32 [ -1, %land.lhs.true26.cond.true39_crit_edge ], [ %14, %cond.true30 ]
  %intf_idx41 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %15 = ptrtoint ptr %intf_idx41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intf_idx41, align 4
  %sub42 = add i32 %16, -1
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true39, %if.then24.cond.end44_crit_edge
  %cond3785 = phi i32 [ %cond37.ph, %cond.true39 ], [ -1, %if.then24.cond.end44_crit_edge ]
  %cond45 = phi i32 [ %sub42, %cond.true39 ], [ -1, %if.then24.cond.end44_crit_edge ]
  %17 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_pp, align 4
  %idx47 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %idx47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx47, align 4
  %sub48 = add i32 %20, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_enable.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 461, i32 noundef %cond3785, i32 noundef %cond45, i32 noundef %sub48) #11
  br label %do.end54

do.end54:                                         ; preds = %cond.end44, %do.body18, %cond.end14
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %21 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp = icmp eq i32 %22, 3
  br i1 %cmp, label %do.end58, label %if.end61

do.end58:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef 464) #15
  br label %cleanup

if.end61:                                         ; preds = %do.end54
  %23 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_pp, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %cmp.i = icmp ne ptr %phys_enc, null
  %conv.i = zext i1 %cmp.i to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 436, i32 noundef %conv.i) #15
  br label %dpu_encoder_phys_cmd_enable_helper.exit

if.end.i:                                         ; preds = %if.end61
  %intf_idx.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %25 = ptrtoint ptr %intf_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intf_idx.i, align 4
  tail call void @dpu_encoder_helper_split_config(ptr noundef %phys_enc, i32 noundef %26) #11
  tail call fastcc void @_dpu_encoder_phys_cmd_pingpong_config(ptr noundef %phys_enc) #11
  %split_role.i.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %27 = ptrtoint ptr %split_role.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %split_role.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, 2
  br i1 %cmp.i.not.i, label %if.end.i.dpu_encoder_phys_cmd_enable_helper.exit_crit_edge, label %if.end3.i

if.end.i.dpu_encoder_phys_cmd_enable_helper.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_encoder_phys_cmd_enable_helper.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %hw_ctl.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %29 = ptrtoint ptr %hw_ctl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ctl.i, align 4
  %update_pending_flush_intf.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %30, i32 0, i32 9, i32 5
  %31 = ptrtoint ptr %update_pending_flush_intf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %update_pending_flush_intf.i, align 4
  %33 = ptrtoint ptr %intf_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intf_idx.i, align 4
  tail call void %32(ptr noundef %30, i32 noundef %34) #11
  br label %dpu_encoder_phys_cmd_enable_helper.exit

dpu_encoder_phys_cmd_enable_helper.exit:          ; preds = %if.end3.i, %if.end.i.dpu_encoder_phys_cmd_enable_helper.exit_crit_edge, %do.end.i
  %35 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %enable_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %dpu_encoder_phys_cmd_enable_helper.exit, %do.end58, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_disable(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 512) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %sub = add i32 %7, -1
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %8 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_state, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %cond, i32 noundef %sub, i32 noundef %9) #11
  %10 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %do.end9, label %if.end31

do.end9:                                          ; preds = %cond.end
  %tobool11.not = icmp eq ptr %phys_enc, null
  br i1 %tobool11.not, label %do.end9.cond.end28_crit_edge, label %land.lhs.true

do.end9.cond.end28_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end28

land.lhs.true:                                    ; preds = %do.end9
  %12 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phys_enc, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %land.lhs.true.cond.true24_crit_edge, label %cond.true15

land.lhs.true.cond.true24_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true24

cond.true15:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base18 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %base18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base18, align 4
  br label %cond.true24

cond.true24:                                      ; preds = %cond.true15, %land.lhs.true.cond.true24_crit_edge
  %cond22.ph = phi i32 [ -1, %land.lhs.true.cond.true24_crit_edge ], [ %15, %cond.true15 ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %16 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intf_idx, align 4
  %sub26 = add i32 %17, -1
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true24, %do.end9.cond.end28_crit_edge
  %cond2260 = phi i32 [ %cond22.ph, %cond.true24 ], [ -1, %do.end9.cond.end28_crit_edge ]
  %cond29 = phi i32 [ %sub26, %cond.true24 ], [ -1, %do.end9.cond.end28_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37, i32 noundef 520, i32 noundef %cond2260, i32 noundef %cond29) #15
  br label %cleanup

if.end31:                                         ; preds = %cond.end
  %18 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_pp, align 4
  %enable_tearcheck = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %19, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %enable_tearcheck to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enable_tearcheck, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %if.end31.if.end40_crit_edge, label %if.then34

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 %21(ptr noundef %19, i1 noundef zeroext false) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.end31.if.end40_crit_edge
  %22 = ptrtoint ptr %enable_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %enable_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %cond.end28, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_destroy(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %phys_enc) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpu_encoder_phys_cmd_get_hw_resources(ptr nocapture noundef readonly %phys_enc, ptr nocapture noundef writeonly %hw_res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %0 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr [8 x i32], ptr %hw_res, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_control_vblank_irq(ptr noundef %phys_enc, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.42, i32 noundef 259) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vblank_refcount = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vblank_refcount, i32 noundef 4) #11
  %2 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vblank_refcount, align 4
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %4 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 2
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %enable.not = xor i1 %enable, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %enable.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end4.if.then30_crit_edge, label %if.end7

if.end4.if.then30_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.end7:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys_enc, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.cond.end_crit_edge, label %cond.true

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end7.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %if.end7.cond.end_crit_edge ]
  %10 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_pp, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %sub = add i32 %13, -1
  %cond12 = select i1 %enable, ptr @.str.44, ptr @.str.45
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %cond, i32 noundef %sub, ptr noundef nonnull %cond12, i32 noundef %3) #11
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vblank_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  tail call void @llvm.prefetch.p0(ptr %vblank_refcount, i32 1, i32 3, i32 1) #11
  br i1 %enable, label %land.lhs.true14, label %land.lhs.true21.critedge

land.lhs.true14:                                  ; preds = %cond.end
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vblank_refcount, ptr %vblank_refcount, i32 1, ptr elementtype(i32) %vblank_refcount) #11, !srcloc !193
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp17 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp17, label %if.then18, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef 4) #11
  br label %end

land.lhs.true21.critedge:                         ; preds = %cond.end
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vblank_refcount, ptr %vblank_refcount, i32 1, ptr elementtype(i32) %vblank_refcount) #11, !srcloc !195
  %asmresult.i.i.i.i70 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i70)
  %cmp24 = icmp eq i32 %asmresult.i.i.i.i70, 0
  br i1 %cmp24, label %if.then25, label %land.lhs.true21.critedge.cleanup_crit_edge

land.lhs.true21.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true21.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true21.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 4) #11
  br label %end

end:                                              ; preds = %if.then25, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call26, %if.then25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool29.not = icmp eq i32 %ret.0, 0
  br i1 %tobool29.not, label %end.cleanup_crit_edge, label %end.if.then30_crit_edge

end.if.then30_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %end.if.then30_crit_edge, %if.end4.if.then30_crit_edge
  %ret.076 = phi i32 [ %ret.0, %end.if.then30_crit_edge ], [ -22, %if.end4.if.then30_crit_edge ]
  %16 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phys_enc, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %if.then30.cond.end38_crit_edge, label %cond.true33

if.then30.cond.end38_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end38

cond.true33:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %base35 = getelementptr inbounds %struct.drm_encoder, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base35, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true33, %if.then30.cond.end38_crit_edge
  %cond39 = phi i32 [ %19, %cond.true33 ], [ -1, %if.then30.cond.end38_crit_edge ]
  %20 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_pp, align 4
  %idx41 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %idx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx41, align 4
  %sub42 = add i32 %23, -1
  %cond44 = select i1 %enable, ptr @.str.44, ptr @.str.45
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %cond39, i32 noundef %sub42, i32 noundef %ret.076, ptr noundef nonnull %cond44, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end38, %end.cleanup_crit_edge, %land.lhs.true21.critedge.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.076, %cond.end38 ], [ 0, %end.cleanup_crit_edge ], [ 0, %land.lhs.true21.critedge.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_wait_for_commit_done(ptr noundef %phys_enc) #0 align 64 {
entry:
  %wait_info.i = alloca %struct.dpu_encoder_wait_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %0 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wait_info.i) #11
  %2 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info.i, i32 0, i32 2
  %pending_kickoff_wq.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 20
  %4 = ptrtoint ptr %wait_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pending_kickoff_wq.i, ptr %wait_info.i, align 8
  %pending_ctlstart_cnt.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 18
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pending_ctlstart_cnt.i, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 84, ptr %3, align 8
  %call.i = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %phys_enc, i32 noundef 3, ptr noundef nonnull %wait_info.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call.i)
  %cmp.i3 = icmp eq i32 %call.i, -110
  br i1 %cmp.i3, label %do.end.i, label %if.end._dpu_encoder_phys_cmd_wait_for_ctl_start.exit_crit_edge

if.end._dpu_encoder_phys_cmd_wait_for_ctl_start.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_wait_for_ctl_start.exit

do.end.i:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %phys_enc, null
  br i1 %tobool.not.i, label %do.end.i.cond.end10.i_crit_edge, label %land.lhs.true.i

do.end.i.cond.end10.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end10.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %7 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phys_enc, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.true7.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.true7.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true7.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %base5.i = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base5.i, align 4
  br label %cond.true7.i

cond.true7.i:                                     ; preds = %cond.true.i, %land.lhs.true.i.cond.true7.i_crit_edge
  %cond.ph.i = phi i32 [ -1, %land.lhs.true.i.cond.true7.i_crit_edge ], [ %10, %cond.true.i ]
  %intf_idx.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %11 = ptrtoint ptr %intf_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intf_idx.i, align 4
  %sub.i = add i32 %12, -1
  br label %cond.end10.i

cond.end10.i:                                     ; preds = %cond.true7.i, %do.end.i.cond.end10.i_crit_edge
  %cond27.i = phi i32 [ %cond.ph.i, %cond.true7.i ], [ -1, %do.end.i.cond.end10.i_crit_edge ]
  %cond11.i = phi i32 [ %sub.i, %cond.true7.i ], [ -1, %do.end.i.cond.end10.i_crit_edge ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 655, i32 noundef %cond27.i, i32 noundef %cond11.i) #15
  br label %_dpu_encoder_phys_cmd_wait_for_ctl_start.exit

_dpu_encoder_phys_cmd_wait_for_ctl_start.exit:    ; preds = %cond.end10.i, %if.end._dpu_encoder_phys_cmd_wait_for_ctl_start.exit_crit_edge
  %ret.0.i = phi i32 [ -22, %cond.end10.i ], [ %call.i, %if.end._dpu_encoder_phys_cmd_wait_for_ctl_start.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wait_info.i) #11
  br label %return

return:                                           ; preds = %_dpu_encoder_phys_cmd_wait_for_ctl_start.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %_dpu_encoder_phys_cmd_wait_for_ctl_start.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_prepare_for_kickoff(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.49, i32 noundef 552) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %sub = add i32 %7, -1
  %pending_kickoff_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %8 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %pending_kickoff_cnt, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %cond, i32 noundef %sub, i32 noundef %9) #11
  %call6 = tail call fastcc i32 @_dpu_encoder_phys_cmd_wait_for_idle(ptr noundef %phys_enc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.end.do.body23_crit_edge, label %if.then8

cond.end.do.body23_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

if.then8:                                         ; preds = %cond.end
  %call.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %10 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %pending_kickoff_cnt, align 4
  %11 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phys_enc, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.then8.cond.end17_crit_edge, label %cond.true12

if.then8.cond.end17_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end17

cond.true12:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %base14 = getelementptr inbounds %struct.drm_encoder, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base14, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true12, %if.then8.cond.end17_crit_edge
  %cond18 = phi i32 [ %14, %cond.true12 ], [ -1, %if.then8.cond.end17_crit_edge ]
  %15 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_pp, align 4
  %idx20 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %idx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx20, align 4
  %sub21 = add i32 %18, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %cond18, i32 noundef %call6, i32 noundef %sub21) #11
  br label %do.body23

do.body23:                                        ; preds = %cond.end17, %cond.end.do.body23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %19 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body50, label %if.then25

if.then25:                                        ; preds = %do.body23
  %tobool26.not = icmp eq ptr %phys_enc, null
  br i1 %tobool26.not, label %if.then25.cond.end43_crit_edge, label %land.lhs.true

if.then25.cond.end43_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end43

land.lhs.true:                                    ; preds = %if.then25
  %20 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phys_enc, align 4
  %tobool29.not = icmp eq ptr %21, null
  br i1 %tobool29.not, label %land.lhs.true.cond.true39_crit_edge, label %cond.true30

land.lhs.true.cond.true39_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true39

cond.true30:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base33 = getelementptr inbounds %struct.drm_encoder, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base33, align 4
  br label %cond.true39

cond.true39:                                      ; preds = %cond.true30, %land.lhs.true.cond.true39_crit_edge
  %cond37.ph = phi i32 [ -1, %land.lhs.true.cond.true39_crit_edge ], [ %23, %cond.true30 ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %24 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intf_idx, align 4
  %sub41 = add i32 %25, -1
  br label %cond.end43

cond.end43:                                       ; preds = %cond.true39, %if.then25.cond.end43_crit_edge
  %cond37122 = phi i32 [ %cond37.ph, %cond.true39 ], [ -1, %if.then25.cond.end43_crit_edge ]
  %cond44 = phi i32 [ %sub41, %cond.true39 ], [ -1, %if.then25.cond.end43_crit_edge ]
  %26 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_pp, align 4
  %idx46 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %idx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx46, align 4
  %sub47 = add i32 %29, -1
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %30 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %pending_kickoff_cnt, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef %cond37122, i32 noundef %cond44, i32 noundef %sub47, i32 noundef %31) #11
  br label %cleanup

do.body50:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_prepare_for_kickoff.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_prepare_for_kickoff, %if.then56)) #11
          to label %cleanup [label %if.then56], !srcloc !189

if.then56:                                        ; preds = %do.body50
  %tobool57.not = icmp eq ptr %phys_enc, null
  br i1 %tobool57.not, label %if.then56.cond.end76_crit_edge, label %land.lhs.true58

if.then56.cond.end76_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end76

land.lhs.true58:                                  ; preds = %if.then56
  %32 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phys_enc, align 4
  %tobool61.not = icmp eq ptr %33, null
  br i1 %tobool61.not, label %land.lhs.true58.cond.true71_crit_edge, label %cond.true62

land.lhs.true58.cond.true71_crit_edge:            ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true71

cond.true62:                                      ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  %base65 = getelementptr inbounds %struct.drm_encoder, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %base65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base65, align 4
  br label %cond.true71

cond.true71:                                      ; preds = %cond.true62, %land.lhs.true58.cond.true71_crit_edge
  %cond69.ph = phi i32 [ -1, %land.lhs.true58.cond.true71_crit_edge ], [ %35, %cond.true62 ]
  %intf_idx73 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %36 = ptrtoint ptr %intf_idx73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intf_idx73, align 4
  %sub74 = add i32 %37, -1
  br label %cond.end76

cond.end76:                                       ; preds = %cond.true71, %if.then56.cond.end76_crit_edge
  %cond69126 = phi i32 [ %cond69.ph, %cond.true71 ], [ -1, %if.then56.cond.end76_crit_edge ]
  %cond77 = phi i32 [ %sub74, %cond.true71 ], [ -1, %if.then56.cond.end76_crit_edge ]
  %38 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_pp, align 4
  %idx79 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %idx79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idx79, align 4
  %sub80 = add i32 %41, -1
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %42 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %pending_kickoff_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_prepare_for_kickoff.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.49, i32 noundef 574, i32 noundef %cond69126, i32 noundef %cond77, i32 noundef %sub80, i32 noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end76, %do.body50, %cond.end43, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_wait_for_tx_complete(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_dpu_encoder_phys_cmd_wait_for_idle(ptr noundef %phys_enc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_enc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %4 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %5, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %cond, i32 noundef %call, i32 noundef %sub) #11
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_wait_for_vblank(ptr noundef %phys_enc) #0 align 64 {
entry:
  %wait_info = alloca %struct.dpu_encoder_wait_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wait_info) #11
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %0 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info, i32 0, i32 1
  %pending_vblank_wq = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %phys_enc, i32 0, i32 5
  %4 = ptrtoint ptr %wait_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pending_vblank_wq, ptr %wait_info, align 8
  %pending_vblank_cnt = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %phys_enc, i32 0, i32 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pending_vblank_cnt, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 84, ptr %2, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_vblank_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %pending_vblank_cnt, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_vblank_cnt, ptr %pending_vblank_cnt, i32 1, ptr elementtype(i32) %pending_vblank_cnt) #11, !srcloc !197
  %call2 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %phys_enc, i32 noundef 4, ptr noundef nonnull %wait_info) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wait_info) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_trigger_start(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dpu_encoder_helper_trigger_start(ptr noundef %phys_enc) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_cmd_needs_single_flush(ptr nocapture noundef readnone %phys_enc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_irq_control(ptr noundef %phys_enc, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_enc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %4 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_pp, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %sub = add i32 %7, -1
  %vblank_refcount = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vblank_refcount, i32 noundef 4) #11
  %8 = ptrtoint ptr %vblank_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %vblank_refcount, align 4
  tail call fastcc void @trace_dpu_enc_phys_cmd_irq_ctrl(i32 noundef %cond, i32 noundef %sub, i1 noundef zeroext %enable, i32 noundef %9)
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call4 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef 1) #11
  %call5 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef 2) #11
  %call6 = tail call i32 @dpu_encoder_phys_cmd_control_vblank_irq(ptr noundef %phys_enc, i1 noundef zeroext true)
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %10 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 2
  br i1 %cmp.i.not, label %if.then.if.end17_crit_edge, label %if.then8

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef 3) #11
  br label %if.end17

if.else:                                          ; preds = %cond.end
  %split_role.i32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %12 = ptrtoint ptr %split_role.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %split_role.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i33.not = icmp eq i32 %13, 2
  br i1 %cmp.i33.not, label %if.else.if.end13_crit_edge, label %if.then11

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 3) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else.if.end13_crit_edge
  %call14 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 2) #11
  %call15 = tail call i32 @dpu_encoder_phys_cmd_control_vblank_irq(ptr noundef %phys_enc, i1 noundef zeroext false)
  %call16 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 1) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then8, %if.then.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_enable_helper(ptr noundef %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cmp = icmp ne ptr %phys_enc, null
  %conv = zext i1 %cmp to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 436, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %2 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intf_idx, align 4
  tail call void @dpu_encoder_helper_split_config(ptr noundef %phys_enc, i32 noundef %3) #11
  tail call fastcc void @_dpu_encoder_phys_cmd_pingpong_config(ptr noundef %phys_enc)
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %4 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 2
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %6 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ctl, align 4
  %update_pending_flush_intf = getelementptr inbounds %struct.dpu_hw_ctl, ptr %7, i32 0, i32 9, i32 5
  %8 = ptrtoint ptr %update_pending_flush_intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_pending_flush_intf, align 4
  %10 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intf_idx, align 4
  tail call void %9(ptr noundef %7, i32 noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_prepare_idle_pc(ptr nocapture noundef readonly %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, label %lor.lhs.false.i

entry._dpu_encoder_phys_cmd_connect_te.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit

lor.lhs.false.i:                                  ; preds = %entry
  %connect_external_te.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %connect_external_te.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connect_external_te.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, label %if.end.i

lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys_enc, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ -1, %if.end.i.cond.end.i_crit_edge ]
  tail call fastcc void @trace_dpu_enc_phys_cmd_connect_te(i32 noundef %cond.i, i1 noundef zeroext false) #11
  %8 = ptrtoint ptr %hw_pp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_pp.i, align 4
  %connect_external_te8.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %9, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %connect_external_te8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connect_external_te8.i, align 4
  %call.i = tail call i32 %11(ptr noundef %9, i1 noundef zeroext false) #11
  br label %_dpu_encoder_phys_cmd_connect_te.exit

_dpu_encoder_phys_cmd_connect_te.exit:            ; preds = %cond.end.i, %lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, %entry._dpu_encoder_phys_cmd_connect_te.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_handle_post_kickoff(ptr nocapture noundef readonly %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, label %lor.lhs.false.i

entry._dpu_encoder_phys_cmd_connect_te.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit

lor.lhs.false.i:                                  ; preds = %entry
  %connect_external_te.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %connect_external_te.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connect_external_te.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, label %if.end.i

lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_connect_te.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys_enc, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ -1, %if.end.i.cond.end.i_crit_edge ]
  tail call fastcc void @trace_dpu_enc_phys_cmd_connect_te(i32 noundef %cond.i, i1 noundef zeroext true) #11
  %8 = ptrtoint ptr %hw_pp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_pp.i, align 4
  %connect_external_te8.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %9, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %connect_external_te8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connect_external_te8.i, align 4
  %call.i = tail call i32 %11(ptr noundef %9, i1 noundef zeroext true) #11
  br label %_dpu_encoder_phys_cmd_connect_te.exit

_dpu_encoder_phys_cmd_connect_te.exit:            ; preds = %cond.end.i, %lor.lhs.false.i._dpu_encoder_phys_cmd_connect_te.exit_crit_edge, %entry._dpu_encoder_phys_cmd_connect_te.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_get_line_count(ptr nocapture noundef readonly %phys_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp1 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %2 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 2
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %get_line_count = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 5, i32 7
  %4 = ptrtoint ptr %get_line_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_line_count, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 %5(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_phys_cmd_connect_te(i32 noundef %drm_id, i1 noundef zeroext %enable) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_phys_cmd_connect_te, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !199
  %call43 = tail call i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext %enable) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !198

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_phys_cmd_connect_te.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_enc_phys_cmd_connect_te.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 365, ptr noundef nonnull @.str.20) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_register_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_unregister_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_wait_for_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_encoder_phys_cmd_wait_for_idle(ptr noundef %phys_enc) unnamed_addr #0 align 64 {
entry:
  %wait_info = alloca %struct.dpu_encoder_wait_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wait_info) #11
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
  %call = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %phys_enc, i32 noundef 1, ptr noundef nonnull %wait_info) #11
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.if.end3_crit_edge [
    i32 -110, label %if.then
    i32 0, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %hw_pp.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %6 = ptrtoint ptr %hw_pp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_pp.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end3_crit_edge, label %if.end.i

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys_enc, align 4
  %pp_timeout_report_cnt.i = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %phys_enc, i32 0, i32 3
  %10 = ptrtoint ptr %pp_timeout_report_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pp_timeout_report_cnt.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %pp_timeout_report_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i = icmp eq i32 %11, 0
  %frame_event.0.i = select i1 %cmp.i, i32 6, i32 2
  %do_log.0.off0.i = or i1 %cmp4.i, %cmp.i
  %tobool8.not.i = icmp eq ptr %9, null
  br i1 %tobool8.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ -1, %if.end.i.cond.end.i_crit_edge ]
  %idx.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx.i, align 4
  %sub.i = add i32 %15, -1
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %16 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %pending_kickoff_cnt, align 4
  call fastcc void @trace_dpu_enc_phys_cmd_pdone_timeout(i32 noundef %cond.i, i32 noundef %sub.i, i32 noundef %inc.i, i32 noundef %17, i32 noundef %frame_event.0.i) #11
  br i1 %do_log.0.off0.i, label %if.then12.i, label %cond.end.i.if.end29.i_crit_edge

cond.end.i.if.end29.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then12.i:                                      ; preds = %cond.end.i
  br i1 %tobool8.not.i, label %if.then12.i.cond.end18.i_crit_edge, label %cond.true14.i

if.then12.i.cond.end18.i_crit_edge:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18.i

cond.true14.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %base15.i = getelementptr inbounds %struct.drm_encoder, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %base15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base15.i, align 4
  br label %cond.end18.i

cond.end18.i:                                     ; preds = %cond.true14.i, %if.then12.i.cond.end18.i_crit_edge
  %cond19.i = phi i32 [ %19, %cond.true14.i ], [ -1, %if.then12.i.cond.end18.i_crit_edge ]
  %20 = ptrtoint ptr %hw_pp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_pp.i, align 4
  %idx21.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %idx21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx21.i, align 4
  %sub22.i = add i32 %23, -1
  %hw_ctl.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %24 = ptrtoint ptr %hw_ctl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_ctl.i, align 4
  %idx23.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %idx23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx23.i, align 4
  %sub24.i = add i32 %27, -1
  %28 = ptrtoint ptr %pp_timeout_report_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pp_timeout_report_cnt.i, align 4
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  %30 = ptrtoint ptr %pending_kickoff_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %pending_kickoff_cnt, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54, i32 noundef %cond19.i, i32 noundef %sub22.i, i32 noundef %sub24.i, i32 noundef %29, i32 noundef %31) #11
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %9, align 4
  call void @msm_disp_snapshot_state(ptr noundef %33) #11
  %call28.i = call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef 4) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %cond.end18.i, %cond.end.i.if.end29.i_crit_edge
  %call.i.i2.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  call void @llvm.prefetch.p0(ptr %pending_kickoff_cnt, i32 1, i32 3, i32 1) #11
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %pending_kickoff_cnt, ptr %pending_kickoff_cnt, i32 0, i32 -1, ptr elementtype(i32) %pending_kickoff_cnt) #11, !srcloc !191
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end29.i.atomic_add_unless.exit.i_crit_edge, label %do.end11.i.i.i.i

if.end29.i.atomic_add_unless.exit.i_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit.i

do.end11.i.i.i.i:                                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !192
  br label %atomic_add_unless.exit.i

atomic_add_unless.exit.i:                         ; preds = %do.end11.i.i.i.i, %if.end29.i.atomic_add_unless.exit.i_crit_edge
  %enable_state.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %35 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %enable_state.i, align 4
  %parent_ops.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 3
  %36 = ptrtoint ptr %parent_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent_ops.i, align 4
  %handle_frame_done.i = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %handle_frame_done.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle_frame_done.i, align 4
  %tobool32.not.i = icmp eq ptr %39, null
  br i1 %tobool32.not.i, label %atomic_add_unless.exit.i.if.end3_crit_edge, label %if.then33.i

atomic_add_unless.exit.i.if.end3_crit_edge:       ; preds = %atomic_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then33.i:                                      ; preds = %atomic_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %39(ptr noundef %9, ptr noundef %phys_enc, i32 noundef %frame_event.0.i) #11
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pp_timeout_report_cnt = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %phys_enc, i32 0, i32 3
  %40 = ptrtoint ptr %pp_timeout_report_cnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %pp_timeout_report_cnt, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then33.i, %atomic_add_unless.exit.i.if.end3_crit_edge, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wait_info) #11
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_phys_cmd_pdone_timeout(i32 noundef %drm_id, i32 noundef %pp, i32 noundef %timeout_count, i32 noundef %kickoff_count, i32 noundef %event) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_phys_cmd_pdone_timeout, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call42 = tail call i32 @__traceiter_dpu_enc_phys_cmd_pdone_timeout(ptr noundef null, i32 noundef %drm_id, i32 noundef %pp, i32 noundef %timeout_count, i32 noundef %kickoff_count, i32 noundef %event) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !198

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_phys_cmd_pdone_timeout.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_enc_phys_cmd_pdone_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 595, ptr noundef nonnull @.str.20) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
declare dso_local void @msm_disp_snapshot_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_pdone_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_trigger_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_phys_cmd_irq_ctrl(i32 noundef %drm_id, i32 noundef %pp, i1 noundef zeroext %enable, i32 noundef %refcnt) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_phys_cmd_irq_ctrl, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %call43 = tail call i32 @__traceiter_dpu_enc_phys_cmd_irq_ctrl(ptr noundef null, i32 noundef %drm_id, i32 noundef %pp, i1 noundef zeroext %enable, i32 noundef %refcnt) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !198

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_phys_cmd_irq_ctrl.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_enc_phys_cmd_irq_ctrl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 552, ptr noundef nonnull @.str.20) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_irq_ctrl(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_split_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_phys_cmd_pingpong_config(ptr noundef %phys_enc) unnamed_addr #0 align 64 {
entry:
  %intf_cfg.i = alloca %struct.dpu_hw_intf_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %2 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_ctl, align 4
  %setup_intf_cfg = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 9, i32 9
  %4 = ptrtoint ptr %setup_intf_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup_intf_cfg, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %do.body3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %cmp = icmp ne ptr %phys_enc, null
  %conv = zext i1 %cmp to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 408, i32 noundef %conv) #15
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %6 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body19, label %if.then5

if.then5:                                         ; preds = %do.body3
  %tobool6.not = icmp eq ptr %phys_enc, null
  br i1 %tobool6.not, label %if.then5.cond.end15_crit_edge, label %land.lhs.true

if.then5.cond.end15_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

land.lhs.true:                                    ; preds = %if.then5
  %7 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phys_enc, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true.cond.true12_crit_edge, label %cond.true

land.lhs.true.cond.true12_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true12

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base10 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base10, align 4
  br label %cond.true12

cond.true12:                                      ; preds = %cond.true, %land.lhs.true.cond.true12_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.cond.true12_crit_edge ], [ %10, %cond.true ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %11 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %12, -1
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %if.then5.cond.end15_crit_edge
  %cond76 = phi i32 [ %cond.ph, %cond.true12 ], [ -1, %if.then5.cond.end15_crit_edge ]
  %cond16 = phi i32 [ %sub, %cond.true12 ], [ -1, %if.then5.cond.end15_crit_edge ]
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  %sub18 = add i32 %14, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.60, i32 noundef %cond76, i32 noundef %cond16, i32 noundef %sub18) #11
  br label %do.end55

do.body19:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_encoder_phys_cmd_pingpong_config.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_encoder_phys_cmd_pingpong_config, %if.then25)) #11
          to label %do.end55 [label %if.then25], !srcloc !189

if.then25:                                        ; preds = %do.body19
  %tobool26.not = icmp eq ptr %phys_enc, null
  br i1 %tobool26.not, label %if.then25.cond.end45_crit_edge, label %land.lhs.true27

if.then25.cond.end45_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end45

land.lhs.true27:                                  ; preds = %if.then25
  %15 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phys_enc, align 4
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %land.lhs.true27.cond.true40_crit_edge, label %cond.true31

land.lhs.true27.cond.true40_crit_edge:            ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true40

cond.true31:                                      ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  %base34 = getelementptr inbounds %struct.drm_encoder, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base34, align 4
  br label %cond.true40

cond.true40:                                      ; preds = %cond.true31, %land.lhs.true27.cond.true40_crit_edge
  %cond38.ph = phi i32 [ -1, %land.lhs.true27.cond.true40_crit_edge ], [ %18, %cond.true31 ]
  %intf_idx42 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %19 = ptrtoint ptr %intf_idx42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intf_idx42, align 4
  %sub43 = add i32 %20, -1
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true40, %if.then25.cond.end45_crit_edge
  %cond3880 = phi i32 [ %cond38.ph, %cond.true40 ], [ -1, %if.then25.cond.end45_crit_edge ]
  %cond46 = phi i32 [ %sub43, %cond.true40 ], [ -1, %if.then25.cond.end45_crit_edge ]
  %21 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_pp, align 4
  %idx48 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %idx48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx48, align 4
  %sub49 = add i32 %24, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_encoder_phys_cmd_pingpong_config.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 413, i32 noundef %cond3880, i32 noundef %cond46, i32 noundef %sub49) #11
  br label %do.end55

do.end55:                                         ; preds = %cond.end45, %do.body19, %cond.end15
  %cached_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9
  tail call void @drm_mode_debug_printmodeline(ptr noundef %cached_mode) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %intf_cfg.i) #11
  %25 = getelementptr inbounds i8, ptr %intf_cfg.i, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %27 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_ctl, align 4
  %setup_intf_cfg.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %28, i32 0, i32 9, i32 9
  %29 = ptrtoint ptr %setup_intf_cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup_intf_cfg.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %do.end55._dpu_encoder_phys_cmd_update_intf_cfg.exit_crit_edge, label %if.end.i

do.end55._dpu_encoder_phys_cmd_update_intf_cfg.exit_crit_edge: ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_encoder_phys_cmd_update_intf_cfg.exit

if.end.i:                                         ; preds = %do.end55
  %intf_idx.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %31 = ptrtoint ptr %intf_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intf_idx.i, align 4
  %33 = ptrtoint ptr %intf_cfg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %intf_cfg.i, align 4
  %intf_mode_sel.i = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg.i, i32 0, i32 3
  %34 = ptrtoint ptr %intf_mode_sel.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %intf_mode_sel.i, align 4
  %stream_sel.i = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %phys_enc, i32 0, i32 1
  %35 = ptrtoint ptr %stream_sel.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stream_sel.i, align 4
  %stream_sel1.i = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg.i, i32 0, i32 4
  %37 = ptrtoint ptr %stream_sel1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %stream_sel1.i, align 4
  %tobool.not.i.i = icmp eq ptr %phys_enc, null
  br i1 %tobool.not.i.i, label %if.end.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_encoder_helper_get_3d_blend_mode.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %enable_state.i.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %38 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %enable_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_encoder_helper_get_3d_blend_mode.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %split_role.i.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %40 = ptrtoint ptr %split_role.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %split_role.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1.i.i = icmp eq i32 %41, 0
  br i1 %cmp1.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end4.i.i_crit_edge

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %42 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phys_enc, align 4
  %crtc.i.i = getelementptr inbounds %struct.drm_encoder, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crtc.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.drm_crtc, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state.i.i, align 4
  %num_mixers.i.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %num_mixers.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_mixers.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp2.i.i = icmp eq i32 %49, 2
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge, label %land.lhs.true.i.i.if.end4.i.i_crit_edge

land.lhs.true.i.i.if.end4.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

land.lhs.true.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_encoder_helper_get_3d_blend_mode.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true.i.i.if.end4.i.i_crit_edge, %if.end.i.i.if.end4.i.i_crit_edge
  br label %dpu_encoder_helper_get_3d_blend_mode.exit.i

dpu_encoder_helper_get_3d_blend_mode.exit.i:      ; preds = %if.end4.i.i, %land.lhs.true.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge, %lor.lhs.false.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge, %if.end.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end4.i.i ], [ 0, %lor.lhs.false.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge ], [ 0, %if.end.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge ], [ 2, %land.lhs.true.i.i.dpu_encoder_helper_get_3d_blend_mode.exit.i_crit_edge ]
  %mode_3d.i = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %intf_cfg.i, i32 0, i32 1
  %50 = ptrtoint ptr %mode_3d.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i, ptr %mode_3d.i, align 4
  call void %30(ptr noundef %28, ptr noundef nonnull %intf_cfg.i) #11
  br label %_dpu_encoder_phys_cmd_update_intf_cfg.exit

_dpu_encoder_phys_cmd_update_intf_cfg.exit:       ; preds = %dpu_encoder_helper_get_3d_blend_mode.exit.i, %do.end55._dpu_encoder_phys_cmd_update_intf_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %intf_cfg.i) #11
  call fastcc void @dpu_encoder_phys_cmd_tearcheck_config(ptr noundef %phys_enc)
  br label %cleanup

cleanup:                                          ; preds = %_dpu_encoder_phys_cmd_update_intf_cfg.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpu_encoder_phys_cmd_tearcheck_config(ptr noundef %phys_enc) unnamed_addr #0 align 64 {
entry:
  %tc_cfg = alloca %struct.dpu_hw_tear_check, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tc_cfg) #11
  %0 = getelementptr inbounds i8, ptr %tc_cfg, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %2 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.62, i32 noundef 334) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cached_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %4 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body18, label %if.then4

if.then4:                                         ; preds = %if.end
  %tobool5.not = icmp eq ptr %phys_enc, null
  br i1 %tobool5.not, label %if.then4.cond.end14_crit_edge, label %land.lhs.true

if.then4.cond.end14_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end14

land.lhs.true:                                    ; preds = %if.then4
  %5 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phys_enc, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.cond.true11_crit_edge, label %cond.true

land.lhs.true.cond.true11_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true11

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %base9 = getelementptr inbounds %struct.drm_encoder, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base9, align 4
  br label %cond.true11

cond.true11:                                      ; preds = %cond.true, %land.lhs.true.cond.true11_crit_edge
  %cond.ph = phi i32 [ -1, %land.lhs.true.cond.true11_crit_edge ], [ %8, %cond.true ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %9 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %10, -1
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true11, %if.then4.cond.end14_crit_edge
  %cond684 = phi i32 [ %cond.ph, %cond.true11 ], [ -1, %if.then4.cond.end14_crit_edge ]
  %cond15 = phi i32 [ %sub, %cond.true11 ], [ -1, %if.then4.cond.end14_crit_edge ]
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx, align 4
  %sub17 = add i32 %12, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %cond684, i32 noundef %cond15, i32 noundef %sub17) #11
  br label %do.end54

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then24)) #11
          to label %do.end54 [label %if.then24], !srcloc !189

if.then24:                                        ; preds = %do.body18
  %tobool25.not = icmp eq ptr %phys_enc, null
  br i1 %tobool25.not, label %if.then24.cond.end44_crit_edge, label %land.lhs.true26

if.then24.cond.end44_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end44

land.lhs.true26:                                  ; preds = %if.then24
  %13 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phys_enc, align 4
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %land.lhs.true26.cond.true39_crit_edge, label %cond.true30

land.lhs.true26.cond.true39_crit_edge:            ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true39

cond.true30:                                      ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  %base33 = getelementptr inbounds %struct.drm_encoder, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base33, align 4
  br label %cond.true39

cond.true39:                                      ; preds = %cond.true30, %land.lhs.true26.cond.true39_crit_edge
  %cond37.ph = phi i32 [ -1, %land.lhs.true26.cond.true39_crit_edge ], [ %16, %cond.true30 ]
  %intf_idx41 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %17 = ptrtoint ptr %intf_idx41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intf_idx41, align 4
  %sub42 = add i32 %18, -1
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true39, %if.then24.cond.end44_crit_edge
  %cond37688 = phi i32 [ %cond37.ph, %cond.true39 ], [ -1, %if.then24.cond.end44_crit_edge ]
  %cond45 = phi i32 [ %sub42, %cond.true39 ], [ -1, %if.then24.cond.end44_crit_edge ]
  %19 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_pp, align 4
  %idx47 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %idx47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx47, align 4
  %sub48 = add i32 %22, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.62, i32 noundef 339, i32 noundef %cond37688, i32 noundef %cond45, i32 noundef %sub48) #11
  br label %do.end54

do.end54:                                         ; preds = %cond.end44, %do.body18, %cond.end14
  %23 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_pp, align 4
  %ops = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %tobool56.not = icmp eq ptr %26, null
  br i1 %tobool56.not, label %do.end54.do.body61_crit_edge, label %lor.lhs.false

do.end54.do.body61_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

lor.lhs.false:                                    ; preds = %do.end54
  %enable_tearcheck = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %24, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %enable_tearcheck to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enable_tearcheck, align 4
  %tobool59.not = icmp eq ptr %28, null
  br i1 %tobool59.not, label %lor.lhs.false.do.body61_crit_edge, label %if.end126

lor.lhs.false.do.body61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

do.body61:                                        ; preds = %lor.lhs.false.do.body61_crit_edge, %do.end54.do.body61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %29 = load i32, ptr @__drm_debug, align 4
  %and.i670 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i670)
  %tobool.i671.not = icmp eq i32 %and.i670, 0
  br i1 %tobool.i671.not, label %do.body86, label %if.then63

if.then63:                                        ; preds = %do.body61
  %tobool64.not = icmp eq ptr %phys_enc, null
  br i1 %tobool64.not, label %if.then63.cond.end83_crit_edge, label %land.lhs.true65

if.then63.cond.end83_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end83

land.lhs.true65:                                  ; preds = %if.then63
  %30 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phys_enc, align 4
  %tobool68.not = icmp eq ptr %31, null
  br i1 %tobool68.not, label %land.lhs.true65.cond.true78_crit_edge, label %cond.true69

land.lhs.true65.cond.true78_crit_edge:            ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true78

cond.true69:                                      ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  %base72 = getelementptr inbounds %struct.drm_encoder, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %base72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base72, align 4
  br label %cond.true78

cond.true78:                                      ; preds = %cond.true69, %land.lhs.true65.cond.true78_crit_edge
  %cond76.ph = phi i32 [ -1, %land.lhs.true65.cond.true78_crit_edge ], [ %33, %cond.true69 ]
  %intf_idx80 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %34 = ptrtoint ptr %intf_idx80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %intf_idx80, align 4
  %sub81 = add i32 %35, -1
  br label %cond.end83

cond.end83:                                       ; preds = %cond.true78, %if.then63.cond.end83_crit_edge
  %cond76691 = phi i32 [ %cond76.ph, %cond.true78 ], [ -1, %if.then63.cond.end83_crit_edge ]
  %cond84 = phi i32 [ %sub81, %cond.true78 ], [ -1, %if.then63.cond.end83_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.63, i32 noundef %cond76691, i32 noundef %cond84) #11
  br label %cleanup

do.body86:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then98)) #11
          to label %cleanup [label %if.then98], !srcloc !189

if.then98:                                        ; preds = %do.body86
  %tobool99.not = icmp eq ptr %phys_enc, null
  br i1 %tobool99.not, label %if.then98.cond.end118_crit_edge, label %land.lhs.true100

if.then98.cond.end118_crit_edge:                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end118

land.lhs.true100:                                 ; preds = %if.then98
  %36 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phys_enc, align 4
  %tobool103.not = icmp eq ptr %37, null
  br i1 %tobool103.not, label %land.lhs.true100.cond.true113_crit_edge, label %cond.true104

land.lhs.true100.cond.true113_crit_edge:          ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true113

cond.true104:                                     ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  %base107 = getelementptr inbounds %struct.drm_encoder, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %base107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base107, align 4
  br label %cond.true113

cond.true113:                                     ; preds = %cond.true104, %land.lhs.true100.cond.true113_crit_edge
  %cond111.ph = phi i32 [ -1, %land.lhs.true100.cond.true113_crit_edge ], [ %39, %cond.true104 ]
  %intf_idx115 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %40 = ptrtoint ptr %intf_idx115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intf_idx115, align 4
  %sub116 = add i32 %41, -1
  br label %cond.end118

cond.end118:                                      ; preds = %cond.true113, %if.then98.cond.end118_crit_edge
  %cond111695 = phi i32 [ %cond111.ph, %cond.true113 ], [ -1, %if.then98.cond.end118_crit_edge ]
  %cond119 = phi i32 [ %sub116, %cond.true113 ], [ -1, %if.then98.cond.end118_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 343, i32 noundef %cond111695, i32 noundef %cond119) #11
  br label %cleanup

if.end126:                                        ; preds = %lor.lhs.false
  %dpu_kms127 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 8
  %42 = ptrtoint ptr %dpu_kms127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dpu_kms127, align 4
  %call128 = tail call i64 @dpu_kms_get_clk_rate(ptr noundef %43, ptr noundef nonnull @.str.65) #11
  %conv = trunc i64 %call128 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %do.body131, label %if.end196

do.body131:                                       ; preds = %if.end126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %44 = load i32, ptr @__drm_debug, align 4
  %and.i672 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i672)
  %tobool.i673.not = icmp eq i32 %and.i672, 0
  br i1 %tobool.i673.not, label %do.body156, label %if.then133

if.then133:                                       ; preds = %do.body131
  %tobool134.not = icmp eq ptr %phys_enc, null
  br i1 %tobool134.not, label %if.then133.cond.end153_crit_edge, label %land.lhs.true135

if.then133.cond.end153_crit_edge:                 ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end153

land.lhs.true135:                                 ; preds = %if.then133
  %45 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phys_enc, align 4
  %tobool138.not = icmp eq ptr %46, null
  br i1 %tobool138.not, label %land.lhs.true135.cond.true148_crit_edge, label %cond.true139

land.lhs.true135.cond.true148_crit_edge:          ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true148

cond.true139:                                     ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  %base142 = getelementptr inbounds %struct.drm_encoder, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %base142 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base142, align 4
  br label %cond.true148

cond.true148:                                     ; preds = %cond.true139, %land.lhs.true135.cond.true148_crit_edge
  %cond146.ph = phi i32 [ -1, %land.lhs.true135.cond.true148_crit_edge ], [ %48, %cond.true139 ]
  %intf_idx150 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %49 = ptrtoint ptr %intf_idx150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %intf_idx150, align 4
  %sub151 = add i32 %50, -1
  br label %cond.end153

cond.end153:                                      ; preds = %cond.true148, %if.then133.cond.end153_crit_edge
  %cond146698 = phi i32 [ %cond146.ph, %cond.true148 ], [ -1, %if.then133.cond.end153_crit_edge ]
  %cond154 = phi i32 [ %sub151, %cond.true148 ], [ -1, %if.then133.cond.end153_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %cond146698, i32 noundef %cond154, i32 noundef 0) #11
  br label %cleanup

do.body156:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then168)) #11
          to label %cleanup [label %if.then168], !srcloc !189

if.then168:                                       ; preds = %do.body156
  %tobool169.not = icmp eq ptr %phys_enc, null
  br i1 %tobool169.not, label %if.then168.cond.end188_crit_edge, label %land.lhs.true170

if.then168.cond.end188_crit_edge:                 ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end188

land.lhs.true170:                                 ; preds = %if.then168
  %51 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phys_enc, align 4
  %tobool173.not = icmp eq ptr %52, null
  br i1 %tobool173.not, label %land.lhs.true170.cond.true183_crit_edge, label %cond.true174

land.lhs.true170.cond.true183_crit_edge:          ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true183

cond.true174:                                     ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  %base177 = getelementptr inbounds %struct.drm_encoder, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %base177 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base177, align 4
  br label %cond.true183

cond.true183:                                     ; preds = %cond.true174, %land.lhs.true170.cond.true183_crit_edge
  %cond181.ph = phi i32 [ -1, %land.lhs.true170.cond.true183_crit_edge ], [ %54, %cond.true174 ]
  %intf_idx185 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %55 = ptrtoint ptr %intf_idx185 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %intf_idx185, align 4
  %sub186 = add i32 %56, -1
  br label %cond.end188

cond.end188:                                      ; preds = %cond.true183, %if.then168.cond.end188_crit_edge
  %cond181702 = phi i32 [ %cond181.ph, %cond.true183 ], [ -1, %if.then168.cond.end188_crit_edge ]
  %cond189 = phi i32 [ %sub186, %cond.true183 ], [ -1, %if.then168.cond.end188_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef 361, i32 noundef %cond181702, i32 noundef %cond189, i32 noundef 0) #11
  br label %cleanup

if.end196:                                        ; preds = %if.end126
  %vtotal = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9, i32 9
  %57 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vtotal, align 4
  %conv197 = zext i16 %58 to i32
  %call198 = tail call i32 @drm_mode_vrefresh(ptr noundef %cached_mode) #11
  %mul = mul i32 %call198, %conv197
  %div = udiv i32 %conv, %mul
  %59 = ptrtoint ptr %tc_cfg to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div, ptr %tc_cfg, align 4
  %hw_vsync_mode = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 7
  %60 = ptrtoint ptr %hw_vsync_mode to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %hw_vsync_mode, align 4
  %61 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vtotal, align 4
  %conv200 = zext i16 %62 to i32
  %mul201 = shl nuw nsw i32 %conv200, 1
  %sync_cfg_height = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 1
  %63 = ptrtoint ptr %sync_cfg_height to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul201, ptr %sync_cfg_height, align 4
  %vdisplay = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 9, i32 6
  %64 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vdisplay, align 2
  %conv202 = zext i16 %65 to i32
  %vsync_init_val = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 2
  %66 = ptrtoint ptr %vsync_init_val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv202, ptr %vsync_init_val, align 4
  %sync_threshold_start = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 3
  %67 = ptrtoint ptr %sync_threshold_start to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %sync_threshold_start, align 4
  %sync_threshold_continue = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 4
  %68 = ptrtoint ptr %sync_threshold_continue to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %sync_threshold_continue, align 4
  %start_pos = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 5
  %69 = ptrtoint ptr %start_pos to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv202, ptr %start_pos, align 4
  %add = add nuw nsw i32 %conv202, 1
  %rd_ptr_irq = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %tc_cfg, i32 0, i32 6
  %70 = ptrtoint ptr %rd_ptr_irq to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add, ptr %rd_ptr_irq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %71 = load i32, ptr @__drm_debug, align 4
  %and.i674 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i674)
  %tobool.i675.not = icmp eq i32 %and.i674, 0
  br i1 %tobool.i675.not, label %do.body238, label %if.then209

if.then209:                                       ; preds = %if.end196
  %tobool210.not = icmp eq ptr %phys_enc, null
  br i1 %tobool210.not, label %if.then209.cond.end229_crit_edge, label %land.lhs.true211

if.then209.cond.end229_crit_edge:                 ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end229

land.lhs.true211:                                 ; preds = %if.then209
  %72 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %phys_enc, align 4
  %tobool214.not = icmp eq ptr %73, null
  br i1 %tobool214.not, label %land.lhs.true211.cond.true224_crit_edge, label %cond.true215

land.lhs.true211.cond.true224_crit_edge:          ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true224

cond.true215:                                     ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #13
  %base218 = getelementptr inbounds %struct.drm_encoder, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %base218 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base218, align 4
  br label %cond.true224

cond.true224:                                     ; preds = %cond.true215, %land.lhs.true211.cond.true224_crit_edge
  %cond222.ph = phi i32 [ -1, %land.lhs.true211.cond.true224_crit_edge ], [ %75, %cond.true215 ]
  %intf_idx226 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %76 = ptrtoint ptr %intf_idx226 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %intf_idx226, align 4
  %sub227 = add i32 %77, -1
  br label %cond.end229

cond.end229:                                      ; preds = %cond.true224, %if.then209.cond.end229_crit_edge
  %cond222705 = phi i32 [ %cond222.ph, %cond.true224 ], [ -1, %if.then209.cond.end229_crit_edge ]
  %cond230 = phi i32 [ %sub227, %cond.true224 ], [ -1, %if.then209.cond.end229_crit_edge ]
  %78 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_pp, align 4
  %idx232 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %idx232 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %idx232, align 4
  %sub233 = add i32 %81, -1
  %call236 = tail call i32 @drm_mode_vrefresh(ptr noundef %cached_mode) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.68, i32 noundef %cond222705, i32 noundef %cond230, i32 noundef %sub233, i32 noundef %conv, i32 noundef %conv200, i32 noundef %call236) #11
  br label %do.body284

do.body238:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then250)) #11
          to label %do.body284 [label %if.then250], !srcloc !189

if.then250:                                       ; preds = %do.body238
  %tobool251.not = icmp eq ptr %phys_enc, null
  br i1 %tobool251.not, label %if.then250.cond.end270_crit_edge, label %land.lhs.true252

if.then250.cond.end270_crit_edge:                 ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end270

land.lhs.true252:                                 ; preds = %if.then250
  %82 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phys_enc, align 4
  %tobool255.not = icmp eq ptr %83, null
  br i1 %tobool255.not, label %land.lhs.true252.cond.true265_crit_edge, label %cond.true256

land.lhs.true252.cond.true265_crit_edge:          ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true265

cond.true256:                                     ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #13
  %base259 = getelementptr inbounds %struct.drm_encoder, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %base259 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base259, align 4
  br label %cond.true265

cond.true265:                                     ; preds = %cond.true256, %land.lhs.true252.cond.true265_crit_edge
  %cond263.ph = phi i32 [ -1, %land.lhs.true252.cond.true265_crit_edge ], [ %85, %cond.true256 ]
  %intf_idx267 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %86 = ptrtoint ptr %intf_idx267 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %intf_idx267, align 4
  %sub268 = add i32 %87, -1
  br label %cond.end270

cond.end270:                                      ; preds = %cond.true265, %if.then250.cond.end270_crit_edge
  %cond263709 = phi i32 [ %cond263.ph, %cond.true265 ], [ -1, %if.then250.cond.end270_crit_edge ]
  %cond271 = phi i32 [ %sub268, %cond.true265 ], [ -1, %if.then250.cond.end270_crit_edge ]
  %88 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw_pp, align 4
  %idx273 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %idx273 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %idx273, align 4
  %sub274 = add i32 %91, -1
  %92 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vtotal, align 4
  %conv276 = zext i16 %93 to i32
  %call277 = tail call i32 @drm_mode_vrefresh(ptr noundef %cached_mode) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.62, i32 noundef 383, i32 noundef %cond263709, i32 noundef %cond271, i32 noundef %sub274, i32 noundef %conv, i32 noundef %conv276, i32 noundef %call277) #11
  br label %do.body284

do.body284:                                       ; preds = %cond.end270, %do.body238, %cond.end229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %94 = load i32, ptr @__drm_debug, align 4
  %and.i676 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i676)
  %tobool.i677.not = icmp eq i32 %and.i676, 0
  br i1 %tobool.i677.not, label %do.body316, label %if.then286

if.then286:                                       ; preds = %do.body284
  %tobool287.not = icmp eq ptr %phys_enc, null
  br i1 %tobool287.not, label %if.then286.cond.end306_crit_edge, label %land.lhs.true288

if.then286.cond.end306_crit_edge:                 ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end306

land.lhs.true288:                                 ; preds = %if.then286
  %95 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %phys_enc, align 4
  %tobool291.not = icmp eq ptr %96, null
  br i1 %tobool291.not, label %land.lhs.true288.cond.true301_crit_edge, label %cond.true292

land.lhs.true288.cond.true301_crit_edge:          ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true301

cond.true292:                                     ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #13
  %base295 = getelementptr inbounds %struct.drm_encoder, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %base295 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %base295, align 4
  br label %cond.true301

cond.true301:                                     ; preds = %cond.true292, %land.lhs.true288.cond.true301_crit_edge
  %cond299.ph = phi i32 [ -1, %land.lhs.true288.cond.true301_crit_edge ], [ %98, %cond.true292 ]
  %intf_idx303 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %99 = ptrtoint ptr %intf_idx303 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %intf_idx303, align 4
  %sub304 = add i32 %100, -1
  br label %cond.end306

cond.end306:                                      ; preds = %cond.true301, %if.then286.cond.end306_crit_edge
  %cond299712 = phi i32 [ %cond299.ph, %cond.true301 ], [ -1, %if.then286.cond.end306_crit_edge ]
  %cond307 = phi i32 [ %sub304, %cond.true301 ], [ -1, %if.then286.cond.end306_crit_edge ]
  %101 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw_pp, align 4
  %idx309 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %idx309 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %idx309, align 4
  %sub310 = add i32 %104, -1
  %105 = ptrtoint ptr %start_pos to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %start_pos, align 4
  %107 = ptrtoint ptr %rd_ptr_irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rd_ptr_irq, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef %cond299712, i32 noundef %cond307, i32 noundef %sub310, i32 noundef 1, i32 noundef %106, i32 noundef %108) #11
  br label %do.body363

do.body316:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then328)) #11
          to label %do.body363 [label %if.then328], !srcloc !189

if.then328:                                       ; preds = %do.body316
  %tobool329.not = icmp eq ptr %phys_enc, null
  br i1 %tobool329.not, label %if.then328.cond.end348_crit_edge, label %land.lhs.true330

if.then328.cond.end348_crit_edge:                 ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end348

land.lhs.true330:                                 ; preds = %if.then328
  %109 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %phys_enc, align 4
  %tobool333.not = icmp eq ptr %110, null
  br i1 %tobool333.not, label %land.lhs.true330.cond.true343_crit_edge, label %cond.true334

land.lhs.true330.cond.true343_crit_edge:          ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true343

cond.true334:                                     ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #13
  %base337 = getelementptr inbounds %struct.drm_encoder, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %base337 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base337, align 4
  br label %cond.true343

cond.true343:                                     ; preds = %cond.true334, %land.lhs.true330.cond.true343_crit_edge
  %cond341.ph = phi i32 [ -1, %land.lhs.true330.cond.true343_crit_edge ], [ %112, %cond.true334 ]
  %intf_idx345 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %113 = ptrtoint ptr %intf_idx345 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %intf_idx345, align 4
  %sub346 = add i32 %114, -1
  br label %cond.end348

cond.end348:                                      ; preds = %cond.true343, %if.then328.cond.end348_crit_edge
  %cond341716 = phi i32 [ %cond341.ph, %cond.true343 ], [ -1, %if.then328.cond.end348_crit_edge ]
  %cond349 = phi i32 [ %sub346, %cond.true343 ], [ -1, %if.then328.cond.end348_crit_edge ]
  %115 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw_pp, align 4
  %idx351 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %idx351 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %idx351, align 4
  %sub352 = add i32 %118, -1
  %119 = ptrtoint ptr %start_pos to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %start_pos, align 4
  %121 = ptrtoint ptr %rd_ptr_irq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rd_ptr_irq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.62, i32 noundef 387, i32 noundef %cond341716, i32 noundef %cond349, i32 noundef %sub352, i32 noundef 1, i32 noundef %120, i32 noundef %122) #11
  br label %do.body363

do.body363:                                       ; preds = %cond.end348, %do.body316, %cond.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %123 = load i32, ptr @__drm_debug, align 4
  %and.i678 = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i678)
  %tobool.i679.not = icmp eq i32 %and.i678, 0
  br i1 %tobool.i679.not, label %do.body395, label %if.then365

if.then365:                                       ; preds = %do.body363
  %tobool366.not = icmp eq ptr %phys_enc, null
  br i1 %tobool366.not, label %if.then365.cond.end385_crit_edge, label %land.lhs.true367

if.then365.cond.end385_crit_edge:                 ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end385

land.lhs.true367:                                 ; preds = %if.then365
  %124 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %phys_enc, align 4
  %tobool370.not = icmp eq ptr %125, null
  br i1 %tobool370.not, label %land.lhs.true367.cond.true380_crit_edge, label %cond.true371

land.lhs.true367.cond.true380_crit_edge:          ; preds = %land.lhs.true367
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true380

cond.true371:                                     ; preds = %land.lhs.true367
  call void @__sanitizer_cov_trace_pc() #13
  %base374 = getelementptr inbounds %struct.drm_encoder, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %base374 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %base374, align 4
  br label %cond.true380

cond.true380:                                     ; preds = %cond.true371, %land.lhs.true367.cond.true380_crit_edge
  %cond378.ph = phi i32 [ -1, %land.lhs.true367.cond.true380_crit_edge ], [ %127, %cond.true371 ]
  %intf_idx382 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %128 = ptrtoint ptr %intf_idx382 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %intf_idx382, align 4
  %sub383 = add i32 %129, -1
  br label %cond.end385

cond.end385:                                      ; preds = %cond.true380, %if.then365.cond.end385_crit_edge
  %cond378719 = phi i32 [ %cond378.ph, %cond.true380 ], [ -1, %if.then365.cond.end385_crit_edge ]
  %cond386 = phi i32 [ %sub383, %cond.true380 ], [ -1, %if.then365.cond.end385_crit_edge ]
  %130 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw_pp, align 4
  %idx388 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %idx388 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %idx388, align 4
  %sub389 = add i32 %133, -1
  %134 = ptrtoint ptr %hw_vsync_mode to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %hw_vsync_mode, align 4
  %conv391 = zext i8 %135 to i32
  %136 = ptrtoint ptr %tc_cfg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tc_cfg, align 4
  %138 = ptrtoint ptr %vsync_init_val to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %vsync_init_val, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef %cond378719, i32 noundef %cond386, i32 noundef %sub389, i32 noundef %conv391, i32 noundef %137, i32 noundef %139) #11
  br label %do.body442

do.body395:                                       ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then407)) #11
          to label %do.body442 [label %if.then407], !srcloc !189

if.then407:                                       ; preds = %do.body395
  %tobool408.not = icmp eq ptr %phys_enc, null
  br i1 %tobool408.not, label %if.then407.cond.end427_crit_edge, label %land.lhs.true409

if.then407.cond.end427_crit_edge:                 ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end427

land.lhs.true409:                                 ; preds = %if.then407
  %140 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %phys_enc, align 4
  %tobool412.not = icmp eq ptr %141, null
  br i1 %tobool412.not, label %land.lhs.true409.cond.true422_crit_edge, label %cond.true413

land.lhs.true409.cond.true422_crit_edge:          ; preds = %land.lhs.true409
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true422

cond.true413:                                     ; preds = %land.lhs.true409
  call void @__sanitizer_cov_trace_pc() #13
  %base416 = getelementptr inbounds %struct.drm_encoder, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %base416 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %base416, align 4
  br label %cond.true422

cond.true422:                                     ; preds = %cond.true413, %land.lhs.true409.cond.true422_crit_edge
  %cond420.ph = phi i32 [ -1, %land.lhs.true409.cond.true422_crit_edge ], [ %143, %cond.true413 ]
  %intf_idx424 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %144 = ptrtoint ptr %intf_idx424 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %intf_idx424, align 4
  %sub425 = add i32 %145, -1
  br label %cond.end427

cond.end427:                                      ; preds = %cond.true422, %if.then407.cond.end427_crit_edge
  %cond420723 = phi i32 [ %cond420.ph, %cond.true422 ], [ -1, %if.then407.cond.end427_crit_edge ]
  %cond428 = phi i32 [ %sub425, %cond.true422 ], [ -1, %if.then407.cond.end427_crit_edge ]
  %146 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw_pp, align 4
  %idx430 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %idx430 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %idx430, align 4
  %sub431 = add i32 %149, -1
  %150 = ptrtoint ptr %hw_vsync_mode to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %hw_vsync_mode, align 4
  %conv433 = zext i8 %151 to i32
  %152 = ptrtoint ptr %tc_cfg to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tc_cfg, align 4
  %154 = ptrtoint ptr %vsync_init_val to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %vsync_init_val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.62, i32 noundef 391, i32 noundef %cond420723, i32 noundef %cond428, i32 noundef %sub431, i32 noundef %conv433, i32 noundef %153, i32 noundef %155) #11
  br label %do.body442

do.body442:                                       ; preds = %cond.end427, %do.body395, %cond.end385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %156 = load i32, ptr @__drm_debug, align 4
  %and.i680 = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i680)
  %tobool.i681.not = icmp eq i32 %and.i680, 0
  br i1 %tobool.i681.not, label %do.body473, label %if.then444

if.then444:                                       ; preds = %do.body442
  %tobool445.not = icmp eq ptr %phys_enc, null
  br i1 %tobool445.not, label %if.then444.cond.end464_crit_edge, label %land.lhs.true446

if.then444.cond.end464_crit_edge:                 ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end464

land.lhs.true446:                                 ; preds = %if.then444
  %157 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %phys_enc, align 4
  %tobool449.not = icmp eq ptr %158, null
  br i1 %tobool449.not, label %land.lhs.true446.cond.true459_crit_edge, label %cond.true450

land.lhs.true446.cond.true459_crit_edge:          ; preds = %land.lhs.true446
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true459

cond.true450:                                     ; preds = %land.lhs.true446
  call void @__sanitizer_cov_trace_pc() #13
  %base453 = getelementptr inbounds %struct.drm_encoder, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %base453 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %base453, align 4
  br label %cond.true459

cond.true459:                                     ; preds = %cond.true450, %land.lhs.true446.cond.true459_crit_edge
  %cond457.ph = phi i32 [ -1, %land.lhs.true446.cond.true459_crit_edge ], [ %160, %cond.true450 ]
  %intf_idx461 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %161 = ptrtoint ptr %intf_idx461 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %intf_idx461, align 4
  %sub462 = add i32 %162, -1
  br label %cond.end464

cond.end464:                                      ; preds = %cond.true459, %if.then444.cond.end464_crit_edge
  %cond457726 = phi i32 [ %cond457.ph, %cond.true459 ], [ -1, %if.then444.cond.end464_crit_edge ]
  %cond465 = phi i32 [ %sub462, %cond.true459 ], [ -1, %if.then444.cond.end464_crit_edge ]
  %163 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw_pp, align 4
  %idx467 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %idx467 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %idx467, align 4
  %sub468 = add i32 %166, -1
  %167 = ptrtoint ptr %sync_cfg_height to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sync_cfg_height, align 4
  %169 = ptrtoint ptr %sync_threshold_start to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sync_threshold_start, align 4
  %171 = ptrtoint ptr %sync_threshold_continue to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sync_threshold_continue, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.74, i32 noundef %cond457726, i32 noundef %cond465, i32 noundef %sub468, i32 noundef %168, i32 noundef %170, i32 noundef %172) #11
  br label %do.end518

do.body473:                                       ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_phys_cmd_tearcheck_config, %if.then485)) #11
          to label %do.end518 [label %if.then485], !srcloc !189

if.then485:                                       ; preds = %do.body473
  %tobool486.not = icmp eq ptr %phys_enc, null
  br i1 %tobool486.not, label %if.then485.cond.end505_crit_edge, label %land.lhs.true487

if.then485.cond.end505_crit_edge:                 ; preds = %if.then485
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end505

land.lhs.true487:                                 ; preds = %if.then485
  %173 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %phys_enc, align 4
  %tobool490.not = icmp eq ptr %174, null
  br i1 %tobool490.not, label %land.lhs.true487.cond.true500_crit_edge, label %cond.true491

land.lhs.true487.cond.true500_crit_edge:          ; preds = %land.lhs.true487
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true500

cond.true491:                                     ; preds = %land.lhs.true487
  call void @__sanitizer_cov_trace_pc() #13
  %base494 = getelementptr inbounds %struct.drm_encoder, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %base494 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %base494, align 4
  br label %cond.true500

cond.true500:                                     ; preds = %cond.true491, %land.lhs.true487.cond.true500_crit_edge
  %cond498.ph = phi i32 [ -1, %land.lhs.true487.cond.true500_crit_edge ], [ %176, %cond.true491 ]
  %intf_idx502 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %177 = ptrtoint ptr %intf_idx502 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %intf_idx502, align 4
  %sub503 = add i32 %178, -1
  br label %cond.end505

cond.end505:                                      ; preds = %cond.true500, %if.then485.cond.end505_crit_edge
  %cond498730 = phi i32 [ %cond498.ph, %cond.true500 ], [ -1, %if.then485.cond.end505_crit_edge ]
  %cond506 = phi i32 [ %sub503, %cond.true500 ], [ -1, %if.then485.cond.end505_crit_edge ]
  %179 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hw_pp, align 4
  %idx508 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %idx508 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %idx508, align 4
  %sub509 = add i32 %182, -1
  %183 = ptrtoint ptr %sync_cfg_height to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sync_cfg_height, align 4
  %185 = ptrtoint ptr %sync_threshold_start to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sync_threshold_start, align 4
  %187 = ptrtoint ptr %sync_threshold_continue to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sync_threshold_continue, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62, i32 noundef 395, i32 noundef %cond498730, i32 noundef %cond506, i32 noundef %sub509, i32 noundef %184, i32 noundef %186, i32 noundef %188) #11
  br label %do.end518

do.end518:                                        ; preds = %cond.end505, %do.body473, %cond.end464
  %189 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hw_pp, align 4
  %ops520 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %ops520 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ops520, align 4
  %call523 = call i32 %192(ptr noundef %190, ptr noundef nonnull %tc_cfg) #11
  %193 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hw_pp, align 4
  %enable_tearcheck526 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %194, i32 0, i32 5, i32 1
  %195 = ptrtoint ptr %enable_tearcheck526 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %enable_tearcheck526, align 4
  %call529 = call i32 %196(ptr noundef %194, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end518, %cond.end188, %do.body156, %cond.end153, %cond.end118, %do.body86, %cond.end83, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tc_cfg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dpu_kms_get_clk_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tracing_mark_write(i32 noundef %pid, ptr noundef %name, i1 noundef zeroext %trace_begin) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), ptr blockaddress(@trace_tracing_mark_write, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  %call43 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %pid, ptr noundef %name, i1 noundef zeroext %trace_begin) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !198

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_tracing_mark_write.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_tracing_mark_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 121, ptr noundef nonnull @.str.20) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_phys_cmd_pp_tx_done(i32 noundef %drm_id, i32 noundef %pp, i32 noundef %new_count) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_phys_cmd_pp_tx_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !198

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  %call42 = tail call i32 @__traceiter_dpu_enc_phys_cmd_pp_tx_done(ptr noundef null, i32 noundef %drm_id, i32 noundef %pp, i32 noundef %new_count, i32 noundef 1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %13 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !198

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
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
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dpu_enc_phys_cmd_pp_tx_done.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_enc_phys_cmd_pp_tx_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 572, ptr noundef nonnull @.str.20) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !179) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_pp_tx_done(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !113, !115, !116, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !144, !145, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !172, !174, !176, !177}
!llvm.named.register.sp = !{!179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 762, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug490, !1, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 767, i32 3}
!9 = !{ptr @dpu_encoder_phys_cmd_init._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @dpu_encoder_phys_cmd_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 791, i32 14}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 796, i32 14}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 801, i32 14}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 806, i32 14}
!19 = !{ptr @dpu_encoder_phys_cmd_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 814, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dpu_encoder_phys_cmd_init.__key.11, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 815, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 817, i32 2}
!27 = !{ptr @dpu_encoder_phys_cmd_init.__UNIQUE_ID_ddebug491, !26, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 626, i32 4}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dpu_encoder_phys_cmd_prepare_commit._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dpu_encoder_phys_cmd_prepare_commit._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 636, i32 2}
!36 = !{ptr @dpu_encoder_phys_cmd_prepare_commit.__UNIQUE_ID_ddebug489, !35, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!37 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 362, i32 1}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!42 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 157, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dpu_encoder_phys_cmd_mode_set._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dpu_encoder_phys_cmd_mode_set._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 161, i32 2}
!53 = !{ptr @dpu_encoder_phys_cmd_mode_set.__UNIQUE_ID_ddebug478, !52, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 53, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dpu_encoder_phys_cmd_mode_fixup.__UNIQUE_ID_ddebug477, !56, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!59 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 457, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dpu_encoder_phys_cmd_enable._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @dpu_encoder_phys_cmd_enable._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 461, i32 2}
!67 = !{ptr @dpu_encoder_phys_cmd_enable.__UNIQUE_ID_ddebug487, !66, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!68 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 464, i32 3}
!71 = !{ptr @dpu_encoder_phys_cmd_enable._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dpu_encoder_phys_cmd_enable._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 512, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dpu_encoder_phys_cmd_disable._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @dpu_encoder_phys_cmd_disable._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 515, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 520, i32 3}
!82 = !{ptr @dpu_encoder_phys_cmd_disable._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @dpu_encoder_phys_cmd_disable._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 259, i32 3}
!86 = !{ptr @dpu_encoder_phys_cmd_control_vblank_irq._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dpu_encoder_phys_cmd_control_vblank_irq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 275, i32 2}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 287, i32 3}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 655, i32 3}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @_dpu_encoder_phys_cmd_wait_for_ctl_start._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @_dpu_encoder_phys_cmd_wait_for_ctl_start._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 552, i32 3}
!101 = !{ptr @dpu_encoder_phys_cmd_prepare_for_kickoff._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dpu_encoder_phys_cmd_prepare_for_kickoff._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 555, i32 2}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 567, i32 3}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 572, i32 2}
!109 = !{ptr @dpu_encoder_phys_cmd_prepare_for_kickoff.__UNIQUE_ID_ddebug488, !108, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!110 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 207, i32 3}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 574, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 670, i32 3}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 533, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 436, i32 3}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dpu_encoder_phys_cmd_enable_helper._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dpu_encoder_phys_cmd_enable_helper._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 408, i32 3}
!128 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @_dpu_encoder_phys_cmd_pingpong_config._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @_dpu_encoder_phys_cmd_pingpong_config._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 412, i32 2}
!133 = !{ptr @_dpu_encoder_phys_cmd_pingpong_config.__UNIQUE_ID_ddebug486, !132, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!134 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 334, i32 3}
!137 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug479, !140, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 339, i32 2}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 343, i32 3}
!143 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug480, !142, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!144 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 358, i32 43}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 360, i32 3}
!149 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug481, !148, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!150 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 380, i32 2}
!153 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug482, !152, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!154 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 384, i32 2}
!157 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug483, !156, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!158 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 388, i32 2}
!161 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug484, !160, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!162 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 392, i32 2}
!165 = !{ptr @dpu_encoder_phys_cmd_tearcheck_config.__UNIQUE_ID_ddebug485, !164, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!166 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 129, i32 2}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 106, i32 1}
!171 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 86, i32 2}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 554, i32 1}
!176 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c", i32 113, i32 2}
!179 = !{!"sp"}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i64 2148778271, i64 2148778276, i64 2148778289, i64 2148778333, i64 2148778367, i64 2148778388}
!190 = !{i64 2148210025}
!191 = !{i64 694848, i64 694873, i64 694895, i64 694911, i64 694923, i64 694943, i64 694967, i64 694983, i64 694995}
!192 = !{i64 2148210213}
!193 = !{i64 2148211326, i64 2148211358, i64 2148211387, i64 2148211421, i64 2148211452, i64 2148211475}
!194 = !{i64 2148296246}
!195 = !{i64 2148213791, i64 2148213823, i64 2148213852, i64 2148213886, i64 2148213917, i64 2148213940}
!196 = !{i64 2148299287}
!197 = !{i64 2148210606, i64 2148210632, i64 2148210661, i64 2148210695, i64 2148210726, i64 2148210749}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2157935053}
!200 = !{i64 2157935298}
!201 = !{i64 2149279427}
!202 = !{i64 2149280463}
!203 = !{i64 2158202176}
!204 = !{i64 2158202493}
!205 = !{i64 2158165081}
!206 = !{i64 2158165346}
!207 = !{i64 2157478551}
!208 = !{i64 2157478794}
!209 = !{i64 2158183262}
!210 = !{i64 2158183535}
