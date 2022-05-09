; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mdp5_crtc = type { %struct.drm_crtc, i32, i8, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.drm_flip_work, %struct.mdp_irq, %struct.mdp_irq, %struct.mdp_irq, %struct.completion, i8, %struct.anon.96 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.96 = type { %struct.spinlock, ptr, i64, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.97, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.97 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mdp5_crtc_state = type { %struct.drm_crtc_state, ptr, %struct.mdp5_pipeline, i32, i32, i32, i8, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mdp5_pipeline = type { ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
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
%struct.plane_state = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mdp5_plane_state = type { %struct.drm_plane_state, ptr, ptr, i32 }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c\00", [54 x i8] zeroinitializer }, align 32
@mdp5_crtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mdp5_crtc->lm_lock\00", [44 x i8] zeroinitializer }, align 32
@mdp5_crtc_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&mdp5_crtc->cursor.lock\00", [40 x i8] zeroinitializer }, align 32
@mdp5_crtc_no_lm_cursor_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @mdp5_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @mdp5_crtc_duplicate_state, ptr @mdp5_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_atomic_print_state, ptr @mdp5_crtc_get_vblank_counter, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@mdp5_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @mdp5_crtc_reset, ptr @mdp5_crtc_cursor_set, ptr null, ptr @mdp5_crtc_cursor_move, ptr null, ptr @mdp5_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @mdp5_crtc_duplicate_state, ptr @mdp5_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_atomic_print_state, ptr @mdp5_crtc_get_vblank_counter, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unref cursor\00", [19 x i8] zeroinitializer }, align 32
@mdp5_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @mdp5_crtc_atomic_check, ptr @mdp5_crtc_atomic_begin, ptr @mdp5_crtc_atomic_flush, ptr @mdp5_crtc_atomic_enable, ptr @mdp5_crtc_atomic_disable, ptr @mdp5_crtc_get_scanout_position }, [32 x i8] zeroinitializer }, align 32
@mdp5_crtc_wait_for_pp_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mdp5_crtc_wait_for_pp_done = private unnamed_addr constant [27 x i8] c"mdp5_crtc_wait_for_pp_done\00", align 1
@mdp5_crtc_wait_for_pp_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.mdp5_crtc_wait_for_pp_done, ptr @.str, i32 1213, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pp done time out, lm=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdp5_crtc_wait_for_pp_done._entry_ptr = internal global ptr @mdp5_crtc_wait_for_pp_done._entry, section ".printk_index", align 4
@mdp5_crtc_wait_for_flush_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 1237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vblank time out, crtc=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mdp5_crtc_wait_for_flush_done\00", [34 x i8] zeroinitializer }, align 32
@mdp5_crtc_wait_for_flush_done._entry_ptr = internal global ptr @mdp5_crtc_wait_for_flush_done._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: send event: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: error: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09ctl=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09hwmixer=%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09right hwmixer=%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09cmd_mode=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@mdp5_crtc_cursor_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 955, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cursor_set is deprecated with cursor planes\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdp5_crtc_cursor_set\00", [43 x i8] zeroinitializer }, align 32
@mdp5_crtc_cursor_set._entry_ptr = internal global ptr @mdp5_crtc_cursor_set._entry, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* bad cursor size: %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Cursor off\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to %sable cursor: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: x=%d, y=%d roi_w=%d roi_h=%d src_x=%d src_y=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: flush=%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@mdp5_crtc_cursor_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 1035, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cursor_move is deprecated with cursor planes\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdp5_crtc_cursor_move\00", [42 x i8] zeroinitializer }, align 32
@mdp5_crtc_cursor_move._entry_ptr = internal global ptr @mdp5_crtc_cursor_move._entry, section ".printk_index", align 4
@.str.32 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: check\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* couldn't assign mixers %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* too many planes! cnt=%d, start stage=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: assign pipe %s on stage=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: begin\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: event: %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Border Color is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Stage %d fg_alpha %x bg_alpha %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no encoder found for crtc %d\0A\00", [34 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_check = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16777216, i32 67108864, i32 268435456, i32 1073741824], [16 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_check.43 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33554432, i32 134217728, i32 536870912, i32 -2147483648], [16 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush.44 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush.45 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush.46 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush.47 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush.48 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], [36 x i8] zeroinitializer }, align 32
@switch.table.mdp5_crtc_atomic_flush.49 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.57 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 101]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1272, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1319, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1320, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [29 x i8] c"mdp5_crtc_no_lm_cursor_funcs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1128, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"mdp5_crtc_funcs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1142, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1335, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"mdp5_crtc_helper_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1158, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1212, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1237, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 87, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 150, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1191, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1078, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1080, i32 16 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1081, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1084, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1087, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 954, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 960, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 973, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1005, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 909, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 169, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 98, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1034, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 380, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 706, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 742, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 759, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 769, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 780, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 791, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 276, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 302, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 543, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [45 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 437, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [36 x i8] c"switch.table.mdp5_crtc_atomic_check\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_check.43\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [36 x i8] c"switch.table.mdp5_crtc_atomic_flush\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_flush.44\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_flush.45\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_flush.46\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_flush.47\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_flush.48\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [39 x i8] c"switch.table.mdp5_crtc_atomic_flush.49\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @mdp5_crtc_cursor_move._entry, ptr @mdp5_crtc_cursor_move._entry_ptr, ptr @mdp5_crtc_cursor_set._entry, ptr @mdp5_crtc_cursor_set._entry_ptr, ptr @mdp5_crtc_wait_for_flush_done._entry, ptr @mdp5_crtc_wait_for_flush_done._entry_ptr, ptr @mdp5_crtc_wait_for_pp_done._entry, ptr @mdp5_crtc_wait_for_pp_done._entry_ptr, ptr @.str, ptr @mdp5_crtc_init.__key, ptr @.str.1, ptr @mdp5_crtc_init.__key.2, ptr @.str.3, ptr @mdp5_crtc_no_lm_cursor_funcs, ptr @mdp5_crtc_funcs, ptr @.str.4, ptr @mdp5_crtc_helper_funcs, ptr @mdp5_crtc_wait_for_pp_done._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @switch.table.mdp5_crtc_atomic_check, ptr @switch.table.mdp5_crtc_atomic_check.43, ptr @switch.table.mdp5_crtc_atomic_flush, ptr @switch.table.mdp5_crtc_atomic_flush.44, ptr @switch.table.mdp5_crtc_atomic_flush.45, ptr @switch.table.mdp5_crtc_atomic_flush.46, ptr @switch.table.mdp5_crtc_atomic_flush.47, ptr @switch.table.mdp5_crtc_atomic_flush.48, ptr @switch.table.mdp5_crtc_atomic_flush.49], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_no_lm_cursor_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_wait_for_pp_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_wait_for_pp_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_wait_for_flush_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_cursor_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_crtc_cursor_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_check to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_check.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_crtc_atomic_flush.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp5_crtc_vblank(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irqmask = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqmask, align 8
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_crtc_set_pipeline(ptr nocapture noundef readonly %crtc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  tail call void @mdp_irq_update(ptr noundef %7) #9
  %ctl = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl, align 4
  %pipeline = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mdp5_ctl_set_pipeline(ptr noundef %9, ptr noundef %pipeline) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_pipeline(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mdp5_crtc_get_ctl(ptr nocapture noundef readonly %crtc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %ctl = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_crtc_get_mixer(ptr noundef readonly %crtc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end23, !prof !103

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end23:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %mixer = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer, align 4
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %if.end23.cleanup.sink.split_crit_edge, label %if.end23.cleanup_crit_edge, !prof !103

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1272, %entry.cleanup.sink.split_crit_edge ], [ 1277, %if.end23.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.end23.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef readonly %crtc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %pipeline = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %pipeline, %if.end23 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_crtc_wait_for_commit_done(ptr noundef %crtc) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %cmd_mode = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cmd_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_mode, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pp_completion.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 11
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %pp_completion.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %if.then
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @mdp5_crtc_wait_for_pp_done._rs, ptr noundef nonnull @__func__.mdp5_crtc_wait_for_pp_done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end_crit_edge, label %do.end.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev9.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9.i, align 4
  %mixer.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer.i, align 4
  %lm.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %lm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lm.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %11) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %ctl5.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ctl5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl5.i, align 4
  %tobool.not.i4 = icmp eq ptr %13, null
  br i1 %tobool.not.i4, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %call.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end8.i:                                        ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1235) #9
  %call13.i = tail call i32 @mdp5_ctl_get_commit_status(ptr noundef nonnull %13) #9
  %flushed_mask.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 5
  %14 = ptrtoint ptr %flushed_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flushed_mask.i, align 8
  %and.i = and i32 %15, %call13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i5 = icmp eq i32 %and.i, 0
  br i1 %cmp.i5, label %if.end8.i.if.end62.i_crit_edge, label %if.then22.i

if.end8.i.if.end62.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then22.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %16 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %vblank.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 23
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then22.i
  %__ret23.0.i = phi i32 [ 5, %if.then22.i ], [ %call48.i, %cleanup.i ]
  %17 = ptrtoint ptr %vblank.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vblank.i, align 4
  %19 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i, align 4
  %queue.i = getelementptr %struct.drm_vblank_crtc, ptr %18, i32 %20, i32 1
  %call26.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %call28.i = call i32 @mdp5_ctl_get_commit_status(ptr noundef nonnull %13) #9
  %21 = ptrtoint ptr %flushed_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flushed_mask.i, align 8
  %and30.i = and i32 %22, %call28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp31.i = icmp eq i32 %and30.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.0.i)
  %tobool35.not.i = icmp eq i32 %__ret23.0.i, 0
  %23 = select i1 %cmp31.i, i1 %tobool35.not.i, i1 false
  %__ret23.1.i = select i1 %23, i32 1, i32 %__ret23.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1.i)
  %tobool41.not.i = icmp eq i32 %__ret23.1.i, 0
  %24 = select i1 %cmp31.i, i1 true, i1 %tobool41.not.i
  br i1 %24, label %if.end54.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i = call i32 @schedule_timeout(i32 noundef %__ret23.1.i) #9
  br label %for.cond.i

if.end54.i:                                       ; preds = %for.cond.i
  %25 = ptrtoint ptr %vblank.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vblank.i, align 4
  %27 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i.i, align 4
  %queue52.i = getelementptr %struct.drm_vblank_crtc, ptr %26, i32 %28, i32 1
  call void @finish_wait(ptr noundef %queue52.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret23.1.i)
  %cmp56.i = icmp slt i32 %__ret23.1.i, 1
  br i1 %cmp56.i, label %do.end60.i, label %if.end54.i.if.end62.i_crit_edge

if.end54.i.if.end62.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

do.end60.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev61.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev61.i, align 4
  %id.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 1
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.9, i32 noundef %32) #12
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end60.i, %if.end54.i.if.end62.i_crit_edge, %if.end8.i.if.end62.i_crit_edge
  %33 = ptrtoint ptr %flushed_mask.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flushed_mask.i, align 8
  call void @drm_crtc_vblank_put(ptr noundef %crtc) #9
  br label %if.end

if.end:                                           ; preds = %if.end62.i, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %do.end.i, %do.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_crtc_init(ptr noundef %dev, ptr noundef %plane, ptr noundef %cursor_plane, i32 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1360) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id2 = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id, ptr %id2, align 8
  %lm_lock = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lm_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mdp5_crtc_init.__key, i16 noundef signext 3) #9
  %cursor = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %cursor, ptr noundef nonnull @.str.3, ptr noundef nonnull @mdp5_crtc_init.__key.2, i16 noundef signext 3) #9
  %pp_completion = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %pp_completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pp_completion, align 4
  %wait.i = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #9
  %irq = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 8, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mdp5_crtc_vblank_irq, ptr %irq, align 8
  %irq8 = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %irq8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mdp5_crtc_err_irq, ptr %irq8, align 4
  %irq9 = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mdp5_crtc_pp_done_irq, ptr %irq9, align 8
  %tobool10.not = icmp eq ptr %cursor_plane, null
  %lm_cursor_enabled = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 12
  %frombool = zext i1 %tobool10.not to i8
  %6 = ptrtoint ptr %lm_cursor_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %lm_cursor_enabled, align 4
  %cond13 = select i1 %tobool10.not, ptr @mdp5_crtc_funcs, ptr @mdp5_crtc_no_lm_cursor_funcs
  %call14 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %plane, ptr noundef %cursor_plane, ptr noundef nonnull %cond13, ptr noundef null) #9
  %unref_cursor_work = getelementptr inbounds %struct.mdp5_crtc, ptr %call7.i.i, i32 0, i32 7
  tail call void @drm_flip_work_init(ptr noundef %unref_cursor_work, ptr noundef nonnull @.str.4, ptr noundef nonnull @unref_cursor_worker) #9
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mdp5_crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_vblank_irq(ptr noundef %irq, i32 noundef %irqstatus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %irq, i32 -1168
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  tail call void @mdp_irq_unregister(ptr noundef %5, ptr noundef %irq) #9
  %pending2 = getelementptr i8, ptr %irq, i32 -116
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending2, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %pending2, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pending2) #9, !srcloc !106
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  %and = and i32 %asmresult.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr i8, ptr %irq, i32 -444
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state.i, align 4
  %pipeline1.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %8, i32 0, i32 2
  %ctl5.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ctl5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl5.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #9
  %event12.i = getelementptr i8, ptr %irq, i32 -124
  %13 = ptrtoint ptr %event12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event12.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %event12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %event12.i, align 4
  %name.i = getelementptr i8, ptr %irq, i32 -1152
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef %17, ptr noundef nonnull %14) #9
  tail call void @drm_crtc_send_vblank_event(ptr noundef %add.ptr, ptr noundef nonnull %14) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call9.i) #9
  %tobool15.not.i = icmp eq ptr %10, null
  br i1 %tobool15.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i, align 4
  %enable.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool17.not.i = icmp eq i8 %21, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = tail call i32 @mdp5_ctl_blend(ptr noundef nonnull %10, ptr noundef %pipeline1.i, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then18.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %asmresult.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %unref_cursor_work = getelementptr i8, ptr %irq, i32 -112
  %wq = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 22
  %22 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq, align 8
  tail call void @drm_flip_work_commit(ptr noundef %unref_cursor_work, ptr noundef %23) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_err_irq(ptr nocapture noundef readonly %irq, i32 noundef %irqstatus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %irq, i32 -1172
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef %irqstatus) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_pp_done_irq(ptr noundef %irq, i32 noundef %irqstatus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pp_completion = getelementptr i8, ptr %irq, i32 20
  tail call void @complete_all(ptr noundef %pp_completion) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unref_cursor_worker(ptr nocapture noundef readonly %work, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1056
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aspace, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef %val, ptr noundef %7) #9
  %tobool.not.i = icmp eq ptr %val, null
  br i1 %tobool.not.i, label %entry.drm_gem_object_put.exit_crit_edge, label %if.then.i

entry.drm_gem_object_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr nonnull %val, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %val, ptr nonnull %val, i32 1, ptr nonnull elementtype(i32) %val) #9, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !110

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %val, i32 noundef 3) #9
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @drm_gem_object_free(ptr noundef nonnull %val) #9
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %entry.drm_gem_object_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_get_commit_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_blend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_reset(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 316) #13
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef %call7.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_destroy(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #9
  %unref_cursor_work = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 7
  tail call void @drm_flip_work_cleanup(ptr noundef %unref_cursor_work) #9
  tail call void @kfree(ptr noundef %crtc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdp5_crtc_duplicate_state(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 316, i32 noundef 3264) #9
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end28 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #9
  tail call void @kfree(ptr noundef %state) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_print_state(ptr noundef %p, ptr noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipeline1 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %tobool.not = icmp eq ptr %pipeline1, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1074, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25:                                         ; preds = %entry
  %ctl = getelementptr inbounds %struct.mdp5_crtc_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl, align 4
  %tobool26.not = icmp eq ptr %9, null
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @mdp5_ctl_get_ctl_id(ptr noundef nonnull %9) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.14, i32 noundef %call29) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %mixer = getelementptr inbounds %struct.mdp5_crtc_state, ptr %state, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer, align 4
  %tobool31.not = icmp eq ptr %11, null
  br i1 %tobool31.not, label %if.end30.cond.end_crit_edge, label %cond.true

if.end30.cond.end_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end30.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ @.str.16, %if.end30.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.15, ptr noundef %cond) #9
  %caps = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 10
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 8
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %cond.end.if.end42_crit_edge, label %if.then34

cond.end.if.end42_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then34:                                        ; preds = %cond.end
  %r_mixer = getelementptr inbounds %struct.mdp5_crtc_state, ptr %state, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r_mixer, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %if.then34.cond.end40_crit_edge, label %cond.true36

if.then34.cond.end40_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end40

cond.true36:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %name38 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name38, align 4
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true36, %if.then34.cond.end40_crit_edge
  %cond41 = phi ptr [ %19, %cond.true36 ], [ @.str.16, %if.then34.cond.end40_crit_edge ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.17, ptr noundef %cond41) #9
  br label %if.end42

if.end42:                                         ; preds = %cond.end40, %cond.end.if.end42_crit_edge
  %cmd_mode = getelementptr inbounds %struct.mdp5_crtc_state, ptr %state, i32 0, i32 6
  %20 = ptrtoint ptr %cmd_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd_mode, align 4, !range !104
  %22 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.18, i32 noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_get_vblank_counter(ptr noundef readonly %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %3 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %4, %crtc
  br i1 %cmp5.i, label %get_encoder_from_crtc.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_encoder_from_crtc.exit:                       ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %get_encoder_from_crtc.exit.cleanup_crit_edge, label %if.end

get_encoder_from_crtc.exit.cleanup_crit_edge:     ; preds = %get_encoder_from_crtc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %get_encoder_from_crtc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @mdp5_encoder_get_framecount(ptr noundef nonnull %encoder.0.le.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_encoder_from_crtc.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %get_encoder_from_crtc.exit.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_crtc_enable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_crtc_disable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_get_ctl_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_encoder_get_framecount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_cursor_set(ptr noundef %crtc, ptr noundef %file, i32 noundef %handle, i32 noundef %width, i32 noundef %height) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %pipeline4 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %pdev6 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev6, align 4
  %call8 = tail call i32 @mdp_ctl_flush_mask_cursor(i32 noundef 0) #9
  %lm_cursor_enabled = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 12
  %10 = ptrtoint ptr %lm_cursor_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lm_cursor_enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %width)
  %cmp = icmp ugt i32 %width, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %height)
  %cmp10 = icmp ugt i32 %height, 64
  %or.cond = or i1 %cmp, %cmp10
  br i1 %or.cond, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %width, i32 noundef %height) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %ctl14 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ctl14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %r_mixer = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %r_mixer, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool22.not = icmp eq i32 %handle, 0
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #9
  %iova = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %iova, align 8
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev24, i32 noundef 4) #9
  br label %set_cursor

