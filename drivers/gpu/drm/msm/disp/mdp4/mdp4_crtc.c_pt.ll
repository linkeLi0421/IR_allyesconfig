; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mdp4_crtc = type { %struct.drm_crtc, [8 x i8], i32, i32, i32, i8, i32, %struct.anon.96, ptr, i32, %struct.atomic_t, %struct.drm_flip_work, %struct.mdp_irq, %struct.mdp_irq }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.anon.96 = type { %struct.spinlock, i8, i32, i32, i32, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
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
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: intf_sel=%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%d\00", [26 x i8] zeroinitializer }, align 32
@dma_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@mdp4_crtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&mdp4_crtc->cursor.lock\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unref cursor\00", [19 x i8] zeroinitializer }, align 32
@mdp4_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr @mdp4_crtc_cursor_set, ptr null, ptr @mdp4_crtc_cursor_move, ptr null, ptr @mdp4_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@mdp4_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @mdp4_crtc_atomic_check, ptr @mdp4_crtc_atomic_begin, ptr @mdp4_crtc_atomic_flush, ptr @mdp4_crtc_atomic_enable, ptr @mdp4_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@idxs = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 0, i32 0, i32 0, i32 3, i32 4], [36 x i8] zeroinitializer }, align 32
@setup_mixer.stages = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid pipe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c\00", [54 x i8] zeroinitializer }, align 32
@mdp4_crtc_wait_for_flush_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 543, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vblank time out, crtc=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mdp4_crtc_wait_for_flush_done\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdp4_crtc_wait_for_flush_done._entry_ptr = internal global ptr @mdp4_crtc_wait_for_flush_done._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: send event: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: error: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: flush=%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMA_P\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMA_S\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMA_E\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* bad cursor size: %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: check\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: begin\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: event: %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.blend_setup = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65920, i32 98688, i32 557440], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.24 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65924, i32 98692, i32 557444], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.25 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65928, i32 98696, i32 557448], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.26 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65932, i32 98700, i32 557452], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.27 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.28 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.29 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.30 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4100, i32 5124, i32 6148, i32 7044], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.31 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.32 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.33 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.34 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 260, i32 292, i32 324, i32 352], [16 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.35 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65544, i32 98312, i32 557064], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.36 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65536, i32 98304, i32 557056], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.37 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65536, i32 98304, i32 557056], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.38 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65548, i32 98316, i32 557068], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.39 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65552, i32 98320, i32 557072], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.40 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65556, i32 98324, i32 557076], [20 x i8] zeroinitializer }, align 32
@switch.table.blend_setup.41 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65560, i32 98328, i32 557080], [20 x i8] zeroinitializer }, align 32
@switch.table.mdp4_crtc_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.mdp4_crtc_init.42 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 0, i32 1024], [20 x i8] zeroinitializer }, align 32
@switch.table.crtc_flush = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 16, i32 32], [16 x i8] zeroinitializer }, align 32
@switch.table.mdp4_crtc_mode_set_nofb = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65548, i32 98316, i32 557068], [20 x i8] zeroinitializer }, align 32
@switch.table.mdp4_crtc_mode_set_nofb.43 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65544, i32 98312, i32 557064], [20 x i8] zeroinitializer }, align 32
@switch.table.mdp4_crtc_mode_set_nofb.44 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65552, i32 98320, i32 557072], [20 x i8] zeroinitializer }, align 32
@switch.table.mdp4_crtc_mode_set_nofb.45 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65540, i32 98308, i32 557060], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 601, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 644, i32 53 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"dma_names\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 615, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 647, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 650, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"mdp4_crtc_funcs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 476, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"mdp4_crtc_helper_funcs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 489, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"idxs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 137, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"stages\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 158, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 148, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 538, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 543, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 109, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 523, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 90, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 616, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 616, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 616, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 417, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 238, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 314, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 323, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 333, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [45 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 293, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"switch.table.blend_setup\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.24\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.25\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.26\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.27\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.28\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.29\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.30\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.31\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.32\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.33\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.34\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.35\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.36\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.37\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.38\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.39\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.40\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"switch.table.blend_setup.41\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [28 x i8] c"switch.table.mdp4_crtc_init\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [31 x i8] c"switch.table.mdp4_crtc_init.42\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"switch.table.crtc_flush\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [37 x i8] c"switch.table.mdp4_crtc_mode_set_nofb\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [40 x i8] c"switch.table.mdp4_crtc_mode_set_nofb.43\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [40 x i8] c"switch.table.mdp4_crtc_mode_set_nofb.44\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [40 x i8] c"switch.table.mdp4_crtc_mode_set_nofb.45\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @mdp4_crtc_wait_for_flush_done._entry, ptr @mdp4_crtc_wait_for_flush_done._entry_ptr, ptr @.str, ptr @.str.1, ptr @dma_names, ptr @mdp4_crtc_init.__key, ptr @.str.2, ptr @.str.3, ptr @mdp4_crtc_funcs, ptr @mdp4_crtc_helper_funcs, ptr @idxs, ptr @setup_mixer.stages, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.blend_setup, ptr @switch.table.blend_setup.24, ptr @switch.table.blend_setup.25, ptr @switch.table.blend_setup.26, ptr @switch.table.blend_setup.27, ptr @switch.table.blend_setup.28, ptr @switch.table.blend_setup.29, ptr @switch.table.blend_setup.30, ptr @switch.table.blend_setup.31, ptr @switch.table.blend_setup.32, ptr @switch.table.blend_setup.33, ptr @switch.table.blend_setup.34, ptr @switch.table.blend_setup.35, ptr @switch.table.blend_setup.36, ptr @switch.table.blend_setup.37, ptr @switch.table.blend_setup.38, ptr @switch.table.blend_setup.39, ptr @switch.table.blend_setup.40, ptr @switch.table.blend_setup.41, ptr @switch.table.mdp4_crtc_init, ptr @switch.table.mdp4_crtc_init.42, ptr @switch.table.crtc_flush, ptr @switch.table.mdp4_crtc_mode_set_nofb, ptr @switch.table.mdp4_crtc_mode_set_nofb.43, ptr @switch.table.mdp4_crtc_mode_set_nofb.44, ptr @switch.table.mdp4_crtc_mode_set_nofb.45], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_crtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idxs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_mixer.stages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_crtc_wait_for_flush_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blend_setup.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_crtc_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_crtc_init.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.crtc_flush to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_crtc_mode_set_nofb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_crtc_mode_set_nofb.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_crtc_mode_set_nofb.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_crtc_mode_set_nofb.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp4_crtc_vblank(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irqmask = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqmask, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_crtc_set_config(ptr nocapture noundef readonly %crtc, i32 noundef %config) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kms.i, align 4
  %switch.idx.mult = shl i32 %1, 16
  %switch.offset = add i32 %switch.idx.mult, 589824
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %switch.offset
  tail call void @msm_writel(i32 noundef %config, ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_crtc_set_intf(ptr noundef %crtc, i32 noundef %intf, i32 noundef %mixer) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 56
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #8
  %dma = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 4
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call.i, -4
  %and.i = and i32 %intf, 3
  %or = or i32 %and, %and.i
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i32 %call.i, -13
  %shl.i = shl i32 %intf, 2
  %and.i39 = and i32 %shl.i, 12
  %or6 = or i32 %and4, %and.i39
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %call.i, -49
  %shl.i40 = shl i32 %intf, 4
  %and.i41 = and i32 %shl.i40, 48
  %or10 = or i32 %and8, %and.i41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %intf_sel.0 = phi i32 [ %call.i, %entry.sw.epilog_crit_edge ], [ %or10, %sw.bb7 ], [ %or6, %sw.bb3 ], [ %or, %sw.bb ]
  %11 = zext i32 %intf to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %intf, label %sw.epilog.if.end17_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then14
  ]

sw.epilog.if.end17_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = and i32 %intf_sel.0, -193
  %or12 = or i32 %and11, 64
  br label %if.end17

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and15 = and i32 %intf_sel.0, -193
  %or16 = or i32 %and15, 128
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then, %sw.epilog.if.end17_crit_edge
  %intf_sel.1 = phi i32 [ %or12, %if.then ], [ %or16, %if.then14 ], [ %intf_sel.0, %sw.epilog.if.end17_crit_edge ]
  %mixer18 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 6
  %12 = ptrtoint ptr %mixer18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mixer, ptr %mixer18, align 8
  tail call fastcc void @blend_setup(ptr noundef %crtc)
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %intf_sel.1) #8
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i43 = getelementptr i8, ptr %14, i32 56
  tail call void @msm_writel(i32 noundef %intf_sel.1, ptr noundef %add.ptr.i43) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blend_setup(ptr nocapture noundef readonly %crtc) unnamed_addr #2 align 64 {
