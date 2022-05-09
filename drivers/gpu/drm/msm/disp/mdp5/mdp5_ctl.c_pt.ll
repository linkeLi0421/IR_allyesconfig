; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.mdp5_pipeline = type { ptr, ptr, ptr }
%struct.mdp5_ctl = type { ptr, i32, i32, i8, i32, %struct.spinlock, i32, i32, i8, i8, ptr }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.mdp5_ctl_manager = type { ptr, i32, i32, i32, i8, i32, %struct.spinlock, [8 x %struct.mdp5_ctl] }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intf_%d: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* CTL %d cannot find LM\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* unsupported configuration\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"lm%d: blend config = 0x%08x. ext_cfg = 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* CTLs already paired\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Only pair booked CTLs\0A\00", [33 x i8] zeroinitializer }, align 32
@mdp5_ctlm_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 649, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fall back to the other CTL category for INTF %d!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mdp5_ctlm_request\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdp5_ctlm_request._entry_ptr = internal global ptr @mdp5_ctlm_request._entry, section ".printk_index", align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* No more CTL available!\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CTL %d allocated\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to allocate CTL manager\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"*ERROR* Increase static pool size to at least %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mdp5_ctlm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ctl_mgr->pool_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* CTL_%d: base is null!\0A\00", [33 x i8] zeroinitializer }, align 32
@mdp5_ctlm_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ctl->hw_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Pool of %d CTLs created.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CTL %d FLUSH pending mask %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Single FLUSH mask %x,ID %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.mdp5_ctl_set_cursor = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 36], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_set_cursor.26 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 36], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_blend = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 36], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_blend.27 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 36], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_blend.28 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 36], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_blend.29 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 1048576], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_blend.30 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 1048576], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp_ctl_flush_mask_lm = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 1048576], [40 x i8] zeroinitializer }, align 32
@switch.table.mdp_ctl_flush_mask_encoder = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456], [16 x i8] zeroinitializer }, align 32
@switch.table.mdp_ctl_flush_mask_pipe = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 2048, i32 4096, i32 262144, i32 524288, i32 4194304, i32 8388608], [48 x i8] zeroinitializer }, align 32
@switch.table.mdp5_ctl_commit = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 1048576], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 101]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 101]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.42 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.44 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.45 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.46 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.48 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.50 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 101]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 232, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 236, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 259, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 265, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 408, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 608, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 611, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 648, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 656, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 663, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 702, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 708, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 719, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 727, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 736, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 755, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 175, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 493, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 506, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [33 x i8] c"switch.table.mdp5_ctl_set_cursor\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [36 x i8] c"switch.table.mdp5_ctl_set_cursor.26\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"switch.table.mdp5_ctl_blend\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [31 x i8] c"switch.table.mdp5_ctl_blend.27\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [31 x i8] c"switch.table.mdp5_ctl_blend.28\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [31 x i8] c"switch.table.mdp5_ctl_blend.29\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"switch.table.mdp5_ctl_blend.30\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [35 x i8] c"switch.table.mdp_ctl_flush_mask_lm\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [40 x i8] c"switch.table.mdp_ctl_flush_mask_encoder\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [37 x i8] c"switch.table.mdp_ctl_flush_mask_pipe\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"switch.table.mdp5_ctl_commit\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @mdp5_ctlm_request._entry, ptr @mdp5_ctlm_request._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mdp5_ctlm_init.__key, ptr @.str.18, ptr @.str.19, ptr @mdp5_ctlm_init.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.mdp5_ctl_set_cursor, ptr @switch.table.mdp5_ctl_set_cursor.26, ptr @switch.table.mdp5_ctl_blend, ptr @switch.table.mdp5_ctl_blend.27, ptr @switch.table.mdp5_ctl_blend.28, ptr @switch.table.mdp5_ctl_blend.29, ptr @switch.table.mdp5_ctl_blend.30, ptr @switch.table.mdp_ctl_flush_mask_lm, ptr @switch.table.mdp_ctl_flush_mask_encoder, ptr @switch.table.mdp_ctl_flush_mask_pipe, ptr @switch.table.mdp5_ctl_commit], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_ctlm_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_ctlm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_ctlm_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_set_cursor to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_set_cursor.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_blend to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_blend.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_blend.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_blend.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_blend.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp_ctl_flush_mask_lm to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp_ctl_flush_mask_encoder to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp_ctl_flush_mask_pipe to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_ctl_commit to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_set_pipeline(ptr noundef %ctl, ptr nocapture noundef readonly %pipeline) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %8 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipeline, align 4
  %type = getelementptr inbounds %struct.mdp5_interface, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %11)
  %cmp = icmp ugt i32 %11, 99
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %resource_lock.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 23
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resource_lock.i) #7
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 26
  %12 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.mdp5_read.exit.i_crit_edge, !prof !57

if.then.mdp5_read.exit.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp5_read.exit.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %mdp5_read.exit.i

mdp5_read.exit.i:                                 ; preds = %do.end.i.i, %if.then.mdp5_read.exit.i_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #7
  %num.i = getelementptr inbounds %struct.mdp5_interface, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.body22.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb17.i
  ]

sw.bb.i:                                          ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i.i, -256
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %and.i.i = and i32 %20, 255
  %or.i = or i32 %and.i.i, %and.i
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and8.i = and i32 %call.i.i, -65281
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  %shl.i.i = shl i32 %22, 8
  %and.i44.i = and i32 %shl.i.i, 65280
  %or11.i = or i32 %and.i44.i, %and8.i
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i = and i32 %call.i.i, -16711681
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %shl.i45.i = shl i32 %24, 16
  %and.i46.i = and i32 %shl.i45.i, 16711680
  %or16.i = or i32 %and.i46.i, %and13.i
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i = and i32 %call.i.i, 16777215
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %shl.i47.i = shl i32 %26, 24
  %or21.i = or i32 %shl.i47.i, %and18.i
  br label %sw.epilog.i

do.body22.i:                                      ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb12.i, %sw.bb7.i, %sw.bb.i
  %intf_sel.0.i = phi i32 [ %or21.i, %sw.bb17.i ], [ %or16.i, %sw.bb12.i ], [ %or11.i, %sw.bb7.i ], [ %or.i, %sw.bb.i ]
  %27 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i49.i = icmp slt i32 %28, 1
  br i1 %cmp.i49.i, label %do.end.i50.i, label %sw.epilog.i.set_display_intf.exit_crit_edge, !prof !57

sw.epilog.i.set_display_intf.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_display_intf.exit

do.end.i50.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %set_display_intf.exit

set_display_intf.exit:                            ; preds = %do.end.i50.i, %sw.epilog.i.set_display_intf.exit_crit_edge
  %29 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %30, i32 4
  tail call void @msm_writel(i32 noundef %intf_sel.0.i, ptr noundef %add.ptr.i52.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resource_lock.i, i32 noundef %call2.i) #7
  br label %if.end

if.end:                                           ; preds = %set_display_intf.exit, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pipeline, align 4
  %type.i5 = getelementptr inbounds %struct.mdp5_interface, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %type.i5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %34)
  %cmp.i = icmp ugt i32 %34, 99
  br i1 %cmp.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %num.i6 = getelementptr inbounds %struct.mdp5_interface, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %num.i6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num.i6, align 4
  %add.i = shl i32 %36, 4
  %shl.i.i7 = add i32 %add.i, 16
  %and.i.i8 = and i32 %shl.i.i7, 112
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %ctl_op.0.i = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ %and.i.i8, %if.then.i ]
  %37 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %34, label %if.end.i.sw.epilog.i10_crit_edge [
    i32 1, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i32 101, label %sw.bb7.i9
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

if.end.i.sw.epilog.i10_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i10

sw.bb7.i9:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb7.i9, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink44.i = phi i32 [ 4, %sw.bb7.i9 ], [ 2, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 5, %sw.bb7.i9 ], [ 131072, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %mode8.i = getelementptr inbounds %struct.mdp5_interface, ptr %32, i32 0, i32 3
  %38 = ptrtoint ptr %mode8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %.sink44.i)
  %cmp9.i = icmp eq i32 %39, %.sink44.i
  %or12.i = select i1 %cmp9.i, i32 %.sink.i, i32 0
  %spec.select41.i = or i32 %or12.i, %ctl_op.0.i
  br label %sw.epilog.i10

sw.epilog.i10:                                    ; preds = %sw.epilog.sink.split.i, %if.end.i.sw.epilog.i10_crit_edge
  %ctl_op.1.i = phi i32 [ %ctl_op.0.i, %if.end.i.sw.epilog.i10_crit_edge ], [ %spec.select41.i, %sw.epilog.sink.split.i ]
  %r_mixer.i = getelementptr inbounds %struct.mdp5_pipeline, ptr %pipeline, i32 0, i32 2
  %40 = ptrtoint ptr %r_mixer.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %r_mixer.i, align 4
  %hw_lock.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 5
  %call24.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #7
  %id.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %42 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %43, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
    i32 4, label %sw.bb13.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %sw.epilog.i10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %45 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 3, i32 1
  br label %REG_MDP5_CTL_OP.exit.i

sw.bb1.i.i.i:                                     ; preds = %sw.epilog.i10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %46 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %46, i32 0, i32 3, i32 1, i32 1
  br label %REG_MDP5_CTL_OP.exit.i

sw.bb5.i.i.i:                                     ; preds = %sw.epilog.i10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %47 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %47, i32 0, i32 3, i32 1, i32 2
  br label %REG_MDP5_CTL_OP.exit.i

sw.bb9.i.i.i:                                     ; preds = %sw.epilog.i10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %48 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %48, i32 0, i32 3, i32 1, i32 3
  br label %REG_MDP5_CTL_OP.exit.i

sw.bb13.i.i.i:                                    ; preds = %sw.epilog.i10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %49 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %49, i32 0, i32 3, i32 1, i32 4
  br label %REG_MDP5_CTL_OP.exit.i

do.body.i.i.i:                                    ; preds = %sw.epilog.i10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

REG_MDP5_CTL_OP.exit.i:                           ; preds = %sw.bb13.i.i.i, %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx16.i.i.i, %sw.bb13.i.i.i ], [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %base.i.i.i, %sw.bb.i.i.i ]
  %50 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %51 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctl, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_private.i.i.i, align 4
  %kms.i.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %kms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %kms.i.i.i, align 4
  %enable_count.i.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %58, i32 0, i32 26
  %59 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i.i.i = icmp slt i32 %60, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %REG_MDP5_CTL_OP.exit.i.set_ctl_op.exit_crit_edge, !prof !57

REG_MDP5_CTL_OP.exit.i.set_ctl_op.exit_crit_edge: ; preds = %REG_MDP5_CTL_OP.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_ctl_op.exit

do.end.i.i.i:                                     ; preds = %REG_MDP5_CTL_OP.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %set_ctl_op.exit