if.end26:                                         ; preds = %if.end21
  %call27 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %handle) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aspace, align 4
  %iova32 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 2
  %call33 = tail call i32 @msm_gem_get_and_pin_iova(ptr noundef nonnull %call27, ptr noundef %22, ptr noundef %iova32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %cursor31 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i121 = tail call i32 @__pm_runtime_resume(ptr noundef %dev37, i32 noundef 4) #9
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cursor31) #9
  %scanout_bo = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %scanout_bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scanout_bo, align 4
  store ptr %call27, ptr %scanout_bo, align 4
  %width54 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 3
  %25 = ptrtoint ptr %width54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %width, ptr %width54, align 8
  %height56 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 4
  %26 = ptrtoint ptr %height56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %height, ptr %height56, align 4
  tail call fastcc void @mdp5_crtc_restore_cursor(ptr noundef %crtc)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cursor31, i32 noundef %call45) #9
  br label %set_cursor

set_cursor:                                       ; preds = %if.end36, %if.then23
  %old_bo.0 = phi ptr [ %24, %if.end36 ], [ null, %if.then23 ]
  %27 = xor i1 %tobool22.not, true
  %call60 = tail call i32 @mdp5_ctl_set_cursor(ptr noundef nonnull %17, ptr noundef %pipeline4, i32 noundef 0, i1 noundef zeroext %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %set_cursor
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev63, align 4
  %cond = select i1 %tobool22.not, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond, i32 noundef %call60) #9
  br label %end

if.end66:                                         ; preds = %set_cursor
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %ctl1.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctl1.i, align 4
  %pipeline2.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %31, i32 0, i32 2
  %defer_start.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %31, i32 0, i32 7
  %34 = ptrtoint ptr %defer_start.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %defer_start.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %defer_start.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %defer_start.i, align 1
  %name.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %37 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %38, i32 noundef %call8) #9
  %call.i122 = tail call i32 @mdp5_ctl_commit(ptr noundef %33, ptr noundef %pipeline2.i, i32 noundef %call8, i1 noundef zeroext %tobool.not.i) #9
  br label %end

end:                                              ; preds = %if.end66, %if.then62
  %dev68 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i123 = tail call i32 @__pm_runtime_idle(ptr noundef %dev68, i32 noundef 4) #9
  %tobool70.not = icmp eq ptr %old_bo.0, null
  br i1 %tobool70.not, label %end.cleanup_crit_edge, label %if.then71

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  %unref_cursor_work = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 7
  tail call void @drm_flip_work_queue(ptr noundef %unref_cursor_work, ptr noundef nonnull %old_bo.0) #9
  %pending1.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending1.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %pending1.i, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending1.i, ptr %pending1.i, i32 1, ptr elementtype(i32) %pending1.i) #9, !srcloc !112
  %40 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kms.i.i, align 4
  %vblank.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 8
  tail call void @mdp_irq_register(ptr noundef %45, ptr noundef %vblank.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %end.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11, %do.end
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %do.end ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -2, %if.end26.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ %call60, %if.then71 ], [ %call60, %end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_cursor_move(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %call4 = tail call i32 @mdp_ctl_flush_mask_cursor(i32 noundef 0) #9
  %lm_cursor_enabled = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 12
  %8 = ptrtoint ptr %lm_cursor_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lm_cursor_enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %r_mixer = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %r_mixer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %r_mixer, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enable, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end16, !prof !103

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %cursor = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13
  %width = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 3
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 8
  %sub = sub i32 0, %21
  %22 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %x)
  %x19 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 5
  %23 = ptrtoint ptr %x19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %x19, align 8
  %height = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 4
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %sub21 = sub i32 0, %25
  %26 = tail call i32 @llvm.smax.i32(i32 %sub21, i32 %y)
  %y29 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 6
  %27 = ptrtoint ptr %y29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %y29, align 4
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev30, i32 noundef 4) #9
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cursor) #9
  tail call fastcc void @mdp5_crtc_restore_cursor(ptr noundef %crtc)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cursor, i32 noundef %call38) #9
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %ctl1.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctl1.i, align 4
  %pipeline2.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %31, i32 0, i32 2
  %defer_start.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %31, i32 0, i32 7
  %34 = ptrtoint ptr %defer_start.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %defer_start.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %defer_start.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %defer_start.i, align 1
  %name.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %37 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %38, i32 noundef %call4) #9
  %call.i74 = tail call i32 @mdp5_ctl_commit(ptr noundef %33, ptr noundef %pipeline2.i, i32 noundef %call4, i1 noundef zeroext %tobool.not.i) #9
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev47 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %call.i75 = tail call i32 @__pm_runtime_idle(ptr noundef %dev47, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_cursor(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdp5_crtc_restore_cursor(ptr noundef %crtc) unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_format_info(i32 noundef 875713089) #9
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %cursor = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %8 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %cursor, align 4
  %9 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body9, label %do.end14, !prof !103

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 879, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

do.end14:                                         ; preds = %entry
  %mixer = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer, align 4
  %lm15 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %lm15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lm15, align 4
  %x17 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %x17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %x17, align 8
  %y19 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 6
  %16 = ptrtoint ptr %y19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y19, align 4
  %width21 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 3
  %18 = ptrtoint ptr %width21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width21, align 8
  %height23 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 4
  %20 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height23, align 4
  %22 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %25 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %28 to i32
  %sub.i = sub nsw i32 %conv.i, %15
  %29 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub.i) #9
  br label %get_roi.exit

if.else.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sub22.i = add i32 %19, %15
  br label %get_roi.exit

get_roi.exit:                                     ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %sub22.i, %if.else.i ], [ %29, %if.then.i ]
  %conv2.i = zext i16 %26 to i32
  %sub52.i = add i32 %21, %17
  %sub30.i = sub nsw i32 %conv2.i, %17
  %30 = tail call i32 @llvm.umin.i32(i32 %21, i32 %sub30.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2480.i = icmp slt i32 %17, 0
  %storemerge79.i = select i1 %cmp2480.i, i32 %sub52.i, i32 %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  %sub = sub i32 0, %15
  %31 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  %src_x.0 = select i1 %cmp, i32 %sub, i32 0
  %sub46 = sub i32 0, %17
  %32 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %src_y.0 = select i1 %cmp2480.i, i32 %sub46, i32 0
  %conv = zext i8 %24 to i32
  %mul = mul i32 %19, %conv
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %34, i32 noundef %31, i32 noundef %32, i32 noundef %storemerge.i, i32 noundef %storemerge79.i, i32 noundef %src_x.0, i32 noundef %src_y.0) #9
  %35 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
    i32 5, label %sw.bb17.i.i
  ]

sw.bb.i.i:                                        ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_STRIDE.exit

sw.bb1.i.i:                                       ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %37 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %37, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_STRIDE.exit

sw.bb5.i.i:                                       ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %38 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %38, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_STRIDE.exit

sw.bb9.i.i:                                       ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %39 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_STRIDE.exit

sw.bb13.i.i:                                      ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %40 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %40, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_STRIDE.exit

sw.bb17.i.i:                                      ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_STRIDE.exit

do.body.i.i:                                      ; preds = %get_roi.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_STRIDE.exit:                   ; preds = %sw.bb17.i.i, %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx20.i.i, %sw.bb17.i.i ], [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  %42 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.i = add i32 %retval.0.i.i, 220
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 26
  %43 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i114 = icmp slt i32 %44, 1
  br i1 %cmp.i114, label %do.end.i, label %REG_MDP5_LM_CURSOR_STRIDE.exit.mdp5_write.exit_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_STRIDE.exit.mdp5_write.exit_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_STRIDE.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %REG_MDP5_LM_CURSOR_STRIDE.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %REG_MDP5_LM_CURSOR_STRIDE.exit.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 15
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 %add.i
  tail call void @msm_writel(i32 noundef %mul, ptr noundef %add.ptr.i) #9
  %47 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %13, label %do.body.i.i127 [
    i32 0, label %sw.bb.i.i116
    i32 1, label %sw.bb1.i.i118
    i32 2, label %sw.bb5.i.i120
    i32 3, label %sw.bb9.i.i122
    i32 4, label %sw.bb13.i.i124
    i32 5, label %sw.bb17.i.i126
  ]

sw.bb.i.i116:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %48 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i115 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %48, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_FORMAT.exit

sw.bb1.i.i118:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %49 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i117 = getelementptr %struct.mdp5_cfg_hw, ptr %49, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_FORMAT.exit

sw.bb5.i.i120:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %50 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i119 = getelementptr %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_FORMAT.exit

sw.bb9.i.i122:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %51 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i121 = getelementptr %struct.mdp5_cfg_hw, ptr %51, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_FORMAT.exit

sw.bb13.i.i124:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %52 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i123 = getelementptr %struct.mdp5_cfg_hw, ptr %52, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_FORMAT.exit

sw.bb17.i.i126:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %53 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i125 = getelementptr %struct.mdp5_cfg_hw, ptr %53, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_FORMAT.exit

do.body.i.i127:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_FORMAT.exit:                   ; preds = %sw.bb17.i.i126, %sw.bb13.i.i124, %sw.bb9.i.i122, %sw.bb5.i.i120, %sw.bb1.i.i118, %sw.bb.i.i116
  %retval.0.in.i.i128 = phi ptr [ %arrayidx20.i.i125, %sw.bb17.i.i126 ], [ %arrayidx16.i.i123, %sw.bb13.i.i124 ], [ %arrayidx12.i.i121, %sw.bb9.i.i122 ], [ %arrayidx8.i.i119, %sw.bb5.i.i120 ], [ %arrayidx4.i.i117, %sw.bb1.i.i118 ], [ %base.i.i115, %sw.bb.i.i116 ]
  %54 = ptrtoint ptr %retval.0.in.i.i128 to i32
  call void @__asan_load4_noabort(i32 %54)
  %retval.0.i.i129 = load i32, ptr %retval.0.in.i.i128, align 4
  %add.i130 = add i32 %retval.0.i.i129, 236
  %55 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i132 = icmp slt i32 %56, 1
  br i1 %cmp.i132, label %do.end.i133, label %REG_MDP5_LM_CURSOR_FORMAT.exit.mdp5_write.exit136_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_FORMAT.exit.mdp5_write.exit136_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_FORMAT.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit136

do.end.i133:                                      ; preds = %REG_MDP5_LM_CURSOR_FORMAT.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit136

mdp5_write.exit136:                               ; preds = %do.end.i133, %REG_MDP5_LM_CURSOR_FORMAT.exit.mdp5_write.exit136_crit_edge
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %58, i32 %add.i130
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i135) #9
  %59 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %13, label %do.body.i.i149 [
    i32 0, label %sw.bb.i.i138
    i32 1, label %sw.bb1.i.i140
    i32 2, label %sw.bb5.i.i142
    i32 3, label %sw.bb9.i.i144
    i32 4, label %sw.bb13.i.i146
    i32 5, label %sw.bb17.i.i148
  ]

sw.bb.i.i138:                                     ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %60 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i137 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %60, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit

sw.bb1.i.i140:                                    ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %61 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i139 = getelementptr %struct.mdp5_cfg_hw, ptr %61, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit

sw.bb5.i.i142:                                    ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %62 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i141 = getelementptr %struct.mdp5_cfg_hw, ptr %62, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit

sw.bb9.i.i144:                                    ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %63 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i143 = getelementptr %struct.mdp5_cfg_hw, ptr %63, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit

sw.bb13.i.i146:                                   ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %64 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i145 = getelementptr %struct.mdp5_cfg_hw, ptr %64, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit

sw.bb17.i.i148:                                   ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %65 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i147 = getelementptr %struct.mdp5_cfg_hw, ptr %65, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit

do.body.i.i149:                                   ; preds = %mdp5_write.exit136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_IMG_SIZE.exit:                 ; preds = %sw.bb17.i.i148, %sw.bb13.i.i146, %sw.bb9.i.i144, %sw.bb5.i.i142, %sw.bb1.i.i140, %sw.bb.i.i138
  %retval.0.in.i.i150 = phi ptr [ %arrayidx20.i.i147, %sw.bb17.i.i148 ], [ %arrayidx16.i.i145, %sw.bb13.i.i146 ], [ %arrayidx12.i.i143, %sw.bb9.i.i144 ], [ %arrayidx8.i.i141, %sw.bb5.i.i142 ], [ %arrayidx4.i.i139, %sw.bb1.i.i140 ], [ %base.i.i137, %sw.bb.i.i138 ]
  %66 = ptrtoint ptr %retval.0.in.i.i150 to i32
  call void @__asan_load4_noabort(i32 %66)
  %retval.0.i.i151 = load i32, ptr %retval.0.in.i.i150, align 4
  %add.i152 = add i32 %retval.0.i.i151, 224
  %shl.i = shl i32 %21, 16
  %and.i = and i32 %19, 65535
  %or = or i32 %shl.i, %and.i
  %67 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i154 = icmp slt i32 %68, 1
  br i1 %cmp.i154, label %do.end.i155, label %REG_MDP5_LM_CURSOR_IMG_SIZE.exit.mdp5_write.exit158_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_IMG_SIZE.exit.mdp5_write.exit158_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_IMG_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit158

do.end.i155:                                      ; preds = %REG_MDP5_LM_CURSOR_IMG_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit158

mdp5_write.exit158:                               ; preds = %do.end.i155, %REG_MDP5_LM_CURSOR_IMG_SIZE.exit.mdp5_write.exit158_crit_edge
  %69 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %70, i32 %add.i152
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i157) #9
  %71 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %13, label %do.body.i.i171 [
    i32 0, label %sw.bb.i.i160
    i32 1, label %sw.bb1.i.i162
    i32 2, label %sw.bb5.i.i164
    i32 3, label %sw.bb9.i.i166
    i32 4, label %sw.bb13.i.i168
    i32 5, label %sw.bb17.i.i170
  ]

sw.bb.i.i160:                                     ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %72 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i159 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %72, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_SIZE.exit

sw.bb1.i.i162:                                    ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %73 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i161 = getelementptr %struct.mdp5_cfg_hw, ptr %73, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_SIZE.exit

sw.bb5.i.i164:                                    ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %74 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i163 = getelementptr %struct.mdp5_cfg_hw, ptr %74, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_SIZE.exit

sw.bb9.i.i166:                                    ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %75 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i165 = getelementptr %struct.mdp5_cfg_hw, ptr %75, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_SIZE.exit

sw.bb13.i.i168:                                   ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %76 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i167 = getelementptr %struct.mdp5_cfg_hw, ptr %76, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_SIZE.exit

sw.bb17.i.i170:                                   ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %77 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i169 = getelementptr %struct.mdp5_cfg_hw, ptr %77, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_SIZE.exit

do.body.i.i171:                                   ; preds = %mdp5_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_SIZE.exit:                     ; preds = %sw.bb17.i.i170, %sw.bb13.i.i168, %sw.bb9.i.i166, %sw.bb5.i.i164, %sw.bb1.i.i162, %sw.bb.i.i160
  %retval.0.in.i.i172 = phi ptr [ %arrayidx20.i.i169, %sw.bb17.i.i170 ], [ %arrayidx16.i.i167, %sw.bb13.i.i168 ], [ %arrayidx12.i.i165, %sw.bb9.i.i166 ], [ %arrayidx8.i.i163, %sw.bb5.i.i164 ], [ %arrayidx4.i.i161, %sw.bb1.i.i162 ], [ %base.i.i159, %sw.bb.i.i160 ]
  %78 = ptrtoint ptr %retval.0.in.i.i172 to i32
  call void @__asan_load4_noabort(i32 %78)
  %retval.0.i.i173 = load i32, ptr %retval.0.in.i.i172, align 4
  %add.i174 = add i32 %retval.0.i.i173, 228
  %shl.i175 = shl i32 %storemerge79.i, 16
  %and.i176 = and i32 %storemerge.i, 65535
  %or61 = or i32 %and.i176, %shl.i175
  %79 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.i178 = icmp slt i32 %80, 1
  br i1 %cmp.i178, label %do.end.i179, label %REG_MDP5_LM_CURSOR_SIZE.exit.mdp5_write.exit182_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_SIZE.exit.mdp5_write.exit182_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit182

do.end.i179:                                      ; preds = %REG_MDP5_LM_CURSOR_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit182

mdp5_write.exit182:                               ; preds = %do.end.i179, %REG_MDP5_LM_CURSOR_SIZE.exit.mdp5_write.exit182_crit_edge
  %81 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %82, i32 %add.i174
  tail call void @msm_writel(i32 noundef %or61, ptr noundef %add.ptr.i181) #9
  %83 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %13, label %do.body.i.i195 [
    i32 0, label %sw.bb.i.i184
    i32 1, label %sw.bb1.i.i186
    i32 2, label %sw.bb5.i.i188
    i32 3, label %sw.bb9.i.i190
    i32 4, label %sw.bb13.i.i192
    i32 5, label %sw.bb17.i.i194
  ]

sw.bb.i.i184:                                     ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %84 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i183 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %84, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_START_XY.exit

sw.bb1.i.i186:                                    ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %85 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i185 = getelementptr %struct.mdp5_cfg_hw, ptr %85, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_START_XY.exit

sw.bb5.i.i188:                                    ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %86 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i187 = getelementptr %struct.mdp5_cfg_hw, ptr %86, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_START_XY.exit

sw.bb9.i.i190:                                    ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %87 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i189 = getelementptr %struct.mdp5_cfg_hw, ptr %87, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_START_XY.exit

sw.bb13.i.i192:                                   ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %88 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i191 = getelementptr %struct.mdp5_cfg_hw, ptr %88, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_START_XY.exit

sw.bb17.i.i194:                                   ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %89 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i193 = getelementptr %struct.mdp5_cfg_hw, ptr %89, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_START_XY.exit

do.body.i.i195:                                   ; preds = %mdp5_write.exit182
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_START_XY.exit:                 ; preds = %sw.bb17.i.i194, %sw.bb13.i.i192, %sw.bb9.i.i190, %sw.bb5.i.i188, %sw.bb1.i.i186, %sw.bb.i.i184
  %retval.0.in.i.i196 = phi ptr [ %arrayidx20.i.i193, %sw.bb17.i.i194 ], [ %arrayidx16.i.i191, %sw.bb13.i.i192 ], [ %arrayidx12.i.i189, %sw.bb9.i.i190 ], [ %arrayidx8.i.i187, %sw.bb5.i.i188 ], [ %arrayidx4.i.i185, %sw.bb1.i.i186 ], [ %base.i.i183, %sw.bb.i.i184 ]
  %90 = ptrtoint ptr %retval.0.in.i.i196 to i32
  call void @__asan_load4_noabort(i32 %90)
  %retval.0.i.i197 = load i32, ptr %retval.0.in.i.i196, align 4
  %add.i198 = add i32 %retval.0.i.i197, 244
  %shl.i199 = shl i32 %32, 16
  %and.i200 = and i32 %31, 65535
  %or65 = or i32 %shl.i199, %and.i200
  %91 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp.i202 = icmp slt i32 %92, 1
  br i1 %cmp.i202, label %do.end.i203, label %REG_MDP5_LM_CURSOR_START_XY.exit.mdp5_write.exit206_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_START_XY.exit.mdp5_write.exit206_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_START_XY.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit206