entry:
  %alpha = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %ovlp1 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 3
  %6 = ptrtoint ptr %ovlp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ovlp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alpha) #8
  %8 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %9 = icmp ult i32 %7, 3
  br i1 %9, label %switch.lookup, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep253 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.24, i32 0, i32 %7
  %11 = ptrtoint ptr %switch.gep253 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load254 = load i32, ptr %switch.gep253, align 4
  %switch.gep255 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.25, i32 0, i32 %7
  %12 = ptrtoint ptr %switch.gep255 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load256 = load i32, ptr %switch.gep255, align 4
  %switch.gep257 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.26, i32 0, i32 %7
  %13 = ptrtoint ptr %switch.gep257 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load258 = load i32, ptr %switch.gep257, align 4
  %mmio.i212.sink252 = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i213 = getelementptr i8, ptr %15, i32 %switch.load
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i213) #8
  %16 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i100222 = getelementptr i8, ptr %17, i32 %switch.load254
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i100222) #8
  %18 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i106231 = getelementptr i8, ptr %19, i32 %switch.load256
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i106231) #8
  %20 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i112 = getelementptr i8, ptr %21, i32 %switch.load258
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i112) #8
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 18
  %24 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn238 = load ptr, ptr %plane_list, align 4
  %cmp.not241 = icmp eq ptr %.pn238, %plane_list
  br i1 %cmp.not241, label %switch.lookup.for.body31.preheader_crit_edge, label %for.body.lr.ph

switch.lookup.for.body31.preheader_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.preheader

for.body.lr.ph:                                   ; preds = %switch.lookup
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  br label %for.body

for.cond29.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch = icmp ult i32 %7, 3
  br i1 %switch, label %for.cond29.preheader.for.body31.preheader_crit_edge, label %do.body.i.i115

for.cond29.preheader.for.body31.preheader_crit_edge: ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.preheader

for.body31.preheader:                             ; preds = %for.cond29.preheader.for.body31.preheader_crit_edge, %switch.lookup.for.body31.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 1
  %switch.select = select i1 %switch.selectcmp, i32 98308, i32 557060
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp245 = icmp eq i32 %7, 0
  %switch.select246 = select i1 %switch.selectcmp245, i32 65540, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %25 = icmp ult i32 %7, 3
  %switch.gep284 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.35, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %26 = icmp ult i32 %7, 3
  %switch.gep287 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.36, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %27 = icmp ult i32 %7, 3
  %switch.gep290 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.37, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %28 = icmp ult i32 %7, 3
  %switch.gep293 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.38, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %29 = icmp ult i32 %7, 3
  %switch.gep296 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.39, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %30 = icmp ult i32 %7, 3
  %switch.gep299 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.40, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %31 = icmp ult i32 %7, 3
  %switch.gep302 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.41, i32 0, i32 %7
  br label %for.body31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn242 = phi ptr [ %.pn238, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn242, i32 480
  %36 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %37
  %and = and i32 %shl.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %plane.0243 = getelementptr i8, ptr %.pn242, i32 -4
  %call13 = tail call i32 @mdp4_plane_pipe(ptr noundef %plane.0243) #8
  %38 = and i32 %call13, 1073741823
  %39 = add nsw i32 %38, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %39)
  %cmp14 = icmp ult i32 %39, -3
  br i1 %cmp14, label %if.then15, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [7 x i32], ptr @idxs, i32 0, i32 %call13
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %state17 = getelementptr i8, ptr %.pn242, i32 488
  %42 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state17, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb, align 4
  %call18 = tail call ptr @msm_framebuffer_format(ptr noundef %45) #8
  %alpha_enable = getelementptr inbounds %struct.mdp_format, ptr %call18, i32 0, i32 6
  %46 = ptrtoint ptr %alpha_enable to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %alpha_enable, align 4, !range !67
  %sub = add i32 %41, -1
  %arrayidx22 = getelementptr [4 x i8], ptr %alpha, i32 0, i32 %sub
  %48 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %49 = ptrtoint ptr %.pn242 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn242, align 4
  %50 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %crtc, align 8
  %plane_list11 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list11
  br i1 %cmp.not, label %for.cond29.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body31:                                       ; preds = %switch.lookup280.for.body31_crit_edge, %for.body31.preheader
  %i.0244 = phi i32 [ %inc, %switch.lookup280.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %arrayidx32 = getelementptr [4 x i8], ptr %alpha, i32 0, i32 %i.0244
  %52 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx32, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool33.not = icmp eq i8 %53, 0
  %spec.select = select i1 %tobool33.not, i32 16, i32 98
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %54 = icmp ult i32 %i.0244, 4
  br i1 %54, label %switch.lookup259, label %do.body.i5.i

do.body.i.i115:                                   ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

do.body.i5.i:                                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup259:                                 ; preds = %for.body31
  %switch.gep260 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.27, i32 0, i32 %i.0244
  %55 = ptrtoint ptr %switch.gep260 to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load261 = load i32, ptr %switch.gep260, align 4
  %add2.i = add nuw nsw i32 %switch.load261, %switch.select246
  %56 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i118 = getelementptr i8, ptr %57, i32 %add2.i
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i118) #8
  br i1 %25, label %switch.lookup283, label %do.body.i.i121

do.body.i.i121:                                   ; preds = %switch.lookup259
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup283:                                 ; preds = %switch.lookup259
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %58 = icmp ult i32 %i.0244, 4
  br i1 %58, label %switch.lookup262, label %do.body.i5.i127