set_ctl_op.exit:                                  ; preds = %do.end.i.i.i, %REG_MDP5_CTL_OP.exit.i.set_ctl_op.exit_crit_edge
  %add.i.i = add i32 %retval.0.i.i.i, 20
  %tobool14.not.i = icmp eq ptr %41, null
  %or18.i = or i32 %ctl_op.1.i, 1572864
  %spec.select42.i = select i1 %tobool14.not.i, i32 %ctl_op.1.i, i32 %or18.i
  %mmio.i.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %58, i32 0, i32 15
  %61 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 %add.i.i
  tail call void @msm_writel(i32 noundef %spec.select42.i, ptr noundef %add.ptr.i.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call24.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_set_encoder_state(ptr noundef %ctl, ptr nocapture noundef readonly %pipeline, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctl, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !57

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 232, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %0 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipeline, align 4
  %frombool = zext i1 %enabled to i8
  %encoder_enabled = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 3
  %2 = ptrtoint ptr %encoder_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %encoder_enabled, align 4
  %num = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %cond = select i1 %enabled, ptr @.str.2, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %4, ptr noundef nonnull %cond) #7
  %5 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipeline, align 4
  %7 = ptrtoint ptr %encoder_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %encoder_enabled, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end24.cleanup_crit_edge, label %if.end.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %type.i = getelementptr inbounds %struct.mdp5_interface, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %10, label %if.end.i.cleanup_crit_edge [
    i32 101, label %if.end.i.if.then28_crit_edge
    i32 1, label %start_signal_needed.exit
  ]

if.end.i.if.then28_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

start_signal_needed.exit:                         ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.mdp5_interface, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %start_signal_needed.exit.if.then28_crit_edge, label %start_signal_needed.exit.cleanup_crit_edge

start_signal_needed.exit.cleanup_crit_edge:       ; preds = %start_signal_needed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

start_signal_needed.exit.if.then28_crit_edge:     ; preds = %start_signal_needed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then28:                                        ; preds = %start_signal_needed.exit.if.then28_crit_edge, %if.end.i.if.then28_crit_edge
  tail call fastcc void @send_start_signal(ptr noundef nonnull %ctl)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %start_signal_needed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then28 ], [ 0, %start_signal_needed.exit.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_start_signal(ptr noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #7
  %id = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %1, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %3 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %3, i32 0, i32 3, i32 1
  br label %REG_MDP5_CTL_START.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %4 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 3, i32 1, i32 1
  br label %REG_MDP5_CTL_START.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %5 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %5, i32 0, i32 3, i32 1, i32 2
  br label %REG_MDP5_CTL_START.exit

sw.bb9.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %6 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %6, i32 0, i32 3, i32 1, i32 3
  br label %REG_MDP5_CTL_START.exit

sw.bb13.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %7 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %7, i32 0, i32 3, i32 1, i32 4
  br label %REG_MDP5_CTL_START.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

REG_MDP5_CTL_START.exit:                          ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  %8 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i = icmp slt i32 %18, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_CTL_START.exit.ctl_write.exit_crit_edge, !prof !57

REG_MDP5_CTL_START.exit.ctl_write.exit_crit_edge: ; preds = %REG_MDP5_CTL_START.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit

do.end.i.i:                                       ; preds = %REG_MDP5_CTL_START.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit

ctl_write.exit:                                   ; preds = %do.end.i.i, %REG_MDP5_CTL_START.exit.ctl_write.exit_crit_edge
  %add.i = add i32 %retval.0.i.i, 28
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %16, i32 0, i32 15
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add.i
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_set_cursor(ptr noundef %ctl, ptr nocapture noundef readonly %pipeline, i32 noundef %cursor_id, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %mixer1 = getelementptr inbounds %struct.mdp5_pipeline, ptr %pipeline, i32 0, i32 1
  %2 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !57

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev24, align 4
  %id = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %9) #7
  br label %cleanup

if.end25:                                         ; preds = %entry
  %r_mixer = getelementptr inbounds %struct.mdp5_pipeline, ptr %pipeline, i32 0, i32 2
  %10 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r_mixer, align 4
  %tobool26.not = icmp eq ptr %11, null
  br i1 %tobool26.not, label %do.body32, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.body32:                                        ; preds = %if.end25
  %hw_lock = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 5
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #7
  %id39 = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %16 = ptrtoint ptr %id39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id39, align 4
  %lm = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lm, align 4
  %20 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %17, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %21 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %21, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i

sw.bb1.i.i:                                       ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %22 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %22, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i

sw.bb5.i.i:                                       ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %23 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %23, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i

sw.bb9.i.i:                                       ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i

sw.bb13.i.i:                                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %25 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %25, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i

do.body.i.i:                                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i:                              ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %26 = icmp ult i32 %19, 6
  br i1 %26, label %switch.lookup, label %do.body.i5.i

do.body.i5.i:                                     ; preds = %__offset_CTL.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

switch.lookup:                                    ; preds = %__offset_CTL.exit.i
  %27 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_set_cursor, i32 0, i32 %19
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add2.i = add i32 %switch.load, %retval.0.i.i
  %29 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctl, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i.i = icmp slt i32 %38, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %switch.lookup.ctl_read.exit_crit_edge, !prof !57

switch.lookup.ctl_read.exit_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_read.exit

do.end.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %ctl_read.exit

ctl_read.exit:                                    ; preds = %do.end.i.i, %switch.lookup.ctl_read.exit_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %36, i32 0, i32 15
  %39 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %add2.i
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #7
  %and = and i32 %call.i.i, -33554433
  %masksel = select i1 %enable, i32 33554432, i32 0
  %blend_cfg.0 = or i32 %and, %masksel
  %41 = ptrtoint ptr %id39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id39, align 4
  %43 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lm, align 4
  %45 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %42, label %do.body.i.i82 [
    i32 0, label %sw.bb.i.i73
    i32 1, label %sw.bb1.i.i75
    i32 2, label %sw.bb5.i.i77
    i32 3, label %sw.bb9.i.i79
    i32 4, label %sw.bb13.i.i81
  ]

sw.bb.i.i73:                                      ; preds = %ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %46 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i72 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %46, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i85

sw.bb1.i.i75:                                     ; preds = %ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %47 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i74 = getelementptr %struct.mdp5_cfg_hw, ptr %47, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i85

sw.bb5.i.i77:                                     ; preds = %ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %48 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i76 = getelementptr %struct.mdp5_cfg_hw, ptr %48, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i85

sw.bb9.i.i79:                                     ; preds = %ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %49 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i78 = getelementptr %struct.mdp5_cfg_hw, ptr %49, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i85

sw.bb13.i.i81:                                    ; preds = %ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %50 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i80 = getelementptr %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i85

do.body.i.i82:                                    ; preds = %ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i85:                            ; preds = %sw.bb13.i.i81, %sw.bb9.i.i79, %sw.bb5.i.i77, %sw.bb1.i.i75, %sw.bb.i.i73
  %retval.0.in.i.i83 = phi ptr [ %arrayidx16.i.i80, %sw.bb13.i.i81 ], [ %arrayidx12.i.i78, %sw.bb9.i.i79 ], [ %arrayidx8.i.i76, %sw.bb5.i.i77 ], [ %arrayidx4.i.i74, %sw.bb1.i.i75 ], [ %base.i.i72, %sw.bb.i.i73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %51 = icmp ult i32 %44, 6
  br i1 %51, label %switch.lookup102, label %do.body.i5.i91

do.body.i5.i91:                                   ; preds = %__offset_CTL.exit.i85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

switch.lookup102:                                 ; preds = %__offset_CTL.exit.i85
  %52 = ptrtoint ptr %retval.0.in.i.i83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %retval.0.i.i84 = load i32, ptr %retval.0.in.i.i83, align 4
  %switch.gep103 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_set_cursor.26, i32 0, i32 %44
  %53 = ptrtoint ptr %switch.gep103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load104 = load i32, ptr %switch.gep103, align 4
  %add2.i93 = add i32 %switch.load104, %retval.0.i.i84
  %54 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctl, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dev_private.i.i95 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %dev_private.i.i95 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_private.i.i95, align 4
  %kms.i.i96 = getelementptr inbounds %struct.msm_drm_private, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %kms.i.i96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %kms.i.i96, align 4
  %enable_count.i.i97 = getelementptr inbounds %struct.mdp5_kms, ptr %61, i32 0, i32 26
  %62 = ptrtoint ptr %enable_count.i.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %enable_count.i.i97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i.i98 = icmp slt i32 %63, 1
  br i1 %cmp.i.i98, label %do.end.i.i99, label %switch.lookup102.ctl_write.exit_crit_edge, !prof !57

switch.lookup102.ctl_write.exit_crit_edge:        ; preds = %switch.lookup102
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit

do.end.i.i99:                                     ; preds = %switch.lookup102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit

ctl_write.exit:                                   ; preds = %do.end.i.i99, %switch.lookup102.ctl_write.exit_crit_edge
  %mmio.i.i100 = getelementptr inbounds %struct.mdp5_kms, ptr %61, i32 0, i32 15
  %64 = ptrtoint ptr %mmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i100, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %65, i32 %add2.i93
  tail call void @msm_writel(i32 noundef %blend_cfg.0, ptr noundef %add.ptr.i.i101) #7
  %cursor_on = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 8
  %66 = ptrtoint ptr %cursor_on to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool, ptr %cursor_on, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cursor_id)
  %switch.selectcmp.i = icmp eq i32 %cursor_id, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8388608, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cursor_id)
  %switch.selectcmp2.i = icmp eq i32 %cursor_id, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 4194304, i32 %switch.select.i
  %pending_ctl_trigger = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 7
  %67 = ptrtoint ptr %pending_ctl_trigger to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.select3.i, ptr %pending_ctl_trigger, align 4
  br label %cleanup

cleanup:                                          ; preds = %ctl_write.exit, %if.then27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then27 ], [ 0, %ctl_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_cursor(i32 noundef %cursor_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cursor_id)
  %switch.selectcmp = icmp eq i32 %cursor_id, 1
  %switch.select = select i1 %switch.selectcmp, i32 8388608, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cursor_id)
  %switch.selectcmp2 = icmp eq i32 %cursor_id, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 4194304, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_blend(ptr noundef %ctl, ptr nocapture noundef readonly %pipeline, ptr nocapture noundef readonly %stage, ptr nocapture noundef readonly %r_stage, i32 noundef %stage_cnt, i32 noundef %ctl_blend_op_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer1 = getelementptr inbounds %struct.mdp5_pipeline, ptr %pipeline, i32 0, i32 1
  %0 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer1, align 4
  %r_mixer2 = getelementptr inbounds %struct.mdp5_pipeline, ptr %pipeline, i32 0, i32 2
  %2 = ptrtoint ptr %r_mixer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_mixer2, align 4
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 4
  %hw_lock.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #7
  %nlm.i = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nlm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp550.not.i = icmp eq i32 %7, 0
  br i1 %cmp550.not.i, label %entry.mdp5_ctl_reset_blend_regs.exit_crit_edge, label %for.body.lr.ph.i

entry.mdp5_ctl_reset_blend_regs.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp5_ctl_reset_blend_regs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %id.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %ctl_write.exit49.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %ctl_write.exit49.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %9, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
    i32 4, label %sw.bb13.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %11 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %11, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %14 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %14, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i.i

do.body.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i.i:                            ; preds = %sw.bb13.i.i.i, %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx16.i.i.i, %sw.bb13.i.i.i ], [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %base.i.i.i, %sw.bb.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.051.i)
  %16 = icmp ult i32 %i.051.i, 6
  br i1 %16, label %switch.lookup, label %do.body.i5.i.i

do.body.i5.i.i:                                   ; preds = %__offset_CTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

switch.lookup:                                    ; preds = %__offset_CTL.exit.i.i
  %17 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend, i32 0, i32 %i.051.i
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add2.i.i = add i32 %switch.load, %retval.0.i.i.i
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private.i.i.i, align 4
  %kms.i.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %kms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kms.i.i.i, align 4
  %enable_count.i.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.i.i = icmp slt i32 %28, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %switch.lookup.ctl_write.exit.i_crit_edge, !prof !57

switch.lookup.ctl_write.exit.i_crit_edge:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit.i

do.end.i.i.i:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit.i

ctl_write.exit.i:                                 ; preds = %do.end.i.i.i, %switch.lookup.ctl_write.exit.i_crit_edge
  %mmio.i.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %add2.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i.i) #7
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %32, label %do.body.i.i30.i [
    i32 0, label %sw.bb.i.i21.i
    i32 1, label %sw.bb1.i.i23.i
    i32 2, label %sw.bb5.i.i25.i
    i32 3, label %sw.bb9.i.i27.i
    i32 4, label %sw.bb13.i.i29.i
  ]

sw.bb.i.i21.i:                                    ; preds = %ctl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %34 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i20.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %34, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i33.i

sw.bb1.i.i23.i:                                   ; preds = %ctl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %35 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i22.i = getelementptr %struct.mdp5_cfg_hw, ptr %35, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i33.i

sw.bb5.i.i25.i:                                   ; preds = %ctl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i24.i = getelementptr %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i33.i

sw.bb9.i.i27.i:                                   ; preds = %ctl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %37 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i26.i = getelementptr %struct.mdp5_cfg_hw, ptr %37, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i33.i

sw.bb13.i.i29.i:                                  ; preds = %ctl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %38 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i28.i = getelementptr %struct.mdp5_cfg_hw, ptr %38, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i33.i

do.body.i.i30.i:                                  ; preds = %ctl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i33.i:                          ; preds = %sw.bb13.i.i29.i, %sw.bb9.i.i27.i, %sw.bb5.i.i25.i, %sw.bb1.i.i23.i, %sw.bb.i.i21.i
  %retval.0.in.i.i31.i = phi ptr [ %arrayidx16.i.i28.i, %sw.bb13.i.i29.i ], [ %arrayidx12.i.i26.i, %sw.bb9.i.i27.i ], [ %arrayidx8.i.i24.i, %sw.bb5.i.i25.i ], [ %arrayidx4.i.i22.i, %sw.bb1.i.i23.i ], [ %base.i.i20.i, %sw.bb.i.i21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.051.i)
  %39 = icmp ult i32 %i.051.i, 6
  br i1 %39, label %switch.lookup433, label %do.body.i5.i39.i

do.body.i5.i39.i:                                 ; preds = %__offset_CTL.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !62
  unreachable

switch.lookup433:                                 ; preds = %__offset_CTL.exit.i33.i
  %40 = ptrtoint ptr %retval.0.in.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i.i32.i = load i32, ptr %retval.0.in.i.i31.i, align 4
  %switch.idx.mult = shl i32 %i.051.i, 2
  %switch.offset = add i32 %switch.idx.mult, 64
  %add2.i41.i = add i32 %switch.offset, %retval.0.i.i32.i
  %41 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctl, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dev_private.i.i42.i = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %dev_private.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i42.i, align 4
  %kms.i.i43.i = getelementptr inbounds %struct.msm_drm_private, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %kms.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kms.i.i43.i, align 4
  %enable_count.i.i44.i = getelementptr inbounds %struct.mdp5_kms, ptr %48, i32 0, i32 26
  %49 = ptrtoint ptr %enable_count.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enable_count.i.i44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i.i45.i = icmp slt i32 %50, 1
  br i1 %cmp.i.i45.i, label %do.end.i.i46.i, label %switch.lookup433.ctl_write.exit49.i_crit_edge, !prof !57

switch.lookup433.ctl_write.exit49.i_crit_edge:    ; preds = %switch.lookup433
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit49.i

do.end.i.i46.i:                                   ; preds = %switch.lookup433
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit49.i

ctl_write.exit49.i:                               ; preds = %do.end.i.i46.i, %switch.lookup433.ctl_write.exit49.i_crit_edge
  %mmio.i.i47.i = getelementptr inbounds %struct.mdp5_kms, ptr %48, i32 0, i32 15
  %51 = ptrtoint ptr %mmio.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i.i47.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %52, i32 %add2.i41.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i48.i) #7
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %53 = ptrtoint ptr %nlm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlm.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %54
  br i1 %cmp5.i, label %ctl_write.exit49.i.for.body.i_crit_edge, label %ctl_write.exit49.i.mdp5_ctl_reset_blend_regs.exit_crit_edge