do.end.i203:                                      ; preds = %REG_MDP5_LM_CURSOR_START_XY.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit206

mdp5_write.exit206:                               ; preds = %do.end.i203, %REG_MDP5_LM_CURSOR_START_XY.exit.mdp5_write.exit206_crit_edge
  %93 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %94, i32 %add.i198
  tail call void @msm_writel(i32 noundef %or65, ptr noundef %add.ptr.i205) #9
  %95 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %13, label %do.body.i.i219 [
    i32 0, label %sw.bb.i.i208
    i32 1, label %sw.bb1.i.i210
    i32 2, label %sw.bb5.i.i212
    i32 3, label %sw.bb9.i.i214
    i32 4, label %sw.bb13.i.i216
    i32 5, label %sw.bb17.i.i218
  ]

sw.bb.i.i208:                                     ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %96 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i207 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %96, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_XY.exit

sw.bb1.i.i210:                                    ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i209 = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_XY.exit

sw.bb5.i.i212:                                    ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %98 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i211 = getelementptr %struct.mdp5_cfg_hw, ptr %98, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_XY.exit

sw.bb9.i.i214:                                    ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i213 = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_XY.exit

sw.bb13.i.i216:                                   ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i215 = getelementptr %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_XY.exit

sw.bb17.i.i218:                                   ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %101 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i217 = getelementptr %struct.mdp5_cfg_hw, ptr %101, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_XY.exit

do.body.i.i219:                                   ; preds = %mdp5_write.exit206
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_XY.exit:                       ; preds = %sw.bb17.i.i218, %sw.bb13.i.i216, %sw.bb9.i.i214, %sw.bb5.i.i212, %sw.bb1.i.i210, %sw.bb.i.i208
  %retval.0.in.i.i220 = phi ptr [ %arrayidx20.i.i217, %sw.bb17.i.i218 ], [ %arrayidx16.i.i215, %sw.bb13.i.i216 ], [ %arrayidx12.i.i213, %sw.bb9.i.i214 ], [ %arrayidx8.i.i211, %sw.bb5.i.i212 ], [ %arrayidx4.i.i209, %sw.bb1.i.i210 ], [ %base.i.i207, %sw.bb.i.i208 ]
  %102 = ptrtoint ptr %retval.0.in.i.i220 to i32
  call void @__asan_load4_noabort(i32 %102)
  %retval.0.i.i221 = load i32, ptr %retval.0.in.i.i220, align 4
  %add.i222 = add i32 %retval.0.i.i221, 232
  %shl.i223 = shl i32 %src_y.0, 16
  %and.i224 = and i32 %src_x.0, 65535
  %or69 = or i32 %shl.i223, %and.i224
  %103 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.i226 = icmp slt i32 %104, 1
  br i1 %cmp.i226, label %do.end.i227, label %REG_MDP5_LM_CURSOR_XY.exit.mdp5_write.exit230_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_XY.exit.mdp5_write.exit230_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_XY.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit230

do.end.i227:                                      ; preds = %REG_MDP5_LM_CURSOR_XY.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit230

mdp5_write.exit230:                               ; preds = %do.end.i227, %REG_MDP5_LM_CURSOR_XY.exit.mdp5_write.exit230_crit_edge
  %105 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %106, i32 %add.i222
  tail call void @msm_writel(i32 noundef %or69, ptr noundef %add.ptr.i229) #9
  %107 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %13, label %do.body.i.i243 [
    i32 0, label %sw.bb.i.i232
    i32 1, label %sw.bb1.i.i234
    i32 2, label %sw.bb5.i.i236
    i32 3, label %sw.bb9.i.i238
    i32 4, label %sw.bb13.i.i240
    i32 5, label %sw.bb17.i.i242
  ]

sw.bb.i.i232:                                     ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %108 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i231 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %108, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit

sw.bb1.i.i234:                                    ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i233 = getelementptr %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit

sw.bb5.i.i236:                                    ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %110 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i235 = getelementptr %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit

sw.bb9.i.i238:                                    ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i237 = getelementptr %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit

sw.bb13.i.i240:                                   ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i239 = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit

sw.bb17.i.i242:                                   ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %113 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i241 = getelementptr %struct.mdp5_cfg_hw, ptr %113, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit

do.body.i.i243:                                   ; preds = %mdp5_write.exit230
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_BASE_ADDR.exit:                ; preds = %sw.bb17.i.i242, %sw.bb13.i.i240, %sw.bb9.i.i238, %sw.bb5.i.i236, %sw.bb1.i.i234, %sw.bb.i.i232
  %retval.0.in.i.i244 = phi ptr [ %arrayidx20.i.i241, %sw.bb17.i.i242 ], [ %arrayidx16.i.i239, %sw.bb13.i.i240 ], [ %arrayidx12.i.i237, %sw.bb9.i.i238 ], [ %arrayidx8.i.i235, %sw.bb5.i.i236 ], [ %arrayidx4.i.i233, %sw.bb1.i.i234 ], [ %base.i.i231, %sw.bb.i.i232 ]
  %114 = ptrtoint ptr %retval.0.in.i.i244 to i32
  call void @__asan_load4_noabort(i32 %114)
  %retval.0.i.i245 = load i32, ptr %retval.0.in.i.i244, align 4
  %add.i246 = add i32 %retval.0.i.i245, 240
  %iova = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 2
  %115 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %iova, align 8
  %conv72 = trunc i64 %116 to i32
  %117 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp.i248 = icmp slt i32 %118, 1
  br i1 %cmp.i248, label %do.end.i249, label %REG_MDP5_LM_CURSOR_BASE_ADDR.exit.mdp5_write.exit252_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_BASE_ADDR.exit.mdp5_write.exit252_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_BASE_ADDR.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit252

do.end.i249:                                      ; preds = %REG_MDP5_LM_CURSOR_BASE_ADDR.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit252

mdp5_write.exit252:                               ; preds = %do.end.i249, %REG_MDP5_LM_CURSOR_BASE_ADDR.exit.mdp5_write.exit252_crit_edge
  %119 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %120, i32 %add.i246
  tail call void @msm_writel(i32 noundef %conv72, ptr noundef %add.ptr.i251) #9
  %121 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %13, label %do.body.i.i265 [
    i32 0, label %sw.bb.i.i254
    i32 1, label %sw.bb1.i.i256
    i32 2, label %sw.bb5.i.i258
    i32 3, label %sw.bb9.i.i260
    i32 4, label %sw.bb13.i.i262
    i32 5, label %sw.bb17.i.i264
  ]

sw.bb.i.i254:                                     ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %122 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i253 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %122, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit

sw.bb1.i.i256:                                    ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %123 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i255 = getelementptr %struct.mdp5_cfg_hw, ptr %123, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit

sw.bb5.i.i258:                                    ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %124 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i257 = getelementptr %struct.mdp5_cfg_hw, ptr %124, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit

sw.bb9.i.i260:                                    ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %125 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i259 = getelementptr %struct.mdp5_cfg_hw, ptr %125, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit

sw.bb13.i.i262:                                   ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %126 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i261 = getelementptr %struct.mdp5_cfg_hw, ptr %126, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit

sw.bb17.i.i264:                                   ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %127 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i263 = getelementptr %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit

do.body.i.i265:                                   ; preds = %mdp5_write.exit252
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit:             ; preds = %sw.bb17.i.i264, %sw.bb13.i.i262, %sw.bb9.i.i260, %sw.bb5.i.i258, %sw.bb1.i.i256, %sw.bb.i.i254
  %retval.0.in.i.i266 = phi ptr [ %arrayidx20.i.i263, %sw.bb17.i.i264 ], [ %arrayidx16.i.i261, %sw.bb13.i.i262 ], [ %arrayidx12.i.i259, %sw.bb9.i.i260 ], [ %arrayidx8.i.i257, %sw.bb5.i.i258 ], [ %arrayidx4.i.i255, %sw.bb1.i.i256 ], [ %base.i.i253, %sw.bb.i.i254 ]
  %128 = ptrtoint ptr %retval.0.in.i.i266 to i32
  call void @__asan_load4_noabort(i32 %128)
  %retval.0.i.i267 = load i32, ptr %retval.0.in.i.i266, align 4
  %129 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp.i270 = icmp slt i32 %130, 1
  br i1 %cmp.i270, label %do.end.i271, label %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit.mdp5_write.exit274_crit_edge, !prof !103

REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit.mdp5_write.exit274_crit_edge: ; preds = %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit274

do.end.i271:                                      ; preds = %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit274

mdp5_write.exit274:                               ; preds = %do.end.i271, %REG_MDP5_LM_CURSOR_BLEND_CONFIG.exit.mdp5_write.exit274_crit_edge
  %add.i268 = add i32 %retval.0.i.i267, 248
  %131 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %132, i32 %add.i268
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr.i273) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_cursor(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_mode_set_nofb(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %mixer4 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %mixer4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer4, align 4
  %r_mixer6 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %r_mixer6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r_mixer6, align 4
  %lm7 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %lm7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lm7, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end32, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end32:                                         ; preds = %entry
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %name34 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 31
  %call35 = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #9
  %16 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %19 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hsync_start, align 2
  %conv36 = zext i16 %21 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hsync_end, align 4
  %conv37 = zext i16 %23 to i32
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %htotal, align 2
  %conv38 = zext i16 %25 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay, align 2
  %conv39 = zext i16 %27 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 7
  %28 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsync_start, align 4
  %conv40 = zext i16 %29 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 8
  %30 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsync_end, align 2
  %conv41 = zext i16 %31 to i32
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %32 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vtotal, align 4
  %conv42 = zext i16 %33 to i32
  %type = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 28
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type, align 2
  %conv43 = zext i8 %35 to i32
  %flags44 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %36 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef %15, ptr noundef %name34, i32 noundef %call35, i32 noundef %17, i32 noundef %conv, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %37) #9
  %38 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hdisplay, align 4
  %conv46 = zext i16 %39 to i32
  %tobool47.not = icmp eq ptr %11, null
  %not.tobool47.not = xor i1 %tobool47.not, true
  %div131 = zext i1 %not.tobool47.not to i32
  %spec.select = lshr i32 %conv46, %div131
  %lm_lock = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 3
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lm_lock) #9
  %40 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %13, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
    i32 5, label %sw.bb17.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_OUT_SIZE.exit

sw.bb1.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %42 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %42, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_OUT_SIZE.exit

sw.bb5.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %43 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %43, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_OUT_SIZE.exit

sw.bb9.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %44 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %44, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_OUT_SIZE.exit

sw.bb13.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %45 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_OUT_SIZE.exit

sw.bb17.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %46 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %46, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_OUT_SIZE.exit

do.body.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_OUT_SIZE.exit:                        ; preds = %sw.bb17.i.i, %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx20.i.i, %sw.bb17.i.i ], [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %base.i.i, %sw.bb.i.i ]
  %47 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.i = add i32 %retval.0.i.i, 4
  %48 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vdisplay, align 2
  %conv63 = zext i16 %49 to i32
  %shl.i = shl nuw i32 %conv63, 16
  %or = or i32 %shl.i, %spec.select
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 26
  %50 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i = icmp slt i32 %51, 1
  br i1 %cmp.i, label %do.end.i, label %REG_MDP5_LM_OUT_SIZE.exit.mdp5_write.exit_crit_edge, !prof !103

REG_MDP5_LM_OUT_SIZE.exit.mdp5_write.exit_crit_edge: ; preds = %REG_MDP5_LM_OUT_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %REG_MDP5_LM_OUT_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %REG_MDP5_LM_OUT_SIZE.exit.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 15
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %add.i
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i) #9
  %54 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %13, label %do.body.i.i144 [
    i32 0, label %sw.bb.i.i133
    i32 1, label %sw.bb1.i.i135
    i32 2, label %sw.bb5.i.i137
    i32 3, label %sw.bb9.i.i139
    i32 4, label %sw.bb13.i.i141
    i32 5, label %sw.bb17.i.i143
  ]

sw.bb.i.i133:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %55 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i132 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %55, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit

sw.bb1.i.i135:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %56 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i134 = getelementptr %struct.mdp5_cfg_hw, ptr %56, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit

sw.bb5.i.i137:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %57 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i136 = getelementptr %struct.mdp5_cfg_hw, ptr %57, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit

sw.bb9.i.i139:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %58 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i138 = getelementptr %struct.mdp5_cfg_hw, ptr %58, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit

sw.bb13.i.i141:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %59 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i140 = getelementptr %struct.mdp5_cfg_hw, ptr %59, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit

sw.bb17.i.i143:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %60 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i142 = getelementptr %struct.mdp5_cfg_hw, ptr %60, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit

do.body.i.i144:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit:                 ; preds = %sw.bb17.i.i143, %sw.bb13.i.i141, %sw.bb9.i.i139, %sw.bb5.i.i137, %sw.bb1.i.i135, %sw.bb.i.i133
  %retval.0.in.i.i145 = phi ptr [ %arrayidx20.i.i142, %sw.bb17.i.i143 ], [ %arrayidx16.i.i140, %sw.bb13.i.i141 ], [ %arrayidx12.i.i138, %sw.bb9.i.i139 ], [ %arrayidx8.i.i136, %sw.bb5.i.i137 ], [ %arrayidx4.i.i134, %sw.bb1.i.i135 ], [ %base.i.i132, %sw.bb.i.i133 ]
  %61 = ptrtoint ptr %retval.0.in.i.i145 to i32
  call void @__asan_load4_noabort(i32 %61)
  %retval.0.i.i146 = load i32, ptr %retval.0.in.i.i145, align 4
  %62 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i148 = icmp slt i32 %63, 1
  br i1 %cmp.i148, label %do.end.i149, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.mdp5_read.exit_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit.mdp5_read.exit_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_read.exit

do.end.i149:                                      ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_read.exit

mdp5_read.exit:                                   ; preds = %do.end.i149, %REG_MDP5_LM_BLEND_COLOR_OUT.exit.mdp5_read.exit_crit_edge
  %64 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %65, i32 %retval.0.i.i146
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i151) #9
  %and = and i32 %call.i, 2147483647
  %66 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %13, label %do.body.i.i164 [
    i32 0, label %sw.bb.i.i153
    i32 1, label %sw.bb1.i.i155
    i32 2, label %sw.bb5.i.i157
    i32 3, label %sw.bb9.i.i159
    i32 4, label %sw.bb13.i.i161
    i32 5, label %sw.bb17.i.i163
  ]

sw.bb.i.i153:                                     ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %67 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i152 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %67, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167

sw.bb1.i.i155:                                    ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %68 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i154 = getelementptr %struct.mdp5_cfg_hw, ptr %68, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167

sw.bb5.i.i157:                                    ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %69 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i156 = getelementptr %struct.mdp5_cfg_hw, ptr %69, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167

sw.bb9.i.i159:                                    ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %70 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i158 = getelementptr %struct.mdp5_cfg_hw, ptr %70, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167

sw.bb13.i.i161:                                   ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %71 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i160 = getelementptr %struct.mdp5_cfg_hw, ptr %71, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167

sw.bb17.i.i163:                                   ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %72 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i162 = getelementptr %struct.mdp5_cfg_hw, ptr %72, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167

do.body.i.i164:                                   ; preds = %mdp5_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit167:              ; preds = %sw.bb17.i.i163, %sw.bb13.i.i161, %sw.bb9.i.i159, %sw.bb5.i.i157, %sw.bb1.i.i155, %sw.bb.i.i153
  %retval.0.in.i.i165 = phi ptr [ %arrayidx20.i.i162, %sw.bb17.i.i163 ], [ %arrayidx16.i.i160, %sw.bb13.i.i161 ], [ %arrayidx12.i.i158, %sw.bb9.i.i159 ], [ %arrayidx8.i.i156, %sw.bb5.i.i157 ], [ %arrayidx4.i.i154, %sw.bb1.i.i155 ], [ %base.i.i152, %sw.bb.i.i153 ]
  %73 = ptrtoint ptr %retval.0.in.i.i165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i.i166 = load i32, ptr %retval.0.in.i.i165, align 4
  %74 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i169 = icmp slt i32 %75, 1
  br i1 %cmp.i169, label %do.end.i170, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit167.mdp5_write.exit173_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit167.mdp5_write.exit173_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit167
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit173

do.end.i170:                                      ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit167
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit173

mdp5_write.exit173:                               ; preds = %do.end.i170, %REG_MDP5_LM_BLEND_COLOR_OUT.exit167.mdp5_write.exit173_crit_edge
  %76 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %77, i32 %retval.0.i.i166
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i172) #9
  br i1 %tobool47.not, label %mdp5_write.exit173.if.end81_crit_edge, label %if.then69

mdp5_write.exit173.if.end81_crit_edge:            ; preds = %mdp5_write.exit173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then69:                                        ; preds = %mdp5_write.exit173
  %lm70 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %11, i32 0, i32 2
  %78 = ptrtoint ptr %lm70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lm70, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %79, label %do.body.i.i186 [
    i32 0, label %sw.bb.i.i175
    i32 1, label %sw.bb1.i.i177
    i32 2, label %sw.bb5.i.i179
    i32 3, label %sw.bb9.i.i181
    i32 4, label %sw.bb13.i.i183
    i32 5, label %sw.bb17.i.i185
  ]

sw.bb.i.i175:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %81 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i174 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %81, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_OUT_SIZE.exit190

sw.bb1.i.i177:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %82 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i176 = getelementptr %struct.mdp5_cfg_hw, ptr %82, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_OUT_SIZE.exit190

sw.bb5.i.i179:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %83 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i178 = getelementptr %struct.mdp5_cfg_hw, ptr %83, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_OUT_SIZE.exit190

sw.bb9.i.i181:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %84 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i180 = getelementptr %struct.mdp5_cfg_hw, ptr %84, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_OUT_SIZE.exit190

sw.bb13.i.i183:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %85 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i182 = getelementptr %struct.mdp5_cfg_hw, ptr %85, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_OUT_SIZE.exit190

sw.bb17.i.i185:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %86 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i184 = getelementptr %struct.mdp5_cfg_hw, ptr %86, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_OUT_SIZE.exit190