do.body.i5.i127:                                  ; preds = %switch.lookup283
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup262:                                 ; preds = %switch.lookup283
  %59 = ptrtoint ptr %switch.gep284 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load285 = load i32, ptr %switch.gep284, align 4
  %switch.gep263 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.28, i32 0, i32 %i.0244
  %60 = ptrtoint ptr %switch.gep263 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load264 = load i32, ptr %switch.gep263, align 4
  %add2.i129 = or i32 %switch.load264, %switch.load285
  %61 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i131 = getelementptr i8, ptr %62, i32 %add2.i129
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i131) #8
  br i1 %26, label %switch.lookup286, label %do.body.i.i134

do.body.i.i134:                                   ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup286:                                 ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %63 = icmp ult i32 %i.0244, 4
  br i1 %63, label %switch.lookup265, label %do.body.i5.i140

do.body.i5.i140:                                  ; preds = %switch.lookup286
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup265:                                 ; preds = %switch.lookup286
  %64 = ptrtoint ptr %switch.gep287 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load288 = load i32, ptr %switch.gep287, align 4
  %switch.gep266 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.29, i32 0, i32 %i.0244
  %65 = ptrtoint ptr %switch.gep266 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load267 = load i32, ptr %switch.gep266, align 4
  %add2.i142 = or i32 %switch.load267, %switch.load288
  %66 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i144 = getelementptr i8, ptr %67, i32 %add2.i142
  tail call void @msm_writel(i32 noundef %spec.select, ptr noundef %add.ptr.i144) #8
  br i1 %27, label %switch.lookup289, label %do.body.i.i147

do.body.i.i147:                                   ; preds = %switch.lookup265
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup289:                                 ; preds = %switch.lookup265
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %68 = icmp ult i32 %i.0244, 4
  br i1 %68, label %switch.lookup268, label %do.body.i5.i153

do.body.i5.i153:                                  ; preds = %switch.lookup289
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #8, !srcloc !69
  unreachable

switch.lookup268:                                 ; preds = %switch.lookup289
  %69 = ptrtoint ptr %switch.gep290 to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load291 = load i32, ptr %switch.gep290, align 4
  %switch.gep269 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %i.0244
  %70 = ptrtoint ptr %switch.gep269 to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load270 = load i32, ptr %switch.gep269, align 4
  %add2.i155 = or i32 %switch.load270, %switch.load291
  %71 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i157 = getelementptr i8, ptr %72, i32 %add2.i155
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i157) #8
  br i1 %28, label %switch.lookup292, label %do.body.i.i160

do.body.i.i160:                                   ; preds = %switch.lookup268
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup292:                                 ; preds = %switch.lookup268
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %73 = icmp ult i32 %i.0244, 4
  br i1 %73, label %switch.lookup271, label %do.body.i5.i166

do.body.i5.i166:                                  ; preds = %switch.lookup292
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup271:                                 ; preds = %switch.lookup292
  %74 = ptrtoint ptr %switch.gep293 to i32
  call void @__asan_load4_noabort(i32 %74)
  %switch.load294 = load i32, ptr %switch.gep293, align 4
  %switch.gep272 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.31, i32 0, i32 %i.0244
  %75 = ptrtoint ptr %switch.gep272 to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load273 = load i32, ptr %switch.gep272, align 4
  %add2.i168 = add nuw nsw i32 %switch.load273, %switch.load294
  %76 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i170 = getelementptr i8, ptr %77, i32 %add2.i168
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i170) #8
  br i1 %29, label %switch.lookup295, label %do.body.i.i173

do.body.i.i173:                                   ; preds = %switch.lookup271
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup295:                                 ; preds = %switch.lookup271
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %78 = icmp ult i32 %i.0244, 4
  br i1 %78, label %switch.lookup274, label %do.body.i5.i179

do.body.i5.i179:                                  ; preds = %switch.lookup295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup274:                                 ; preds = %switch.lookup295
  %79 = ptrtoint ptr %switch.gep296 to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load297 = load i32, ptr %switch.gep296, align 4
  %switch.gep275 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.32, i32 0, i32 %i.0244
  %80 = ptrtoint ptr %switch.gep275 to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load276 = load i32, ptr %switch.gep275, align 4
  %add2.i181 = or i32 %switch.load276, %switch.load297
  %81 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i183 = getelementptr i8, ptr %82, i32 %add2.i181
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i183) #8
  br i1 %30, label %switch.lookup298, label %do.body.i.i186

do.body.i.i186:                                   ; preds = %switch.lookup274
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup298:                                 ; preds = %switch.lookup274
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %83 = icmp ult i32 %i.0244, 4
  br i1 %83, label %switch.lookup277, label %do.body.i5.i192

do.body.i5.i192:                                  ; preds = %switch.lookup298
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup277:                                 ; preds = %switch.lookup298
  %84 = ptrtoint ptr %switch.gep299 to i32
  call void @__asan_load4_noabort(i32 %84)
  %switch.load300 = load i32, ptr %switch.gep299, align 4
  %switch.gep278 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.33, i32 0, i32 %i.0244
  %85 = ptrtoint ptr %switch.gep278 to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load279 = load i32, ptr %switch.gep278, align 4
  %add2.i194 = add nuw nsw i32 %switch.load279, %switch.load300
  %86 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i196 = getelementptr i8, ptr %87, i32 %add2.i194
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i196) #8
  br i1 %31, label %switch.lookup301, label %do.body.i.i199

do.body.i.i199:                                   ; preds = %switch.lookup277
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup301:                                 ; preds = %switch.lookup277
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0244)
  %88 = icmp ult i32 %i.0244, 4
  br i1 %88, label %switch.lookup280, label %do.body.i5.i205

do.body.i5.i205:                                  ; preds = %switch.lookup301
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

switch.lookup280:                                 ; preds = %switch.lookup301
  %89 = ptrtoint ptr %switch.gep302 to i32
  call void @__asan_load4_noabort(i32 %89)
  %switch.load303 = load i32, ptr %switch.gep302, align 4
  %switch.gep281 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.34, i32 0, i32 %i.0244
  %90 = ptrtoint ptr %switch.gep281 to i32
  call void @__asan_load4_noabort(i32 %90)
  %switch.load282 = load i32, ptr %switch.gep281, align 4
  %add2.i207 = or i32 %switch.load282, %switch.load303
  %91 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i209 = getelementptr i8, ptr %92, i32 %add2.i207
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i209) #8
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end52, label %switch.lookup280.for.body31_crit_edge

switch.lookup280.for.body31_crit_edge:            ; preds = %switch.lookup280
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.end52:                                        ; preds = %switch.lookup280
  %dev.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 1
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 8
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %94, i32 0, i32 30, i32 20
  %95 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn54.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not56.i = icmp eq ptr %.pn54.i, %crtc_list.i
  br i1 %cmp.not56.i, label %for.end52.setup_mixer.exit_crit_edge, label %for.end52.for.body.i_crit_edge

for.end52.for.body.i_crit_edge:                   ; preds = %for.end52
  br label %for.body.i