ctl_write.exit49.i.mdp5_ctl_reset_blend_regs.exit_crit_edge: ; preds = %ctl_write.exit49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp5_ctl_reset_blend_regs.exit

ctl_write.exit49.i.for.body.i_crit_edge:          ; preds = %ctl_write.exit49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mdp5_ctl_reset_blend_regs.exit:                   ; preds = %ctl_write.exit49.i.mdp5_ctl_reset_blend_regs.exit_crit_edge, %entry.mdp5_ctl_reset_blend_regs.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i) #7
  %and = and i32 %ctl_blend_op_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool3.not = icmp eq ptr %3, null
  %55 = shl nuw nsw i32 %and, 24
  %56 = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %r_blend_cfg.0 = select i1 %56, i32 0, i32 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stage_cnt)
  %tobool7.not.not = icmp eq i32 %stage_cnt, 0
  br i1 %tobool7.not.not, label %mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge, label %for.body.preheader

mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge: ; preds = %mdp5_ctl_reset_blend_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

for.body.preheader:                               ; preds = %mdp5_ctl_reset_blend_regs.exit
  %start_stage.0 = select i1 %tobool.not, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0425 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %start_stage.0, %for.body.preheader ]
  %r_blend_ext_cfg.0424 = phi i32 [ %r_blend_ext_cfg.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %r_blend_cfg.1423 = phi i32 [ %r_blend_cfg.2, %for.inc.for.body_crit_edge ], [ %r_blend_cfg.0, %for.body.preheader ]
  %blend_ext_cfg.0422 = phi i32 [ %or21, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %blend_cfg.1421 = phi i32 [ %or13, %for.inc.for.body_crit_edge ], [ %55, %for.body.preheader ]
  %arrayidx = getelementptr [2 x i32], ptr %stage, i32 %i.0425
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %58, label %for.body.mdp_ctl_blend_mask.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb5.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb9.i
    i32 7, label %sw.bb11.i
    i32 8, label %sw.bb13.i
    i32 9, label %sw.bb15.i
    i32 10, label %sw.bb17.i
  ]

for.body.mdp_ctl_blend_mask.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_mask.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %i.0425, 7
  br label %mdp_ctl_blend_mask.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw nsw i32 %i.0425, 3
  %and.i29.i = and i32 %shl.i.i, 56
  br label %mdp_ctl_blend_mask.exit

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i30.i = shl nuw nsw i32 %i.0425, 6
  %and.i31.i = and i32 %shl.i30.i, 448
  br label %mdp_ctl_blend_mask.exit

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i32.i = shl nuw nsw i32 %i.0425, 9
  %and.i33.i = and i32 %shl.i32.i, 3584
  br label %mdp_ctl_blend_mask.exit

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i34.i = shl nuw nsw i32 %i.0425, 12
  %and.i35.i = and i32 %shl.i34.i, 28672
  br label %mdp_ctl_blend_mask.exit

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i36.i = shl nuw nsw i32 %i.0425, 15
  %and.i37.i = and i32 %shl.i36.i, 229376
  br label %mdp_ctl_blend_mask.exit

sw.bb11.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i38.i = shl nuw nsw i32 %i.0425, 18
  %and.i39.i = and i32 %shl.i38.i, 1835008
  br label %mdp_ctl_blend_mask.exit

sw.bb13.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i40.i = shl nuw nsw i32 %i.0425, 21
  %and.i41.i = and i32 %shl.i40.i, 14680064
  br label %mdp_ctl_blend_mask.exit

sw.bb15.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i42.i = shl nuw nsw i32 %i.0425, 26
  %and.i43.i = and i32 %shl.i42.i, 469762048
  br label %mdp_ctl_blend_mask.exit

sw.bb17.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.i = shl i32 %i.0425, 29
  br label %mdp_ctl_blend_mask.exit

mdp_ctl_blend_mask.exit:                          ; preds = %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %for.body.mdp_ctl_blend_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %shl.i44.i, %sw.bb17.i ], [ %and.i43.i, %sw.bb15.i ], [ %and.i41.i, %sw.bb13.i ], [ %and.i39.i, %sw.bb11.i ], [ %and.i37.i, %sw.bb9.i ], [ %and.i35.i, %sw.bb7.i ], [ %and.i33.i, %sw.bb5.i ], [ %and.i31.i, %sw.bb3.i ], [ %and.i29.i, %sw.bb1.i ], [ %and.i.i, %sw.bb.i ], [ 0, %for.body.mdp_ctl_blend_mask.exit_crit_edge ]
  %arrayidx10 = getelementptr [2 x i32], ptr %stage, i32 %i.0425, i32 1
  %60 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx10, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %61, label %mdp_ctl_blend_mask.exit.mdp_ctl_blend_mask.exit168_crit_edge [
    i32 1, label %sw.bb.i140
    i32 2, label %sw.bb1.i143
    i32 3, label %sw.bb3.i146
    i32 4, label %sw.bb5.i149
    i32 5, label %sw.bb7.i152
    i32 6, label %sw.bb9.i155
    i32 7, label %sw.bb11.i158
    i32 8, label %sw.bb13.i161
    i32 9, label %sw.bb15.i164
    i32 10, label %sw.bb17.i166
  ]

mdp_ctl_blend_mask.exit.mdp_ctl_blend_mask.exit168_crit_edge: ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_mask.exit168

sw.bb.i140:                                       ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i139 = and i32 %i.0425, 7
  br label %mdp_ctl_blend_mask.exit168

sw.bb1.i143:                                      ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i141 = shl nuw nsw i32 %i.0425, 3
  %and.i29.i142 = and i32 %shl.i.i141, 56
  br label %mdp_ctl_blend_mask.exit168

sw.bb3.i146:                                      ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i30.i144 = shl nuw nsw i32 %i.0425, 6
  %and.i31.i145 = and i32 %shl.i30.i144, 448
  br label %mdp_ctl_blend_mask.exit168

sw.bb5.i149:                                      ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i32.i147 = shl nuw nsw i32 %i.0425, 9
  %and.i33.i148 = and i32 %shl.i32.i147, 3584
  br label %mdp_ctl_blend_mask.exit168

sw.bb7.i152:                                      ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i34.i150 = shl nuw nsw i32 %i.0425, 12
  %and.i35.i151 = and i32 %shl.i34.i150, 28672
  br label %mdp_ctl_blend_mask.exit168

sw.bb9.i155:                                      ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i36.i153 = shl nuw nsw i32 %i.0425, 15
  %and.i37.i154 = and i32 %shl.i36.i153, 229376
  br label %mdp_ctl_blend_mask.exit168

sw.bb11.i158:                                     ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i38.i156 = shl nuw nsw i32 %i.0425, 18
  %and.i39.i157 = and i32 %shl.i38.i156, 1835008
  br label %mdp_ctl_blend_mask.exit168

sw.bb13.i161:                                     ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i40.i159 = shl nuw nsw i32 %i.0425, 21
  %and.i41.i160 = and i32 %shl.i40.i159, 14680064
  br label %mdp_ctl_blend_mask.exit168

sw.bb15.i164:                                     ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i42.i162 = shl nuw nsw i32 %i.0425, 26
  %and.i43.i163 = and i32 %shl.i42.i162, 469762048
  br label %mdp_ctl_blend_mask.exit168

sw.bb17.i166:                                     ; preds = %mdp_ctl_blend_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.i165 = shl i32 %i.0425, 29
  br label %mdp_ctl_blend_mask.exit168

mdp_ctl_blend_mask.exit168:                       ; preds = %sw.bb17.i166, %sw.bb15.i164, %sw.bb13.i161, %sw.bb11.i158, %sw.bb9.i155, %sw.bb7.i152, %sw.bb5.i149, %sw.bb3.i146, %sw.bb1.i143, %sw.bb.i140, %mdp_ctl_blend_mask.exit.mdp_ctl_blend_mask.exit168_crit_edge
  %retval.0.i167 = phi i32 [ %shl.i44.i165, %sw.bb17.i166 ], [ %and.i43.i163, %sw.bb15.i164 ], [ %and.i41.i160, %sw.bb13.i161 ], [ %and.i39.i157, %sw.bb11.i158 ], [ %and.i37.i154, %sw.bb9.i155 ], [ %and.i35.i151, %sw.bb7.i152 ], [ %and.i33.i148, %sw.bb5.i149 ], [ %and.i31.i145, %sw.bb3.i146 ], [ %and.i29.i142, %sw.bb1.i143 ], [ %and.i.i139, %sw.bb.i140 ], [ 0, %mdp_ctl_blend_mask.exit.mdp_ctl_blend_mask.exit168_crit_edge ]
  %or12 = or i32 %retval.0.i, %blend_cfg.1421
  %or13 = or i32 %or12, %retval.0.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0425)
  %cmp.i = icmp ugt i32 %i.0425, 7
  br i1 %cmp.i, label %if.end.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %mdp_ctl_blend_mask.exit168
  %63 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %58, label %switch.early.test.i.switch.early.test.i178_crit_edge [
    i32 11, label %switch.early.test.i.mdp_ctl_blend_ext_mask.exit_crit_edge
    i32 12, label %switch.early.test.i.sw.bb14.i_crit_edge
  ]

switch.early.test.i.sw.bb14.i_crit_edge:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

switch.early.test.i.mdp_ctl_blend_ext_mask.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit

switch.early.test.i.switch.early.test.i178_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch.early.test.i178

if.end.i:                                         ; preds = %mdp_ctl_blend_mask.exit168
  %64 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %58, label %sw.default.i [
    i32 1, label %return.fold.split.i
    i32 2, label %if.end.i.if.end.i179_crit_edge
    i32 3, label %sw.bb5.i169
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb7.i170
    i32 6, label %sw.bb8.i
    i32 7, label %sw.bb9.i171
    i32 8, label %sw.bb10.i
    i32 9, label %sw.bb11.i172
    i32 10, label %sw.bb12.i
    i32 11, label %if.end.i.mdp_ctl_blend_ext_mask.exit_crit_edge
    i32 12, label %if.end.i.sw.bb14.i_crit_edge
  ]

if.end.i.sw.bb14.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

if.end.i.mdp_ctl_blend_ext_mask.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit

if.end.i.if.end.i179_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb5.i169:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb7.i170:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb9.i171:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb11.i172:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

sw.bb14.i:                                        ; preds = %if.end.i.sw.bb14.i_crit_edge, %switch.early.test.i.sw.bb14.i_crit_edge
  br label %mdp_ctl_blend_ext_mask.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

return.fold.split.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

mdp_ctl_blend_ext_mask.exit:                      ; preds = %sw.bb14.i, %if.end.i.mdp_ctl_blend_ext_mask.exit_crit_edge, %switch.early.test.i.mdp_ctl_blend_ext_mask.exit_crit_edge
  %.sink = phi i32 [ 26, %sw.bb14.i ], [ 20, %if.end.i.mdp_ctl_blend_ext_mask.exit_crit_edge ], [ 20, %switch.early.test.i.mdp_ctl_blend_ext_mask.exit_crit_edge ]
  %shl.i.i173 = shl i32 %i.0425, %.sink
  br i1 %cmp.i, label %mdp_ctl_blend_ext_mask.exit.if.end.i179_crit_edge, label %mdp_ctl_blend_ext_mask.exit.switch.early.test.i178_crit_edge

mdp_ctl_blend_ext_mask.exit.switch.early.test.i178_crit_edge: ; preds = %mdp_ctl_blend_ext_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch.early.test.i178

mdp_ctl_blend_ext_mask.exit.if.end.i179_crit_edge: ; preds = %mdp_ctl_blend_ext_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i179

switch.early.test.i178:                           ; preds = %mdp_ctl_blend_ext_mask.exit.switch.early.test.i178_crit_edge, %switch.early.test.i.switch.early.test.i178_crit_edge
  %retval.0.i176412 = phi i32 [ %shl.i.i173, %mdp_ctl_blend_ext_mask.exit.switch.early.test.i178_crit_edge ], [ 0, %switch.early.test.i.switch.early.test.i178_crit_edge ]
  %65 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %61, label %switch.early.test.i178.mdp_ctl_blend_ext_mask.exit197_crit_edge [
    i32 11, label %switch.early.test.i178.sw.bb13.i190_crit_edge
    i32 12, label %switch.early.test.i178.sw.bb14.i193_crit_edge
  ]

switch.early.test.i178.sw.bb14.i193_crit_edge:    ; preds = %switch.early.test.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i193

switch.early.test.i178.sw.bb13.i190_crit_edge:    ; preds = %switch.early.test.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i190

switch.early.test.i178.mdp_ctl_blend_ext_mask.exit197_crit_edge: ; preds = %switch.early.test.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