do.body.i.i186:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_OUT_SIZE.exit190:                     ; preds = %sw.bb17.i.i185, %sw.bb13.i.i183, %sw.bb9.i.i181, %sw.bb5.i.i179, %sw.bb1.i.i177, %sw.bb.i.i175
  %retval.0.in.i.i187 = phi ptr [ %arrayidx20.i.i184, %sw.bb17.i.i185 ], [ %arrayidx16.i.i182, %sw.bb13.i.i183 ], [ %arrayidx12.i.i180, %sw.bb9.i.i181 ], [ %arrayidx8.i.i178, %sw.bb5.i.i179 ], [ %arrayidx4.i.i176, %sw.bb1.i.i177 ], [ %base.i.i174, %sw.bb.i.i175 ]
  %87 = ptrtoint ptr %retval.0.in.i.i187 to i32
  call void @__asan_load4_noabort(i32 %87)
  %retval.0.i.i188 = load i32, ptr %retval.0.in.i.i187, align 4
  %add.i189 = add i32 %retval.0.i.i188, 4
  %88 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vdisplay, align 2
  %conv74 = zext i16 %89 to i32
  %shl.i192 = shl nuw i32 %conv74, 16
  %or76 = or i32 %shl.i192, %spec.select
  %90 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i194 = icmp slt i32 %91, 1
  br i1 %cmp.i194, label %do.end.i195, label %REG_MDP5_LM_OUT_SIZE.exit190.mdp5_write.exit198_crit_edge, !prof !103

REG_MDP5_LM_OUT_SIZE.exit190.mdp5_write.exit198_crit_edge: ; preds = %REG_MDP5_LM_OUT_SIZE.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit198

do.end.i195:                                      ; preds = %REG_MDP5_LM_OUT_SIZE.exit190
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit198

mdp5_write.exit198:                               ; preds = %do.end.i195, %REG_MDP5_LM_OUT_SIZE.exit190.mdp5_write.exit198_crit_edge
  %92 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %93, i32 %add.i189
  tail call void @msm_writel(i32 noundef %or76, ptr noundef %add.ptr.i197) #9
  %94 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %79, label %do.body.i.i211 [
    i32 0, label %sw.bb.i.i200
    i32 1, label %sw.bb1.i.i202
    i32 2, label %sw.bb5.i.i204
    i32 3, label %sw.bb9.i.i206
    i32 4, label %sw.bb13.i.i208
    i32 5, label %sw.bb17.i.i210
  ]

sw.bb.i.i200:                                     ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %95 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i199 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %95, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214

sw.bb1.i.i202:                                    ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %96 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i201 = getelementptr %struct.mdp5_cfg_hw, ptr %96, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214

sw.bb5.i.i204:                                    ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i203 = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214

sw.bb9.i.i206:                                    ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %98 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i205 = getelementptr %struct.mdp5_cfg_hw, ptr %98, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214

sw.bb13.i.i208:                                   ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i207 = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214

sw.bb17.i.i210:                                   ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i209 = getelementptr %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214

do.body.i.i211:                                   ; preds = %mdp5_write.exit198
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit214:              ; preds = %sw.bb17.i.i210, %sw.bb13.i.i208, %sw.bb9.i.i206, %sw.bb5.i.i204, %sw.bb1.i.i202, %sw.bb.i.i200
  %retval.0.in.i.i212 = phi ptr [ %arrayidx20.i.i209, %sw.bb17.i.i210 ], [ %arrayidx16.i.i207, %sw.bb13.i.i208 ], [ %arrayidx12.i.i205, %sw.bb9.i.i206 ], [ %arrayidx8.i.i203, %sw.bb5.i.i204 ], [ %arrayidx4.i.i201, %sw.bb1.i.i202 ], [ %base.i.i199, %sw.bb.i.i200 ]
  %101 = ptrtoint ptr %retval.0.in.i.i212 to i32
  call void @__asan_load4_noabort(i32 %101)
  %retval.0.i.i213 = load i32, ptr %retval.0.in.i.i212, align 4
  %102 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp.i216 = icmp slt i32 %103, 1
  br i1 %cmp.i216, label %do.end.i217, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit214.mdp5_read.exit221_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit214.mdp5_read.exit221_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit214
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_read.exit221

do.end.i217:                                      ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_read.exit221

mdp5_read.exit221:                                ; preds = %do.end.i217, %REG_MDP5_LM_BLEND_COLOR_OUT.exit214.mdp5_read.exit221_crit_edge
  %104 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %105, i32 %retval.0.i.i213
  %call.i220 = tail call i32 @msm_readl(ptr noundef %add.ptr.i219) #9
  %or79 = or i32 %call.i220, -2147483648
  %106 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %79, label %do.body.i.i234 [
    i32 0, label %sw.bb.i.i223
    i32 1, label %sw.bb1.i.i225
    i32 2, label %sw.bb5.i.i227
    i32 3, label %sw.bb9.i.i229
    i32 4, label %sw.bb13.i.i231
    i32 5, label %sw.bb17.i.i233
  ]

sw.bb.i.i223:                                     ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %107 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i222 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %107, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237

sw.bb1.i.i225:                                    ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %108 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i224 = getelementptr %struct.mdp5_cfg_hw, ptr %108, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237

sw.bb5.i.i227:                                    ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i226 = getelementptr %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237

sw.bb9.i.i229:                                    ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %110 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i228 = getelementptr %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237

sw.bb13.i.i231:                                   ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i230 = getelementptr %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237

sw.bb17.i.i233:                                   ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i232 = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237

do.body.i.i234:                                   ; preds = %mdp5_read.exit221
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit237:              ; preds = %sw.bb17.i.i233, %sw.bb13.i.i231, %sw.bb9.i.i229, %sw.bb5.i.i227, %sw.bb1.i.i225, %sw.bb.i.i223
  %retval.0.in.i.i235 = phi ptr [ %arrayidx20.i.i232, %sw.bb17.i.i233 ], [ %arrayidx16.i.i230, %sw.bb13.i.i231 ], [ %arrayidx12.i.i228, %sw.bb9.i.i229 ], [ %arrayidx8.i.i226, %sw.bb5.i.i227 ], [ %arrayidx4.i.i224, %sw.bb1.i.i225 ], [ %base.i.i222, %sw.bb.i.i223 ]
  %113 = ptrtoint ptr %retval.0.in.i.i235 to i32
  call void @__asan_load4_noabort(i32 %113)
  %retval.0.i.i236 = load i32, ptr %retval.0.in.i.i235, align 4
  %114 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp.i239 = icmp slt i32 %115, 1
  br i1 %cmp.i239, label %do.end.i240, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit237.mdp5_write.exit243_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit237.mdp5_write.exit243_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit237
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit243

do.end.i240:                                      ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit237
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit243

mdp5_write.exit243:                               ; preds = %do.end.i240, %REG_MDP5_LM_BLEND_COLOR_OUT.exit237.mdp5_write.exit243_crit_edge
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i242 = getelementptr i8, ptr %117, i32 %retval.0.i.i236
  tail call void @msm_writel(i32 noundef %or79, ptr noundef %add.ptr.i242) #9
  br label %if.end81

if.end81:                                         ; preds = %mdp5_write.exit243, %mdp5_write.exit173.if.end81_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lm_lock, i32 noundef %call55) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %pstates = alloca [9 x %struct.plane_state], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kms.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pstates) #9
  %12 = call ptr @memset(ptr %pstates, i32 255, i32 72)
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %14) #9
  %state3 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %15 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state3, align 4
  %dev4 = getelementptr inbounds %struct.drm_atomic_state, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 30, i32 18
  %19 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn204 = load ptr, ptr %plane_list, align 4
  %cmp.not208 = icmp eq ptr %.pn204, %plane_list
  br i1 %cmp.not208, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %16, %for.body.lr.ph ], [ %40, %for.inc.for.body_crit_edge ]
  %.pn212 = phi ptr [ %.pn204, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cnt.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  %need_right_mixer.0.off0210 = phi i1 [ false, %for.body.lr.ph ], [ %need_right_mixer.2.off0, %for.inc.for.body_crit_edge ]
  %cursor_plane.0.off0209 = phi i1 [ false, %for.body.lr.ph ], [ %cursor_plane.1.off0, %for.inc.for.body_crit_edge ]
  %plane.0213 = getelementptr i8, ptr %.pn212, i32 -4
  %21 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %plane_mask, align 4
  %index.i.i192 = getelementptr i8, ptr %.pn212, i32 480
  %23 = ptrtoint ptr %index.i.i192 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i192, align 4
  %shl.i = shl nuw i32 1, %24
  %and = and i32 %shl.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %planes.i, align 4
  %state1.i = getelementptr %struct.__drm_planes_state, ptr %26, i32 %24, i32 1
  %27 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state1.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  %state6.i = getelementptr i8, ptr %.pn212, i32 488
  %spec.select.i = select i1 %tobool.not.i, ptr %state6.i, ptr %state1.i
  %29 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i = load ptr, ptr %spec.select.i, align 4
  %tobool12.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool12.not, label %if.else.for.inc_crit_edge, label %if.else14

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else14:                                        ; preds = %if.else
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i, i32 0, i32 22
  %30 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %visible, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  br i1 %tobool15.not, label %if.else14.for.inc_crit_edge, label %if.end

if.else14.for.inc_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [9 x %struct.plane_state], ptr %pstates, i32 0, i32 %cnt.0211
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %plane.0213, ptr %arrayidx, align 4
  %state22 = getelementptr [9 x %struct.plane_state], ptr %pstates, i32 0, i32 %cnt.0211, i32 1
  %33 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i, ptr %state22, align 4
  %r_hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %retval.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %r_hwpipe, align 4
  %tobool25.not = icmp ne ptr %35, null
  %spec.select = select i1 %tobool25.not, i1 true, i1 %need_right_mixer.0.off0210
  %inc = add i32 %cnt.0211, 1
  %type = getelementptr i8, ptr %.pn212, i32 476
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp28 = icmp eq i32 %37, 2
  %spec.select191 = select i1 %cmp28, i1 true, i1 %cursor_plane.0.off0209
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.else14.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cursor_plane.1.off0 = phi i1 [ %cursor_plane.0.off0209, %if.else14.for.inc_crit_edge ], [ %cursor_plane.0.off0209, %if.else.for.inc_crit_edge ], [ %cursor_plane.0.off0209, %for.body.for.inc_crit_edge ], [ %spec.select191, %if.end ]
  %need_right_mixer.2.off0 = phi i1 [ %need_right_mixer.0.off0210, %if.else14.for.inc_crit_edge ], [ %need_right_mixer.0.off0210, %if.else.for.inc_crit_edge ], [ %need_right_mixer.0.off0210, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end ]
  %cnt.1 = phi i32 [ %cnt.0211, %if.else14.for.inc_crit_edge ], [ %cnt.0211, %if.else.for.inc_crit_edge ], [ %cnt.0211, %for.body.for.inc_crit_edge ], [ %inc, %if.end ]
  %38 = ptrtoint ptr %.pn212 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn212, align 4
  %39 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state3, align 4
  %dev6 = getelementptr inbounds %struct.drm_atomic_state, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev6, align 4
  %plane_list8 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list8
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1)
  %tobool38.not = icmp eq i32 %cnt.1, 0
  br i1 %tobool38.not, label %for.end.cleanup_crit_edge, label %if.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %for.end
  %cfg = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 9
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg, align 4
  %call41 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %44) #9
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %46 to i32
  %max_width = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call41, i32 0, i32 8, i32 4
  %47 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv)
  %cmp42 = icmp ult i32 %48, %conv
  %spec.select190 = select i1 %cmp42, i1 true, i1 %need_right_mixer.2.off0
  %pipeline1.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 2
  %mixer.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mixer.i, align 4
  %tobool.not.i194 = icmp eq ptr %50, null
  %r_mixer.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %r_mixer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %r_mixer.i, align 4
  br i1 %spec.select190, label %land.lhs.true.i, label %land.lhs.true6.critedge.i

land.lhs.true.i:                                  ; preds = %if.end40
  %tobool4.not.i = icmp eq ptr %52, null
  %brmerge.i = select i1 %tobool4.not.i, i1 true, i1 %tobool.not.i194
  br i1 %brmerge.i, label %land.lhs.true.i.if.then10.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true.i.if.then10.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

land.lhs.true6.critedge.i:                        ; preds = %if.end40
  %tobool8.not.i = icmp ne ptr %52, null
  %brmerge83.i = select i1 %tobool8.not.i, i1 true, i1 %tobool.not.i194
  br i1 %brmerge83.i, label %land.lhs.true6.critedge.i.if.then10.i_crit_edge, label %land.lhs.true6.critedge.i.if.end34.i_crit_edge

land.lhs.true6.critedge.i.if.end34.i_crit_edge:   ; preds = %land.lhs.true6.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true6.critedge.i.if.then10.i_crit_edge:  ; preds = %land.lhs.true6.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then10.i:                                      ; preds = %land.lhs.true6.critedge.i.if.then10.i_crit_edge, %land.lhs.true.i.if.then10.i_crit_edge
  %cond.i = phi ptr [ null, %land.lhs.true6.critedge.i.if.then10.i_crit_edge ], [ %r_mixer.i, %land.lhs.true.i.if.then10.i_crit_edge ]
  %spec.select.i195 = phi i32 [ 1, %land.lhs.true6.critedge.i.if.then10.i_crit_edge ], [ 5, %land.lhs.true.i.if.then10.i_crit_edge ]
  %53 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state3, align 4
  %call.i = tail call i32 @mdp5_mixer_assign(ptr noundef %54, ptr noundef %crtc, i32 noundef %spec.select.i195, ptr noundef %mixer.i, ptr noundef %cond.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.then49

if.end21.i:                                       ; preds = %if.then10.i
  %55 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state3, align 4
  tail call void @mdp5_mixer_release(ptr noundef %56, ptr noundef %50) #9
  %tobool23.not.i = icmp eq ptr %52, null
  br i1 %tobool23.not.i, label %if.end21.i.if.end34.i_crit_edge, label %if.then24.i

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then24.i:                                      ; preds = %if.end21.i
  %57 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state3, align 4
  tail call void @mdp5_mixer_release(ptr noundef %58, ptr noundef nonnull %52) #9
  br i1 %spec.select190, label %if.then24.i.if.end34.i_crit_edge, label %if.then27.i

if.then24.i.if.end34.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %r_mixer.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %r_mixer.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i, %if.then24.i.if.end34.i_crit_edge, %if.end21.i.if.end34.i_crit_edge, %land.lhs.true6.critedge.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge
  %60 = ptrtoint ptr %pipeline1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pipeline1.i, align 4
  %num.i = getelementptr inbounds %struct.mdp5_interface, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %switch.lookup, label %if.end34.i.intf2err.exit.i_crit_edge

if.end34.i.intf2err.exit.i_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %intf2err.exit.i

switch.lookup:                                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mdp5_crtc_atomic_check, i32 0, i32 %63
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %intf2err.exit.i

intf2err.exit.i:                                  ; preds = %switch.lookup, %if.end34.i.intf2err.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end34.i.intf2err.exit.i_crit_edge ]
  %err_irqmask.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 4
  %66 = ptrtoint ptr %err_irqmask.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i, ptr %err_irqmask.i, align 4
  %67 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mixer.i, align 4
  %type.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %61, i32 0, i32 2
  %69 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type.i.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %70, label %intf2err.exit.i.if.end5.i.i_crit_edge [
    i32 1, label %land.lhs.true.i.i
    i32 101, label %intf2err.exit.i.intf2vblank.exit.i_crit_edge
  ]

intf2err.exit.i.intf2vblank.exit.i_crit_edge:     ; preds = %intf2err.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %intf2vblank.exit.i

intf2err.exit.i.if.end5.i.i_crit_edge:            ; preds = %intf2err.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %intf2err.exit.i
  %mode.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %61, i32 0, i32 3
  %72 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp1.i.i = icmp eq i32 %73, 2
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end5.i.i_crit_edge

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pp.i.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %68, i32 0, i32 4
  %74 = ptrtoint ptr %pp.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pp.i.i, align 4
  %shl.i.i = shl i32 4096, %75
  br label %intf2vblank.exit.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i.if.end5.i.i_crit_edge, %intf2err.exit.i.if.end5.i.i_crit_edge
  %76 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %switch.lookup224, label %if.end5.i.i.intf2vblank.exit.i_crit_edge

if.end5.i.i.intf2vblank.exit.i_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %intf2vblank.exit.i

switch.lookup224:                                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep225 = getelementptr inbounds [4 x i32], ptr @switch.table.mdp5_crtc_atomic_check.43, i32 0, i32 %77
  %79 = ptrtoint ptr %switch.gep225 to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load226 = load i32, ptr %switch.gep225, align 4
  br label %intf2vblank.exit.i

intf2vblank.exit.i:                               ; preds = %switch.lookup224, %if.end5.i.i.intf2vblank.exit.i_crit_edge, %if.then.i.i, %intf2err.exit.i.intf2vblank.exit.i_crit_edge
  %retval.0.i85.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 16, %intf2err.exit.i.intf2vblank.exit.i_crit_edge ], [ %switch.load226, %switch.lookup224 ], [ 0, %if.end5.i.i.intf2vblank.exit.i_crit_edge ]
  %vblank_irqmask.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 3
  %80 = ptrtoint ptr %vblank_irqmask.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i85.i, ptr %vblank_irqmask.i, align 4
  %81 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i = icmp eq i32 %82, 1
  br i1 %cmp.i, label %land.lhs.true39.i, label %intf2vblank.exit.i.if.end51_crit_edge

intf2vblank.exit.i.if.end51_crit_edge:            ; preds = %intf2vblank.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true39.i:                                ; preds = %intf2vblank.exit.i
  %mode.i = getelementptr inbounds %struct.mdp5_interface, ptr %61, i32 0, i32 3
  %83 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp40.i = icmp eq i32 %84, 2
  br i1 %cmp40.i, label %if.then41.i, label %land.lhs.true39.i.if.end51_crit_edge

land.lhs.true39.i.if.end51_crit_edge:             ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #11
  %pp.i86.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %68, i32 0, i32 4
  %85 = ptrtoint ptr %pp.i86.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pp.i86.i, align 4
  %shl.i87.i = shl i32 256, %86
  br label %if.end51

if.then49:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %87 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %88, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.34, i32 noundef %call.i) #9
  br label %cleanup

if.end51:                                         ; preds = %if.then41.i, %land.lhs.true39.i.if.end51_crit_edge, %intf2vblank.exit.i.if.end51_crit_edge
  %shl.i87.sink.i = phi i32 [ %shl.i87.i, %if.then41.i ], [ 0, %land.lhs.true39.i.if.end51_crit_edge ], [ 0, %intf2vblank.exit.i.if.end51_crit_edge ]
  %.sink.i = phi i8 [ 1, %if.then41.i ], [ 0, %land.lhs.true39.i.if.end51_crit_edge ], [ 0, %intf2vblank.exit.i.if.end51_crit_edge ]
  %pp_done_irqmask.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 5
  %89 = ptrtoint ptr %pp_done_irqmask.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shl.i87.sink.i, ptr %pp_done_irqmask.i, align 4
  %cmd_mode.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 6
  %90 = ptrtoint ptr %cmd_mode.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink.i, ptr %cmd_mode.i, align 4
  call void @sort(ptr noundef nonnull %pstates, i32 noundef %cnt.1, i32 noundef 8, ptr noundef nonnull @pstate_cmp, ptr noundef null) #9
  br i1 %cursor_plane.1.off0, label %land.rhs, label %if.end51.if.end74_crit_edge