for.end52.setup_mixer.exit_crit_edge:             ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_mixer.exit

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %mixer_cfg.1.lcssa.i = phi i32 [ %mixer_cfg.057.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %mixer_cfg.2.i, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %96 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.setup_mixer.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.loopexit.i.setup_mixer.exit_crit_edge:   ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_mixer.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.end52.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn54.i, %for.end52.for.body.i_crit_edge ]
  %mixer_cfg.057.i = phi i32 [ %mixer_cfg.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %for.end52.for.body.i_crit_edge ]
  %crtc.059.i = getelementptr i8, ptr %.pn58.i, i32 -8
  %97 = ptrtoint ptr %crtc.059.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %crtc.059.i, align 8
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %98, i32 0, i32 30, i32 18
  %99 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn4647.i = load ptr, ptr %plane_list.i, align 4
  %cmp16.not50.i = icmp eq ptr %.pn4647.i, %plane_list.i
  br i1 %cmp16.not50.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body18.lr.ph.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit.i

for.body18.lr.ph.i:                               ; preds = %for.body.i
  %state.i = getelementptr i8, ptr %.pn58.i, i32 716
  %mixer.i = getelementptr i8, ptr %.pn58.i, i32 1008
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %.pn4652.i = phi ptr [ %.pn4647.i, %for.body18.lr.ph.i ], [ %.pn46.i, %for.inc.i.for.body18.i_crit_edge ]
  %mixer_cfg.151.i = phi i32 [ %mixer_cfg.057.i, %for.body18.lr.ph.i ], [ %mixer_cfg.2.i, %for.inc.i.for.body18.i_crit_edge ]
  %100 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %state.i, align 4
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %plane_mask.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn4652.i, i32 480
  %104 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %105
  %and.i = and i32 %shl.i.i, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body18.i.for.inc.i_crit_edge, label %if.else.i

for.body18.i.for.inc.i_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body18.i
  %plane.053.i = getelementptr i8, ptr %.pn4652.i, i32 -4
  %call19.i = tail call i32 @mdp4_plane_pipe(ptr noundef %plane.053.i) #8
  %arrayidx.i = getelementptr [7 x i32], ptr @idxs, i32 0, i32 %call19.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i, align 4
  %108 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mixer.i, align 8
  %arrayidx20.i = getelementptr [5 x i32], ptr @setup_mixer.stages, i32 0, i32 %107
  %110 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx20.i, align 4
  %112 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call19.i, label %do.end.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i210
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb16.i.i
    i32 4, label %sw.bb23.i.i
    i32 5, label %sw.bb30.i.i
    i32 6, label %sw.bb37.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %mixer_cfg.151.i, -16
  %and.i.i.i = and i32 %111, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i.i = icmp eq i32 %109, 1
  %cond.i.i = select i1 %cmp.i.i, i32 8, i32 0
  %or.i.i = or i32 %cond.i.i, %and.i.i
  %or1.i.i = or i32 %or.i.i, %and.i.i.i
  br label %for.inc.i

sw.bb2.i.i210:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i.i = and i32 %mixer_cfg.151.i, -241
  %shl.i.i.i = shl i32 %111, 4
  %and.i85.i.i = and i32 %shl.i.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp5.i.i = icmp eq i32 %109, 1
  %cond6.i.i = select i1 %cmp5.i.i, i32 128, i32 0
  %or7.i.i = or i32 %cond6.i.i, %and3.i.i
  %or8.i.i = or i32 %or7.i.i, %and.i85.i.i
  br label %for.inc.i

sw.bb9.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and10.i.i = and i32 %mixer_cfg.151.i, -3841
  %shl.i86.i.i = shl i32 %111, 8
  %and.i87.i.i = and i32 %shl.i86.i.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp12.i.i = icmp eq i32 %109, 1
  %cond13.i.i = select i1 %cmp12.i.i, i32 2048, i32 0
  %or14.i.i = or i32 %cond13.i.i, %and10.i.i
  %or15.i.i = or i32 %or14.i.i, %and.i87.i.i
  br label %for.inc.i

sw.bb16.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and17.i.i = and i32 %mixer_cfg.151.i, -61441
  %shl.i88.i.i = shl i32 %111, 12
  %and.i89.i.i = and i32 %shl.i88.i.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp19.i.i = icmp eq i32 %109, 1
  %cond20.i.i = select i1 %cmp19.i.i, i32 32768, i32 0
  %or21.i.i = or i32 %cond20.i.i, %and17.i.i
  %or22.i.i = or i32 %or21.i.i, %and.i89.i.i
  br label %for.inc.i

sw.bb23.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and24.i.i = and i32 %mixer_cfg.151.i, -983041
  %shl.i90.i.i = shl i32 %111, 16
  %and.i91.i.i = and i32 %shl.i90.i.i, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp26.i.i = icmp eq i32 %109, 1
  %cond27.i.i = select i1 %cmp26.i.i, i32 524288, i32 0
  %or28.i.i = or i32 %cond27.i.i, %and24.i.i
  %or29.i.i = or i32 %or28.i.i, %and.i91.i.i
  br label %for.inc.i

sw.bb30.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and31.i.i = and i32 %mixer_cfg.151.i, -15728641
  %shl.i92.i.i = shl i32 %111, 20
  %and.i93.i.i = and i32 %shl.i92.i.i, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp33.i.i = icmp eq i32 %109, 1
  %cond34.i.i = select i1 %cmp33.i.i, i32 8388608, i32 0
  %or35.i.i = or i32 %cond34.i.i, %and31.i.i
  %or36.i.i = or i32 %or35.i.i, %and.i93.i.i
  br label %for.inc.i

sw.bb37.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and38.i.i = and i32 %mixer_cfg.151.i, -251658241
  %shl.i94.i.i = shl i32 %111, 24
  %and.i95.i.i = and i32 %shl.i94.i.i, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp40.i.i = icmp eq i32 %109, 1
  %cond41.i.i = select i1 %cmp40.i.i, i32 134217728, i32 0
  %or42.i.i = or i32 %cond41.i.i, %and38.i.i
  %or43.i.i = or i32 %or42.i.i, %and.i95.i.i
  br label %for.inc.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.5) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.i, %sw.bb37.i.i, %sw.bb30.i.i, %sw.bb23.i.i, %sw.bb16.i.i, %sw.bb9.i.i, %sw.bb2.i.i210, %sw.bb.i.i, %for.body18.i.for.inc.i_crit_edge
  %mixer_cfg.2.i = phi i32 [ %mixer_cfg.151.i, %for.body18.i.for.inc.i_crit_edge ], [ %mixer_cfg.151.i, %do.end.i.i ], [ %or43.i.i, %sw.bb37.i.i ], [ %or36.i.i, %sw.bb30.i.i ], [ %or29.i.i, %sw.bb23.i.i ], [ %or22.i.i, %sw.bb16.i.i ], [ %or15.i.i, %sw.bb9.i.i ], [ %or8.i.i, %sw.bb2.i.i210 ], [ %or1.i.i, %sw.bb.i.i ]
  %113 = ptrtoint ptr %.pn4652.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn46.i = load ptr, ptr %.pn4652.i, align 4
  %114 = ptrtoint ptr %crtc.059.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %crtc.059.i, align 8
  %plane_list15.i = getelementptr inbounds %struct.drm_device, ptr %115, i32 0, i32 30, i32 18
  %cmp16.not.i = icmp eq ptr %.pn46.i, %plane_list15.i
  br i1 %cmp16.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body18.i_crit_edge

for.inc.i.for.body18.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit.i