if.end.i179:                                      ; preds = %mdp_ctl_blend_ext_mask.exit.if.end.i179_crit_edge, %return.fold.split.i, %sw.default.i, %sw.bb12.i, %sw.bb11.i172, %sw.bb10.i, %sw.bb9.i171, %sw.bb8.i, %sw.bb7.i170, %sw.bb6.i, %sw.bb5.i169, %if.end.i.if.end.i179_crit_edge
  %retval.0.i176409 = phi i32 [ %shl.i.i173, %mdp_ctl_blend_ext_mask.exit.if.end.i179_crit_edge ], [ 4, %if.end.i.if.end.i179_crit_edge ], [ 1, %return.fold.split.i ], [ 16, %sw.bb5.i169 ], [ 256, %sw.bb6.i ], [ 1024, %sw.bb7.i170 ], [ 4096, %sw.bb8.i ], [ 65536, %sw.bb9.i171 ], [ 262144, %sw.bb10.i ], [ 64, %sw.bb11.i172 ], [ 16384, %sw.bb12.i ], [ 0, %sw.default.i ]
  %66 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %61, label %sw.default.i194 [
    i32 1, label %return.fold.split.i195
    i32 2, label %if.end.i179.mdp_ctl_blend_ext_mask.exit197_crit_edge
    i32 3, label %sw.bb5.i180
    i32 4, label %sw.bb6.i181
    i32 5, label %sw.bb7.i182
    i32 6, label %sw.bb8.i183
    i32 7, label %sw.bb9.i184
    i32 8, label %sw.bb10.i185
    i32 9, label %sw.bb11.i186
    i32 10, label %sw.bb12.i187
    i32 11, label %if.end.i179.sw.bb13.i190_crit_edge
    i32 12, label %if.end.i179.sw.bb14.i193_crit_edge
  ]

if.end.i179.sw.bb14.i193_crit_edge:               ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i193

if.end.i179.sw.bb13.i190_crit_edge:               ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i190

if.end.i179.mdp_ctl_blend_ext_mask.exit197_crit_edge: ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb5.i180:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb6.i181:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb7.i182:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb8.i183:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb9.i184:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb10.i185:                                     ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb11.i186:                                     ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb12.i187:                                     ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb13.i190:                                     ; preds = %if.end.i179.sw.bb13.i190_crit_edge, %switch.early.test.i178.sw.bb13.i190_crit_edge
  %retval.0.i176407 = phi i32 [ %retval.0.i176409, %if.end.i179.sw.bb13.i190_crit_edge ], [ %retval.0.i176412, %switch.early.test.i178.sw.bb13.i190_crit_edge ]
  %shl.i.i188 = shl i32 %i.0425, 20
  br label %mdp_ctl_blend_ext_mask.exit197

sw.bb14.i193:                                     ; preds = %if.end.i179.sw.bb14.i193_crit_edge, %switch.early.test.i178.sw.bb14.i193_crit_edge
  %retval.0.i176406 = phi i32 [ %retval.0.i176409, %if.end.i179.sw.bb14.i193_crit_edge ], [ %retval.0.i176412, %switch.early.test.i178.sw.bb14.i193_crit_edge ]
  %shl.i21.i191 = shl i32 %i.0425, 26
  br label %mdp_ctl_blend_ext_mask.exit197

sw.default.i194:                                  ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

return.fold.split.i195:                           ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit197

mdp_ctl_blend_ext_mask.exit197:                   ; preds = %return.fold.split.i195, %sw.default.i194, %sw.bb14.i193, %sw.bb13.i190, %sw.bb12.i187, %sw.bb11.i186, %sw.bb10.i185, %sw.bb9.i184, %sw.bb8.i183, %sw.bb7.i182, %sw.bb6.i181, %sw.bb5.i180, %if.end.i179.mdp_ctl_blend_ext_mask.exit197_crit_edge, %switch.early.test.i178.mdp_ctl_blend_ext_mask.exit197_crit_edge
  %retval.0.i176408 = phi i32 [ %retval.0.i176409, %sw.default.i194 ], [ %retval.0.i176406, %sw.bb14.i193 ], [ %retval.0.i176407, %sw.bb13.i190 ], [ %retval.0.i176409, %sw.bb12.i187 ], [ %retval.0.i176409, %sw.bb11.i186 ], [ %retval.0.i176409, %sw.bb10.i185 ], [ %retval.0.i176409, %sw.bb9.i184 ], [ %retval.0.i176409, %sw.bb8.i183 ], [ %retval.0.i176409, %sw.bb7.i182 ], [ %retval.0.i176409, %sw.bb6.i181 ], [ %retval.0.i176409, %sw.bb5.i180 ], [ %retval.0.i176412, %switch.early.test.i178.mdp_ctl_blend_ext_mask.exit197_crit_edge ], [ %retval.0.i176409, %return.fold.split.i195 ], [ %retval.0.i176409, %if.end.i179.mdp_ctl_blend_ext_mask.exit197_crit_edge ]
  %retval.0.i196 = phi i32 [ 0, %sw.default.i194 ], [ %shl.i21.i191, %sw.bb14.i193 ], [ %shl.i.i188, %sw.bb13.i190 ], [ 16384, %sw.bb12.i187 ], [ 64, %sw.bb11.i186 ], [ 262144, %sw.bb10.i185 ], [ 65536, %sw.bb9.i184 ], [ 4096, %sw.bb8.i183 ], [ 1024, %sw.bb7.i182 ], [ 256, %sw.bb6.i181 ], [ 16, %sw.bb5.i180 ], [ 0, %switch.early.test.i178.mdp_ctl_blend_ext_mask.exit197_crit_edge ], [ 1, %return.fold.split.i195 ], [ 4, %if.end.i179.mdp_ctl_blend_ext_mask.exit197_crit_edge ]
  %or20 = or i32 %retval.0.i176408, %blend_ext_cfg.0422
  %or21 = or i32 %or20, %retval.0.i196
  br i1 %tobool3.not, label %mdp_ctl_blend_ext_mask.exit197.for.inc_crit_edge, label %if.then23

mdp_ctl_blend_ext_mask.exit197.for.inc_crit_edge: ; preds = %mdp_ctl_blend_ext_mask.exit197
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %mdp_ctl_blend_ext_mask.exit197
  %arrayidx24 = getelementptr [2 x i32], ptr %r_stage, i32 %i.0425
  %67 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx24, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %68, label %if.then23.mdp_ctl_blend_mask.exit227_crit_edge [
    i32 1, label %sw.bb.i199
    i32 2, label %sw.bb1.i202
    i32 3, label %sw.bb3.i205
    i32 4, label %sw.bb5.i208
    i32 5, label %sw.bb7.i211
    i32 6, label %sw.bb9.i214
    i32 7, label %sw.bb11.i217
    i32 8, label %sw.bb13.i220
    i32 9, label %sw.bb15.i223
    i32 10, label %sw.bb17.i225
  ]

if.then23.mdp_ctl_blend_mask.exit227_crit_edge:   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_mask.exit227

sw.bb.i199:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i198 = and i32 %i.0425, 7
  br label %mdp_ctl_blend_mask.exit227

sw.bb1.i202:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i200 = shl i32 %i.0425, 3
  %and.i29.i201 = and i32 %shl.i.i200, 56
  br label %mdp_ctl_blend_mask.exit227

sw.bb3.i205:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i30.i203 = shl i32 %i.0425, 6
  %and.i31.i204 = and i32 %shl.i30.i203, 448
  br label %mdp_ctl_blend_mask.exit227

sw.bb5.i208:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i32.i206 = shl i32 %i.0425, 9
  %and.i33.i207 = and i32 %shl.i32.i206, 3584
  br label %mdp_ctl_blend_mask.exit227

sw.bb7.i211:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i34.i209 = shl i32 %i.0425, 12
  %and.i35.i210 = and i32 %shl.i34.i209, 28672
  br label %mdp_ctl_blend_mask.exit227

sw.bb9.i214:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i36.i212 = shl i32 %i.0425, 15
  %and.i37.i213 = and i32 %shl.i36.i212, 229376
  br label %mdp_ctl_blend_mask.exit227

sw.bb11.i217:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i38.i215 = shl i32 %i.0425, 18
  %and.i39.i216 = and i32 %shl.i38.i215, 1835008
  br label %mdp_ctl_blend_mask.exit227

sw.bb13.i220:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i40.i218 = shl i32 %i.0425, 21
  %and.i41.i219 = and i32 %shl.i40.i218, 14680064
  br label %mdp_ctl_blend_mask.exit227

sw.bb15.i223:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i42.i221 = shl i32 %i.0425, 26
  %and.i43.i222 = and i32 %shl.i42.i221, 469762048
  br label %mdp_ctl_blend_mask.exit227

sw.bb17.i225:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.i224 = shl i32 %i.0425, 29
  br label %mdp_ctl_blend_mask.exit227

mdp_ctl_blend_mask.exit227:                       ; preds = %sw.bb17.i225, %sw.bb15.i223, %sw.bb13.i220, %sw.bb11.i217, %sw.bb9.i214, %sw.bb7.i211, %sw.bb5.i208, %sw.bb3.i205, %sw.bb1.i202, %sw.bb.i199, %if.then23.mdp_ctl_blend_mask.exit227_crit_edge
  %retval.0.i226 = phi i32 [ %shl.i44.i224, %sw.bb17.i225 ], [ %and.i43.i222, %sw.bb15.i223 ], [ %and.i41.i219, %sw.bb13.i220 ], [ %and.i39.i216, %sw.bb11.i217 ], [ %and.i37.i213, %sw.bb9.i214 ], [ %and.i35.i210, %sw.bb7.i211 ], [ %and.i33.i207, %sw.bb5.i208 ], [ %and.i31.i204, %sw.bb3.i205 ], [ %and.i29.i201, %sw.bb1.i202 ], [ %and.i.i198, %sw.bb.i199 ], [ 0, %if.then23.mdp_ctl_blend_mask.exit227_crit_edge ]
  %arrayidx28 = getelementptr [2 x i32], ptr %r_stage, i32 %i.0425, i32 1
  %70 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx28, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %71, label %mdp_ctl_blend_mask.exit227.mdp_ctl_blend_mask.exit257_crit_edge [
    i32 1, label %sw.bb.i229
    i32 2, label %sw.bb1.i232
    i32 3, label %sw.bb3.i235
    i32 4, label %sw.bb5.i238
    i32 5, label %sw.bb7.i241
    i32 6, label %sw.bb9.i244
    i32 7, label %sw.bb11.i247
    i32 8, label %sw.bb13.i250
    i32 9, label %sw.bb15.i253
    i32 10, label %sw.bb17.i255
  ]

mdp_ctl_blend_mask.exit227.mdp_ctl_blend_mask.exit257_crit_edge: ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_mask.exit257

sw.bb.i229:                                       ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i228 = and i32 %i.0425, 7
  br label %mdp_ctl_blend_mask.exit257

sw.bb1.i232:                                      ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i230 = shl i32 %i.0425, 3
  %and.i29.i231 = and i32 %shl.i.i230, 56
  br label %mdp_ctl_blend_mask.exit257

sw.bb3.i235:                                      ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i30.i233 = shl i32 %i.0425, 6
  %and.i31.i234 = and i32 %shl.i30.i233, 448
  br label %mdp_ctl_blend_mask.exit257

sw.bb5.i238:                                      ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i32.i236 = shl i32 %i.0425, 9
  %and.i33.i237 = and i32 %shl.i32.i236, 3584
  br label %mdp_ctl_blend_mask.exit257

sw.bb7.i241:                                      ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i34.i239 = shl i32 %i.0425, 12
  %and.i35.i240 = and i32 %shl.i34.i239, 28672
  br label %mdp_ctl_blend_mask.exit257

sw.bb9.i244:                                      ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i36.i242 = shl i32 %i.0425, 15
  %and.i37.i243 = and i32 %shl.i36.i242, 229376
  br label %mdp_ctl_blend_mask.exit257

sw.bb11.i247:                                     ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i38.i245 = shl i32 %i.0425, 18
  %and.i39.i246 = and i32 %shl.i38.i245, 1835008
  br label %mdp_ctl_blend_mask.exit257

sw.bb13.i250:                                     ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i40.i248 = shl i32 %i.0425, 21
  %and.i41.i249 = and i32 %shl.i40.i248, 14680064
  br label %mdp_ctl_blend_mask.exit257

sw.bb15.i253:                                     ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i42.i251 = shl i32 %i.0425, 26
  %and.i43.i252 = and i32 %shl.i42.i251, 469762048
  br label %mdp_ctl_blend_mask.exit257

sw.bb17.i255:                                     ; preds = %mdp_ctl_blend_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.i254 = shl i32 %i.0425, 29
  br label %mdp_ctl_blend_mask.exit257

mdp_ctl_blend_mask.exit257:                       ; preds = %sw.bb17.i255, %sw.bb15.i253, %sw.bb13.i250, %sw.bb11.i247, %sw.bb9.i244, %sw.bb7.i241, %sw.bb5.i238, %sw.bb3.i235, %sw.bb1.i232, %sw.bb.i229, %mdp_ctl_blend_mask.exit227.mdp_ctl_blend_mask.exit257_crit_edge
  %retval.0.i256 = phi i32 [ %shl.i44.i254, %sw.bb17.i255 ], [ %and.i43.i252, %sw.bb15.i253 ], [ %and.i41.i249, %sw.bb13.i250 ], [ %and.i39.i246, %sw.bb11.i247 ], [ %and.i37.i243, %sw.bb9.i244 ], [ %and.i35.i240, %sw.bb7.i241 ], [ %and.i33.i237, %sw.bb5.i238 ], [ %and.i31.i234, %sw.bb3.i235 ], [ %and.i29.i231, %sw.bb1.i232 ], [ %and.i.i228, %sw.bb.i229 ], [ 0, %mdp_ctl_blend_mask.exit227.mdp_ctl_blend_mask.exit257_crit_edge ]
  %or30 = or i32 %retval.0.i226, %r_blend_cfg.1423
  %or31 = or i32 %or30, %retval.0.i256
  br i1 %cmp.i, label %if.end.i260, label %switch.early.test.i259