if.end51.if.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.rhs:                                         ; preds = %if.end51
  %sub = add i32 %cnt.1, -1
  %arrayidx54 = getelementptr [9 x %struct.plane_state], ptr %pstates, i32 0, i32 %sub
  %91 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx54, align 4
  %type56 = getelementptr inbounds %struct.drm_plane, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %type56 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp57.not = icmp eq i32 %94, 2
  br i1 %cmp57.not, label %land.rhs.if.end74_crit_edge, label %do.end, !prof !110

land.rhs.if.end74_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef null) #9
  br label %if.end74

if.end74:                                         ; preds = %do.end, %land.rhs.if.end74_crit_edge, %if.end51.if.end74_crit_edge
  %state83 = getelementptr inbounds %struct.plane_state, ptr %pstates, i32 0, i32 1
  %95 = ptrtoint ptr %state83 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %state83, align 4
  %97 = ptrtoint ptr %r_mixer.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %r_mixer.i, align 4
  %tobool.not.i197 = icmp eq ptr %98, null
  br i1 %tobool.not.i197, label %if.end.i, label %if.end74.get_start_stage.exit_crit_edge

if.end74.get_start_stage.exit_crit_edge:          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_start_stage.exit

if.end.i:                                         ; preds = %if.end74
  %crtc_x.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 4
  %99 = ptrtoint ptr %crtc_x.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %crtc_x.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.i.i = icmp slt i32 %100, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i199, label %if.end.i.get_start_stage.exit_crit_edge

if.end.i.get_start_stage.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_start_stage.exit

land.lhs.true.i.i199:                             ; preds = %if.end.i
  %crtc_y.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 5
  %101 = ptrtoint ptr %crtc_y.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %crtc_y.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp1.i.i198 = icmp slt i32 %102, 1
  br i1 %cmp1.i.i198, label %land.lhs.true2.i.i, label %land.lhs.true.i.i199.get_start_stage.exit_crit_edge

land.lhs.true.i.i199.get_start_stage.exit_crit_edge: ; preds = %land.lhs.true.i.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_start_stage.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i199
  %crtc_w.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 6
  %103 = ptrtoint ptr %crtc_w.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %crtc_w.i.i, align 4
  %add.i.i = add i32 %104, %100
  %hdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 1
  %105 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp4.not.i.i = icmp ult i32 %add.i.i, %conv.i.i
  br i1 %cmp4.not.i.i, label %land.lhs.true2.i.i.get_start_stage.exit_crit_edge, label %is_fullscreen.exit.i

land.lhs.true2.i.i.get_start_stage.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_start_stage.exit

is_fullscreen.exit.i:                             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %crtc_h.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 7
  %107 = ptrtoint ptr %crtc_h.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %crtc_h.i.i, align 4
  %add7.i.i = add i32 %108, %102
  %vdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 6
  %109 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vdisplay.i.i, align 2
  %conv9.i.i = zext i16 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %conv9.i.i)
  %cmp10.i.not.i = icmp ult i32 %add7.i.i, %conv9.i.i
  %spec.select.i200 = select i1 %cmp10.i.not.i, i32 2, i32 1
  br label %get_start_stage.exit

get_start_stage.exit:                             ; preds = %is_fullscreen.exit.i, %land.lhs.true2.i.i.get_start_stage.exit_crit_edge, %land.lhs.true.i.i199.get_start_stage.exit_crit_edge, %if.end.i.get_start_stage.exit_crit_edge, %if.end74.get_start_stage.exit_crit_edge
  %retval.0.i201 = phi i32 [ 2, %if.end74.get_start_stage.exit_crit_edge ], [ 2, %land.lhs.true2.i.i.get_start_stage.exit_crit_edge ], [ 2, %land.lhs.true.i.i199.get_start_stage.exit_crit_edge ], [ 2, %if.end.i.get_start_stage.exit_crit_edge ], [ %spec.select.i200, %is_fullscreen.exit.i ]
  %add = add i32 %cnt.1, -1
  %sub85 = add i32 %add, %retval.0.i201
  %nb_stages = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call41, i32 0, i32 8, i32 3
  %111 = ptrtoint ptr %nb_stages to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nb_stages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub85, i32 %112)
  %cmp87.not = icmp ult i32 %sub85, %112
  br i1 %cmp87.not, label %for.cond92.preheader, label %if.then89

for.cond92.preheader:                             ; preds = %get_start_stage.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1)
  %cmp93216 = icmp sgt i32 %cnt.1, 0
  br i1 %cmp93216, label %for.cond92.preheader.for.body95_crit_edge, label %for.cond92.preheader.cleanup_crit_edge

for.cond92.preheader.cleanup_crit_edge:           ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond92.preheader.for.body95_crit_edge:        ; preds = %for.cond92.preheader
  br label %for.body95

if.then89:                                        ; preds = %get_start_stage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %113 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev90, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %114, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.35, i32 noundef %cnt.1, i32 noundef %retval.0.i201) #9
  br label %cleanup

for.body95:                                       ; preds = %if.end111.for.body95_crit_edge, %for.cond92.preheader.for.body95_crit_edge
  %i.0217 = phi i32 [ %inc120, %if.end111.for.body95_crit_edge ], [ 0, %for.cond92.preheader.for.body95_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0217, i32 %add)
  %cmp99 = icmp eq i32 %i.0217, %add
  %or.cond = select i1 %cursor_plane.1.off0, i1 %cmp99, i1 false
  br i1 %or.cond, label %if.then101, label %if.else106

if.then101:                                       ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %nb_stages to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nb_stages, align 4
  br label %if.end111

if.else106:                                       ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #11
  %add107 = add nuw i32 %i.0217, %retval.0.i201
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.then101
  %i.0217.pn = phi i32 [ %i.0217, %if.else106 ], [ %add, %if.then101 ]
  %add107.sink = phi i32 [ %add107, %if.else106 ], [ %116, %if.then101 ]
  %state109.sink = getelementptr [9 x %struct.plane_state], ptr %pstates, i32 0, i32 %i.0217.pn, i32 1
  %117 = ptrtoint ptr %state109.sink to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %state109.sink, align 4
  %stage110 = getelementptr inbounds %struct.mdp5_plane_state, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %stage110 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add107.sink, ptr %stage110, align 4
  %120 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name, align 8
  %arrayidx113 = getelementptr [9 x %struct.plane_state], ptr %pstates, i32 0, i32 %i.0217
  %122 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx113, align 4
  %name115 = getelementptr inbounds %struct.drm_plane, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %name115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name115, align 4
  %state117 = getelementptr [9 x %struct.plane_state], ptr %pstates, i32 0, i32 %i.0217, i32 1
  %126 = ptrtoint ptr %state117 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %state117, align 4
  %stage118 = getelementptr inbounds %struct.mdp5_plane_state, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %stage118 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %stage118, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, ptr noundef %121, ptr noundef %125, i32 noundef %129) #9
  %inc120 = add nuw nsw i32 %i.0217, 1
  %exitcond.not = icmp eq i32 %inc120, %cnt.1
  br i1 %exitcond.not, label %if.end111.cleanup_crit_edge, label %if.end111.for.body95_crit_edge

if.end111.for.body95_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body95

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end111.cleanup_crit_edge, %if.then89, %for.cond92.preheader.cleanup_crit_edge, %if.then49, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then49 ], [ -22, %if.then89 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond92.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pstates) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_begin(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  %pstates.i = alloca [9 x ptr], align 4
  %stage.i = alloca [9 x [2 x i32]], align 4
  %r_stage.i = alloca [9 x [2 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state2, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef %5, ptr noundef %7) #9
  %event7 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 4
  %8 = ptrtoint ptr %event7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event7, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !110

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 793, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #9
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %event37 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event37, align 4
  %14 = ptrtoint ptr %event7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %event7, align 4
  store ptr null, ptr %event37, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call31) #9
  %ctl = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl, align 4
  %tobool42.not = icmp eq ptr %16, null
  br i1 %tobool42.not, label %if.end.cleanup_crit_edge, label %if.end52, !prof !103

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %if.end
  %17 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state2, align 4
  %pipeline4.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kms.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pstates.i) #9
  %25 = call ptr @memset(ptr %pstates.i, i32 0, i32 36)
  %mixer5.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %18, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %mixer5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mixer5.i, align 4
  %lm6.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %lm6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lm6.i, align 4
  %r_mixer7.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %18, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %r_mixer7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r_mixer7.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end52.cond.end.i_crit_edge, label %cond.true.i

if.end52.cond.end.i_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %lm8.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %lm8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lm8.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end52.cond.end.i_crit_edge
  %cond.i = phi i32 [ %33, %cond.true.i ], [ 0, %if.end52.cond.end.i_crit_edge ]
  %ctl9.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %18, i32 0, i32 1
  %34 = ptrtoint ptr %ctl9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctl9.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stage.i) #9
  %36 = call ptr @memset(ptr %stage.i, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %r_stage.i) #9
  %37 = call ptr @memset(ptr %r_stage.i, i32 0, i32 72)
  %lm_lock.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 3
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lm_lock.i) #9
  %tobool16.not.i = icmp eq ptr %35, null
  br i1 %tobool16.not.i, label %cond.end.i.blend_setup.exit_crit_edge, label %if.end.i

cond.end.i.blend_setup.exit_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blend_setup.exit

if.end.i:                                         ; preds = %cond.end.i
  %38 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crtc, align 8
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 30, i32 18
  %40 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn544.i = load ptr, ptr %plane_list.i, align 4
  %cmp23.not547.i = icmp eq ptr %.pn544.i, %plane_list.i
  br i1 %cmp23.not547.i, label %for.end.thread.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn549.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn544.i, %if.end.i.for.body.i_crit_edge ]
  %plane_cnt.0548.i = phi i32 [ %plane_cnt.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %plane.0550.i = getelementptr i8, ptr %.pn549.i, i32 -4
  %41 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state2, align 4
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %plane_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn549.i, i32 480
  %45 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %46
  %and.i = and i32 %shl.i.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %state29.i = getelementptr i8, ptr %.pn549.i, i32 488
  %47 = ptrtoint ptr %state29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state29.i, align 4
  %visible.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %visible.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool30.not.i = icmp eq i8 %50, 0
  br i1 %tobool30.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.end32.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end32.i:                                       ; preds = %if.else.i
  %stage37.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %stage37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stage37.i, align 4
  %arrayidx.i = getelementptr [9 x ptr], ptr %pstates.i, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %48, ptr %arrayidx.i, align 4
  %call38.i = tail call i32 @mdp5_plane_pipe(ptr noundef %plane.0550.i) #9
  %54 = ptrtoint ptr %stage37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stage37.i, align 4
  %arrayidx40.i = getelementptr [9 x [2 x i32]], ptr %stage.i, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call38.i, ptr %arrayidx40.i, align 4
  br i1 %tobool.not.i, label %if.end32.i.if.end48.i_crit_edge, label %if.then43.i

if.end32.i.if.end48.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = tail call i32 @mdp5_plane_pipe(ptr noundef %plane.0550.i) #9
  %57 = ptrtoint ptr %stage37.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stage37.i, align 4
  %arrayidx46.i = getelementptr [9 x [2 x i32]], ptr %r_stage.i, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call44.i, ptr %arrayidx46.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end32.i.if.end48.i_crit_edge
  %call49.i = tail call i32 @mdp5_plane_right_pipe(ptr noundef %plane.0550.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end58.i_crit_edge, label %if.then51.i

if.end48.i.if.end58.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %stage37.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stage37.i, align 4
  %arrayidx54.i = getelementptr [9 x [2 x i32]], ptr %stage.i, i32 0, i32 %61, i32 1
  %62 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call49.i, ptr %arrayidx54.i, align 4
  %63 = load i32, ptr %stage37.i, align 4
  %arrayidx57.i = getelementptr [9 x [2 x i32]], ptr %r_stage.i, i32 0, i32 %63, i32 1
  %64 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call49.i, ptr %arrayidx57.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end58.i_crit_edge
  %inc.i = add i32 %plane_cnt.0548.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end58.i, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %plane_cnt.2.i = phi i32 [ %plane_cnt.0548.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end58.i ], [ %plane_cnt.0548.i, %if.else.i.for.inc.i_crit_edge ]
  %65 = ptrtoint ptr %.pn549.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i = load ptr, ptr %.pn549.i, align 4
  %66 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %crtc, align 8
  %plane_list22.i = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 30, i32 18
  %cmp23.not.i = icmp eq ptr %.pn.i, %plane_list22.i
  br i1 %cmp23.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %arrayidx65.i = getelementptr inbounds [9 x ptr], ptr %pstates.i, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx65.i, align 4
  %tobool66.not.i = icmp eq ptr %69, null
  br i1 %tobool66.not.i, label %for.end.i.if.then67.i_crit_edge, label %if.else68.i

for.end.i.if.then67.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

for.end.thread.i:                                 ; preds = %if.end.i
  %arrayidx65556.i = getelementptr inbounds [9 x ptr], ptr %pstates.i, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx65556.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx65556.i, align 4
  %tobool66.not557.i = icmp eq ptr %71, null
  br i1 %tobool66.not557.i, label %for.end.thread.i.if.then67.i_crit_edge, label %for.end.thread.i.if.end80.i_crit_edge

for.end.thread.i.if.end80.i_crit_edge:            ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

for.end.thread.i.if.then67.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

if.then67.i:                                      ; preds = %for.end.thread.i.if.then67.i_crit_edge, %for.end.i.if.then67.i_crit_edge
  %plane_cnt.0.lcssa560.i = phi i32 [ 0, %for.end.thread.i.if.then67.i_crit_edge ], [ %plane_cnt.2.i, %for.end.i.if.then67.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39) #9
  br label %if.end80.i

if.else68.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plane_cnt.2.i)
  %tobool69.not.i = icmp eq i32 %plane_cnt.2.i, 0
  br i1 %tobool69.not.i, label %if.else68.i.if.end80.i_crit_edge, label %if.then70.i

if.else68.i.if.end80.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

if.then70.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #11
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fb.i, align 4
  %call73.i = tail call ptr @msm_framebuffer_format(ptr noundef %73) #9
  %alpha_enable.i = getelementptr inbounds %struct.mdp_format, ptr %call73.i, i32 0, i32 6
  %74 = ptrtoint ptr %alpha_enable.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %alpha_enable.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool76.not.i = icmp ne i8 %75, 0
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then70.i, %if.else68.i.if.end80.i_crit_edge, %if.then67.i, %for.end.thread.i.if.end80.i_crit_edge
  %plane_cnt.0.lcssa558.i = phi i32 [ 0, %if.else68.i.if.end80.i_crit_edge ], [ %plane_cnt.0.lcssa560.i, %if.then67.i ], [ %plane_cnt.2.i, %if.then70.i ], [ 0, %for.end.thread.i.if.end80.i_crit_edge ]
  %ctl_blend_flags.0.i = phi i32 [ 0, %if.else68.i.if.end80.i_crit_edge ], [ 1, %if.then67.i ], [ 0, %if.then70.i ], [ 0, %for.end.thread.i.if.end80.i_crit_edge ]
  %bg_alpha_enabled.0.off0.i = phi i1 [ false, %if.else68.i.if.end80.i_crit_edge ], [ false, %if.then67.i ], [ %tobool76.not.i, %if.then70.i ], [ false, %for.end.thread.i.if.end80.i_crit_edge ]
  %bg_alpha_enabled.0.off0.not.i = xor i1 %bg_alpha_enabled.0.off0.i, true
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %24, i32 0, i32 26
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %24, i32 0, i32 15
  br label %for.body84.i

for.body84.i:                                     ; preds = %for.inc173.i.for.body84.i_crit_edge, %if.end80.i
  %mixer_op_mode.0554.i = phi i32 [ 0, %if.end80.i ], [ %mixer_op_mode.2.i, %for.inc173.i.for.body84.i_crit_edge ]
  %i.0552.i = phi i32 [ 2, %if.end80.i ], [ %inc174.i, %for.inc173.i.for.body84.i_crit_edge ]
  %arrayidx85.i = getelementptr [9 x ptr], ptr %pstates.i, i32 0, i32 %i.0552.i
  %76 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx85.i, align 4
  %tobool86.not.i = icmp eq ptr %77, null
  br i1 %tobool86.not.i, label %for.body84.i.for.inc173.i_crit_edge, label %if.end88.i

for.body84.i.for.inc173.i_crit_edge:              ; preds = %for.body84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc173.i

if.end88.i:                                       ; preds = %for.body84.i
  %fb92.i = getelementptr inbounds %struct.drm_plane_state, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %fb92.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fb92.i, align 4
  %call93.i = tail call ptr @msm_framebuffer_format(ptr noundef %79) #9
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %77, i32 0, i32 12
  %80 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %alpha.i, align 4
  %82 = lshr i16 %81, 8
  %83 = zext i16 %82 to i32
  %sub.i = xor i32 %83, 255
  %alpha_enable105.i = getelementptr inbounds %struct.mdp_format, ptr %call93.i, i32 0, i32 6
  %84 = ptrtoint ptr %alpha_enable105.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %alpha_enable105.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool106.not.i = icmp ne i8 %85, 0
  %brmerge.i = select i1 %tobool106.not.i, i1 true, i1 %bg_alpha_enabled.0.off0.not.i
  br i1 %brmerge.i, label %if.else110.i, label %if.end88.i.if.end113.i_crit_edge

if.end88.i.if.end113.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.else110.i:                                     ; preds = %if.end88.i
  %switch.tableidx = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %86 = icmp ult i32 %switch.tableidx, 7
  br i1 %86, label %switch.lookup, label %if.else110.i.mdp5_lm_use_fg_alpha_mask.exit.i_crit_edge

if.else110.i.mdp5_lm_use_fg_alpha_mask.exit.i_crit_edge: ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_lm_use_fg_alpha_mask.exit.i

switch.lookup:                                    ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush, i32 0, i32 %switch.tableidx
  %87 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %87)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mdp5_lm_use_fg_alpha_mask.exit.i

mdp5_lm_use_fg_alpha_mask.exit.i:                 ; preds = %switch.lookup, %if.else110.i.mdp5_lm_use_fg_alpha_mask.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.else110.i.mdp5_lm_use_fg_alpha_mask.exit.i_crit_edge ]
  %or112.i = or i32 %retval.0.i.i, %mixer_op_mode.0554.i
  br label %if.end113.i

if.end113.i:                                      ; preds = %mdp5_lm_use_fg_alpha_mask.exit.i, %if.end88.i.if.end113.i_crit_edge
  %mixer_op_mode.1.i = phi i32 [ %or112.i, %mdp5_lm_use_fg_alpha_mask.exit.i ], [ 0, %if.end88.i.if.end113.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %i.0552.i, i32 noundef %83, i32 noundef %sub.i) #9
  %88 = ptrtoint ptr %alpha_enable105.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %alpha_enable105.i, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool115.not.i = icmp eq i8 %89, 0
  br i1 %tobool115.not.i, label %if.end113.i.if.end157.i_crit_edge, label %land.lhs.true117.i