setup_mixer.exit:                                 ; preds = %for.cond.loopexit.i.setup_mixer.exit_crit_edge, %for.end52.setup_mixer.exit_crit_edge
  %mixer_cfg.0.lcssa.i = phi i32 [ 0, %for.end52.setup_mixer.exit_crit_edge ], [ %mixer_cfg.1.lcssa.i, %for.cond.loopexit.i.setup_mixer.exit_crit_edge ]
  %116 = ptrtoint ptr %mmio.i212.sink252 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i212.sink252, align 8
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 65792
  tail call void @msm_writel(i32 noundef %mixer_cfg.0.lcssa.i, ptr noundef %add.ptr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alpha) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_crtc_wait_for_commit_done(ptr noundef %crtc) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i.i, align 4
  %call2.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mdp4_crtc_wait_for_flush_done.exit_crit_edge

entry.mdp4_crtc_wait_for_flush_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mdp4_crtc_wait_for_flush_done.exit

if.end.i:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 541) #8
  %mmio.i.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 98304
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %flushed_mask.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 9
  %8 = ptrtoint ptr %flushed_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flushed_mask.i, align 4
  %and.i = and i32 %9, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end58.i_crit_edge, label %if.then18.i

if.end.i.if.end58.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then18.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %10 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %vblank.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 23
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then18.i
  %__ret19.0.i = phi i32 [ 5, %if.then18.i ], [ %call45.i, %cleanup.i ]
  %11 = ptrtoint ptr %vblank.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vblank.i, align 4
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %queue.i = getelementptr %struct.drm_vblank_crtc, ptr %12, i32 %14, i32 1
  %call22.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i88.i = getelementptr i8, ptr %16, i32 98304
  %call.i89.i = call i32 @msm_readl(ptr noundef %add.ptr.i88.i) #8
  %17 = ptrtoint ptr %flushed_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flushed_mask.i, align 4
  %and26.i = and i32 %18, %call.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.0.i)
  %tobool32.not.i = icmp eq i32 %__ret19.0.i, 0
  %19 = select i1 %tobool27.not.i, i1 %tobool32.not.i, i1 false
  %__ret19.1.i = select i1 %19, i32 1, i32 %__ret19.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.1.i)
  %tobool38.not.i = icmp eq i32 %__ret19.1.i, 0
  %20 = select i1 %tobool27.not.i, i1 true, i1 %tobool38.not.i
  br i1 %20, label %if.end51.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %call45.i = call i32 @schedule_timeout(i32 noundef %__ret19.1.i) #8
  br label %for.cond.i

if.end51.i:                                       ; preds = %for.cond.i
  %21 = ptrtoint ptr %vblank.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vblank.i, align 4
  %23 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i, align 4
  %queue49.i = getelementptr %struct.drm_vblank_crtc, ptr %22, i32 %24, i32 1
  call void @finish_wait(ptr noundef %queue49.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret19.1.i)
  %cmp.i = icmp slt i32 %__ret19.1.i, 1
  br i1 %cmp.i, label %do.end56.i, label %if.end51.i.if.end58.i_crit_edge

if.end51.i.if.end58.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

do.end56.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev57.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev57.i, align 4
  %id.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 2
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %28) #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end56.i, %if.end51.i.if.end58.i_crit_edge, %if.end.i.if.end58.i_crit_edge
  %29 = ptrtoint ptr %flushed_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %flushed_mask.i, align 4
  call void @drm_crtc_vblank_put(ptr noundef %crtc) #8
  br label %mdp4_crtc_wait_for_flush_done.exit

mdp4_crtc_wait_for_flush_done.exit:               ; preds = %if.end58.i, %entry.mdp4_crtc_wait_for_flush_done.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp4_crtc_init(ptr noundef %dev, ptr noundef %plane, i32 noundef %id, i32 noundef %ovlp_id, i32 noundef %dma_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1264) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id2 = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id, ptr %id2, align 8
  %ovlp = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %ovlp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ovlp_id, ptr %ovlp, align 4
  %dma = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dma_id, ptr %dma, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dma_id)
  %4 = icmp ult i32 %dma_id, 3
  br i1 %4, label %switch.lookup, label %if.end.dma2err.exit_crit_edge

if.end.dma2err.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma2err.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_init, i32 0, i32 %dma_id
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep47 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_init.42, i32 0, i32 %dma_id
  %6 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  br label %dma2err.exit

dma2err.exit:                                     ; preds = %switch.lookup, %if.end.dma2err.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.dma2err.exit_crit_edge ]
  %retval.0.i35 = phi i32 [ %switch.load48, %switch.lookup ], [ 0, %if.end.dma2err.exit_crit_edge ]
  %irqmask37 = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %irqmask37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %irqmask37, align 4
  %irq38 = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 12, i32 3
  %8 = ptrtoint ptr %irq38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mdp4_crtc_vblank_irq, ptr %irq38, align 4
  %irqmask8 = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %irqmask8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i35, ptr %irqmask8, align 8
  %irq10 = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mdp4_crtc_err_irq, ptr %irq10, align 8
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 1
  %arrayidx = getelementptr [3 x ptr], ptr @dma_names, i32 0, i32 %dma_id
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %ovlp_id)
  %cursor = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %cursor, ptr noundef nonnull @.str.2, ptr noundef nonnull @mdp4_crtc_init.__key, i16 noundef signext 3) #8
  %unref_cursor_work = getelementptr inbounds %struct.mdp4_crtc, ptr %call7.i.i, i32 0, i32 11
  tail call void @drm_flip_work_init(ptr noundef %unref_cursor_work, ptr noundef nonnull @.str.3, ptr noundef nonnull @unref_cursor_worker) #8
  %call13 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %plane, ptr noundef null, ptr noundef nonnull @mdp4_crtc_funcs, ptr noundef null) #8
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mdp4_crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %dma2err.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %dma2err.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_vblank_irq(ptr noundef %irq, i32 noundef %irqstatus) #2 align 64 {
entry:
  %iova.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %irq, i32 -1220
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
  tail call void @mdp_irq_unregister(ptr noundef %5, ptr noundef %irq) #8
  %pending2 = getelementptr i8, ptr %irq, i32 -116
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending2, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %pending2, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pending2) #8, !srcloc !71
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  %and = and i32 %asmresult.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 28
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #8
  %event7.i = getelementptr i8, ptr %irq, i32 -124
  %9 = ptrtoint ptr %event7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event7.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.complete_flip.exit_crit_edge, label %if.then.i

if.then.complete_flip.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_flip.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %event7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %event7.i, align 8
  %name.i = getelementptr i8, ptr %irq, i32 -228
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %name.i, ptr noundef nonnull %10) #8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %add.ptr, ptr noundef nonnull %10) #8
  br label %complete_flip.exit

complete_flip.exit:                               ; preds = %if.then.i, %if.then.complete_flip.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call4.i) #8
  br label %if.end