switch.early.test.i259:                           ; preds = %mdp_ctl_blend_mask.exit257
  %73 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %68, label %switch.early.test.i259.switch.early.test.i280_crit_edge [
    i32 11, label %switch.early.test.i259.mdp_ctl_blend_ext_mask.exit278_crit_edge
    i32 12, label %switch.early.test.i259.sw.bb14.i274_crit_edge
  ]

switch.early.test.i259.sw.bb14.i274_crit_edge:    ; preds = %switch.early.test.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i274

switch.early.test.i259.mdp_ctl_blend_ext_mask.exit278_crit_edge: ; preds = %switch.early.test.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit278

switch.early.test.i259.switch.early.test.i280_crit_edge: ; preds = %switch.early.test.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch.early.test.i280

if.end.i260:                                      ; preds = %mdp_ctl_blend_mask.exit257
  %74 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %68, label %sw.default.i275 [
    i32 1, label %return.fold.split.i276
    i32 2, label %if.end.i260.if.end.i281_crit_edge
    i32 3, label %sw.bb5.i261
    i32 4, label %sw.bb6.i262
    i32 5, label %sw.bb7.i263
    i32 6, label %sw.bb8.i264
    i32 7, label %sw.bb9.i265
    i32 8, label %sw.bb10.i266
    i32 9, label %sw.bb11.i267
    i32 10, label %sw.bb12.i268
    i32 11, label %if.end.i260.mdp_ctl_blend_ext_mask.exit278_crit_edge
    i32 12, label %if.end.i260.sw.bb14.i274_crit_edge
  ]

if.end.i260.sw.bb14.i274_crit_edge:               ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i274

if.end.i260.mdp_ctl_blend_ext_mask.exit278_crit_edge: ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit278

if.end.i260.if.end.i281_crit_edge:                ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb5.i261:                                      ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb6.i262:                                      ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb7.i263:                                      ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb8.i264:                                      ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb9.i265:                                      ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb10.i266:                                     ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb11.i267:                                     ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb12.i268:                                     ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

sw.bb14.i274:                                     ; preds = %if.end.i260.sw.bb14.i274_crit_edge, %switch.early.test.i259.sw.bb14.i274_crit_edge
  br label %mdp_ctl_blend_ext_mask.exit278

sw.default.i275:                                  ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

return.fold.split.i276:                           ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

mdp_ctl_blend_ext_mask.exit278:                   ; preds = %sw.bb14.i274, %if.end.i260.mdp_ctl_blend_ext_mask.exit278_crit_edge, %switch.early.test.i259.mdp_ctl_blend_ext_mask.exit278_crit_edge
  %.sink432 = phi i32 [ 26, %sw.bb14.i274 ], [ 20, %if.end.i260.mdp_ctl_blend_ext_mask.exit278_crit_edge ], [ 20, %switch.early.test.i259.mdp_ctl_blend_ext_mask.exit278_crit_edge ]
  %shl.i.i269 = shl i32 %i.0425, %.sink432
  br i1 %cmp.i, label %mdp_ctl_blend_ext_mask.exit278.if.end.i281_crit_edge, label %mdp_ctl_blend_ext_mask.exit278.switch.early.test.i280_crit_edge

mdp_ctl_blend_ext_mask.exit278.switch.early.test.i280_crit_edge: ; preds = %mdp_ctl_blend_ext_mask.exit278
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch.early.test.i280

mdp_ctl_blend_ext_mask.exit278.if.end.i281_crit_edge: ; preds = %mdp_ctl_blend_ext_mask.exit278
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i281

switch.early.test.i280:                           ; preds = %mdp_ctl_blend_ext_mask.exit278.switch.early.test.i280_crit_edge, %switch.early.test.i259.switch.early.test.i280_crit_edge
  %retval.0.i277420 = phi i32 [ %shl.i.i269, %mdp_ctl_blend_ext_mask.exit278.switch.early.test.i280_crit_edge ], [ 0, %switch.early.test.i259.switch.early.test.i280_crit_edge ]
  %75 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %71, label %switch.early.test.i280.mdp_ctl_blend_ext_mask.exit299_crit_edge [
    i32 11, label %switch.early.test.i280.sw.bb13.i292_crit_edge
    i32 12, label %switch.early.test.i280.sw.bb14.i295_crit_edge
  ]

switch.early.test.i280.sw.bb14.i295_crit_edge:    ; preds = %switch.early.test.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i295

switch.early.test.i280.sw.bb13.i292_crit_edge:    ; preds = %switch.early.test.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i292

switch.early.test.i280.mdp_ctl_blend_ext_mask.exit299_crit_edge: ; preds = %switch.early.test.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

if.end.i281:                                      ; preds = %mdp_ctl_blend_ext_mask.exit278.if.end.i281_crit_edge, %return.fold.split.i276, %sw.default.i275, %sw.bb12.i268, %sw.bb11.i267, %sw.bb10.i266, %sw.bb9.i265, %sw.bb8.i264, %sw.bb7.i263, %sw.bb6.i262, %sw.bb5.i261, %if.end.i260.if.end.i281_crit_edge
  %retval.0.i277417 = phi i32 [ %shl.i.i269, %mdp_ctl_blend_ext_mask.exit278.if.end.i281_crit_edge ], [ 4, %if.end.i260.if.end.i281_crit_edge ], [ 1, %return.fold.split.i276 ], [ 16, %sw.bb5.i261 ], [ 256, %sw.bb6.i262 ], [ 1024, %sw.bb7.i263 ], [ 4096, %sw.bb8.i264 ], [ 65536, %sw.bb9.i265 ], [ 262144, %sw.bb10.i266 ], [ 64, %sw.bb11.i267 ], [ 16384, %sw.bb12.i268 ], [ 0, %sw.default.i275 ]
  %76 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %71, label %sw.default.i296 [
    i32 1, label %return.fold.split.i297
    i32 2, label %if.end.i281.mdp_ctl_blend_ext_mask.exit299_crit_edge
    i32 3, label %sw.bb5.i282
    i32 4, label %sw.bb6.i283
    i32 5, label %sw.bb7.i284
    i32 6, label %sw.bb8.i285
    i32 7, label %sw.bb9.i286
    i32 8, label %sw.bb10.i287
    i32 9, label %sw.bb11.i288
    i32 10, label %sw.bb12.i289
    i32 11, label %if.end.i281.sw.bb13.i292_crit_edge
    i32 12, label %if.end.i281.sw.bb14.i295_crit_edge
  ]

if.end.i281.sw.bb14.i295_crit_edge:               ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i295

if.end.i281.sw.bb13.i292_crit_edge:               ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i292

if.end.i281.mdp_ctl_blend_ext_mask.exit299_crit_edge: ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb5.i282:                                      ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb6.i283:                                      ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb7.i284:                                      ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb8.i285:                                      ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb9.i286:                                      ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb10.i287:                                     ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb11.i288:                                     ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb12.i289:                                     ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb13.i292:                                     ; preds = %if.end.i281.sw.bb13.i292_crit_edge, %switch.early.test.i280.sw.bb13.i292_crit_edge
  %retval.0.i277415 = phi i32 [ %retval.0.i277417, %if.end.i281.sw.bb13.i292_crit_edge ], [ %retval.0.i277420, %switch.early.test.i280.sw.bb13.i292_crit_edge ]
  %shl.i.i290 = shl i32 %i.0425, 20
  br label %mdp_ctl_blend_ext_mask.exit299

sw.bb14.i295:                                     ; preds = %if.end.i281.sw.bb14.i295_crit_edge, %switch.early.test.i280.sw.bb14.i295_crit_edge
  %retval.0.i277414 = phi i32 [ %retval.0.i277417, %if.end.i281.sw.bb14.i295_crit_edge ], [ %retval.0.i277420, %switch.early.test.i280.sw.bb14.i295_crit_edge ]
  %shl.i21.i293 = shl i32 %i.0425, 26
  br label %mdp_ctl_blend_ext_mask.exit299

sw.default.i296:                                  ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

return.fold.split.i297:                           ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_blend_ext_mask.exit299

mdp_ctl_blend_ext_mask.exit299:                   ; preds = %return.fold.split.i297, %sw.default.i296, %sw.bb14.i295, %sw.bb13.i292, %sw.bb12.i289, %sw.bb11.i288, %sw.bb10.i287, %sw.bb9.i286, %sw.bb8.i285, %sw.bb7.i284, %sw.bb6.i283, %sw.bb5.i282, %if.end.i281.mdp_ctl_blend_ext_mask.exit299_crit_edge, %switch.early.test.i280.mdp_ctl_blend_ext_mask.exit299_crit_edge
  %retval.0.i277416 = phi i32 [ %retval.0.i277417, %sw.default.i296 ], [ %retval.0.i277414, %sw.bb14.i295 ], [ %retval.0.i277415, %sw.bb13.i292 ], [ %retval.0.i277417, %sw.bb12.i289 ], [ %retval.0.i277417, %sw.bb11.i288 ], [ %retval.0.i277417, %sw.bb10.i287 ], [ %retval.0.i277417, %sw.bb9.i286 ], [ %retval.0.i277417, %sw.bb8.i285 ], [ %retval.0.i277417, %sw.bb7.i284 ], [ %retval.0.i277417, %sw.bb6.i283 ], [ %retval.0.i277417, %sw.bb5.i282 ], [ %retval.0.i277420, %switch.early.test.i280.mdp_ctl_blend_ext_mask.exit299_crit_edge ], [ %retval.0.i277417, %return.fold.split.i297 ], [ %retval.0.i277417, %if.end.i281.mdp_ctl_blend_ext_mask.exit299_crit_edge ]
  %retval.0.i298 = phi i32 [ 0, %sw.default.i296 ], [ %shl.i21.i293, %sw.bb14.i295 ], [ %shl.i.i290, %sw.bb13.i292 ], [ 16384, %sw.bb12.i289 ], [ 64, %sw.bb11.i288 ], [ 262144, %sw.bb10.i287 ], [ 65536, %sw.bb9.i286 ], [ 4096, %sw.bb8.i285 ], [ 1024, %sw.bb7.i284 ], [ 256, %sw.bb6.i283 ], [ 16, %sw.bb5.i282 ], [ 0, %switch.early.test.i280.mdp_ctl_blend_ext_mask.exit299_crit_edge ], [ 1, %return.fold.split.i297 ], [ 4, %if.end.i281.mdp_ctl_blend_ext_mask.exit299_crit_edge ]
  %or38 = or i32 %retval.0.i277416, %r_blend_ext_cfg.0424
  %or39 = or i32 %or38, %retval.0.i298
  br label %for.inc

for.inc:                                          ; preds = %mdp_ctl_blend_ext_mask.exit299, %mdp_ctl_blend_ext_mask.exit197.for.inc_crit_edge
  %r_blend_cfg.2 = phi i32 [ %or31, %mdp_ctl_blend_ext_mask.exit299 ], [ %r_blend_cfg.1423, %mdp_ctl_blend_ext_mask.exit197.for.inc_crit_edge ]
  %r_blend_ext_cfg.1 = phi i32 [ %or39, %mdp_ctl_blend_ext_mask.exit299 ], [ %r_blend_ext_cfg.0424, %mdp_ctl_blend_ext_mask.exit197.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0425, 1
  %cmp = icmp ult i32 %i.0425, 8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body41_crit_edge

for.inc.do.body41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body41:                                        ; preds = %for.inc.do.body41_crit_edge, %mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge
  %blend_cfg.1.lcssa = phi i32 [ %55, %mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge ], [ %or13, %for.inc.do.body41_crit_edge ]
  %blend_ext_cfg.0.lcssa = phi i32 [ 0, %mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge ], [ %or21, %for.inc.do.body41_crit_edge ]
  %r_blend_cfg.1.lcssa = phi i32 [ %r_blend_cfg.0, %mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge ], [ %r_blend_cfg.2, %for.inc.do.body41_crit_edge ]
  %r_blend_ext_cfg.0.lcssa = phi i32 [ 0, %mdp5_ctl_reset_blend_regs.exit.do.body41_crit_edge ], [ %r_blend_ext_cfg.1, %for.inc.do.body41_crit_edge ]
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #7
  %cursor_on = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 8
  %77 = ptrtoint ptr %cursor_on to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cursor_on, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool47.not = icmp eq i8 %78, 0
  %or49 = or i32 %blend_cfg.1.lcssa, 33554432
  %spec.select138 = select i1 %tobool47.not, i32 %blend_cfg.1.lcssa, i32 %or49
  %id = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id, align 4
  %lm = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %lm, align 4
  %83 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %80, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %84 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %84, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i

sw.bb1.i.i:                                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %85 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %85, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i

sw.bb5.i.i:                                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %86 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %86, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i

sw.bb9.i.i:                                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %87 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %87, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i

sw.bb13.i.i:                                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %88 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %88, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i

do.body.i.i:                                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i:                              ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %82)
  %89 = icmp ult i32 %82, 6
  br i1 %89, label %switch.lookup434, label %do.body.i5.i

do.body.i5.i:                                     ; preds = %__offset_CTL.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

switch.lookup434:                                 ; preds = %__offset_CTL.exit.i
  %90 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %switch.gep435 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.27, i32 0, i32 %82
  %91 = ptrtoint ptr %switch.gep435 to i32
  call void @__asan_load4_noabort(i32 %91)
  %switch.load436 = load i32, ptr %switch.gep435, align 4
  %add2.i = add i32 %switch.load436, %retval.0.i.i
  %92 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctl, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %99, i32 0, i32 26
  %100 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i.i = icmp slt i32 %101, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %switch.lookup434.ctl_write.exit_crit_edge, !prof !57

switch.lookup434.ctl_write.exit_crit_edge:        ; preds = %switch.lookup434
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit

do.end.i.i:                                       ; preds = %switch.lookup434
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit

ctl_write.exit:                                   ; preds = %do.end.i.i, %switch.lookup434.ctl_write.exit_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %99, i32 0, i32 15
  %102 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %103, i32 %add2.i
  tail call void @msm_writel(i32 noundef %spec.select138, ptr noundef %add.ptr.i.i) #7
  %104 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %id, align 4
  %106 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lm, align 4
  %108 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %105, label %do.body.i.i310 [
    i32 0, label %sw.bb.i.i301
    i32 1, label %sw.bb1.i.i303
    i32 2, label %sw.bb5.i.i305
    i32 3, label %sw.bb9.i.i307
    i32 4, label %sw.bb13.i.i309
  ]

sw.bb.i.i301:                                     ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i300 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i313

sw.bb1.i.i303:                                    ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %110 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i302 = getelementptr %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i313

sw.bb5.i.i305:                                    ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i304 = getelementptr %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i313

sw.bb9.i.i307:                                    ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i306 = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i313

sw.bb13.i.i309:                                   ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %113 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i308 = getelementptr %struct.mdp5_cfg_hw, ptr %113, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i313

do.body.i.i310:                                   ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i313:                           ; preds = %sw.bb13.i.i309, %sw.bb9.i.i307, %sw.bb5.i.i305, %sw.bb1.i.i303, %sw.bb.i.i301
  %retval.0.in.i.i311 = phi ptr [ %arrayidx16.i.i308, %sw.bb13.i.i309 ], [ %arrayidx12.i.i306, %sw.bb9.i.i307 ], [ %arrayidx8.i.i304, %sw.bb5.i.i305 ], [ %arrayidx4.i.i302, %sw.bb1.i.i303 ], [ %base.i.i300, %sw.bb.i.i301 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %107)
  %114 = icmp ult i32 %107, 6
  br i1 %114, label %switch.lookup437, label %do.body.i5.i319

do.body.i5.i319:                                  ; preds = %__offset_CTL.exit.i313
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !62
  unreachable

switch.lookup437:                                 ; preds = %__offset_CTL.exit.i313
  %115 = ptrtoint ptr %retval.0.in.i.i311 to i32
  call void @__asan_load4_noabort(i32 %115)
  %retval.0.i.i312 = load i32, ptr %retval.0.in.i.i311, align 4
  %switch.idx.mult438 = shl i32 %107, 2
  %switch.offset439 = add i32 %switch.idx.mult438, 64
  %add2.i321 = add i32 %switch.offset439, %retval.0.i.i312
  %116 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctl, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %dev_private.i.i322 = getelementptr inbounds %struct.drm_device, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %dev_private.i.i322 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_private.i.i322, align 4
  %kms.i.i323 = getelementptr inbounds %struct.msm_drm_private, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %kms.i.i323 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %kms.i.i323, align 4
  %enable_count.i.i324 = getelementptr inbounds %struct.mdp5_kms, ptr %123, i32 0, i32 26
  %124 = ptrtoint ptr %enable_count.i.i324 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %enable_count.i.i324, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp.i.i325 = icmp slt i32 %125, 1
  br i1 %cmp.i.i325, label %do.end.i.i326, label %switch.lookup437.ctl_write.exit329_crit_edge, !prof !57

switch.lookup437.ctl_write.exit329_crit_edge:     ; preds = %switch.lookup437
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit329

do.end.i.i326:                                    ; preds = %switch.lookup437
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit329

ctl_write.exit329:                                ; preds = %do.end.i.i326, %switch.lookup437.ctl_write.exit329_crit_edge
  %mmio.i.i327 = getelementptr inbounds %struct.mdp5_kms, ptr %123, i32 0, i32 15
  %126 = ptrtoint ptr %mmio.i.i327 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i.i327, align 4
  %add.ptr.i.i328 = getelementptr i8, ptr %127, i32 %add2.i321
  tail call void @msm_writel(i32 noundef %blend_ext_cfg.0.lcssa, ptr noundef %add.ptr.i.i328) #7
  br i1 %tobool3.not, label %ctl_write.exit329.if.end63_crit_edge, label %if.then56

ctl_write.exit329.if.end63_crit_edge:             ; preds = %ctl_write.exit329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then56:                                        ; preds = %ctl_write.exit329
  %128 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %id, align 4
  %lm58 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 2
  %130 = ptrtoint ptr %lm58 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %lm58, align 4
  %132 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %129, label %do.body.i.i340 [
    i32 0, label %sw.bb.i.i331
    i32 1, label %sw.bb1.i.i333
    i32 2, label %sw.bb5.i.i335
    i32 3, label %sw.bb9.i.i337
    i32 4, label %sw.bb13.i.i339
  ]

sw.bb.i.i331:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %133 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i330 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %133, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i343

sw.bb1.i.i333:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %134 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i332 = getelementptr %struct.mdp5_cfg_hw, ptr %134, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i343

sw.bb5.i.i335:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %135 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i334 = getelementptr %struct.mdp5_cfg_hw, ptr %135, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i343

sw.bb9.i.i337:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %136 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i336 = getelementptr %struct.mdp5_cfg_hw, ptr %136, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i343

sw.bb13.i.i339:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %137 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i338 = getelementptr %struct.mdp5_cfg_hw, ptr %137, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i343

do.body.i.i340:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i343:                           ; preds = %sw.bb13.i.i339, %sw.bb9.i.i337, %sw.bb5.i.i335, %sw.bb1.i.i333, %sw.bb.i.i331
  %retval.0.in.i.i341 = phi ptr [ %arrayidx16.i.i338, %sw.bb13.i.i339 ], [ %arrayidx12.i.i336, %sw.bb9.i.i337 ], [ %arrayidx8.i.i334, %sw.bb5.i.i335 ], [ %arrayidx4.i.i332, %sw.bb1.i.i333 ], [ %base.i.i330, %sw.bb.i.i331 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %131)
  %138 = icmp ult i32 %131, 6
  br i1 %138, label %switch.lookup440, label %do.body.i5.i349

do.body.i5.i349:                                  ; preds = %__offset_CTL.exit.i343
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

switch.lookup440:                                 ; preds = %__offset_CTL.exit.i343
  %139 = ptrtoint ptr %retval.0.in.i.i341 to i32
  call void @__asan_load4_noabort(i32 %139)
  %retval.0.i.i342 = load i32, ptr %retval.0.in.i.i341, align 4
  %switch.gep441 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.28, i32 0, i32 %131
  %140 = ptrtoint ptr %switch.gep441 to i32
  call void @__asan_load4_noabort(i32 %140)
  %switch.load442 = load i32, ptr %switch.gep441, align 4
  %add2.i351 = add i32 %switch.load442, %retval.0.i.i342
  %141 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ctl, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %dev_private.i.i353 = getelementptr inbounds %struct.drm_device, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %dev_private.i.i353 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev_private.i.i353, align 4
  %kms.i.i354 = getelementptr inbounds %struct.msm_drm_private, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %kms.i.i354 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %kms.i.i354, align 4
  %enable_count.i.i355 = getelementptr inbounds %struct.mdp5_kms, ptr %148, i32 0, i32 26
  %149 = ptrtoint ptr %enable_count.i.i355 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %enable_count.i.i355, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp.i.i356 = icmp slt i32 %150, 1
  br i1 %cmp.i.i356, label %do.end.i.i357, label %switch.lookup440.ctl_write.exit360_crit_edge, !prof !57

switch.lookup440.ctl_write.exit360_crit_edge:     ; preds = %switch.lookup440
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit360

do.end.i.i357:                                    ; preds = %switch.lookup440
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit360

ctl_write.exit360:                                ; preds = %do.end.i.i357, %switch.lookup440.ctl_write.exit360_crit_edge
  %mmio.i.i358 = getelementptr inbounds %struct.mdp5_kms, ptr %148, i32 0, i32 15
  %151 = ptrtoint ptr %mmio.i.i358 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio.i.i358, align 4
  %add.ptr.i.i359 = getelementptr i8, ptr %152, i32 %add2.i351
  tail call void @msm_writel(i32 noundef %r_blend_cfg.1.lcssa, ptr noundef %add.ptr.i.i359) #7
  %153 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %id, align 4
  %155 = ptrtoint ptr %lm58 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %lm58, align 4
  %157 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %154, label %do.body.i.i371 [
    i32 0, label %sw.bb.i.i362
    i32 1, label %sw.bb1.i.i364
    i32 2, label %sw.bb5.i.i366
    i32 3, label %sw.bb9.i.i368
    i32 4, label %sw.bb13.i.i370
  ]

sw.bb.i.i362:                                     ; preds = %ctl_write.exit360
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %158 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i361 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %158, i32 0, i32 3, i32 1
  br label %__offset_CTL.exit.i374

sw.bb1.i.i364:                                    ; preds = %ctl_write.exit360
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %159 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i363 = getelementptr %struct.mdp5_cfg_hw, ptr %159, i32 0, i32 3, i32 1, i32 1
  br label %__offset_CTL.exit.i374

sw.bb5.i.i366:                                    ; preds = %ctl_write.exit360
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %160 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i365 = getelementptr %struct.mdp5_cfg_hw, ptr %160, i32 0, i32 3, i32 1, i32 2
  br label %__offset_CTL.exit.i374

sw.bb9.i.i368:                                    ; preds = %ctl_write.exit360
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %161 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i367 = getelementptr %struct.mdp5_cfg_hw, ptr %161, i32 0, i32 3, i32 1, i32 3
  br label %__offset_CTL.exit.i374

sw.bb13.i.i370:                                   ; preds = %ctl_write.exit360
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %162 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i369 = getelementptr %struct.mdp5_cfg_hw, ptr %162, i32 0, i32 3, i32 1, i32 4
  br label %__offset_CTL.exit.i374

do.body.i.i371:                                   ; preds = %ctl_write.exit360
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

__offset_CTL.exit.i374:                           ; preds = %sw.bb13.i.i370, %sw.bb9.i.i368, %sw.bb5.i.i366, %sw.bb1.i.i364, %sw.bb.i.i362
  %retval.0.in.i.i372 = phi ptr [ %arrayidx16.i.i369, %sw.bb13.i.i370 ], [ %arrayidx12.i.i367, %sw.bb9.i.i368 ], [ %arrayidx8.i.i365, %sw.bb5.i.i366 ], [ %arrayidx4.i.i363, %sw.bb1.i.i364 ], [ %base.i.i361, %sw.bb.i.i362 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %156)
  %163 = icmp ult i32 %156, 6
  br i1 %163, label %switch.lookup443, label %do.body.i5.i380

do.body.i5.i380:                                  ; preds = %__offset_CTL.exit.i374
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !62
  unreachable

switch.lookup443:                                 ; preds = %__offset_CTL.exit.i374
  %164 = ptrtoint ptr %retval.0.in.i.i372 to i32
  call void @__asan_load4_noabort(i32 %164)
  %retval.0.i.i373 = load i32, ptr %retval.0.in.i.i372, align 4
  %switch.idx.mult444 = shl i32 %156, 2
  %switch.offset445 = add i32 %switch.idx.mult444, 64
  %add2.i382 = add i32 %switch.offset445, %retval.0.i.i373
  %165 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctl, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %dev_private.i.i384 = getelementptr inbounds %struct.drm_device, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %dev_private.i.i384 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev_private.i.i384, align 4
  %kms.i.i385 = getelementptr inbounds %struct.msm_drm_private, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %kms.i.i385 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %kms.i.i385, align 4
  %enable_count.i.i386 = getelementptr inbounds %struct.mdp5_kms, ptr %172, i32 0, i32 26
  %173 = ptrtoint ptr %enable_count.i.i386 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %enable_count.i.i386, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.i.i387 = icmp slt i32 %174, 1
  br i1 %cmp.i.i387, label %do.end.i.i388, label %switch.lookup443.ctl_write.exit391_crit_edge, !prof !57

switch.lookup443.ctl_write.exit391_crit_edge:     ; preds = %switch.lookup443
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit391

do.end.i.i388:                                    ; preds = %switch.lookup443
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit391

ctl_write.exit391:                                ; preds = %do.end.i.i388, %switch.lookup443.ctl_write.exit391_crit_edge
  %mmio.i.i389 = getelementptr inbounds %struct.mdp5_kms, ptr %172, i32 0, i32 15
  %175 = ptrtoint ptr %mmio.i.i389 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio.i.i389, align 4
  %add.ptr.i.i390 = getelementptr i8, ptr %176, i32 %add2.i382
  tail call void @msm_writel(i32 noundef %r_blend_ext_cfg.0.lcssa, ptr noundef %add.ptr.i.i390) #7
  br label %if.end63

if.end63:                                         ; preds = %ctl_write.exit391, %ctl_write.exit329.if.end63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call44) #7
  %177 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %lm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %178)
  %179 = icmp ult i32 %178, 6
  br i1 %179, label %switch.lookup446, label %if.end63.mdp_ctl_flush_mask_lm.exit_crit_edge

if.end63.mdp_ctl_flush_mask_lm.exit_crit_edge:    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_flush_mask_lm.exit

switch.lookup446:                                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep447 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.29, i32 0, i32 %178
  %180 = ptrtoint ptr %switch.gep447 to i32
  call void @__asan_load4_noabort(i32 %180)
  %switch.load448 = load i32, ptr %switch.gep447, align 4
  br label %mdp_ctl_flush_mask_lm.exit