if.end113.i.if.end157.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157.i

land.lhs.true117.i:                               ; preds = %if.end113.i
  %pixel_blend_mode.i = getelementptr inbounds %struct.drm_plane_state, ptr %77, i32 0, i32 13
  %90 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pixel_blend_mode.i, align 2
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %91, label %land.lhs.true117.i.if.end157.i_crit_edge [
    i16 0, label %if.then123.i
    i16 1, label %if.then145.i
  ]

land.lhs.true117.i.if.end157.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157.i

if.then123.i:                                     ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %82)
  %cmp127.not.i = icmp eq i16 %82, 255
  %spec.select528.i = select i1 %cmp127.not.i, i32 1536, i32 6656
  %spec.select529.i = select i1 %cmp127.not.i, i32 %sub.i, i32 %83
  br label %if.end157.i

if.then145.i:                                     ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %82)
  %cmp149.not.i = icmp eq i16 %82, 255
  %spec.select530.i = select i1 %cmp149.not.i, i32 1538, i32 6682
  %spec.select531.i = select i1 %cmp149.not.i, i32 %sub.i, i32 %83
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.then145.i, %if.then123.i, %land.lhs.true117.i.if.end157.i_crit_edge, %if.end113.i.if.end157.i_crit_edge
  %blend_op.0.i = phi i32 [ 256, %if.end113.i.if.end157.i_crit_edge ], [ %spec.select528.i, %if.then123.i ], [ %spec.select530.i, %if.then145.i ], [ 256, %land.lhs.true117.i.if.end157.i_crit_edge ]
  %bg_alpha.0.i = phi i32 [ %sub.i, %if.end113.i.if.end157.i_crit_edge ], [ %spec.select529.i, %if.then123.i ], [ %spec.select531.i, %if.then145.i ], [ %sub.i, %land.lhs.true117.i.if.end157.i_crit_edge ]
  %93 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %29, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
    i32 4, label %sw.bb13.i.i.i
    i32 5, label %sw.bb17.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %94 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %94, i32 0, i32 8, i32 1
  br label %__offset_LM.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %95 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %95, i32 0, i32 8, i32 1, i32 1
  br label %__offset_LM.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %96 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %96, i32 0, i32 8, i32 1, i32 2
  br label %__offset_LM.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 8, i32 1, i32 3
  br label %__offset_LM.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %98 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %98, i32 0, i32 8, i32 1, i32 4
  br label %__offset_LM.exit.i.i

sw.bb17.i.i.i:                                    ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 8, i32 1, i32 5
  br label %__offset_LM.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

__offset_LM.exit.i.i:                             ; preds = %sw.bb17.i.i.i, %sw.bb13.i.i.i, %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx20.i.i.i, %sw.bb17.i.i.i ], [ %arrayidx16.i.i.i, %sw.bb13.i.i.i ], [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %base.i.i.i, %sw.bb.i.i.i ]
  %switch.tableidx100 = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx100)
  %100 = icmp ult i32 %switch.tableidx100, 7
  br i1 %100, label %switch.lookup99, label %do.body.i5.i.i

do.body.i5.i.i:                                   ; preds = %__offset_LM.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

switch.lookup99:                                  ; preds = %__offset_LM.exit.i.i
  %101 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %switch.gep101 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.44, i32 0, i32 %switch.tableidx100
  %102 = ptrtoint ptr %switch.gep101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %switch.load102 = load i32, ptr %switch.gep101, align 4
  %add2.i.i = add i32 %switch.load102, %retval.0.i.i.i
  %103 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.i.i = icmp slt i32 %104, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %switch.lookup99.mdp5_write.exit.i_crit_edge, !prof !103

switch.lookup99.mdp5_write.exit.i_crit_edge:      ; preds = %switch.lookup99
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit.i

do.end.i.i:                                       ; preds = %switch.lookup99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit.i

mdp5_write.exit.i:                                ; preds = %do.end.i.i, %switch.lookup99.mdp5_write.exit.i_crit_edge
  %105 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %106, i32 %add2.i.i
  tail call void @msm_writel(i32 noundef %blend_op.0.i, ptr noundef %add.ptr.i.i) #9
  %107 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %29, label %do.body.i.i288.i [
    i32 0, label %sw.bb.i.i277.i
    i32 1, label %sw.bb1.i.i279.i
    i32 2, label %sw.bb5.i.i281.i
    i32 3, label %sw.bb9.i.i283.i
    i32 4, label %sw.bb13.i.i285.i
    i32 5, label %sw.bb17.i.i287.i
  ]

sw.bb.i.i277.i:                                   ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %108 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i276.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %108, i32 0, i32 8, i32 1
  br label %__offset_LM.exit.i291.i

sw.bb1.i.i279.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i278.i = getelementptr %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 8, i32 1, i32 1
  br label %__offset_LM.exit.i291.i

sw.bb5.i.i281.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %110 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i280.i = getelementptr %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 8, i32 1, i32 2
  br label %__offset_LM.exit.i291.i

sw.bb9.i.i283.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i282.i = getelementptr %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 8, i32 1, i32 3
  br label %__offset_LM.exit.i291.i

sw.bb13.i.i285.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i284.i = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 8, i32 1, i32 4
  br label %__offset_LM.exit.i291.i

sw.bb17.i.i287.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %113 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i286.i = getelementptr %struct.mdp5_cfg_hw, ptr %113, i32 0, i32 8, i32 1, i32 5
  br label %__offset_LM.exit.i291.i

do.body.i.i288.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

__offset_LM.exit.i291.i:                          ; preds = %sw.bb17.i.i287.i, %sw.bb13.i.i285.i, %sw.bb9.i.i283.i, %sw.bb5.i.i281.i, %sw.bb1.i.i279.i, %sw.bb.i.i277.i
  %retval.0.in.i.i289.i = phi ptr [ %arrayidx20.i.i286.i, %sw.bb17.i.i287.i ], [ %arrayidx16.i.i284.i, %sw.bb13.i.i285.i ], [ %arrayidx12.i.i282.i, %sw.bb9.i.i283.i ], [ %arrayidx8.i.i280.i, %sw.bb5.i.i281.i ], [ %arrayidx4.i.i278.i, %sw.bb1.i.i279.i ], [ %base.i.i276.i, %sw.bb.i.i277.i ]
  %switch.tableidx104 = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx104)
  %114 = icmp ult i32 %switch.tableidx104, 7
  br i1 %114, label %switch.lookup103, label %do.body.i5.i298.i

do.body.i5.i298.i:                                ; preds = %__offset_LM.exit.i291.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

switch.lookup103:                                 ; preds = %__offset_LM.exit.i291.i
  %115 = ptrtoint ptr %retval.0.in.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %retval.0.i.i290.i = load i32, ptr %retval.0.in.i.i289.i, align 4
  %switch.gep105 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.45, i32 0, i32 %switch.tableidx104
  %116 = ptrtoint ptr %switch.gep105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %switch.load106 = load i32, ptr %switch.gep105, align 4
  %add.i.i = add i32 %retval.0.i.i290.i, 4
  %add2.i300.i = add i32 %add.i.i, %switch.load106
  %117 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp.i302.i = icmp slt i32 %118, 1
  br i1 %cmp.i302.i, label %do.end.i303.i, label %switch.lookup103.mdp5_write.exit306.i_crit_edge, !prof !103

switch.lookup103.mdp5_write.exit306.i_crit_edge:  ; preds = %switch.lookup103
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit306.i

do.end.i303.i:                                    ; preds = %switch.lookup103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit306.i

mdp5_write.exit306.i:                             ; preds = %do.end.i303.i, %switch.lookup103.mdp5_write.exit306.i_crit_edge
  %119 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i305.i = getelementptr i8, ptr %120, i32 %add2.i300.i
  tail call void @msm_writel(i32 noundef %83, ptr noundef %add.ptr.i305.i) #9
  %121 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %29, label %do.body.i.i319.i [
    i32 0, label %sw.bb.i.i308.i
    i32 1, label %sw.bb1.i.i310.i
    i32 2, label %sw.bb5.i.i312.i
    i32 3, label %sw.bb9.i.i314.i
    i32 4, label %sw.bb13.i.i316.i
    i32 5, label %sw.bb17.i.i318.i
  ]

sw.bb.i.i308.i:                                   ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %122 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i307.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %122, i32 0, i32 8, i32 1
  br label %__offset_LM.exit.i322.i

sw.bb1.i.i310.i:                                  ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %123 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i309.i = getelementptr %struct.mdp5_cfg_hw, ptr %123, i32 0, i32 8, i32 1, i32 1
  br label %__offset_LM.exit.i322.i

sw.bb5.i.i312.i:                                  ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %124 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i311.i = getelementptr %struct.mdp5_cfg_hw, ptr %124, i32 0, i32 8, i32 1, i32 2
  br label %__offset_LM.exit.i322.i

sw.bb9.i.i314.i:                                  ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %125 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i313.i = getelementptr %struct.mdp5_cfg_hw, ptr %125, i32 0, i32 8, i32 1, i32 3
  br label %__offset_LM.exit.i322.i

sw.bb13.i.i316.i:                                 ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %126 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i315.i = getelementptr %struct.mdp5_cfg_hw, ptr %126, i32 0, i32 8, i32 1, i32 4
  br label %__offset_LM.exit.i322.i

sw.bb17.i.i318.i:                                 ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %127 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i317.i = getelementptr %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 8, i32 1, i32 5
  br label %__offset_LM.exit.i322.i

do.body.i.i319.i:                                 ; preds = %mdp5_write.exit306.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

__offset_LM.exit.i322.i:                          ; preds = %sw.bb17.i.i318.i, %sw.bb13.i.i316.i, %sw.bb9.i.i314.i, %sw.bb5.i.i312.i, %sw.bb1.i.i310.i, %sw.bb.i.i308.i
  %retval.0.in.i.i320.i = phi ptr [ %arrayidx20.i.i317.i, %sw.bb17.i.i318.i ], [ %arrayidx16.i.i315.i, %sw.bb13.i.i316.i ], [ %arrayidx12.i.i313.i, %sw.bb9.i.i314.i ], [ %arrayidx8.i.i311.i, %sw.bb5.i.i312.i ], [ %arrayidx4.i.i309.i, %sw.bb1.i.i310.i ], [ %base.i.i307.i, %sw.bb.i.i308.i ]
  %switch.tableidx108 = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx108)
  %128 = icmp ult i32 %switch.tableidx108, 7
  br i1 %128, label %switch.lookup107, label %do.body.i5.i329.i

do.body.i5.i329.i:                                ; preds = %__offset_LM.exit.i322.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

switch.lookup107:                                 ; preds = %__offset_LM.exit.i322.i
  %129 = ptrtoint ptr %retval.0.in.i.i320.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %retval.0.i.i321.i = load i32, ptr %retval.0.in.i.i320.i, align 4
  %switch.gep109 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.46, i32 0, i32 %switch.tableidx108
  %130 = ptrtoint ptr %switch.gep109 to i32
  call void @__asan_load4_noabort(i32 %130)
  %switch.load110 = load i32, ptr %switch.gep109, align 4
  %add.i331.i = add i32 %retval.0.i.i321.i, 8
  %add2.i332.i = add i32 %add.i331.i, %switch.load110
  %131 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp.i334.i = icmp slt i32 %132, 1
  br i1 %cmp.i334.i, label %do.end.i335.i, label %switch.lookup107.mdp5_write.exit338.i_crit_edge, !prof !103

switch.lookup107.mdp5_write.exit338.i_crit_edge:  ; preds = %switch.lookup107
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit338.i

do.end.i335.i:                                    ; preds = %switch.lookup107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit338.i

mdp5_write.exit338.i:                             ; preds = %do.end.i335.i, %switch.lookup107.mdp5_write.exit338.i_crit_edge
  %133 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i337.i = getelementptr i8, ptr %134, i32 %add2.i332.i
  tail call void @msm_writel(i32 noundef %bg_alpha.0.i, ptr noundef %add.ptr.i337.i) #9
  br i1 %tobool.not.i, label %mdp5_write.exit338.i.for.inc173.i_crit_edge, label %if.then165.i

mdp5_write.exit338.i.for.inc173.i_crit_edge:      ; preds = %mdp5_write.exit338.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc173.i

if.then165.i:                                     ; preds = %mdp5_write.exit338.i
  %135 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %cond.i, label %do.body.i.i351.i [
    i32 0, label %sw.bb.i.i340.i
    i32 1, label %sw.bb1.i.i342.i
    i32 2, label %sw.bb5.i.i344.i
    i32 3, label %sw.bb9.i.i346.i
    i32 4, label %sw.bb13.i.i348.i
    i32 5, label %sw.bb17.i.i350.i
  ]

sw.bb.i.i340.i:                                   ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %136 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i339.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %136, i32 0, i32 8, i32 1
  br label %__offset_LM.exit.i354.i

sw.bb1.i.i342.i:                                  ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %137 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i341.i = getelementptr %struct.mdp5_cfg_hw, ptr %137, i32 0, i32 8, i32 1, i32 1
  br label %__offset_LM.exit.i354.i

sw.bb5.i.i344.i:                                  ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %138 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i343.i = getelementptr %struct.mdp5_cfg_hw, ptr %138, i32 0, i32 8, i32 1, i32 2
  br label %__offset_LM.exit.i354.i

sw.bb9.i.i346.i:                                  ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %139 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i345.i = getelementptr %struct.mdp5_cfg_hw, ptr %139, i32 0, i32 8, i32 1, i32 3
  br label %__offset_LM.exit.i354.i

sw.bb13.i.i348.i:                                 ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %140 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i347.i = getelementptr %struct.mdp5_cfg_hw, ptr %140, i32 0, i32 8, i32 1, i32 4
  br label %__offset_LM.exit.i354.i

sw.bb17.i.i350.i:                                 ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %141 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i349.i = getelementptr %struct.mdp5_cfg_hw, ptr %141, i32 0, i32 8, i32 1, i32 5
  br label %__offset_LM.exit.i354.i

do.body.i.i351.i:                                 ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

__offset_LM.exit.i354.i:                          ; preds = %sw.bb17.i.i350.i, %sw.bb13.i.i348.i, %sw.bb9.i.i346.i, %sw.bb5.i.i344.i, %sw.bb1.i.i342.i, %sw.bb.i.i340.i
  %retval.0.in.i.i352.i = phi ptr [ %arrayidx20.i.i349.i, %sw.bb17.i.i350.i ], [ %arrayidx16.i.i347.i, %sw.bb13.i.i348.i ], [ %arrayidx12.i.i345.i, %sw.bb9.i.i346.i ], [ %arrayidx8.i.i343.i, %sw.bb5.i.i344.i ], [ %arrayidx4.i.i341.i, %sw.bb1.i.i342.i ], [ %base.i.i339.i, %sw.bb.i.i340.i ]
  %switch.tableidx112 = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx112)
  %142 = icmp ult i32 %switch.tableidx112, 7
  br i1 %142, label %switch.lookup111, label %do.body.i5.i361.i

do.body.i5.i361.i:                                ; preds = %__offset_LM.exit.i354.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

switch.lookup111:                                 ; preds = %__offset_LM.exit.i354.i
  %143 = ptrtoint ptr %retval.0.in.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %retval.0.i.i353.i = load i32, ptr %retval.0.in.i.i352.i, align 4
  %switch.gep113 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.47, i32 0, i32 %switch.tableidx112
  %144 = ptrtoint ptr %switch.gep113 to i32
  call void @__asan_load4_noabort(i32 %144)
  %switch.load114 = load i32, ptr %switch.gep113, align 4
  %add2.i363.i = add i32 %switch.load114, %retval.0.i.i353.i
  %145 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp.i366.i = icmp slt i32 %146, 1
  br i1 %cmp.i366.i, label %do.end.i367.i, label %switch.lookup111.mdp5_write.exit370.i_crit_edge, !prof !103

switch.lookup111.mdp5_write.exit370.i_crit_edge:  ; preds = %switch.lookup111
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit370.i

do.end.i367.i:                                    ; preds = %switch.lookup111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit370.i

mdp5_write.exit370.i:                             ; preds = %do.end.i367.i, %switch.lookup111.mdp5_write.exit370.i_crit_edge
  %147 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i369.i = getelementptr i8, ptr %148, i32 %add2.i363.i
  tail call void @msm_writel(i32 noundef %blend_op.0.i, ptr noundef %add.ptr.i369.i) #9
  %149 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %cond.i, label %do.body.i.i383.i [
    i32 0, label %sw.bb.i.i372.i
    i32 1, label %sw.bb1.i.i374.i
    i32 2, label %sw.bb5.i.i376.i
    i32 3, label %sw.bb9.i.i378.i
    i32 4, label %sw.bb13.i.i380.i
    i32 5, label %sw.bb17.i.i382.i
  ]

sw.bb.i.i372.i:                                   ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %150 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i371.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %150, i32 0, i32 8, i32 1
  br label %__offset_LM.exit.i386.i

sw.bb1.i.i374.i:                                  ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %151 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i373.i = getelementptr %struct.mdp5_cfg_hw, ptr %151, i32 0, i32 8, i32 1, i32 1
  br label %__offset_LM.exit.i386.i

sw.bb5.i.i376.i:                                  ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %152 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i375.i = getelementptr %struct.mdp5_cfg_hw, ptr %152, i32 0, i32 8, i32 1, i32 2
  br label %__offset_LM.exit.i386.i

sw.bb9.i.i378.i:                                  ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %153 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i377.i = getelementptr %struct.mdp5_cfg_hw, ptr %153, i32 0, i32 8, i32 1, i32 3
  br label %__offset_LM.exit.i386.i

sw.bb13.i.i380.i:                                 ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %154 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i379.i = getelementptr %struct.mdp5_cfg_hw, ptr %154, i32 0, i32 8, i32 1, i32 4
  br label %__offset_LM.exit.i386.i

sw.bb17.i.i382.i:                                 ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %155 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i381.i = getelementptr %struct.mdp5_cfg_hw, ptr %155, i32 0, i32 8, i32 1, i32 5
  br label %__offset_LM.exit.i386.i

do.body.i.i383.i:                                 ; preds = %mdp5_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

__offset_LM.exit.i386.i:                          ; preds = %sw.bb17.i.i382.i, %sw.bb13.i.i380.i, %sw.bb9.i.i378.i, %sw.bb5.i.i376.i, %sw.bb1.i.i374.i, %sw.bb.i.i372.i
  %retval.0.in.i.i384.i = phi ptr [ %arrayidx20.i.i381.i, %sw.bb17.i.i382.i ], [ %arrayidx16.i.i379.i, %sw.bb13.i.i380.i ], [ %arrayidx12.i.i377.i, %sw.bb9.i.i378.i ], [ %arrayidx8.i.i375.i, %sw.bb5.i.i376.i ], [ %arrayidx4.i.i373.i, %sw.bb1.i.i374.i ], [ %base.i.i371.i, %sw.bb.i.i372.i ]
  %switch.tableidx116 = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx116)
  %156 = icmp ult i32 %switch.tableidx116, 7
  br i1 %156, label %switch.lookup115, label %do.body.i5.i393.i