if.end:                                           ; preds = %complete_flip.exit, %entry.if.end_crit_edge
  %and4 = and i32 %asmresult.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kms.i.i, align 4
  %dma2.i = getelementptr i8, ptr %irq, i32 -212
  %18 = ptrtoint ptr %dma2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma2.i, align 8
  %cursor.i = getelementptr i8, ptr %irq, i32 -200
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cursor.i) #8
  %stale.i = getelementptr i8, ptr %irq, i32 -156
  %20 = ptrtoint ptr %stale.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stale.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i15 = icmp eq i8 %21, 0
  br i1 %tobool.not.i15, label %if.then6.if.end37.i_crit_edge, label %if.then.i16

if.then6.if.end37.i_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then.i16:                                      ; preds = %if.then6
  %next_bo11.i = getelementptr i8, ptr %irq, i32 -132
  %22 = ptrtoint ptr %next_bo11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_bo11.i, align 4
  %scanout_bo.i = getelementptr i8, ptr %irq, i32 -128
  %24 = ptrtoint ptr %scanout_bo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scanout_bo.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova.i) #8
  %next_iova.i = getelementptr i8, ptr %irq, i32 -136
  %26 = ptrtoint ptr %next_iova.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_iova.i, align 4
  %conv14.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %iova.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv14.i, ptr %iova.i, align 8
  %tobool15.not.i = icmp eq ptr %23, null
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then.i16
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %23, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then16.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !74

if.then16.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then16.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !75

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then16.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then16.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %drm_gem_object_get.exit.i

drm_gem_object_get.exit.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.drm_gem_object_get.exit.i_crit_edge
  %aspace.i = getelementptr inbounds %struct.msm_kms, ptr %17, i32 0, i32 3
  %31 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aspace.i, align 4
  %call17.i = call i32 @msm_gem_get_and_pin_iova(ptr noundef nonnull %23, ptr noundef %32, ptr noundef nonnull %iova.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %33 = icmp ult i32 %19, 3
  br i1 %33, label %switch.lookup21, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %drm_gem_object_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

switch.lookup21:                                  ; preds = %drm_gem_object_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.mult22 = shl i32 %19, 16
  %switch.offset23 = add i32 %switch.idx.mult22, 589892
  %switch.idx.mult24 = shl i32 %19, 16
  %switch.offset25 = add i32 %switch.idx.mult24, 589896
  %switch.idx.mult26 = shl i32 %19, 16
  %switch.offset27 = add i32 %switch.idx.mult26, 589920
  %width.i = getelementptr i8, ptr %irq, i32 -152
  %34 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width.i, align 4
  %and.i.i = and i32 %35, 127
  %height.i = getelementptr i8, ptr %irq, i32 -148
  %36 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height.i, align 4
  %shl.i.i = shl i32 %37, 16
  %and.i75.i = and i32 %shl.i.i, 8323072
  %or.i = or i32 %and.i75.i, %and.i.i
  %mmio.i.i.sink = getelementptr inbounds %struct.mdp4_kms, ptr %17, i32 0, i32 3
  %38 = ptrtoint ptr %mmio.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i.sink, align 8
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %switch.offset23
  call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i.i) #8
  %40 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %.sink.i = load i64, ptr %iova.i, align 8
  %conv24126.i = trunc i64 %.sink.i to i32
  %41 = ptrtoint ptr %mmio.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i.sink, align 8
  %add.ptr.i81127.i = getelementptr i8, ptr %42, i32 %switch.offset25
  call void @msm_writel(i32 noundef %conv24126.i, ptr noundef %add.ptr.i81127.i) #8
  %43 = ptrtoint ptr %mmio.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i.i.sink, align 8
  %add.ptr.i87.i = getelementptr i8, ptr %44, i32 %switch.offset27
  call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i87.i) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %45 = icmp ult i32 %19, 3
  br i1 %45, label %switch.lookup, label %do.body.i.i90.i

do.body.i.i90.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.mult = shl i32 %19, 16
  %switch.offset = add i32 %switch.idx.mult, 589896
  %blank_cursor_iova.i = getelementptr inbounds %struct.mdp4_kms, ptr %17, i32 0, i32 12
  %46 = ptrtoint ptr %blank_cursor_iova.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %blank_cursor_iova.i, align 8
  %conv29.i = trunc i64 %47 to i32
  %mmio.i93.i = getelementptr inbounds %struct.mdp4_kms, ptr %17, i32 0, i32 3
  %48 = ptrtoint ptr %mmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i93.i, align 8
  %add.ptr.i94.i = getelementptr i8, ptr %49, i32 %switch.offset
  tail call void @msm_writel(i32 noundef %conv29.i, ptr noundef %add.ptr.i94.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %switch.lookup, %switch.lookup21
  %tobool30.not.i = icmp eq ptr %25, null
  br i1 %tobool30.not.i, label %if.end.i.if.end32.i_crit_edge, label %if.then31.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %unref_cursor_work.i = getelementptr i8, ptr %irq, i32 -112
  call void @drm_flip_work_queue(ptr noundef %unref_cursor_work.i, ptr noundef nonnull %25) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end.i.if.end32.i_crit_edge
  %50 = ptrtoint ptr %scanout_bo.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %23, ptr %scanout_bo.i, align 4
  %51 = ptrtoint ptr %stale.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %stale.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova.i) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end32.i, %if.then6.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %52 = icmp ult i32 %19, 3
  br i1 %52, label %switch.lookup18, label %do.body.i.i97.i

do.body.i.i97.i:                                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