mdp_ctl_flush_mask_lm.exit:                       ; preds = %switch.lookup446, %if.end63.mdp_ctl_flush_mask_lm.exit_crit_edge
  %retval.0.i396 = phi i32 [ %switch.load448, %switch.lookup446 ], [ 0, %if.end63.mdp_ctl_flush_mask_lm.exit_crit_edge ]
  %pending_ctl_trigger = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 7
  %181 = ptrtoint ptr %pending_ctl_trigger to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %retval.0.i396, ptr %pending_ctl_trigger, align 4
  br i1 %tobool3.not, label %if.end78.critedge, label %if.then68

if.then68:                                        ; preds = %mdp_ctl_flush_mask_lm.exit
  %lm69 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 2
  %182 = ptrtoint ptr %lm69 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %lm69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %183)
  %184 = icmp ult i32 %183, 6
  br i1 %184, label %switch.lookup449, label %if.then68.mdp_ctl_flush_mask_lm.exit404_crit_edge

if.then68.mdp_ctl_flush_mask_lm.exit404_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp_ctl_flush_mask_lm.exit404

switch.lookup449:                                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep450 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.30, i32 0, i32 %183
  %185 = ptrtoint ptr %switch.gep450 to i32
  call void @__asan_load4_noabort(i32 %185)
  %switch.load451 = load i32, ptr %switch.gep450, align 4
  br label %mdp_ctl_flush_mask_lm.exit404

mdp_ctl_flush_mask_lm.exit404:                    ; preds = %switch.lookup449, %if.then68.mdp_ctl_flush_mask_lm.exit404_crit_edge
  %retval.0.i403 = phi i32 [ %switch.load451, %switch.lookup449 ], [ 0, %if.then68.mdp_ctl_flush_mask_lm.exit404_crit_edge ]
  %or72 = or i32 %retval.0.i403, %retval.0.i396
  %186 = ptrtoint ptr %pending_ctl_trigger to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or72, ptr %pending_ctl_trigger, align 4
  %187 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %lm, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %188, i32 noundef %spec.select138, i32 noundef %blend_ext_cfg.0.lcssa) #7
  %189 = ptrtoint ptr %lm69 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %lm69, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %190, i32 noundef %r_blend_cfg.1.lcssa, i32 noundef %r_blend_ext_cfg.0.lcssa) #7
  br label %if.end78

if.end78.critedge:                                ; preds = %mdp_ctl_flush_mask_lm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %lm, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %192, i32 noundef %spec.select138, i32 noundef %blend_ext_cfg.0.lcssa) #7
  br label %if.end78

if.end78:                                         ; preds = %if.end78.critedge, %mdp_ctl_flush_mask_lm.exit404
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_lm(i32 noundef %lm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %lm)
  %0 = icmp ult i32 %lm, 6
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mdp_ctl_flush_mask_lm, i32 0, i32 %lm
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_encoder(ptr nocapture noundef readonly %intf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdp5_interface, ptr %intf, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %1)
  %cmp = icmp eq i32 %1, 101
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %num = getelementptr inbounds %struct.mdp5_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mdp_ctl_flush_mask_encoder, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 65536, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_pipe(i32 noundef %pipe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %pipe, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 12
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.mdp_ctl_flush_mask_pipe, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_commit(ptr noundef %ctl, ptr nocapture noundef readonly %pipeline, i32 noundef %flush_mask, i1 noundef zeroext %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %id = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %pending_ctl_trigger = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %pending_ctl_trigger to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pending_ctl_trigger, align 4
  %and = and i32 %5, %flush_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %flush_mask, 131072
  %6 = ptrtoint ptr %pending_ctl_trigger to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pending_ctl_trigger, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flush_mask.addr.0 = phi i32 [ %flush_mask, %entry.if.end_crit_edge ], [ %or, %if.then ]
  %flush_hw_mask.i = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %flush_hw_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flush_hw_mask.i, align 4
  %and.i = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and1.i = and i32 %flush_mask.addr.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.cond.i = or i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.fix_sw_flush.exit_crit_edge, label %if.then.i

if.end.fix_sw_flush.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fix_sw_flush.exit

if.then.i:                                        ; preds = %if.end
  %mixer.i = getelementptr inbounds %struct.mdp5_pipeline, ptr %pipeline, i32 0, i32 1
  %9 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer.i, align 4
  %lm.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %lm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %13 = icmp ult i32 %12, 6
  br i1 %13, label %switch.lookup, label %if.then.i.fix_sw_flush.exit_crit_edge

if.then.i.fix_sw_flush.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fix_sw_flush.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_commit, i32 0, i32 %12
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %fix_sw_flush.exit

fix_sw_flush.exit:                                ; preds = %switch.lookup, %if.then.i.fix_sw_flush.exit_crit_edge, %if.end.fix_sw_flush.exit_crit_edge
  %sw_mask.0.i = phi i32 [ 0, %if.end.fix_sw_flush.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.fix_sw_flush.exit_crit_edge ]
  %or2 = or i32 %sw_mask.0.i, %flush_mask.addr.0
  %and3 = and i32 %or2, %8
  %pair.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 10
  %15 = ptrtoint ptr %pair.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pair.i, align 4
  %tobool.not.i43 = icmp eq ptr %16, null
  br i1 %tobool.not.i43, label %fix_sw_flush.exit.fix_for_single_flush.exit_crit_edge, label %if.then.i44

fix_sw_flush.exit.fix_for_single_flush.exit_crit_edge: ; preds = %fix_sw_flush.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fix_for_single_flush.exit

if.then.i44:                                      ; preds = %fix_sw_flush.exit
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %and3) #7
  %flush_pending.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 9
  %17 = ptrtoint ptr %flush_pending.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %flush_pending.i, align 1
  %single_flush_pending_mask.i = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %single_flush_pending_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %single_flush_pending_mask.i, align 4
  %or.i = or i32 %19, %and3
  store i32 %or.i, ptr %single_flush_pending_mask.i, align 4
  %20 = ptrtoint ptr %pair.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pair.i, align 4
  %flush_pending2.i = getelementptr inbounds %struct.mdp5_ctl, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %flush_pending2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flush_pending2.i, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i, label %if.then.i44.fix_for_single_flush.exit_crit_edge, label %if.then4.i

if.then.i44.fix_for_single_flush.exit_crit_edge:  ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %fix_for_single_flush.exit

if.then4.i:                                       ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %id7.i = getelementptr inbounds %struct.mdp5_ctl, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %id7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id7.i, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27) #7
  %29 = ptrtoint ptr %flush_pending.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %flush_pending.i, align 1
  %30 = ptrtoint ptr %flush_pending2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %flush_pending2.i, align 1
  %31 = ptrtoint ptr %single_flush_pending_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %single_flush_pending_mask.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %or.i, i32 noundef %28) #7
  br label %fix_for_single_flush.exit

fix_for_single_flush.exit:                        ; preds = %if.then4.i, %if.then.i44.fix_for_single_flush.exit_crit_edge, %fix_sw_flush.exit.fix_for_single_flush.exit_crit_edge
  %flush_mask.addr.1 = phi i32 [ %and3, %fix_sw_flush.exit.fix_for_single_flush.exit_crit_edge ], [ 0, %if.then.i44.fix_for_single_flush.exit_crit_edge ], [ %or.i, %if.then4.i ]
  %flush_id.0 = phi i32 [ %3, %fix_sw_flush.exit.fix_for_single_flush.exit_crit_edge ], [ %3, %if.then.i44.fix_for_single_flush.exit_crit_edge ], [ %28, %if.then4.i ]
  %flush_mask8 = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 4
  %32 = ptrtoint ptr %flush_mask8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flush_mask8, align 4
  %or9 = or i32 %33, %flush_mask.addr.1
  br i1 %start, label %if.else, label %if.then5

if.then5:                                         ; preds = %fix_for_single_flush.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %flush_mask8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or9, ptr %flush_mask8, align 4
  br label %cleanup

if.else:                                          ; preds = %fix_for_single_flush.exit
  %35 = ptrtoint ptr %flush_mask8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flush_mask8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9)
  %tobool12.not = icmp eq i32 %or9, 0
  br i1 %tobool12.not, label %if.else.if.end21_crit_edge, label %do.body14

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.body14:                                        ; preds = %if.else
  %hw_lock = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 5
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #7
  %36 = zext i32 %flush_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %flush_id.0, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i45
    i32 2, label %sw.bb5.i.i46
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %37 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %37, i32 0, i32 3, i32 1
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb1.i.i45:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %38 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %38, i32 0, i32 3, i32 1, i32 1
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb5.i.i46:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %39 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 3, i32 1, i32 2
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb9.i.i:                                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %40 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %40, i32 0, i32 3, i32 1, i32 3
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb13.i.i:                                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 3, i32 1, i32 4
  br label %REG_MDP5_CTL_FLUSH.exit

do.body.i.i:                                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

REG_MDP5_CTL_FLUSH.exit:                          ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i46, %sw.bb1.i.i45, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i46 ], [ %arrayidx4.i.i, %sw.bb1.i.i45 ], [ %base.i.i, %sw.bb.i.i ]
  %42 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.i = add i32 %retval.0.i.i, 24
  %43 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctl, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %50, i32 0, i32 26
  %51 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i.i = icmp slt i32 %52, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_CTL_FLUSH.exit.ctl_write.exit_crit_edge, !prof !57

REG_MDP5_CTL_FLUSH.exit.ctl_write.exit_crit_edge: ; preds = %REG_MDP5_CTL_FLUSH.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit

do.end.i.i:                                       ; preds = %REG_MDP5_CTL_FLUSH.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit

ctl_write.exit:                                   ; preds = %do.end.i.i, %REG_MDP5_CTL_FLUSH.exit.ctl_write.exit_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %50, i32 0, i32 15
  %53 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 %add.i
  tail call void @msm_writel(i32 noundef %or9, ptr noundef %add.ptr.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call16) #7
  br label %if.end21

if.end21:                                         ; preds = %ctl_write.exit, %if.else.if.end21_crit_edge
  %55 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pipeline, align 4
  %encoder_enabled.i = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 3
  %57 = ptrtoint ptr %encoder_enabled.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %encoder_enabled.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i47 = icmp eq i8 %58, 0
  br i1 %tobool.not.i47, label %if.end21.cleanup_crit_edge, label %if.end.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %type.i = getelementptr inbounds %struct.mdp5_interface, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %60, label %if.end.i.cleanup_crit_edge [
    i32 101, label %if.end.i.if.then23_crit_edge
    i32 1, label %start_signal_needed.exit
  ]

if.end.i.if.then23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

start_signal_needed.exit:                         ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.mdp5_interface, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i = icmp eq i32 %63, 2
  br i1 %cmp.i, label %start_signal_needed.exit.if.then23_crit_edge, label %start_signal_needed.exit.cleanup_crit_edge

start_signal_needed.exit.cleanup_crit_edge:       ; preds = %start_signal_needed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

