; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_cfg_handler = type { i32, %struct.mdp5_cfg }
%struct.mdp5_cfg = type { ptr, %struct.mdp5_cfg_platform }
%struct.mdp5_cfg_platform = type { ptr }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.94 = type { i32, ptr }

@mdp5_cfg = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x76\00", [24 x i8] zeroinitializer }, align 32
@msm8x76_config = dso_local constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 11 }, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] } { i32 10, i32 10240, <{ [8 x i32], [24 x i32] }> <{ [8 x i32] [i32 0, i32 1, i32 9, i32 0, i32 7, i32 8, i32 0, i32 4], [24 x i32] zeroinitializer }>, [2 x i32] zeroinitializer, [32 x i8] zeroinitializer }, %struct.mdp5_ctl_block { i32 3, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 0, i32 0, i32 0, i32 0, i32 0], i32 -1 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 16384, i32 24576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 81920, i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 51 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 147456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 278748, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 2, [8 x i32] [i32 278528, i32 282624, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 1 }, %struct.mdp5_lm_instance { i32 1, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2560, i32 65535 }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 344064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 458752, i32 460800, i32 466944, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 524288, i32 525312, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 438272, i32 0, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0] }, %struct.mdp5_perf_block zeroinitializer, i32 360000000 }, [212 x i8] zeroinitializer }, align 32
@cfg_handlers_v1 = internal constant { [10 x %struct.mdp5_cfg_handler], [40 x i8] } { [10 x %struct.mdp5_cfg_handler] [%struct.mdp5_cfg_handler { i32 0, %struct.mdp5_cfg { ptr @msm8x74v1_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 2, %struct.mdp5_cfg { ptr @msm8x74v2_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 3, %struct.mdp5_cfg { ptr @apq8084_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 6, %struct.mdp5_cfg { ptr @msm8x16_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 8, %struct.mdp5_cfg { ptr @msm8x36_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 9, %struct.mdp5_cfg { ptr @msm8x94_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 7, %struct.mdp5_cfg { ptr @msm8x96_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 11, %struct.mdp5_cfg { ptr @msm8x76_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 15, %struct.mdp5_cfg { ptr @msm8917_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 16, %struct.mdp5_cfg { ptr @msm8x53_config, %struct.mdp5_cfg_platform zeroinitializer } }], [40 x i8] zeroinitializer }, align 32
@cfg_handlers_v3 = internal constant { [3 x %struct.mdp5_cfg_handler], [60 x i8] } { [3 x %struct.mdp5_cfg_handler] [%struct.mdp5_cfg_handler { i32 0, %struct.mdp5_cfg { ptr @msm8998_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 2, %struct.mdp5_cfg { ptr @sdm660_config, %struct.mdp5_cfg_platform zeroinitializer } }, %struct.mdp5_cfg_handler { i32 3, %struct.mdp5_cfg { ptr @sdm630_config, %struct.mdp5_cfg_platform zeroinitializer } }], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* unexpected MDP major version: v%d.%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* unexpected MDP minor revision: v%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MDP5: %s hw config selected\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msm8x96_config = internal constant { %struct.mdp5_cfg_hw, [212 x i8] } { %struct.mdp5_cfg_hw { ptr @.str.17, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 14 }, %struct.mdp5_smp_block zeroinitializer, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 0, i32 0, i32 0], i32 -184549377 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 16384, i32 24576, i32 32768, i32 40960, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 81920, i32 90112, i32 98304, i32 106496, i32 0, i32 0, i32 0, i32 0], i32 55 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 147456, i32 155648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 212992, i32 221184, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 6, [8 x i32] [i32 278528, i32 282624, i32 286720, i32 290816, i32 294912, i32 299008, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 -1, i32 5 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 4, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 5, i32 3, i32 -1, i32 1 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2560, i32 65535 }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 344064, i32 352256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 491520, i32 493568, i32 495616, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 4, [8 x i32] [i32 458752, i32 460800, i32 462848, i32 464896, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 524288, i32 525312, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 496128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 438272, i32 440320, i32 442368, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block { i32 100, i32 200, i32 105 }, i32 412500000 }, [212 x i8] zeroinitializer }, align 32
@msm8917_config = internal constant { %struct.mdp5_cfg_hw, [212 x i8] } { %struct.mdp5_cfg_hw { ptr @.str.18, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 4 }, %struct.mdp5_smp_block zeroinitializer, %struct.mdp5_ctl_block { i32 3, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 0, i32 0, i32 0, i32 0, i32 0], i32 -1 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 81920, i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 51 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 147456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 212992, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 2, [8 x i32] [i32 278528, i32 282624, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 1 }, %struct.mdp5_lm_instance { i32 1, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 344064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 458752, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 496128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0] }, %struct.mdp5_perf_block zeroinitializer, i32 320000000 }, [212 x i8] zeroinitializer }, align 32
@msm8x53_config = internal constant { %struct.mdp5_cfg_hw, [212 x i8] } { %struct.mdp5_cfg_hw { ptr @.str.19, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 12 }, %struct.mdp5_smp_block zeroinitializer, %struct.mdp5_ctl_block { i32 3, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 0, i32 0, i32 0, i32 0, i32 0], i32 -1 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 81920, i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 51 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 147456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 212992, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 3, [8 x i32] [i32 278528, i32 282624, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 -1, i32 1 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 5, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 344064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 458752, i32 460800, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 496128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 438272, i32 0, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0] }, %struct.mdp5_perf_block zeroinitializer, i32 400000000 }, [212 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm8x74v1\00", [22 x i8] zeroinitializer }, align 32
@msm8x74v1_config = internal constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [9 x i32], [23 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [9 x i32], [23 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str.5, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 1 }, { i32, i32, <{ [9 x i32], [23 x i32] }>, [2 x i32], [32 x i8] } { i32 22, i32 4096, <{ [9 x i32], [23 x i32] }> <{ [9 x i32] [i32 0, i32 1, i32 4, i32 7, i32 16, i32 17, i32 18, i32 10, i32 13], [23 x i32] zeroinitializer }>, [2 x i32] zeroinitializer, [32 x i8] zeroinitializer }, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 1280, i32 1536, i32 1792, i32 2048, i32 2304, i32 0, i32 0, i32 0], i32 262143 }, %struct.mdp5_pipe_block { i32 3, [8 x i32] [i32 4352, i32 5376, i32 6400, i32 0, i32 0, i32 0, i32 0, i32 0], i32 15 }, %struct.mdp5_pipe_block { i32 3, [8 x i32] [i32 7424, i32 8448, i32 9472, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 10496, i32 11520, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3 }, %struct.mdp5_pipe_block zeroinitializer, %struct.mdp5_lm_block { i32 5, [8 x i32] [i32 12544, i32 13568, i32 14592, i32 15616, i32 16640, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 1 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 2, i32 1 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 4, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 5, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 17664, i32 18688, i32 19712, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 137728, i32 137984, i32 138240, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 135168, i32 135680, i32 136192, i32 136704, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 9, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block { i32 200, i32 120, i32 125 }, i32 200000000 }, [212 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x74\00", [24 x i8] zeroinitializer }, align 32
@msm8x74v2_config = internal constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [9 x i32], [23 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [9 x i32], [23 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str.7, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 1 }, { i32, i32, <{ [9 x i32], [23 x i32] }>, [2 x i32], [32 x i8] } { i32 22, i32 4096, <{ [9 x i32], [23 x i32] }> <{ [9 x i32] [i32 0, i32 1, i32 4, i32 7, i32 16, i32 17, i32 18, i32 10, i32 13], [23 x i32] zeroinitializer }>, [2 x i32] zeroinitializer, [32 x i8] zeroinitializer }, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 1280, i32 1536, i32 1792, i32 2048, i32 2304, i32 0, i32 0, i32 0], i32 262143 }, %struct.mdp5_pipe_block { i32 3, [8 x i32] [i32 4352, i32 5376, i32 6400, i32 0, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.mdp5_pipe_block { i32 3, [8 x i32] [i32 7424, i32 8448, i32 9472, i32 0, i32 0, i32 0, i32 0, i32 0], i32 23 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 10496, i32 11520, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3 }, %struct.mdp5_pipe_block zeroinitializer, %struct.mdp5_lm_block { i32 5, [8 x i32] [i32 12544, i32 13568, i32 14592, i32 15616, i32 16640, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 1 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 2, i32 1 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 4, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 5, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 17664, i32 18688, i32 19712, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 77824, i32 78336, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 76800, i32 77056, i32 77312, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 74752, i32 75264, i32 75776, i32 76288, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 9, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block { i32 200, i32 120, i32 125 }, i32 320000000 }, [212 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apq8084\00", [24 x i8] zeroinitializer }, align 32
@apq8084_config = internal constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [11 x i32], [21 x i32] }>, [2 x i32], <{ [23 x i8], [9 x i8] }> }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [11 x i32], [21 x i32] }>, [2 x i32], <{ [23 x i8], [9 x i8] }> }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str.9, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 9 }, { i32, i32, <{ [11 x i32], [21 x i32] }>, [2 x i32], <{ [23 x i8], [9 x i8] }> } { i32 44, i32 8192, <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 1, i32 4, i32 7, i32 16, i32 17, i32 18, i32 10, i32 13, i32 19, i32 22], [21 x i32] zeroinitializer }>, [2 x i32] [i32 255, i32 0], <{ [23 x i8], [9 x i8] }> <{ [23 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\00\00\00\02", [9 x i8] zeroinitializer }> }, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 1280, i32 1536, i32 1792, i32 2048, i32 2304, i32 0, i32 0, i32 0], i32 4194303 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 4352, i32 5376, i32 6400, i32 7424, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 8448, i32 9472, i32 10496, i32 11520, i32 0, i32 0, i32 0, i32 0], i32 23 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 12544, i32 13568, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3 }, %struct.mdp5_pipe_block zeroinitializer, %struct.mdp5_lm_block { i32 6, [8 x i32] [i32 14592, i32 15616, i32 16640, i32 17664, i32 18688, i32 19712, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 2, i32 5 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 4, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 5, i32 3, i32 3, i32 1 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 5, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 4, [8 x i32] [i32 20736, i32 21760, i32 22784, i32 23808, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 78848, i32 79360, i32 79872, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 4, [8 x i32] [i32 77312, i32 77568, i32 77824, i32 78080, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 74752, i32 75264, i32 75776, i32 76288, i32 76800, i32 0, i32 0, i32 0], [5 x i32] [i32 9, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block { i32 200, i32 120, i32 105 }, i32 320000000 }, [212 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x16\00", [24 x i8] zeroinitializer }, align 32
@msm8x16_config = internal constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str.11, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 1 }, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] } { i32 8, i32 8192, <{ [8 x i32], [24 x i32] }> <{ [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 7, i32 8, i32 0, i32 4], [24 x i32] zeroinitializer }>, [2 x i32] zeroinitializer, [32 x i8] zeroinitializer }, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 0, i32 0, i32 0], i32 1074003967 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 81920, i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 19 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 147456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3 }, %struct.mdp5_pipe_block zeroinitializer, %struct.mdp5_lm_block { i32 2, [8 x i32] [i32 278528, i32 290816, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 1 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 344064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 0, i32 436224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0] }, %struct.mdp5_perf_block { i32 100, i32 200, i32 105 }, i32 320000000 }, [212 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x36\00", [24 x i8] zeroinitializer }, align 32
@msm8x36_config = internal constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str.13, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 1 }, { i32, i32, <{ [8 x i32], [24 x i32] }>, [2 x i32], [32 x i8] } { i32 8, i32 10240, <{ [8 x i32], [24 x i32] }> <{ [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 7, i32 8, i32 0, i32 4], [24 x i32] zeroinitializer }>, [2 x i32] zeroinitializer, [32 x i8] zeroinitializer }, %struct.mdp5_ctl_block { i32 3, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 0, i32 0, i32 0, i32 0, i32 0], i32 1074003967 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 81920, i32 90112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 19 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 147456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3 }, %struct.mdp5_pipe_block zeroinitializer, %struct.mdp5_lm_block { i32 2, [8 x i32] [i32 278528, i32 290816, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 1 }, %struct.mdp5_lm_instance { i32 1, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2560, i32 65535 }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 344064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 491520, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 458752, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 0, i32 436224, i32 438272, i32 0, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0] }, %struct.mdp5_perf_block { i32 100, i32 200, i32 105 }, i32 366670000 }, [212 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x94\00", [24 x i8] zeroinitializer }, align 32
@msm8x94_config = internal constant { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [11 x i32], [21 x i32] }>, [2 x i32], <{ [23 x i8], [9 x i8] }> }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }, [212 x i8] } { { ptr, %struct.mdp5_mdp_block, { i32, i32, <{ [11 x i32], [21 x i32] }>, [2 x i32], <{ [23 x i8], [9 x i8] }> }, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 } { ptr @.str.15, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 9 }, { i32, i32, <{ [11 x i32], [21 x i32] }>, [2 x i32], <{ [23 x i8], [9 x i8] }> } { i32 44, i32 8192, <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 1, i32 4, i32 7, i32 16, i32 17, i32 18, i32 10, i32 13, i32 19, i32 22], [21 x i32] zeroinitializer }>, [2 x i32] [i32 16777215, i32 0], <{ [23 x i8], [9 x i8] }> <{ [23 x i8] c"\00\01\00\00\01\00\00\01\00\00\00\00\00\00\00\00\05\05\05\01\00\00\05", [9 x i8] zeroinitializer }> }, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 0, i32 0, i32 0], i32 -251658241 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 16384, i32 24576, i32 32768, i32 40960, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 81920, i32 90112, i32 98304, i32 106496, i32 0, i32 0, i32 0, i32 0], i32 23 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 147456, i32 155648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3 }, %struct.mdp5_pipe_block zeroinitializer, %struct.mdp5_lm_block { i32 6, [8 x i32] [i32 278528, i32 282624, i32 286720, i32 290816, i32 294912, i32 299008, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 2, i32 5 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 4, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 5, i32 3, i32 3, i32 1 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 4, [8 x i32] [i32 344064, i32 352256, i32 360448, i32 368640, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 491520, i32 493568, i32 495616, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 4, [8 x i32] [i32 458752, i32 460800, i32 462848, i32 464896, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 438272, i32 440320, i32 442368, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block { i32 100, i32 100, i32 105 }, i32 400000000 }, [212 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x96\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8917\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8x53\00", [24 x i8] zeroinitializer }, align 32
@msm8998_config = internal constant { %struct.mdp5_cfg_hw, [212 x i8] } { %struct.mdp5_cfg_hw { ptr @.str.20, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 14 }, %struct.mdp5_smp_block zeroinitializer, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 0, i32 0, i32 0], i32 -134217729 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 16384, i32 24576, i32 32768, i32 40960, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 81920, i32 90112, i32 98304, i32 106496, i32 0, i32 0, i32 0, i32 0], i32 55 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 147456, i32 155648, i32 163840, i32 172032, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 212992, i32 221184, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 6, [8 x i32] [i32 278528, i32 282624, i32 286720, i32 290816, i32 294912, i32 299008, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 -1, i32 5 }, %struct.mdp5_lm_instance { i32 3, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 4, i32 -1, i32 -1, i32 2 }, %struct.mdp5_lm_instance { i32 5, i32 3, i32 -1, i32 1 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2560, i32 65535 }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 344064, i32 352256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 491520, i32 493568, i32 495616, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 4, [8 x i32] [i32 458752, i32 460800, i32 462848, i32 464896, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 524288, i32 525312, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 496128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 438272, i32 440320, i32 442368, i32 0, i32 0, i32 0], [5 x i32] [i32 9, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block zeroinitializer, i32 412500000 }, [212 x i8] zeroinitializer }, align 32
@sdm660_config = internal constant { %struct.mdp5_cfg_hw, [212 x i8] } { %struct.mdp5_cfg_hw { ptr @.str.21, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 14 }, %struct.mdp5_smp_block zeroinitializer, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 0, i32 0, i32 0], i32 -184549377 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 16384, i32 24576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 81920, i32 90112, i32 98304, i32 106496, i32 0, i32 0, i32 0, i32 0], i32 55 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 147456, i32 155648, i32 163840, i32 0, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 212992, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 4, [8 x i32] [i32 278528, i32 282624, i32 286720, i32 299008, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 1, i32 1 }, %struct.mdp5_lm_instance { i32 2, i32 2, i32 -1, i32 5 }, %struct.mdp5_lm_instance { i32 3, i32 3, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2560, i32 65535 }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 344064, i32 352256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 491520, i32 493568, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 5, [8 x i32] [i32 458752, i32 460800, i32 462848, i32 464896, i32 466944, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 524288, i32 525312, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 496128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 438272, i32 440320, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 3, i32 0] }, %struct.mdp5_perf_block zeroinitializer, i32 412500000 }, [212 x i8] zeroinitializer }, align 32
@sdm630_config = internal constant { %struct.mdp5_cfg_hw, [212 x i8] } { %struct.mdp5_cfg_hw { ptr @.str.22, %struct.mdp5_mdp_block { i32 1, [8 x i32] zeroinitializer, i32 12 }, %struct.mdp5_smp_block zeroinitializer, %struct.mdp5_ctl_block { i32 5, [8 x i32] [i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 0, i32 0, i32 0], i32 -184549377 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63 }, %struct.mdp5_pipe_block { i32 4, [8 x i32] [i32 81920, i32 90112, i32 98304, i32 106496, i32 0, i32 0, i32 0, i32 0], i32 55 }, %struct.mdp5_pipe_block { i32 2, [8 x i32] [i32 147456, i32 155648, i32 163840, i32 0, i32 0, i32 0, i32 0, i32 0], i32 35 }, %struct.mdp5_pipe_block { i32 1, [8 x i32] [i32 212992, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 99 }, %struct.mdp5_lm_block { i32 2, [8 x i32] [i32 278528, i32 286720, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x %struct.mdp5_lm_instance] [%struct.mdp5_lm_instance { i32 0, i32 0, i32 0, i32 5 }, %struct.mdp5_lm_instance { i32 1, i32 1, i32 -1, i32 2 }, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer, %struct.mdp5_lm_instance zeroinitializer], i32 8, i32 2048, i32 65535 }, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 344064, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 2, [8 x i32] [i32 491520, i32 493568, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block { i32 3, [8 x i32] [i32 458752, i32 462848, i32 466944, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_sub_block zeroinitializer, %struct.mdp5_sub_block { i32 1, [8 x i32] [i32 496128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.mdp5_intf_block { [8 x i32] [i32 434176, i32 436224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0] }, %struct.mdp5_perf_block zeroinitializer, i32 412500000 }, [212 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm8998\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdm660\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdm630\00", [25 x i8] zeroinitializer }, align 32
@mdp5_get_config.config = internal global { %struct.mdp5_cfg_platform, [28 x i8] } zeroinitializer, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"mdp5_cfg\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 15, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 659, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"msm8x76_config\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 658, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"cfg_handlers_v1\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1232, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"cfg_handlers_v3\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1245, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1299, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1314, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1326, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"msm8x96_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 545, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"msm8917_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 843, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"msm8x53_config\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 755, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 18, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"msm8x74v1_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 17, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 107, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"msm8x74v2_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 106, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 194, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"apq8084_config\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 193, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 294, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"msm8x16_config\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 293, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 366, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"msm8x36_config\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 365, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 446, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"msm8x94_config\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 445, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 546, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 844, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 756, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"msm8998_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 928, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"sdm660_config\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1128, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"sdm630_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1036, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 929, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1129, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1037, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.123 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1339, i32 34 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @mdp5_cfg, ptr @.str, ptr @msm8x76_config, ptr @cfg_handlers_v1, ptr @cfg_handlers_v3, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @msm8x96_config, ptr @msm8917_config, ptr @msm8x53_config, ptr @.str.5, ptr @msm8x74v1_config, ptr @.str.7, ptr @msm8x74v2_config, ptr @.str.9, ptr @apq8084_config, ptr @.str.11, ptr @msm8x16_config, ptr @.str.13, ptr @msm8x36_config, ptr @.str.15, ptr @msm8x94_config, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @msm8998_config, ptr @sdm660_config, ptr @sdm630_config, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @mdp5_get_config.config], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x76_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_handlers_v1 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_handlers_v3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x96_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8917_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x53_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x74v1_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x74v2_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8084_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x16_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x36_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8x94_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm630_config to i32), i32 844, i32 1056, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_get_config.config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mdp5_cfg_get_hw_config(ptr nocapture noundef readonly %cfg_handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.mdp5_cfg_handler, ptr %cfg_handler, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mdp5_cfg_get_config(ptr noundef readnone %cfg_handler) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.mdp5_cfg_handler, ptr %cfg_handler, i32 0, i32 1
  ret ptr %config
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp5_cfg_get_hw_rev(ptr nocapture noundef readonly %cfg_handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_handler, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_cfg_destroy(ptr noundef %cfg_handler) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cfg_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_cfg_init(ptr nocapture noundef readonly %mdp5_kms, i32 noundef %major, i32 noundef %minor) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mdp5_kms, ptr %mdp5_kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !76

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %major to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %major, label %if.end.if.then30_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end.sw.epilog_crit_edge
  %cfg_handlers.0 = phi ptr [ @cfg_handlers_v3, %sw.bb6 ], [ @cfg_handlers_v1, %if.end.sw.epilog_crit_edge ]
  %num_handlers.0 = phi i32 [ 3, %sw.bb6 ], [ 10, %if.end.sw.epilog_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.063 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_cfg_handler, ptr %cfg_handlers.0, i32 %i.063
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %minor)
  %cmp8.not = icmp eq i32 %5, %minor
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %config = getelementptr %struct.mdp5_cfg_handler, ptr %cfg_handlers.0, i32 %i.063, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  store ptr %7, ptr @mdp5_cfg, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %num_handlers.0
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %.pr = load ptr, ptr @mdp5_cfg, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end10
  %8 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %7, %if.end10 ]
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %for.end.if.then30_crit_edge, label %if.end23, !prof !76

for.end.if.then30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %minor, ptr %call7.i.i, align 8
  %config25 = getelementptr inbounds %struct.mdp5_cfg_handler, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %config25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %config25, align 4
  %call.i = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #5
  store ptr %call.i, ptr @mdp5_get_config.config, align 4
  %platform = getelementptr inbounds %struct.mdp5_cfg_handler, ptr %call7.i.i, i32 0, i32 1, i32 1
  %.cast = ptrtoint ptr %call.i to i32
  %11 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.cast, ptr %platform, align 8
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %14) #5
  br label %cleanup

if.then30:                                        ; preds = %for.end.if.then30_crit_edge, %if.end.if.then30_crit_edge
  %.str.3.sink = phi ptr [ @.str.2, %if.end.if.then30_crit_edge ], [ @.str.3, %for.end.if.then30_crit_edge ]
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.3.sink, i32 noundef %major, i32 noundef %minor) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end23 ], [ inttoptr (i32 -6 to ptr), %if.then30 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @mdp5_cfg, !1, !"mdp5_cfg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 15, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 659, i32 10}
!4 = !{ptr @msm8x76_config, !5, !"msm8x76_config", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 658, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1299, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1314, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1326, i32 2}
!13 = !{ptr @cfg_handlers_v1, !14, !"cfg_handlers_v1", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1232, i32 38}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 18, i32 10}
!17 = !{ptr @msm8x74v1_config, !18, !"msm8x74v1_config", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 17, i32 33}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 107, i32 10}
!21 = !{ptr @msm8x74v2_config, !22, !"msm8x74v2_config", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 106, i32 33}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 194, i32 10}
!25 = !{ptr @apq8084_config, !26, !"apq8084_config", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 193, i32 33}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 294, i32 10}
!29 = !{ptr @msm8x16_config, !30, !"msm8x16_config", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 293, i32 33}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 366, i32 10}
!33 = !{ptr @msm8x36_config, !34, !"msm8x36_config", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 365, i32 33}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 446, i32 10}
!37 = !{ptr @msm8x94_config, !38, !"msm8x94_config", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 445, i32 33}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 546, i32 10}
!41 = !{ptr @msm8x96_config, !42, !"msm8x96_config", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 545, i32 33}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 844, i32 10}
!45 = !{ptr @msm8917_config, !46, !"msm8917_config", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 843, i32 33}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 756, i32 10}
!49 = !{ptr @msm8x53_config, !50, !"msm8x53_config", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 755, i32 33}
!51 = !{ptr @cfg_handlers_v3, !52, !"cfg_handlers_v3", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1245, i32 38}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 929, i32 10}
!55 = !{ptr @msm8998_config, !56, !"msm8998_config", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 928, i32 33}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1129, i32 10}
!59 = !{ptr @sdm660_config, !60, !"sdm660_config", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1128, i32 33}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1037, i32 10}
!63 = !{ptr @sdm630_config, !64, !"sdm630_config", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1036, i32 33}
!65 = !{ptr @mdp5_get_config.config, !66, !"config", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c", i32 1339, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