do.body.i5.i393.i:                                ; preds = %__offset_LM.exit.i386.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

switch.lookup115:                                 ; preds = %__offset_LM.exit.i386.i
  %157 = ptrtoint ptr %retval.0.in.i.i384.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %retval.0.i.i385.i = load i32, ptr %retval.0.in.i.i384.i, align 4
  %switch.gep117 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.48, i32 0, i32 %switch.tableidx116
  %158 = ptrtoint ptr %switch.gep117 to i32
  call void @__asan_load4_noabort(i32 %158)
  %switch.load118 = load i32, ptr %switch.gep117, align 4
  %add.i395.i = add i32 %retval.0.i.i385.i, 4
  %add2.i396.i = add i32 %add.i395.i, %switch.load118
  %159 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp.i399.i = icmp slt i32 %160, 1
  br i1 %cmp.i399.i, label %do.end.i400.i, label %switch.lookup115.mdp5_write.exit403.i_crit_edge, !prof !103

switch.lookup115.mdp5_write.exit403.i_crit_edge:  ; preds = %switch.lookup115
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit403.i

do.end.i400.i:                                    ; preds = %switch.lookup115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit403.i

mdp5_write.exit403.i:                             ; preds = %do.end.i400.i, %switch.lookup115.mdp5_write.exit403.i_crit_edge
  %161 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i402.i = getelementptr i8, ptr %162, i32 %add2.i396.i
  tail call void @msm_writel(i32 noundef %83, ptr noundef %add.ptr.i402.i) #9
  %163 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %cond.i, label %do.body.i.i416.i [
    i32 0, label %sw.bb.i.i405.i
    i32 1, label %sw.bb1.i.i407.i
    i32 2, label %sw.bb5.i.i409.i
    i32 3, label %sw.bb9.i.i411.i
    i32 4, label %sw.bb13.i.i413.i
    i32 5, label %sw.bb17.i.i415.i
  ]

sw.bb.i.i405.i:                                   ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %164 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i404.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %164, i32 0, i32 8, i32 1
  br label %__offset_LM.exit.i419.i

sw.bb1.i.i407.i:                                  ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %165 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i406.i = getelementptr %struct.mdp5_cfg_hw, ptr %165, i32 0, i32 8, i32 1, i32 1
  br label %__offset_LM.exit.i419.i

sw.bb5.i.i409.i:                                  ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %166 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i408.i = getelementptr %struct.mdp5_cfg_hw, ptr %166, i32 0, i32 8, i32 1, i32 2
  br label %__offset_LM.exit.i419.i

sw.bb9.i.i411.i:                                  ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %167 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i410.i = getelementptr %struct.mdp5_cfg_hw, ptr %167, i32 0, i32 8, i32 1, i32 3
  br label %__offset_LM.exit.i419.i

sw.bb13.i.i413.i:                                 ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %168 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i412.i = getelementptr %struct.mdp5_cfg_hw, ptr %168, i32 0, i32 8, i32 1, i32 4
  br label %__offset_LM.exit.i419.i

sw.bb17.i.i415.i:                                 ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %169 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i414.i = getelementptr %struct.mdp5_cfg_hw, ptr %169, i32 0, i32 8, i32 1, i32 5
  br label %__offset_LM.exit.i419.i

do.body.i.i416.i:                                 ; preds = %mdp5_write.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

__offset_LM.exit.i419.i:                          ; preds = %sw.bb17.i.i415.i, %sw.bb13.i.i413.i, %sw.bb9.i.i411.i, %sw.bb5.i.i409.i, %sw.bb1.i.i407.i, %sw.bb.i.i405.i
  %retval.0.in.i.i417.i = phi ptr [ %arrayidx20.i.i414.i, %sw.bb17.i.i415.i ], [ %arrayidx16.i.i412.i, %sw.bb13.i.i413.i ], [ %arrayidx12.i.i410.i, %sw.bb9.i.i411.i ], [ %arrayidx8.i.i408.i, %sw.bb5.i.i409.i ], [ %arrayidx4.i.i406.i, %sw.bb1.i.i407.i ], [ %base.i.i404.i, %sw.bb.i.i405.i ]
  %switch.tableidx120 = add nsw i32 %i.0552.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx120)
  %170 = icmp ult i32 %switch.tableidx120, 7
  br i1 %170, label %switch.lookup119, label %do.body.i5.i426.i

do.body.i5.i426.i:                                ; preds = %__offset_LM.exit.i419.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

switch.lookup119:                                 ; preds = %__offset_LM.exit.i419.i
  %171 = ptrtoint ptr %retval.0.in.i.i417.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %retval.0.i.i418.i = load i32, ptr %retval.0.in.i.i417.i, align 4
  %switch.gep121 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.49, i32 0, i32 %switch.tableidx120
  %172 = ptrtoint ptr %switch.gep121 to i32
  call void @__asan_load4_noabort(i32 %172)
  %switch.load122 = load i32, ptr %switch.gep121, align 4
  %add.i428.i = add i32 %retval.0.i.i418.i, 8
  %add2.i429.i = add i32 %add.i428.i, %switch.load122
  %173 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.i432.i = icmp slt i32 %174, 1
  br i1 %cmp.i432.i, label %do.end.i433.i, label %switch.lookup119.mdp5_write.exit436.i_crit_edge, !prof !103

switch.lookup119.mdp5_write.exit436.i_crit_edge:  ; preds = %switch.lookup119
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit436.i

do.end.i433.i:                                    ; preds = %switch.lookup119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit436.i

mdp5_write.exit436.i:                             ; preds = %do.end.i433.i, %switch.lookup119.mdp5_write.exit436.i_crit_edge
  %175 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i435.i = getelementptr i8, ptr %176, i32 %add2.i429.i
  tail call void @msm_writel(i32 noundef %bg_alpha.0.i, ptr noundef %add.ptr.i435.i) #9
  br label %for.inc173.i

for.inc173.i:                                     ; preds = %mdp5_write.exit436.i, %mdp5_write.exit338.i.for.inc173.i_crit_edge, %for.body84.i.for.inc173.i_crit_edge
  %mixer_op_mode.2.i = phi i32 [ %mixer_op_mode.1.i, %mdp5_write.exit436.i ], [ %mixer_op_mode.1.i, %mdp5_write.exit338.i.for.inc173.i_crit_edge ], [ %mixer_op_mode.0554.i, %for.body84.i.for.inc173.i_crit_edge ]
  %inc174.i = add nuw nsw i32 %i.0552.i, 1
  %exitcond.not.i = icmp eq i32 %inc174.i, 9
  br i1 %exitcond.not.i, label %for.end175.i, label %for.inc173.i.for.body84.i_crit_edge

for.inc173.i.for.body84.i_crit_edge:              ; preds = %for.inc173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body84.i

for.end175.i:                                     ; preds = %for.inc173.i
  %177 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %29, label %do.body.i.i449.i [
    i32 0, label %sw.bb.i.i438.i
    i32 1, label %sw.bb1.i.i440.i
    i32 2, label %sw.bb5.i.i442.i
    i32 3, label %sw.bb9.i.i444.i
    i32 4, label %sw.bb13.i.i446.i
    i32 5, label %sw.bb17.i.i448.i
  ]

sw.bb.i.i438.i:                                   ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %178 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i437.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %178, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i

sw.bb1.i.i440.i:                                  ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %179 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i439.i = getelementptr %struct.mdp5_cfg_hw, ptr %179, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i

sw.bb5.i.i442.i:                                  ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %180 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i441.i = getelementptr %struct.mdp5_cfg_hw, ptr %180, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i

sw.bb9.i.i444.i:                                  ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %181 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i443.i = getelementptr %struct.mdp5_cfg_hw, ptr %181, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i

sw.bb13.i.i446.i:                                 ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %182 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i445.i = getelementptr %struct.mdp5_cfg_hw, ptr %182, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i

sw.bb17.i.i448.i:                                 ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %183 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i447.i = getelementptr %struct.mdp5_cfg_hw, ptr %183, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i

do.body.i.i449.i:                                 ; preds = %for.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit.i:               ; preds = %sw.bb17.i.i448.i, %sw.bb13.i.i446.i, %sw.bb9.i.i444.i, %sw.bb5.i.i442.i, %sw.bb1.i.i440.i, %sw.bb.i.i438.i
  %retval.0.in.i.i450.i = phi ptr [ %arrayidx20.i.i447.i, %sw.bb17.i.i448.i ], [ %arrayidx16.i.i445.i, %sw.bb13.i.i446.i ], [ %arrayidx12.i.i443.i, %sw.bb9.i.i444.i ], [ %arrayidx8.i.i441.i, %sw.bb5.i.i442.i ], [ %arrayidx4.i.i439.i, %sw.bb1.i.i440.i ], [ %base.i.i437.i, %sw.bb.i.i438.i ]
  %184 = ptrtoint ptr %retval.0.in.i.i450.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %retval.0.i.i451.i = load i32, ptr %retval.0.in.i.i450.i, align 4
  %185 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp.i454.i = icmp slt i32 %186, 1
  br i1 %cmp.i454.i, label %do.end.i455.i, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i.mdp5_read.exit.i_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit.i.mdp5_read.exit.i_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_read.exit.i

do.end.i455.i:                                    ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_read.exit.i

mdp5_read.exit.i:                                 ; preds = %do.end.i455.i, %REG_MDP5_LM_BLEND_COLOR_OUT.exit.i.mdp5_read.exit.i_crit_edge
  %187 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i457.i = getelementptr i8, ptr %188, i32 %retval.0.i.i451.i
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i457.i) #9
  %189 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %29, label %do.body.i.i470.i [
    i32 0, label %sw.bb.i.i459.i
    i32 1, label %sw.bb1.i.i461.i
    i32 2, label %sw.bb5.i.i463.i
    i32 3, label %sw.bb9.i.i465.i
    i32 4, label %sw.bb13.i.i467.i
    i32 5, label %sw.bb17.i.i469.i
  ]

sw.bb.i.i459.i:                                   ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %190 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i458.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %190, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i

sw.bb1.i.i461.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %191 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i460.i = getelementptr %struct.mdp5_cfg_hw, ptr %191, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i

sw.bb5.i.i463.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %192 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i462.i = getelementptr %struct.mdp5_cfg_hw, ptr %192, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i

sw.bb9.i.i465.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %193 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i464.i = getelementptr %struct.mdp5_cfg_hw, ptr %193, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i

sw.bb13.i.i467.i:                                 ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %194 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i466.i = getelementptr %struct.mdp5_cfg_hw, ptr %194, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i

sw.bb17.i.i469.i:                                 ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %195 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i468.i = getelementptr %struct.mdp5_cfg_hw, ptr %195, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i

do.body.i.i470.i:                                 ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i:            ; preds = %sw.bb17.i.i469.i, %sw.bb13.i.i467.i, %sw.bb9.i.i465.i, %sw.bb5.i.i463.i, %sw.bb1.i.i461.i, %sw.bb.i.i459.i
  %retval.0.in.i.i471.i = phi ptr [ %arrayidx20.i.i468.i, %sw.bb17.i.i469.i ], [ %arrayidx16.i.i466.i, %sw.bb13.i.i467.i ], [ %arrayidx12.i.i464.i, %sw.bb9.i.i465.i ], [ %arrayidx8.i.i462.i, %sw.bb5.i.i463.i ], [ %arrayidx4.i.i460.i, %sw.bb1.i.i461.i ], [ %base.i.i458.i, %sw.bb.i.i459.i ]
  %196 = ptrtoint ptr %retval.0.in.i.i471.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %retval.0.i.i472.i = load i32, ptr %retval.0.in.i.i471.i, align 4
  %or179.i = or i32 %call.i.i, %mixer_op_mode.2.i
  %197 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp.i476.i = icmp slt i32 %198, 1
  br i1 %cmp.i476.i, label %do.end.i477.i, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i.mdp5_write.exit480.i_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i.mdp5_write.exit480.i_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit480.i

do.end.i477.i:                                    ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit480.i

mdp5_write.exit480.i:                             ; preds = %do.end.i477.i, %REG_MDP5_LM_BLEND_COLOR_OUT.exit474.i.mdp5_write.exit480.i_crit_edge
  %199 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i479.i = getelementptr i8, ptr %200, i32 %retval.0.i.i472.i
  tail call void @msm_writel(i32 noundef %or179.i, ptr noundef %add.ptr.i479.i) #9
  br i1 %tobool.not.i, label %mdp5_write.exit480.i.if.end186.i_crit_edge, label %if.then181.i

mdp5_write.exit480.i.if.end186.i_crit_edge:       ; preds = %mdp5_write.exit480.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.i

if.then181.i:                                     ; preds = %mdp5_write.exit480.i
  %201 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %cond.i, label %do.body.i.i493.i [
    i32 0, label %sw.bb.i.i482.i
    i32 1, label %sw.bb1.i.i484.i
    i32 2, label %sw.bb5.i.i486.i
    i32 3, label %sw.bb9.i.i488.i
    i32 4, label %sw.bb13.i.i490.i
    i32 5, label %sw.bb17.i.i492.i
  ]

sw.bb.i.i482.i:                                   ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %202 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i481.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %202, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i

sw.bb1.i.i484.i:                                  ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %203 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i483.i = getelementptr %struct.mdp5_cfg_hw, ptr %203, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i

sw.bb5.i.i486.i:                                  ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %204 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i485.i = getelementptr %struct.mdp5_cfg_hw, ptr %204, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i

sw.bb9.i.i488.i:                                  ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %205 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i487.i = getelementptr %struct.mdp5_cfg_hw, ptr %205, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i

sw.bb13.i.i490.i:                                 ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %206 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i489.i = getelementptr %struct.mdp5_cfg_hw, ptr %206, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i

sw.bb17.i.i492.i:                                 ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %207 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i491.i = getelementptr %struct.mdp5_cfg_hw, ptr %207, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i

do.body.i.i493.i:                                 ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i:            ; preds = %sw.bb17.i.i492.i, %sw.bb13.i.i490.i, %sw.bb9.i.i488.i, %sw.bb5.i.i486.i, %sw.bb1.i.i484.i, %sw.bb.i.i482.i
  %retval.0.in.i.i494.i = phi ptr [ %arrayidx20.i.i491.i, %sw.bb17.i.i492.i ], [ %arrayidx16.i.i489.i, %sw.bb13.i.i490.i ], [ %arrayidx12.i.i487.i, %sw.bb9.i.i488.i ], [ %arrayidx8.i.i485.i, %sw.bb5.i.i486.i ], [ %arrayidx4.i.i483.i, %sw.bb1.i.i484.i ], [ %base.i.i481.i, %sw.bb.i.i482.i ]
  %208 = ptrtoint ptr %retval.0.in.i.i494.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %retval.0.i.i495.i = load i32, ptr %retval.0.in.i.i494.i, align 4
  %209 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp.i499.i = icmp slt i32 %210, 1
  br i1 %cmp.i499.i, label %do.end.i500.i, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i.mdp5_read.exit504.i_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i.mdp5_read.exit504.i_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_read.exit504.i

do.end.i500.i:                                    ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_read.exit504.i

mdp5_read.exit504.i:                              ; preds = %do.end.i500.i, %REG_MDP5_LM_BLEND_COLOR_OUT.exit497.i.mdp5_read.exit504.i_crit_edge
  %211 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i502.i = getelementptr i8, ptr %212, i32 %retval.0.i.i495.i
  %call.i503.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i502.i) #9
  %213 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %cond.i, label %do.body.i.i517.i [
    i32 0, label %sw.bb.i.i506.i
    i32 1, label %sw.bb1.i.i508.i
    i32 2, label %sw.bb5.i.i510.i
    i32 3, label %sw.bb9.i.i512.i
    i32 4, label %sw.bb13.i.i514.i
    i32 5, label %sw.bb17.i.i516.i
  ]

sw.bb.i.i506.i:                                   ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %214 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i505.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %214, i32 0, i32 8, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i

sw.bb1.i.i508.i:                                  ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %215 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i507.i = getelementptr %struct.mdp5_cfg_hw, ptr %215, i32 0, i32 8, i32 1, i32 1
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i

sw.bb5.i.i510.i:                                  ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %216 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i509.i = getelementptr %struct.mdp5_cfg_hw, ptr %216, i32 0, i32 8, i32 1, i32 2
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i

sw.bb9.i.i512.i:                                  ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %217 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i511.i = getelementptr %struct.mdp5_cfg_hw, ptr %217, i32 0, i32 8, i32 1, i32 3
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i

sw.bb13.i.i514.i:                                 ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %218 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i513.i = getelementptr %struct.mdp5_cfg_hw, ptr %218, i32 0, i32 8, i32 1, i32 4
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i

sw.bb17.i.i516.i:                                 ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %219 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx20.i.i515.i = getelementptr %struct.mdp5_cfg_hw, ptr %219, i32 0, i32 8, i32 1, i32 5
  br label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i

do.body.i.i517.i:                                 ; preds = %mdp5_read.exit504.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i:            ; preds = %sw.bb17.i.i516.i, %sw.bb13.i.i514.i, %sw.bb9.i.i512.i, %sw.bb5.i.i510.i, %sw.bb1.i.i508.i, %sw.bb.i.i506.i
  %retval.0.in.i.i518.i = phi ptr [ %arrayidx20.i.i515.i, %sw.bb17.i.i516.i ], [ %arrayidx16.i.i513.i, %sw.bb13.i.i514.i ], [ %arrayidx12.i.i511.i, %sw.bb9.i.i512.i ], [ %arrayidx8.i.i509.i, %sw.bb5.i.i510.i ], [ %arrayidx4.i.i507.i, %sw.bb1.i.i508.i ], [ %base.i.i505.i, %sw.bb.i.i506.i ]
  %220 = ptrtoint ptr %retval.0.in.i.i518.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %retval.0.i.i519.i = load i32, ptr %retval.0.in.i.i518.i, align 4
  %or185.i = or i32 %call.i503.i, %mixer_op_mode.2.i
  %221 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %222)
  %cmp.i523.i = icmp slt i32 %222, 1
  br i1 %cmp.i523.i, label %do.end.i524.i, label %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i.mdp5_write.exit527.i_crit_edge, !prof !103

REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i.mdp5_write.exit527.i_crit_edge: ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit527.i

do.end.i524.i:                                    ; preds = %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit527.i

mdp5_write.exit527.i:                             ; preds = %do.end.i524.i, %REG_MDP5_LM_BLEND_COLOR_OUT.exit521.i.mdp5_write.exit527.i_crit_edge
  %223 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i526.i = getelementptr i8, ptr %224, i32 %retval.0.i.i519.i
  tail call void @msm_writel(i32 noundef %or185.i, ptr noundef %add.ptr.i526.i) #9
  br label %if.end186.i