start_signal_needed.exit.if.then23_crit_edge:     ; preds = %start_signal_needed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %start_signal_needed.exit.if.then23_crit_edge, %if.end.i.if.then23_crit_edge
  tail call fastcc void @send_start_signal(ptr noundef %ctl)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %start_signal_needed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then5
  ret i32 %and3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_get_commit_status(ptr nocapture noundef readonly %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %3 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %3, i32 0, i32 3, i32 1
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %4 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 3, i32 1, i32 1
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %5 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %5, i32 0, i32 3, i32 1, i32 2
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb9.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %6 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %6, i32 0, i32 3, i32 1, i32 3
  br label %REG_MDP5_CTL_FLUSH.exit

sw.bb13.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %7 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %7, i32 0, i32 3, i32 1, i32 4
  br label %REG_MDP5_CTL_FLUSH.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

REG_MDP5_CTL_FLUSH.exit:                          ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  %8 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i = icmp slt i32 %18, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_CTL_FLUSH.exit.ctl_read.exit_crit_edge, !prof !57

REG_MDP5_CTL_FLUSH.exit.ctl_read.exit_crit_edge:  ; preds = %REG_MDP5_CTL_FLUSH.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_read.exit

do.end.i.i:                                       ; preds = %REG_MDP5_CTL_FLUSH.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %ctl_read.exit

ctl_read.exit:                                    ; preds = %do.end.i.i, %REG_MDP5_CTL_FLUSH.exit.ctl_read.exit_crit_edge
  %add.i = add i32 %retval.0.i.i, 24
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %16, i32 0, i32 15
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add.i
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #7
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_get_ctl_id(ptr noundef readonly %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctl, null
  br i1 %tobool.not, label %do.end, label %cond.false.critedge, !prof !57

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 9, ptr noundef null) #7
  br label %cond.end

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.mdp5_ctl, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.critedge, %do.end
  %cond = phi i32 [ %1, %cond.false.critedge ], [ -22, %do.end ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_pair(ptr noundef %ctlx, ptr noundef %ctly, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctlx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %single_flush_supported = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %single_flush_supported to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %single_flush_supported, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pair4 = getelementptr inbounds %struct.mdp5_ctl, ptr %ctlx, i32 0, i32 10
  br i1 %enable, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %10 = ptrtoint ptr %pair4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pair4, align 4
  %pair3 = getelementptr inbounds %struct.mdp5_ctl, ptr %ctly, i32 0, i32 10
  %11 = ptrtoint ptr %pair3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pair3, align 4
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 26
  %12 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp slt i32 %13, 1
  br i1 %cmp.i, label %do.end.i, label %if.then2.mdp5_write.exit_crit_edge, !prof !57

if.then2.mdp5_write.exit_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %if.then2.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %16 = ptrtoint ptr %pair4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pair4, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.else.if.then7_crit_edge

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.else
  %pair5 = getelementptr inbounds %struct.mdp5_ctl, ptr %ctly, i32 0, i32 10
  %18 = ptrtoint ptr %pair5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pair5, align 4
  %cmp6.not = icmp eq ptr %19, null
  br i1 %cmp6.not, label %if.else9, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.else.if.then7_crit_edge
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.else9:                                         ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.mdp5_ctl, ptr %ctlx, i32 0, i32 2
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %status10 = getelementptr inbounds %struct.mdp5_ctl, ptr %ctly, i32 0, i32 2
  %24 = ptrtoint ptr %status10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status10, align 4
  %and = and i32 %23, 2
  %and11 = and i32 %and, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end18:                                         ; preds = %if.else9
  %28 = ptrtoint ptr %pair4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ctly, ptr %pair4, align 4
  %29 = ptrtoint ptr %pair5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ctlx, ptr %pair5, align 4
  %enable_count.i35 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 26
  %30 = ptrtoint ptr %enable_count.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enable_count.i35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i36 = icmp slt i32 %31, 1
  br i1 %cmp.i36, label %do.end.i37, label %if.end18.mdp5_write.exit40_crit_edge, !prof !57

if.end18.mdp5_write.exit40_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %mdp5_write.exit40

do.end.i37:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %mdp5_write.exit40

mdp5_write.exit40:                                ; preds = %do.end.i37, %if.end18.mdp5_write.exit40_crit_edge
  %mmio.i38 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 15
  %32 = ptrtoint ptr %mmio.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %33, i32 40
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i39) #7
  br label %cleanup

cleanup:                                          ; preds = %mdp5_write.exit40, %if.then13, %if.then7, %mdp5_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ 0, %mdp5_write.exit40 ], [ -22, %if.then13 ], [ 0, %mdp5_write.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_ctlm_request(ptr noundef %ctl_mgr, i32 noundef %intf_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %intf_num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  %2 = select i1 %1, i32 2, i32 0
  %pool_lock = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #7
  %nctl = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 2
  %3 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp762.not = icmp eq i32 %4, 0
  br i1 %cmp762.not, label %entry.do.end13_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %c.063 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %status = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.063, i32 2
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %2)
  %cmp9 = icmp eq i32 %and, %2
  br i1 %cmp9, label %for.body.found_crit_edge, label %for.inc

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %c.063, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.do.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end13:                                         ; preds = %for.inc.do.end13_crit_edge, %entry.do.end13_crit_edge
  %7 = ptrtoint ptr %ctl_mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl_mgr, align 4
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %intf_num) #10
  %xor = xor i32 %2, 2
  %11 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1764.not = icmp eq i32 %12, 0
  br i1 %cmp1764.not, label %do.end13.for.end30_crit_edge, label %do.end13.for.body19_crit_edge

do.end13.for.body19_crit_edge:                    ; preds = %do.end13
  br label %for.body19

do.end13.for.end30_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.body19:                                       ; preds = %for.inc28.for.body19_crit_edge, %do.end13.for.body19_crit_edge
  %c.165 = phi i32 [ %inc29, %for.inc28.for.body19_crit_edge ], [ 0, %do.end13.for.body19_crit_edge ]
  %status22 = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.165, i32 2
  %13 = ptrtoint ptr %status22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status22, align 4
  %and23 = and i32 %14, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %xor)
  %cmp24 = icmp eq i32 %and23, %xor
  br i1 %cmp24, label %for.body19.found_crit_edge, label %for.inc28

for.body19.found_crit_edge:                       ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

for.inc28:                                        ; preds = %for.body19
  %inc29 = add nuw i32 %c.165, 1
  %exitcond69.not = icmp eq i32 %inc29, %12
  br i1 %exitcond69.not, label %for.inc28.for.end30_crit_edge, label %for.inc28.for.body19_crit_edge

for.inc28.for.body19_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %do.end13.for.end30_crit_edge
  %15 = ptrtoint ptr %ctl_mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl_mgr, align 4
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #7
  br label %unlock

found:                                            ; preds = %for.body19.found_crit_edge, %for.body.found_crit_edge
  %c.2 = phi i32 [ %c.165, %for.body19.found_crit_edge ], [ %c.063, %for.body.found_crit_edge ]
  %arrayidx34 = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.2
  %status35 = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.2, i32 2
  %19 = ptrtoint ptr %status35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status35, align 4
  %or = or i32 %20, 1
  store i32 %or, ptr %status35, align 4
  %pending_ctl_trigger = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.2, i32 7
  %21 = ptrtoint ptr %pending_ctl_trigger to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pending_ctl_trigger, align 4
  %id = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.2, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %23) #7
  br label %unlock

unlock:                                           ; preds = %found, %for.end30
  %ctl.0 = phi ptr [ %arrayidx34, %found ], [ null, %for.end30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call4) #7
  ret ptr %ctl.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_ctlm_hw_reset(ptr noundef %ctl_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nctl = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 2
  %0 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %ctl_write.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %c.015 = phi i32 [ %inc, %ctl_write.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.015
  %hw_lock = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.015, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #7
  %id = getelementptr %struct.mdp5_ctl_manager, ptr %ctl_mgr, i32 0, i32 7, i32 %c.015, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %5 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %5, i32 0, i32 3, i32 1
  br label %REG_MDP5_CTL_OP.exit

sw.bb1.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %6 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %6, i32 0, i32 3, i32 1, i32 1
  br label %REG_MDP5_CTL_OP.exit

sw.bb5.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %7 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %7, i32 0, i32 3, i32 1, i32 2
  br label %REG_MDP5_CTL_OP.exit

sw.bb9.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %8 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %8, i32 0, i32 3, i32 1, i32 3
  br label %REG_MDP5_CTL_OP.exit

sw.bb13.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %9 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %9, i32 0, i32 3, i32 1, i32 4
  br label %REG_MDP5_CTL_OP.exit

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

REG_MDP5_CTL_OP.exit:                             ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  %10 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.i = add i32 %retval.0.i.i, 20
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kms.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp slt i32 %20, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_CTL_OP.exit.ctl_write.exit_crit_edge, !prof !57

REG_MDP5_CTL_OP.exit.ctl_write.exit_crit_edge:    ; preds = %REG_MDP5_CTL_OP.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ctl_write.exit

do.end.i.i:                                       ; preds = %REG_MDP5_CTL_OP.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %ctl_write.exit

ctl_write.exit:                                   ; preds = %do.end.i.i, %REG_MDP5_CTL_OP.exit.ctl_write.exit_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 15
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #7
  %inc = add nuw i32 %c.015, 1
  %23 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nctl, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %ctl_write.exit.for.body_crit_edge, label %ctl_write.exit.for.end_crit_edge

ctl_write.exit.for.end_crit_edge:                 ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ctl_write.exit.for.body_crit_edge:                ; preds = %ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ctl_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_ctlm_destroy(ptr noundef %ctl_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ctl_mgr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_ctlm_init(ptr noundef %dev, ptr nocapture noundef readnone %mmio_base, ptr noundef %cfg_hnd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %cfg_hnd) #7
  %call1 = tail call i32 @mdp5_cfg_get_hw_rev(ptr noundef %cfg_hnd) #7
  %ctl = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 708) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %fail.thread, label %if.end

fail.thread:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16) #7
  br label %if.end128

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp ugt i32 %4, 8
  br i1 %cmp, label %fail.thread191, label %if.end29, !prof !57

fail.thread191:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 707, i32 noundef 9, ptr noundef null) #7
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev27, align 4
  %7 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %8) #7
  br label %if.then127

if.end29:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call7.i.i, align 8
  %lm = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %lm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lm, align 4
  %nlm = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %nlm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nlm, align 4
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctl, align 4
  %nctl = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %nctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nctl, align 8
  %flush_hw_mask = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %flush_hw_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flush_hw_mask, align 4
  %flush_hw_mask33 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %flush_hw_mask33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flush_hw_mask33, align 4
  %pool_lock = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %pool_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @mdp5_ctlm_init.__key, i16 noundef signext 3) #7
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #7
  %19 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nctl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp50195.not = icmp eq i32 %20, 0
  br i1 %cmp50195.not, label %if.end29.for.cond98.preheader_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.cond98.preheader_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.inc.for.cond98.preheader_crit_edge, %if.end29.for.cond98.preheader_crit_edge
  %arrayidx102 = getelementptr %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 14, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp103 = icmp eq i32 %22, 1
  %inc106 = zext i1 %cmp103 to i32
  %arrayidx102.1 = getelementptr %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 14, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx102.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp103.1 = icmp eq i32 %24, 1
  %inc106.1 = zext i1 %cmp103.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc106, %inc106.1
  %arrayidx102.2 = getelementptr %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 14, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx102.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp103.2 = icmp eq i32 %26, 1
  %inc106.2 = zext i1 %cmp103.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc106.2
  %arrayidx102.3 = getelementptr %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 14, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx102.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx102.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp103.3 = icmp eq i32 %28, 1
  %inc106.3 = zext i1 %cmp103.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc106.3
  %arrayidx102.4 = getelementptr %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 14, i32 1, i32 4
  %29 = ptrtoint ptr %arrayidx102.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx102.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp103.4 = icmp eq i32 %30, 1
  %inc106.4 = zext i1 %cmp103.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc106.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp111 = icmp sgt i32 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.4)
  %cmp113 = icmp ugt i32 %spec.select.4, 1
  %or.cond = select i1 %cmp111, i1 %cmp113, i1 false
  br i1 %or.cond, label %if.then115, label %for.cond98.preheader.if.end123_crit_edge

for.cond98.preheader.if.end123_crit_edge:         ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %c.0196 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %arrayidx54 = getelementptr %struct.mdp5_cfg_hw, ptr %call, i32 0, i32 3, i32 1, i32 %c.0196
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool55.not = icmp eq i32 %32, 0
  br i1 %tobool55.not, label %fail, label %for.inc, !prof !57

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 %c.0196
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %id = getelementptr %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 %c.0196, i32 1
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %c.0196, ptr %id, align 8
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx54, align 4
  %reg_offset = getelementptr %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 %c.0196, i32 6
  %37 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %reg_offset, align 4
  %status = getelementptr %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 %c.0196, i32 2
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %status, align 4
  %hw_lock = getelementptr %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 %c.0196, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @mdp5_ctlm_init.__key.20, i16 noundef signext 3) #7
  %inc = add nuw i32 %c.0196, 1
  %39 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nctl, align 8
  %cmp50 = icmp ult i32 %inc, %40
  br i1 %cmp50, label %for.inc.for.body_crit_edge, label %for.inc.for.cond98.preheader_crit_edge

for.inc.for.cond98.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond98.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then115:                                       ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %single_flush_supported = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %single_flush_supported to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %single_flush_supported, align 8
  %status118 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %42 = ptrtoint ptr %status118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status118, align 4
  %or = or i32 %43, 2
  store i32 %or, ptr %status118, align 4
  %status121 = getelementptr %struct.mdp5_ctl_manager, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 2
  %44 = ptrtoint ptr %status121 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status121, align 4
  %or122 = or i32 %45, 2
  store i32 %or122, ptr %status121, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then115, %for.cond98.preheader.if.end123_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call44) #7
  %46 = ptrtoint ptr %nctl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nctl, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %47) #7
  br label %cleanup130

fail:                                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 726, i32 noundef 9, ptr noundef null) #7
  %dev89 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %48 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev89, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %49, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %c.0196) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call44) #7
  br label %if.then127

if.then127:                                       ; preds = %fail, %fail.thread191
  %ret.2193 = phi i32 [ -28, %fail.thread191 ], [ -22, %fail ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %fail.thread
  %ret.2190 = phi i32 [ -12, %fail.thread ], [ %ret.2193, %if.then127 ]
  %50 = inttoptr i32 %ret.2190 to ptr
  br label %cleanup130

cleanup130:                                       ; preds = %if.end128, %if.end123
  %retval.0 = phi ptr [ %50, %if.end128 ], [ %call7.i.i, %if.end123 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_hw_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_cfg_get_hw_rev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 232, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 236, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 259, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 265, i32 3}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 408, i32 2}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 608, i32 3}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 611, i32 3}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 648, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mdp5_ctlm_request._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @mdp5_ctlm_request._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 656, i32 2}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 663, i32 2}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 702, i32 3}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 708, i32 3}
!32 = !{ptr @mdp5_ctlm_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 719, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 727, i32 4}
!37 = !{ptr @mdp5_ctlm_init.__key.20, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 736, i32 3}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 755, i32 2}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 175, i32 2}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 493, i32 3}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c", i32 506, i32 4}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2157296119, i64 2157296624, i64 2157296156, i64 2157296212, i64 2157296246, i64 2157296270, i64 2157296311, i64 2157296332, i64 2157296360, i64 2157296394}
!59 = !{i64 2157184137, i64 2157184642, i64 2157184174, i64 2157184230, i64 2157184264, i64 2157184288, i64 2157184329, i64 2157184350, i64 2157184378, i64 2157184412}
!60 = !{i8 0, i8 2}
!61 = !{i64 2157186030, i64 2157186535, i64 2157186067, i64 2157186123, i64 2157186157, i64 2157186181, i64 2157186222, i64 2157186243, i64 2157186271, i64 2157186305}
!62 = !{i64 2157191141, i64 2157191646, i64 2157191178, i64 2157191234, i64 2157191268, i64 2157191292, i64 2157191333, i64 2157191354, i64 2157191382, i64 2157191416}