switch.lookup18:                                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.mult19 = shl i32 %19, 16
  %switch.offset20 = add i32 %switch.idx.mult19, 589900
  %x.i = getelementptr i8, ptr %irq, i32 -144
  %53 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %x.i, align 4
  %and.i99.i = and i32 %54, 65535
  %y.i = getelementptr i8, ptr %irq, i32 -140
  %55 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %y.i, align 4
  %shl.i100.i = shl i32 %56, 16
  %or43.i = or i32 %shl.i100.i, %and.i99.i
  %mmio.i101.i = getelementptr inbounds %struct.mdp4_kms, ptr %17, i32 0, i32 3
  %57 = ptrtoint ptr %mmio.i101.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i101.i, align 8
  %add.ptr.i102.i = getelementptr i8, ptr %58, i32 %switch.offset20
  call void @msm_writel(i32 noundef %or43.i, ptr noundef %add.ptr.i102.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cursor.i, i32 noundef %call6.i) #8
  %unref_cursor_work = getelementptr i8, ptr %irq, i32 -112
  %wq = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 22
  %59 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wq, align 8
  call void @drm_flip_work_commit(ptr noundef %unref_cursor_work, ptr noundef %60) #8
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup18, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_err_irq(ptr noundef %irq, i32 noundef %irqstatus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %irq, i32 -1240
  %name = getelementptr i8, ptr %irq, i32 -248
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %irqstatus) #8
  tail call fastcc void @crtc_flush(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unref_cursor_worker(ptr nocapture noundef readonly %work, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1108
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
  tail call void @msm_gem_unpin_iova(ptr noundef %val, ptr noundef %7) #8
  %tobool.not.i = icmp eq ptr %val, null
  br i1 %tobool.not.i, label %entry.drm_gem_object_put.exit_crit_edge, label %if.then.i

entry.drm_gem_object_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr nonnull %val, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %val, ptr nonnull %val, i32 1, ptr nonnull elementtype(i32) %val) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %val, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @drm_gem_object_free(ptr noundef nonnull %val) #8
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %entry.drm_gem_object_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_plane_pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

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
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crtc_flush(ptr noundef %crtc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 18
  %6 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn30 = load ptr, ptr %plane_list, align 4
  %cmp.not33 = icmp eq ptr %.pn30, %plane_list
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn35 = phi ptr [ %.pn30, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %flush.034 = phi i32 [ 0, %for.body.lr.ph ], [ %flush.1, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn35, i32 480
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %12
  %and = and i32 %shl.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %plane.036 = getelementptr i8, ptr %.pn35, i32 -4
  %call8 = tail call i32 @mdp4_plane_pipe(ptr noundef %plane.036) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call8)
  %13 = icmp ult i32 %call8, 4
  br i1 %13, label %switch.lookup, label %if.else.pipe2flush.exit_crit_edge

if.else.pipe2flush.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %pipe2flush.exit

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.crtc_flush, i32 0, i32 %call8
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pipe2flush.exit

pipe2flush.exit:                                  ; preds = %switch.lookup, %if.else.pipe2flush.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.else.pipe2flush.exit_crit_edge ]
  %or = or i32 %retval.0.i, %flush.034
  br label %for.inc

for.inc:                                          ; preds = %pipe2flush.exit, %for.body.for.inc_crit_edge
  %flush.1 = phi i32 [ %or, %pipe2flush.exit ], [ %flush.034, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn35, align 4
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 8
  %plane_list6 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list6
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flush.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %flush.1, %for.inc.for.end_crit_edge ]
  %ovlp = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 3
  %18 = ptrtoint ptr %ovlp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ovlp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %switch.selectcmp.i = icmp eq i32 %19, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %switch.selectcmp2.i = icmp eq i32 %19, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %or16 = or i32 %switch.select3.i, %flush.0.lcssa
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %or16) #8
  %flushed_mask = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 9
  %20 = ptrtoint ptr %flushed_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or16, ptr %flushed_mask, align 4
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 98304
  tail call void @msm_writel(i32 noundef %or16, ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_crtc_cursor_set(ptr noundef %crtc, ptr noundef %file_priv, i32 noundef %handle, i32 noundef %width, i32 noundef %height) #2 align 64 {
entry:
  %iova = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova) #8
  %6 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %iova, align 8, !annotation !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %width)
  %cmp = icmp ugt i32 %width, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %height)
  %cmp3 = icmp ugt i32 %height, 64
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %width, i32 noundef %height) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %if.else17, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %handle) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then12

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.then5
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aspace, align 4
  %call13 = call i32 @msm_gem_get_and_pin_iova(ptr noundef nonnull %call6, ptr noundef %10, ptr noundef nonnull %iova) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.do.body19_crit_edge, label %if.then.i

if.then12.do.body19_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %iova, align 8
  br label %do.body19

do.body19:                                        ; preds = %if.else17, %if.then12.do.body19_crit_edge
  %cursor_bo.073 = phi ptr [ %call6, %if.then12.do.body19_crit_edge ], [ null, %if.else17 ]
  %cursor = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7
  %call23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cursor) #8
  %next_bo = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 7
  %12 = ptrtoint ptr %next_bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_bo, align 4
  store ptr %cursor_bo.073, ptr %next_bo, align 4
  %14 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %iova, align 8
  %conv29 = trunc i64 %15 to i32
  %next_iova = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %next_iova to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv29, ptr %next_iova, align 4
  %width32 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %width32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %width, ptr %width32, align 4
  %height34 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %height, ptr %height34, align 4
  %stale = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %stale to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %stale, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cursor, i32 noundef %call23) #8
  %tobool38.not = icmp eq ptr %13, null
  br i1 %tobool38.not, label %do.body19.if.end40_crit_edge, label %if.then39

do.body19.if.end40_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %unref_cursor_work = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 11
  call void @drm_flip_work_queue(ptr noundef %unref_cursor_work, ptr noundef nonnull %13) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %do.body19.if.end40_crit_edge
  %pending1.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending1.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %pending1.i, i32 1, i32 3, i32 1) #8
  %20 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending1.i, ptr %pending1.i, i32 1, ptr elementtype(i32) %pending1.i) #8, !srcloc !80
  %21 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kms.i.i, align 4
  %vblank.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 12
  call void @mdp_irq_register(ptr noundef %26, ptr noundef %vblank.i) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @llvm.prefetch.p0(ptr nonnull %call6, i32 1, i32 3, i32 1) #8
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6, ptr nonnull %call6, i32 1, ptr nonnull elementtype(i32) %call6) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call6, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @drm_gem_object_free(ptr noundef nonnull %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end40, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end40 ], [ -2, %if.then5.cleanup_crit_edge ], [ %call13, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call13, %if.then10.i.i.i.i.i.i ], [ %call13, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_crtc_cursor_move(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cursor) #8
  %x7 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %x7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %x, ptr %x7, align 4
  %y9 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 7, i32 5
  %1 = ptrtoint ptr %y9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %y, ptr %y9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cursor, i32 noundef %call3) #8
  tail call fastcc void @crtc_flush(ptr noundef %crtc)
  %pending1.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending1.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %pending1.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending1.i, ptr %pending1.i, i32 1, ptr elementtype(i32) %pending1.i) #8, !srcloc !80
  %3 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kms.i.i, align 4
  %vblank.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 12
  tail call void @mdp_irq_register(ptr noundef %8, ptr noundef %vblank.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_destroy(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #8
  %unref_cursor_work = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 11
  tail call void @drm_flip_work_cleanup(ptr noundef %unref_cursor_work) #8
  tail call void @kfree(ptr noundef %crtc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_crtc_enable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_crtc_disable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_mode_set_nofb(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dma1 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 4
  %6 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma1, align 8
  %ovlp2 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %ovlp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ovlp2, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 233, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end26:                                         ; preds = %entry
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  %name28 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 31
  %call30 = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #8
  %12 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %15 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_start, align 2
  %conv31 = zext i16 %17 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hsync_end, align 4
  %conv32 = zext i16 %19 to i32
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %htotal, align 2
  %conv33 = zext i16 %21 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 6
  %22 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vdisplay, align 2
  %conv34 = zext i16 %23 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_start, align 4
  %conv35 = zext i16 %25 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 8
  %26 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vsync_end, align 2
  %conv36 = zext i16 %27 to i32
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 9
  %28 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vtotal, align 4
  %conv37 = zext i16 %29 to i32
  %type = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 28
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %type, align 2
  %conv38 = zext i8 %31 to i32
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 7, i32 11
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef %name28, i32 noundef %call30, i32 noundef %13, i32 noundef %conv, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %34 = icmp ult i32 %7, 3
  br i1 %34, label %switch.lookup, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

switch.lookup:                                    ; preds = %if.end26
  %switch.idx.mult = shl i32 %7, 16
  %switch.offset = add i32 %switch.idx.mult, 589828
  %switch.idx.mult232 = shl i32 %7, 16
  %switch.offset233 = add i32 %switch.idx.mult232, 589832
  %switch.idx.mult234 = shl i32 %7, 16
  %switch.offset235 = add i32 %switch.idx.mult234, 589836
  %switch.idx.mult236 = shl i32 %7, 16
  %switch.offset237 = add i32 %switch.idx.mult236, 589840
  %35 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hdisplay, align 4
  %conv41163 = zext i16 %36 to i32
  %37 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vdisplay, align 2
  %conv44165 = zext i16 %38 to i32
  %shl.i166 = shl nuw i32 %conv44165, 16
  %or167 = or i32 %shl.i166, %conv41163
  %mmio.i168.sink228 = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %39 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i169 = getelementptr i8, ptr %40, i32 %switch.offset
  tail call void @msm_writel(i32 noundef %or167, ptr noundef %add.ptr.i169) #8
  %41 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i117183 = getelementptr i8, ptr %42, i32 %switch.offset233
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i117183) #8
  %43 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i123192 = getelementptr i8, ptr %44, i32 %switch.offset235
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i123192) #8
  %45 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i129 = getelementptr i8, ptr %46, i32 %switch.offset237
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %47 = icmp ult i32 %9, 3
  br i1 %47, label %switch.lookup238, label %do.body.i.i132

do.body.i.i132:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

switch.lookup238:                                 ; preds = %switch.lookup
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb, i32 0, i32 %9
  %48 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep239 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.43, i32 0, i32 %9
  %49 = ptrtoint ptr %switch.gep239 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load240 = load i32, ptr %switch.gep239, align 4
  %switch.gep241 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.44, i32 0, i32 %9
  %50 = ptrtoint ptr %switch.gep241 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load242 = load i32, ptr %switch.gep241, align 4
  %switch.gep243 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.45, i32 0, i32 %9
  %51 = ptrtoint ptr %switch.gep243 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load244 = load i32, ptr %switch.gep243, align 4
  %52 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i135200 = getelementptr i8, ptr %53, i32 %switch.load
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i135200) #8
  %54 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hdisplay, align 4
  %conv55205 = zext i16 %55 to i32
  %56 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vdisplay, align 2
  %conv58207 = zext i16 %57 to i32
  %shl.i141208 = shl nuw i32 %conv58207, 16
  %or60209 = or i32 %shl.i141208, %conv55205
  %58 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i143210 = getelementptr i8, ptr %59, i32 %switch.load240
  tail call void @msm_writel(i32 noundef %or60209, ptr noundef %add.ptr.i143210) #8
  %60 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i149220 = getelementptr i8, ptr %61, i32 %switch.load242
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i149220) #8
  %62 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i155 = getelementptr i8, ptr %63, i32 %switch.load244
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i155) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then64, label %switch.lookup238.cleanup_crit_edge