if.end186.i:                                      ; preds = %mdp5_write.exit527.i, %mdp5_write.exit480.i.if.end186.i_crit_edge
  %call188.i = call i32 @mdp5_ctl_blend(ptr noundef nonnull %35, ptr noundef %pipeline4.i, ptr noundef nonnull %stage.i, ptr noundef nonnull %r_stage.i, i32 noundef %plane_cnt.0.lcssa558.i, i32 noundef %ctl_blend_flags.0.i) #9
  br label %blend_setup.exit

blend_setup.exit:                                 ; preds = %if.end186.i, %cond.end.i.blend_setup.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lm_lock.i, i32 noundef %call13.i) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %r_stage.i) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stage.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pstates.i) #9
  %cmd_mode = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 6
  %225 = ptrtoint ptr %cmd_mode to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %cmd_mode, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool53.not = icmp eq i8 %226, 0
  br i1 %tobool53.not, label %blend_setup.exit.if.end55_crit_edge, label %if.then54

blend_setup.exit.if.end55_crit_edge:              ; preds = %blend_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %blend_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pp_completion.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 11
  %227 = ptrtoint ptr %pp_completion.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %pp_completion.i, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %blend_setup.exit.if.end55_crit_edge
  %228 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %state2, align 4
  %ctl.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ctl.i, align 4
  %tobool.not.i84 = icmp eq ptr %231, null
  br i1 %tobool.not.i84, label %do.end.i, label %if.end24.i, !prof !103

do.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #9
  br label %crtc_flush_all.exit

if.end24.i:                                       ; preds = %if.end55
  %232 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %crtc, align 8
  %plane_list.i85 = getelementptr inbounds %struct.drm_device, ptr %233, i32 0, i32 30, i32 18
  %234 = ptrtoint ptr %plane_list.i85 to i32
  call void @__asan_load4_noabort(i32 %234)
  %.pn78.i = load ptr, ptr %plane_list.i85, align 4
  %cmp.not81.i = icmp eq ptr %.pn78.i, %plane_list.i85
  br i1 %cmp.not81.i, label %if.end24.i.for.end.i95_crit_edge, label %if.end24.i.for.body.i90_crit_edge

if.end24.i.for.body.i90_crit_edge:                ; preds = %if.end24.i
  br label %for.body.i90

if.end24.i.for.end.i95_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i95

for.body.i90:                                     ; preds = %for.inc.i94.for.body.i90_crit_edge, %if.end24.i.for.body.i90_crit_edge
  %.pn83.i = phi ptr [ %.pn.i93, %for.inc.i94.for.body.i90_crit_edge ], [ %.pn78.i, %if.end24.i.for.body.i90_crit_edge ]
  %flush_mask.082.i = phi i32 [ %flush_mask.1.i, %for.inc.i94.for.body.i90_crit_edge ], [ 0, %if.end24.i.for.body.i90_crit_edge ]
  %plane.084.i = getelementptr i8, ptr %.pn83.i, i32 -4
  %235 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %state2, align 4
  %plane_mask.i86 = getelementptr inbounds %struct.drm_crtc_state, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %plane_mask.i86 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %plane_mask.i86, align 4
  %index.i.i.i87 = getelementptr i8, ptr %.pn83.i, i32 480
  %239 = ptrtoint ptr %index.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %index.i.i.i87, align 4
  %shl.i.i88 = shl nuw i32 1, %240
  %and.i89 = and i32 %shl.i.i88, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool34.not.i = icmp eq i32 %and.i89, 0
  br i1 %tobool34.not.i, label %for.body.i90.for.inc.i94_crit_edge, label %if.else.i92

for.body.i90.for.inc.i94_crit_edge:               ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i94

if.else.i92:                                      ; preds = %for.body.i90
  %state36.i = getelementptr i8, ptr %.pn83.i, i32 488
  %241 = ptrtoint ptr %state36.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %state36.i, align 4
  %visible.i91 = getelementptr inbounds %struct.drm_plane_state, ptr %242, i32 0, i32 22
  %243 = ptrtoint ptr %visible.i91 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %visible.i91, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool37.not.i = icmp eq i8 %244, 0
  br i1 %tobool37.not.i, label %if.else.i92.for.inc.i94_crit_edge, label %if.end39.i

if.else.i92.for.inc.i94_crit_edge:                ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i94

if.end39.i:                                       ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i = call i32 @mdp5_plane_get_flush(ptr noundef %plane.084.i) #9
  %or.i = or i32 %call40.i, %flush_mask.082.i
  br label %for.inc.i94

for.inc.i94:                                      ; preds = %if.end39.i, %if.else.i92.for.inc.i94_crit_edge, %for.body.i90.for.inc.i94_crit_edge
  %flush_mask.1.i = phi i32 [ %or.i, %if.end39.i ], [ %flush_mask.082.i, %if.else.i92.for.inc.i94_crit_edge ], [ %flush_mask.082.i, %for.body.i90.for.inc.i94_crit_edge ]
  %245 = ptrtoint ptr %.pn83.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %.pn.i93 = load ptr, ptr %.pn83.i, align 4
  %246 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %crtc, align 8
  %plane_list30.i = getelementptr inbounds %struct.drm_device, ptr %247, i32 0, i32 30, i32 18
  %cmp.not.i = icmp eq ptr %.pn.i93, %plane_list30.i
  br i1 %cmp.not.i, label %for.inc.i94.for.end.i95_crit_edge, label %for.inc.i94.for.body.i90_crit_edge

for.inc.i94.for.body.i90_crit_edge:               ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i90

for.inc.i94.for.end.i95_crit_edge:                ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i95

for.end.i95:                                      ; preds = %for.inc.i94.for.end.i95_crit_edge, %if.end24.i.for.end.i95_crit_edge
  %flush_mask.0.lcssa.i = phi i32 [ 0, %if.end24.i.for.end.i95_crit_edge ], [ %flush_mask.1.i, %for.inc.i94.for.end.i95_crit_edge ]
  %mixer47.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %229, i32 0, i32 2, i32 1
  %248 = ptrtoint ptr %mixer47.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mixer47.i, align 4
  %lm.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %lm.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %lm.i, align 4
  %call48.i = call i32 @mdp_ctl_flush_mask_lm(i32 noundef %251) #9
  %or49.i = or i32 %call48.i, %flush_mask.0.lcssa.i
  %r_mixer51.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %229, i32 0, i32 2, i32 2
  %252 = ptrtoint ptr %r_mixer51.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %r_mixer51.i, align 4
  %tobool52.not.i = icmp eq ptr %253, null
  br i1 %tobool52.not.i, label %for.end.i95.if.end57.i_crit_edge, label %if.then53.i

for.end.i95.if.end57.i_crit_edge:                 ; preds = %for.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then53.i:                                      ; preds = %for.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  %lm54.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %lm54.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %lm54.i, align 4
  %call55.i = call i32 @mdp_ctl_flush_mask_lm(i32 noundef %255) #9
  %or56.i = or i32 %call55.i, %or49.i
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %for.end.i95.if.end57.i_crit_edge
  %flush_mask.2.i = phi i32 [ %or56.i, %if.then53.i ], [ %or49.i, %for.end.i95.if.end57.i_crit_edge ]
  %256 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %state2, align 4
  %ctl1.i.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ctl1.i.i, align 4
  %pipeline2.i.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %257, i32 0, i32 2
  %defer_start.i.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %257, i32 0, i32 7
  %260 = ptrtoint ptr %defer_start.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %defer_start.i.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.not.i.i = icmp eq i8 %261, 0
  %262 = ptrtoint ptr %defer_start.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %defer_start.i.i, align 1
  %263 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %name, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %264, i32 noundef %flush_mask.2.i) #9
  %call.i.i96 = call i32 @mdp5_ctl_commit(ptr noundef %259, ptr noundef %pipeline2.i.i, i32 noundef %flush_mask.2.i, i1 noundef zeroext %tobool.not.i.i) #9
  br label %crtc_flush_all.exit

crtc_flush_all.exit:                              ; preds = %if.end57.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %call.i.i96, %if.end57.i ]
  %flushed_mask = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 5
  %265 = ptrtoint ptr %flushed_mask to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %retval.0.i, ptr %flushed_mask, align 8
  %vblank_irqmask = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 3
  %266 = ptrtoint ptr %vblank_irqmask to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %vblank_irqmask, align 4
  %irqmask = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 8, i32 1
  %268 = ptrtoint ptr %irqmask to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %irqmask, align 8
  %err_irqmask = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 4
  %269 = ptrtoint ptr %err_irqmask to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %err_irqmask, align 4
  %irqmask57 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 9, i32 1
  %271 = ptrtoint ptr %irqmask57 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %irqmask57, align 4
  %pp_done_irqmask = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 5
  %272 = ptrtoint ptr %pp_done_irqmask to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %pp_done_irqmask, align 4
  %irqmask58 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 10, i32 1
  %274 = ptrtoint ptr %irqmask58 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %irqmask58, align 8
  %pending1.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending1.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %pending1.i, i32 1, i32 3, i32 1) #9
  %275 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending1.i, ptr %pending1.i, i32 2, ptr elementtype(i32) %pending1.i) #9, !srcloc !112
  %276 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %crtc, align 8
  %dev_private.i.i97 = getelementptr inbounds %struct.drm_device, ptr %277, i32 0, i32 5
  %278 = ptrtoint ptr %dev_private.i.i97 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev_private.i.i97, align 4
  %kms.i.i98 = getelementptr inbounds %struct.msm_drm_private, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %kms.i.i98 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %kms.i.i98, align 4
  %vblank.i = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 8
  call void @mdp_irq_register(ptr noundef %281, ptr noundef %vblank.i) #9
  br label %cleanup

cleanup:                                          ; preds = %crtc_flush_all.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state2, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef %11) #9
  %enabled = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 2
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end28, label %do.end, !prof !110

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end28:                                         ; preds = %entry
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev5, i32 noundef 4) #9
  %lm_cursor_enabled = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 12
  %14 = ptrtoint ptr %lm_cursor_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lm_cursor_enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %if.end28.if.end51_crit_edge, label %if.then31

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then31:                                        ; preds = %if.end28
  %iova = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %iova, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool32.not = icmp eq i64 %17, 0
  br i1 %tobool32.not, label %if.then31.if.end51.sink.split_crit_edge, label %if.then33

if.then31.if.end51.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.sink.split

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %cursor = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 13
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cursor) #9
  tail call fastcc void @mdp5_crtc_restore_cursor(ptr noundef %crtc)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cursor, i32 noundef %call39) #9
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.then33, %if.then31.if.end51.sink.split_crit_edge
  %18 = xor i1 %tobool32.not, true
  %ctl = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl, align 4
  %pipeline = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2
  %call46 = tail call i32 @mdp5_ctl_set_cursor(ptr noundef %20, ptr noundef %pipeline, i32 noundef 0, i1 noundef zeroext %18) #9
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.end28.if.end51_crit_edge
  %21 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state2, align 4
  %pipeline.i = getelementptr inbounds %struct.mdp5_crtc_state, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pipeline.i, align 4
  %mode.i = getelementptr inbounds %struct.mdp5_interface, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i = icmp ne i32 %26, 2
  %cond.i = sext i1 %cmp.i to i32
  tail call void @drm_crtc_set_max_vblank_count(ptr noundef %crtc, i32 noundef %cond.i) #9
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #9
  tail call void @mdp5_crtc_mode_set_nofb(ptr noundef %crtc)
  %err = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 9
  tail call void @mdp_irq_register(ptr noundef %7, ptr noundef %err) #9
  %cmd_mode = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %cmd_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cmd_mode, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not = icmp eq i8 %28, 0
  br i1 %tobool52.not, label %if.end51.if.end55_crit_edge, label %if.then53

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %pp_done = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 10
  tail call void @mdp_irq_register(ptr noundef %7, ptr noundef %pp_done) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51.if.end55_crit_edge
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state2, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef %11) #9
  %enabled = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 2
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %do.end, label %if.end29, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 500, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end29:                                         ; preds = %entry
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #9
  %cmd_mode = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %cmd_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_mode, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %pp_done = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 10
  tail call void @mdp_irq_unregister(ptr noundef %7, ptr noundef %pp_done) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %err = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 9
  tail call void @mdp_irq_unregister(ptr noundef %7, ptr noundef %err) #9
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev5, i32 noundef 4) #9
  %16 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state2, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %event, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool36.not, label %if.end32.if.end88_crit_edge, label %land.lhs.true

if.end32.if.end88_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.lhs.true:                                    ; preds = %if.end32
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool38.not = icmp eq i8 %21, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then39:                                        ; preds = %land.lhs.true
  %event41 = getelementptr inbounds %struct.mdp5_crtc, ptr %crtc, i32 0, i32 4
  %22 = ptrtoint ptr %event41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %event41, align 4
  %tobool42.not = icmp eq ptr %23, null
  br i1 %tobool42.not, label %if.then39.if.end64_crit_edge, label %do.end58, !prof !110

if.then39.if.end64_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end58:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 513, i32 noundef 9, ptr noundef null) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %if.then39.if.end64_crit_edge
  %dev75 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev75, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #9
  %26 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state2, align 4
  %event83 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %event83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %event83, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %29) #9
  %30 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state2, align 4
  %event85 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %event85 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %event85, align 4
  %33 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev75, align 8
  %event_lock87 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock87, i32 noundef %call77) #9
  br label %if.end88

if.end88:                                         ; preds = %if.end64, %land.lhs.true.if.end88_crit_edge, %if.end32.if.end88_crit_edge
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mdp5_crtc_get_scanout_position(ptr noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef writeonly %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %crtc4.i = getelementptr i8, ptr %.pn.i, i32 48
  %5 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc4.i, align 4
  %cmp5.i = icmp eq ptr %6, %crtc
  br i1 %cmp5.i, label %get_encoder_from_crtc.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_encoder_from_crtc.exit:                       ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %get_encoder_from_crtc.exit.if.then_crit_edge, label %if.end

get_encoder_from_crtc.exit.if.then_crit_edge:     ; preds = %get_encoder_from_crtc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %get_encoder_from_crtc.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %get_encoder_from_crtc.exit
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %7 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_vsync_end, align 2
  %conv = zext i16 %8 to i32
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %9 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_vsync_start, align 4
  %conv1 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv, %conv1
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %11 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_vtotal, align 4
  %conv2 = zext i16 %12 to i32
  %sub5 = sub nsw i32 %conv2, %conv
  %add = add nsw i32 %sub5, %sub
  %add6 = add nsw i32 %add, 1
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %13 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_vdisplay, align 2
  %conv7 = zext i16 %14 to i32
  %add8 = add nsw i32 %add6, %conv7
  %tobool11.not = icmp eq ptr %stime, null
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i64 @ktime_get() #9
  %15 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call13, ptr %stime, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @mdp5_encoder_get_linecount(ptr noundef nonnull %encoder.0.le.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %add)
  %cmp.not = icmp sgt i32 %call15, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %add8)
  %cmp19 = icmp sgt i32 %call15, %add8
  %or.cond = select i1 %cmp.not, i1 %cmp19, i1 false
  %sub22 = select i1 %or.cond, i32 %conv2, i32 0
  %add6.neg = xor i32 %add, -1
  %.neg = add i32 %call15, %add6.neg
  %line.0 = sub i32 %.neg, %sub22
  %16 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %line.0, ptr %vpos, align 4
  %17 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hpos, align 4
  %tobool28.not = icmp eq ptr %etime, null
  br i1 %tobool28.not, label %if.end14.cleanup_crit_edge, label %if.then29

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i64 @ktime_get() #9
  %18 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call30, ptr %etime, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end14.cleanup_crit_edge, %if.then
  %tobool.not59 = phi i1 [ true, %if.end14.cleanup_crit_edge ], [ true, %if.then29 ], [ false, %if.then ]
  ret i1 %tobool.not59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_hw_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pstate_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.plane_state, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %normalized_zpos, align 4
  %state1 = getelementptr inbounds %struct.plane_state, ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  %normalized_zpos3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %normalized_zpos3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %normalized_zpos3, align 4
  %sub = sub i32 %3, %7
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_mixer_assign(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_mixer_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_plane_pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_plane_right_pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_plane_get_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_lm(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_set_max_vblank_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_encoder_get_linecount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !55, !57, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1272, i32 6}
!2 = !{ptr @mdp5_crtc_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1319, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mdp5_crtc_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1320, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1335, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1212, i32 3}
!12 = !{ptr @mdp5_crtc_wait_for_pp_done._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.mdp5_crtc_wait_for_pp_done, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mdp5_crtc_wait_for_pp_done._entry, !11, !"_entry", i1 false, i1 false}
!18 = !{ptr @mdp5_crtc_wait_for_pp_done._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1237, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mdp5_crtc_wait_for_flush_done._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mdp5_crtc_wait_for_flush_done._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 150, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1191, i32 2}
!31 = !{ptr @mdp5_crtc_no_lm_cursor_funcs, !32, !"mdp5_crtc_no_lm_cursor_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1128, i32 36}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1078, i32 17}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1080, i32 16}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1081, i32 28}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1084, i32 17}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1087, i32 16}
!43 = !{ptr @mdp5_crtc_funcs, !44, !"mdp5_crtc_funcs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1142, i32 36}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 954, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mdp5_crtc_cursor_set._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mdp5_crtc_cursor_set._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 960, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 973, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1005, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 909, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 169, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 98, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1034, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mdp5_crtc_cursor_move._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mdp5_crtc_cursor_move._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mdp5_crtc_helper_funcs, !71, !"mdp5_crtc_helper_funcs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 1158, i32 43}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 380, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 706, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 742, i32 3}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 759, i32 3}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 769, i32 3}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 780, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 791, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 276, i32 3}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 302, i32 3}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 543, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c", i32 437, i32 3}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148726463}
!106 = !{i64 973343, i64 973360, i64 973384, i64 973410, i64 973428}
!107 = !{i64 2148726833}
!108 = !{i64 2148556118}
!109 = !{i64 2148470570, i64 2148470602, i64 2148470631, i64 2148470665, i64 2148470696, i64 2148470719}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2150204269}
!112 = !{i64 2148474713, i64 2148474739, i64 2148474768, i64 2148474802, i64 2148474833, i64 2148474856}
!113 = !{i64 2157565213, i64 2157565719, i64 2157565250, i64 2157565306, i64 2157565340, i64 2157565364, i64 2157565405, i64 2157565426, i64 2157565454, i64 2157565488}
!114 = !{i64 2157318473, i64 2157318979, i64 2157318510, i64 2157318566, i64 2157318600, i64 2157318624, i64 2157318665, i64 2157318686, i64 2157318714, i64 2157318748}
!115 = !{i64 2157321410, i64 2157321916, i64 2157321447, i64 2157321503, i64 2157321537, i64 2157321561, i64 2157321602, i64 2157321623, i64 2157321651, i64 2157321685}