switch.lookup238.cleanup_crit_edge:               ; preds = %switch.lookup238
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %switch.lookup238
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i157 = getelementptr i8, ptr %65, i32 721008
  tail call void @msm_writel(i32 noundef 16711680, ptr noundef %add.ptr.i157) #8
  %66 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i159 = getelementptr i8, ptr %67, i32 721012
  tail call void @msm_writel(i32 noundef 16711680, ptr noundef %add.ptr.i159) #8
  %68 = ptrtoint ptr %mmio.i168.sink228 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i168.sink228, align 8
  %add.ptr.i161 = getelementptr i8, ptr %69, i32 721016
  tail call void @msm_writel(i32 noundef 16711680, ptr noundef %add.ptr.i161) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %switch.lookup238.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp4_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef %name) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %name) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state2, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef %name, ptr noundef %5) #8
  %event3 = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 8
  %6 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event3, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 335, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #8
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state2, align 4
  %event33 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %event33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event33, align 4
  %12 = ptrtoint ptr %event3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %event3, align 8
  store ptr null, ptr %event33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call27) #8
  tail call fastcc void @blend_setup(ptr noundef %crtc)
  tail call fastcc void @crtc_flush(ptr noundef %crtc)
  %pending1.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending1.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %pending1.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending1.i, ptr %pending1.i, i32 2, ptr elementtype(i32) %pending1.i) #8, !srcloc !80
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kms.i.i, align 4
  %vblank.i = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 12
  tail call void @mdp_irq_register(ptr noundef %19, ptr noundef %vblank.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef %name) #8
  %enabled = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !75

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 295, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @mdp4_enable(ptr noundef %5) #8
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  %err = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 13
  tail call void @mdp_irq_register(ptr noundef %5, ptr noundef %err) #8
  tail call fastcc void @crtc_flush(ptr noundef %crtc)
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %name = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef %name) #8
  %enabled = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 275, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #8
  %err = getelementptr inbounds %struct.mdp4_crtc, ptr %crtc, i32 0, i32 13
  tail call void @mdp_irq_unregister(ptr noundef %5, ptr noundef %err) #8
  %call25 = tail call i32 @mdp4_disable(ptr noundef %5) #8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 601, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 644, i32 53}
!4 = !{ptr @mdp4_crtc_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 647, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 650, i32 4}
!9 = !{ptr @idxs, !10, !"idxs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 137, i32 18}
!11 = !{ptr @setup_mixer.stages, !12, !"stages", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 158, i32 39}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h", i32 148, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 538, i32 8}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 543, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mdp4_crtc_wait_for_flush_done._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @mdp4_crtc_wait_for_flush_done._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 109, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 523, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 90, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 616, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 616, i32 12}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 616, i32 21}
!37 = !{ptr @dma_names, !38, !"dma_names", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 615, i32 20}
!39 = !{ptr @mdp4_crtc_funcs, !40, !"mdp4_crtc_funcs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 476, i32 36}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 417, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mdp4_crtc_helper_funcs, !45, !"mdp4_crtc_helper_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 489, i32 43}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 238, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 314, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 323, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 333, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c", i32 293, i32 2}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2157229321, i64 2157229826, i64 2157229358, i64 2157229414, i64 2157229448, i64 2157229472, i64 2157229513, i64 2157229534, i64 2157229562, i64 2157229596}
!66 = !{i64 2157217336, i64 2157217841, i64 2157217373, i64 2157217429, i64 2157217463, i64 2157217487, i64 2157217528, i64 2157217549, i64 2157217577, i64 2157217611}
!67 = !{i8 0, i8 2}
!68 = !{i64 2157220439, i64 2157220944, i64 2157220476, i64 2157220532, i64 2157220566, i64 2157220590, i64 2157220631, i64 2157220652, i64 2157220680, i64 2157220714}
!69 = !{i64 2157223879, i64 2157224384, i64 2157223916, i64 2157223972, i64 2157224006, i64 2157224030, i64 2157224071, i64 2157224092, i64 2157224120, i64 2157224154}
!70 = !{i64 2148664285}
!71 = !{i64 911165, i64 911182, i64 911206, i64 911232, i64 911250}
!72 = !{i64 2148664655}
!73 = !{i64 2148405927, i64 2148405959, i64 2148405988, i64 2148406022, i64 2148406053, i64 2148406076}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2148493940}
!77 = !{i64 2148408392, i64 2148408424, i64 2148408453, i64 2148408487, i64 2148408518, i64 2148408541}
!78 = !{i64 2150142091}
!79 = !{!"auto-init"}
!80 = !{i64 2148412535, i64 2148412561, i64 2148412590, i64 2148412624, i64 2148412655, i64 2148412678}
